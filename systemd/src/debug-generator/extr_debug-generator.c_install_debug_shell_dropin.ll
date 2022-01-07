; ModuleID = '/home/carl/AnghaBench/systemd/src/debug-generator/extr_debug-generator.c_install_debug_shell_dropin.c'
source_filename = "/home/carl/AnghaBench/systemd/src/debug-generator/extr_debug-generator.c_install_debug_shell_dropin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arg_debug_shell = common dso_local global i32 0, align 4
@DEBUGTTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"debug-shell.service\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"tty\00", align 1
@.str.2 = private unnamed_addr constant [113 x i8] c"[Unit]\0ADescription=Early root shell on /dev/%s FOR DEBUGGING ONLY\0AConditionPathExists=\0A[Service]\0ATTYPath=/dev/%s\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"Failed to write drop-in for debug-shell.service, ignoring: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @install_debug_shell_dropin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @install_debug_shell_dropin(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @arg_debug_shell, align 4
  %5 = load i32, i32* @DEBUGTTY, align 4
  %6 = call i32 @skip_dev_prefix(i32 %5)
  %7 = call i64 @streq(i32 %4, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %20

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = load i32, i32* @arg_debug_shell, align 4
  %13 = load i32, i32* @arg_debug_shell, align 4
  %14 = call i32 @write_drop_in_format(i8* %11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.2, i64 0, i64 0), i32 %12, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @log_warning_errno(i32 %18, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0))
  br label %20

20:                                               ; preds = %9, %17, %10
  ret void
}

declare dso_local i64 @streq(i32, i32) #1

declare dso_local i32 @skip_dev_prefix(i32) #1

declare dso_local i32 @write_drop_in_format(i8*, i8*, i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @log_warning_errno(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
