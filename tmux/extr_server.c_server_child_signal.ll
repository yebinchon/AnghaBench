; ModuleID = '/home/carl/AnghaBench/tmux/extr_server.c_server_child_signal.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_server.c_server_child_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WAIT_ANY = common dso_local global i32 0, align 4
@WNOHANG = common dso_local global i32 0, align 4
@WUNTRACED = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ECHILD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"waitpid failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @server_child_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @server_child_signal() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  br label %3

3:                                                ; preds = %38, %0
  %4 = load i32, i32* @WAIT_ANY, align 4
  %5 = load i32, i32* @WNOHANG, align 4
  %6 = load i32, i32* @WUNTRACED, align 4
  %7 = or i32 %5, %6
  %8 = call i32 @waitpid(i32 %4, i32* %1, i32 %7)
  store i32 %8, i32* %2, align 4
  switch i32 %8, label %17 [
    i32 -1, label %9
    i32 0, label %16
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* @errno, align 4
  %11 = load i32, i32* @ECHILD, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %39

14:                                               ; preds = %9
  %15 = call i32 @fatal(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %3, %14
  br label %39

17:                                               ; preds = %3
  %18 = load i32, i32* %1, align 4
  %19 = call i64 @WIFSTOPPED(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* %1, align 4
  %24 = call i32 @server_child_stopped(i32 %22, i32 %23)
  br label %38

25:                                               ; preds = %17
  %26 = load i32, i32* %1, align 4
  %27 = call i64 @WIFEXITED(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %1, align 4
  %31 = call i64 @WIFSIGNALED(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29, %25
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* %1, align 4
  %36 = call i32 @server_child_exited(i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %29
  br label %38

38:                                               ; preds = %37, %21
  br label %3

39:                                               ; preds = %16, %13
  ret void
}

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i64 @WIFSTOPPED(i32) #1

declare dso_local i32 @server_child_stopped(i32, i32) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i64 @WIFSIGNALED(i32) #1

declare dso_local i32 @server_child_exited(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
