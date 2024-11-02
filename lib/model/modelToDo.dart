class ToDo {
  String? id;
  String? toDoText;
  bool isDone; // Changed from bool? to bool

  ToDo({
    required this.id,
    required this.toDoText,
    this.isDone = false, // Default value is still false
  });

  static List<ToDo> todolist() {
    return [
      ToDo(id: '01', toDoText: 'Morning Exercise.', isDone: true),
      ToDo(id: '02', toDoText: 'Lunch Time meetup.', isDone: true),
      ToDo(id: '03', toDoText: 'Working hour shorted. work Fast.'),
      ToDo(id: '04', toDoText: 'Dinner with Owais'),
    ];
  }
}
