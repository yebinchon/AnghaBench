; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_execute.c_exec_context_revert_tty.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_execute.c_exec_context_revert_tty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TTY_MODE = common dso_local global i32 0, align 4
@TTY_GID = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Failed to reset TTY ownership/access mode of %s, ignoring: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exec_context_revert_tty(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @assert(i32* %5)
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @exec_context_tty_reset(i32* %7, i32* null)
  %9 = load i32*, i32** %2, align 8
  %10 = call i64 @exec_context_may_touch_tty(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %1
  %13 = load i32*, i32** %2, align 8
  %14 = call i8* @exec_context_tty_path(i32* %13)
  store i8* %14, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %34

17:                                               ; preds = %12
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* @TTY_MODE, align 4
  %20 = load i32, i32* @TTY_GID, align 4
  %21 = call i32 @chmod_and_chown(i8* %18, i32 %19, i32 0, i32 %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %17
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @ENOENT, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp ne i32 %25, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* %3, align 4
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @log_warning_errno(i32 %30, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %29, %24, %17
  br label %34

34:                                               ; preds = %33, %12
  br label %35

35:                                               ; preds = %34, %1
  ret void
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @exec_context_tty_reset(i32*, i32*) #1

declare dso_local i64 @exec_context_may_touch_tty(i32*) #1

declare dso_local i8* @exec_context_tty_path(i32*) #1

declare dso_local i32 @chmod_and_chown(i8*, i32, i32, i32) #1

declare dso_local i32 @log_warning_errno(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
