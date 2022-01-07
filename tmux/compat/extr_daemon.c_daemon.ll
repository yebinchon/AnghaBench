; ModuleID = '/home/carl/AnghaBench/tmux/compat/extr_daemon.c_daemon.c'
source_filename = "/home/carl/AnghaBench/tmux/compat/extr_daemon.c_daemon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@_PATH_DEVNULL = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @daemon(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = call i32 (...) @fork()
  switch i32 %7, label %10 [
    i32 -1, label %8
    i32 0, label %9
  ]

8:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %46

9:                                                ; preds = %2
  br label %12

10:                                               ; preds = %2
  %11 = call i32 @_exit(i32 0) #3
  unreachable

12:                                               ; preds = %9
  %13 = call i32 (...) @setsid()
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 -1, i32* %3, align 4
  br label %46

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = call i32 @chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %16
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %45, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* @_PATH_DEVNULL, align 4
  %26 = load i32, i32* @O_RDWR, align 4
  %27 = call i32 @open(i32 %25, i32 %26, i32 0)
  store i32 %27, i32* %6, align 4
  %28 = icmp ne i32 %27, -1
  br i1 %28, label %29, label %45

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @STDIN_FILENO, align 4
  %32 = call i32 @dup2(i32 %30, i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @STDOUT_FILENO, align 4
  %35 = call i32 @dup2(i32 %33, i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @STDERR_FILENO, align 4
  %38 = call i32 @dup2(i32 %36, i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = icmp sgt i32 %39, 2
  br i1 %40, label %41, label %44

41:                                               ; preds = %29
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @close(i32 %42)
  br label %44

44:                                               ; preds = %41, %29
  br label %45

45:                                               ; preds = %44, %24, %21
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %15, %8
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @fork(...) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @setsid(...) #1

declare dso_local i32 @chdir(i8*) #1

declare dso_local i32 @open(i32, i32, i32) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
