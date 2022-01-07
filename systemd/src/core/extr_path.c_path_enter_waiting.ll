; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_path.c_path_enter_waiting.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_path.c_path_enter_waiting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Got triggered.\00", align 1
@PATH_WAITING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to enter waiting state: %m\00", align 1
@PATH_FAILURE_RESOURCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @path_enter_waiting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @path_enter_waiting(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %3
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @path_check_good(i32* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @UNIT(i32* %16)
  %18 = call i32 @log_unit_debug(i32 %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @path_enter_running(i32* %19)
  br label %54

21:                                               ; preds = %10
  br label %22

22:                                               ; preds = %21, %3
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @path_watch(i32* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %46

28:                                               ; preds = %22
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load i32*, i32** %4, align 8
  %33 = call i64 @path_check_good(i32* %32, i32 0)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @UNIT(i32* %36)
  %38 = call i32 @log_unit_debug(i32 %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @path_enter_running(i32* %39)
  br label %54

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41, %28
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* @PATH_WAITING, align 4
  %45 = call i32 @path_set_state(i32* %43, i32 %44)
  br label %54

46:                                               ; preds = %27
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @UNIT(i32* %47)
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @log_unit_warning_errno(i32 %48, i32 %49, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* @PATH_FAILURE_RESOURCES, align 4
  %53 = call i32 @path_enter_dead(i32* %51, i32 %52)
  br label %54

54:                                               ; preds = %46, %42, %35, %15
  ret void
}

declare dso_local i64 @path_check_good(i32*, i32) #1

declare dso_local i32 @log_unit_debug(i32, i8*) #1

declare dso_local i32 @UNIT(i32*) #1

declare dso_local i32 @path_enter_running(i32*) #1

declare dso_local i32 @path_watch(i32*) #1

declare dso_local i32 @path_set_state(i32*, i32) #1

declare dso_local i32 @log_unit_warning_errno(i32, i32, i8*) #1

declare dso_local i32 @path_enter_dead(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
