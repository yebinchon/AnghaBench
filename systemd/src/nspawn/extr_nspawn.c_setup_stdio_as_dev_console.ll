; ModuleID = '/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn.c_setup_stdio_as_dev_console.c'
source_filename = "/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn.c_setup_stdio_as_dev_console.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"/dev/console\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to open console: %m\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to duplicate stderr: %m\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"Failed to move console to stdin/stdout/stderr: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @setup_stdio_as_dev_console to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_stdio_as_dev_console() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @O_RDWR, align 4
  %5 = call i32 @open_terminal(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %4)
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @log_error_errno(i32 %9, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 %10, i32* %1, align 4
  br label %29

11:                                               ; preds = %0
  %12 = call i32 (...) @log_dup_console()
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @log_error_errno(i32 %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  store i32 %17, i32* %1, align 4
  br label %29

18:                                               ; preds = %11
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @rearrange_stdio(i32 %19, i32 %20, i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @log_error_errno(i32 %26, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  store i32 %27, i32* %1, align 4
  br label %29

28:                                               ; preds = %18
  store i32 0, i32* %1, align 4
  br label %29

29:                                               ; preds = %28, %25, %15, %8
  %30 = load i32, i32* %1, align 4
  ret i32 %30
}

declare dso_local i32 @open_terminal(i8*, i32) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i32 @log_dup_console(...) #1

declare dso_local i32 @rearrange_stdio(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
