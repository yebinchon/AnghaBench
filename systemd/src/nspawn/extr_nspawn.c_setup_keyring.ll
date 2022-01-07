; ModuleID = '/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn.c_setup_keyring.c'
source_filename = "/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn.c_setup_keyring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KEYCTL_JOIN_SESSION_KEYRING = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Kernel keyring not supported, ignoring.\00", align 1
@EACCES = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Kernel keyring access prohibited, ignoring.\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Setting up kernel keyring failed: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @setup_keyring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_keyring() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @KEYCTL_JOIN_SESSION_KEYRING, align 4
  %4 = call i32 @keyctl(i32 %3, i32 0, i32 0, i32 0, i32 0)
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %28

7:                                                ; preds = %0
  %8 = load i64, i64* @errno, align 8
  %9 = load i64, i64* @ENOSYS, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load i64, i64* @errno, align 8
  %13 = call i32 @log_debug_errno(i64 %12, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %27

14:                                               ; preds = %7
  %15 = load i64, i64* @errno, align 8
  %16 = load i32, i32* @EACCES, align 4
  %17 = load i32, i32* @EPERM, align 4
  %18 = call i64 @IN_SET(i64 %15, i32 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i64, i64* @errno, align 8
  %22 = call i32 @log_debug_errno(i64 %21, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %26

23:                                               ; preds = %14
  %24 = load i64, i64* @errno, align 8
  %25 = call i32 @log_error_errno(i64 %24, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  store i32 %25, i32* %1, align 4
  br label %29

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26, %11
  br label %28

28:                                               ; preds = %27, %0
  store i32 0, i32* %1, align 4
  br label %29

29:                                               ; preds = %28, %23
  %30 = load i32, i32* %1, align 4
  ret i32 %30
}

declare dso_local i32 @keyctl(i32, i32, i32, i32, i32) #1

declare dso_local i32 @log_debug_errno(i64, i8*) #1

declare dso_local i64 @IN_SET(i64, i32, i32) #1

declare dso_local i32 @log_error_errno(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
