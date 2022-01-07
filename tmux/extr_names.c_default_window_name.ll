; ModuleID = '/home/carl/AnghaBench/tmux/extr_names.c_default_window_name.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_names.c_default_window_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @default_window_name(%struct.window* %0) #0 {
  %2 = alloca %struct.window*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store %struct.window* %0, %struct.window** %2, align 8
  %5 = load %struct.window*, %struct.window** %2, align 8
  %6 = getelementptr inbounds %struct.window, %struct.window* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.window*, %struct.window** %2, align 8
  %11 = getelementptr inbounds %struct.window, %struct.window* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i8* @cmd_stringify_argv(i32 %9, i32 %14)
  store i8* %15, i8** %3, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = load i8*, i8** %3, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i8*, i8** %3, align 8
  %25 = call i8* @parse_window_name(i8* %24)
  store i8* %25, i8** %4, align 8
  br label %33

26:                                               ; preds = %18, %1
  %27 = load %struct.window*, %struct.window** %2, align 8
  %28 = getelementptr inbounds %struct.window, %struct.window* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i8* @parse_window_name(i8* %31)
  store i8* %32, i8** %4, align 8
  br label %33

33:                                               ; preds = %26, %23
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @free(i8* %34)
  %36 = load i8*, i8** %4, align 8
  ret i8* %36
}

declare dso_local i8* @cmd_stringify_argv(i32, i32) #1

declare dso_local i8* @parse_window_name(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
