; ModuleID = '/home/carl/AnghaBench/tg/extr_loop.c_on_started.c'
source_filename = "/home/carl/AnghaBench/tg/extr_loop.c_on_started.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tgl_state = type { i32 }

@wait_dialog_list = common dso_local global i64 0, align 8
@dlist_cb = common dso_local global i32 0, align 4
@start_command = common dso_local global i8* null, align 8
@safe_quit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @on_started(%struct.tgl_state* %0) #0 {
  %2 = alloca %struct.tgl_state*, align 8
  %3 = alloca i8*, align 8
  store %struct.tgl_state* %0, %struct.tgl_state** %2, align 8
  %4 = load i64, i64* @wait_dialog_list, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  store i64 0, i64* @wait_dialog_list, align 8
  %7 = load %struct.tgl_state*, %struct.tgl_state** %2, align 8
  %8 = load i32, i32* @dlist_cb, align 4
  %9 = call i32 @tgl_do_get_dialog_list(%struct.tgl_state* %7, i32 100, i32 0, i32 %8, i32 0)
  br label %47

10:                                               ; preds = %1
  %11 = load i8*, i8** @start_command, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %47

13:                                               ; preds = %10
  store i32 1, i32* @safe_quit, align 4
  br label %14

14:                                               ; preds = %43, %13
  %15 = load i8*, i8** @start_command, align 8
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %18, label %46

18:                                               ; preds = %14
  %19 = load i8*, i8** @start_command, align 8
  store i8* %19, i8** %3, align 8
  br label %20

20:                                               ; preds = %32, %18
  %21 = load i8*, i8** @start_command, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i8*, i8** @start_command, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 10
  br label %30

30:                                               ; preds = %25, %20
  %31 = phi i1 [ false, %20 ], [ %29, %25 ]
  br i1 %31, label %32, label %35

32:                                               ; preds = %30
  %33 = load i8*, i8** @start_command, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** @start_command, align 8
  br label %20

35:                                               ; preds = %30
  %36 = load i8*, i8** @start_command, align 8
  %37 = load i8, i8* %36, align 1
  %38 = icmp ne i8 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i8*, i8** @start_command, align 8
  store i8 0, i8* %40, align 1
  %41 = load i8*, i8** @start_command, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** @start_command, align 8
  br label %43

43:                                               ; preds = %39, %35
  %44 = load i8*, i8** %3, align 8
  %45 = call i32 @interpreter_ex(i8* %44, i32 0)
  br label %14

46:                                               ; preds = %14
  br label %47

47:                                               ; preds = %6, %46, %10
  ret void
}

declare dso_local i32 @tgl_do_get_dialog_list(%struct.tgl_state*, i32, i32, i32, i32) #1

declare dso_local i32 @interpreter_ex(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
