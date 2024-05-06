import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(title: 'Flutter course', amount: 19.99, date: DateTime.now(), category: Category.food),
    Expense(title: 'Flutter course2', amount: 9.99, date: DateTime.now(), category: Category.work),
    Expense(title: 'Flutter course3', amount: 99.99, date: DateTime.now(), category: Category.leisure),
    Expense(title: 'Flutter course4', amount: 49.99, date: DateTime.now(), category: Category.travel),
    Expense(title: 'Flutter course5', amount: 19.99, date: DateTime.now(), category: Category.work),
    Expense(title: 'Flutter course6', amount: 19.99, date: DateTime.now(), category: Category.food),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('The chart'),
          Expanded(
            child: ExpensesList(expenses: _registeredExpenses)
          )
        ],
      ),
    );
  }
}
