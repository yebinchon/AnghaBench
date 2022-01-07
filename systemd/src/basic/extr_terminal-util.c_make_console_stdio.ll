; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_terminal-util.c_make_console_stdio.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_terminal-util.c_make_console_stdio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"/dev/console\00", align 1
@ACQUIRE_TERMINAL_FORCE = common dso_local global i32 0, align 4
@ACQUIRE_TERMINAL_PERMISSIVE = common dso_local global i32 0, align 4
@USEC_INFINITY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [76 x i8] c"Failed to acquire terminal, using /dev/null stdin/stdout/stderr instead: %m\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Failed to make /dev/null stdin/stdout/stderr: %m\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Failed to reset terminal, ignoring: %m\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"Failed to make terminal stdin/stdout/stderr: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @make_console_stdio() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @ACQUIRE_TERMINAL_FORCE, align 4
  %5 = load i32, i32* @ACQUIRE_TERMINAL_PERMISSIVE, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @USEC_INFINITY, align 4
  %8 = call i32 @acquire_terminal(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %7)
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %0
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @log_warning_errno(i32 %12, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 (...) @make_null_stdio()
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @log_error_errno(i32 %18, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  store i32 %19, i32* %1, align 4
  br label %42

20:                                               ; preds = %11
  br label %40

21:                                               ; preds = %0
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @reset_terminal_fd(i32 %22, i32 1)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @log_warning_errno(i32 %27, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %21
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @rearrange_stdio(i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @log_error_errno(i32 %37, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  store i32 %38, i32* %1, align 4
  br label %42

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39, %20
  %41 = call i32 (...) @reset_terminal_feature_caches()
  store i32 0, i32* %1, align 4
  br label %42

42:                                               ; preds = %40, %36, %17
  %43 = load i32, i32* %1, align 4
  ret i32 %43
}

declare dso_local i32 @acquire_terminal(i8*, i32, i32) #1

declare dso_local i32 @log_warning_errno(i32, i8*) #1

declare dso_local i32 @make_null_stdio(...) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i32 @reset_terminal_fd(i32, i32) #1

declare dso_local i32 @rearrange_stdio(i32, i32, i32) #1

declare dso_local i32 @reset_terminal_feature_caches(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
