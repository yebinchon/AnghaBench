; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_terminal-util.c_columns.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_terminal-util.c_columns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cached_columns = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"COLUMNS\00", align 1
@USHRT_MAX = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @columns() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @cached_columns, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load i32, i32* @cached_columns, align 4
  store i32 %7, i32* %1, align 4
  br label %32

8:                                                ; preds = %0
  store i32 0, i32* %3, align 4
  %9 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %9, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 @safe_atoi(i8* %13, i32* %3)
  br label %15

15:                                               ; preds = %12, %8
  %16 = load i32, i32* %3, align 4
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @USHRT_MAX, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %18, %15
  %23 = load i32, i32* @STDOUT_FILENO, align 4
  %24 = call i32 @fd_columns(i32 %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp sle i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 80, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %22
  br label %29

29:                                               ; preds = %28, %18
  %30 = load i32, i32* %3, align 4
  store i32 %30, i32* @cached_columns, align 4
  %31 = load i32, i32* @cached_columns, align 4
  store i32 %31, i32* %1, align 4
  br label %32

32:                                               ; preds = %29, %6
  %33 = load i32, i32* %1, align 4
  ret i32 %33
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @safe_atoi(i8*, i32*) #1

declare dso_local i32 @fd_columns(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
