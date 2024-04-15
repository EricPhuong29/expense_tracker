import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xff47ffff),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 16,
        ),
        child: Column(
          children: [
            Text(expense.title),
            const SizedBox(
              height: 5,
            ),
            Row(children: [
              Text('\$${expense.amount.toStringAsFixed(2)}'),
              Spacer(
                flex: 1,
              ),
              Row(children: [
                Icon(categoryIcons[expense.category]),
                SizedBox(
                  width: 8,
                ),
                Text(expense.formattedDate),
              ]),
            ]),
          ],
        ),
      ),
    );
  }
}



