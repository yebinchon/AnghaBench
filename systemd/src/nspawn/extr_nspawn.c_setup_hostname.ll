; ModuleID = '/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn.c_setup_hostname.c'
source_filename = "/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn.c_setup_hostname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arg_clone_ns_flags = common dso_local global i32 0, align 4
@CLONE_NEWUTS = common dso_local global i32 0, align 4
@arg_hostname = common dso_local global i64 0, align 8
@arg_machine = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to set hostname: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @setup_hostname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_hostname() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @arg_clone_ns_flags, align 4
  %4 = load i32, i32* @CLONE_NEWUTS, align 4
  %5 = and i32 %3, %4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %25

8:                                                ; preds = %0
  %9 = load i64, i64* @arg_hostname, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  br label %15

12:                                               ; preds = %8
  %13 = load i32, i32* @arg_machine, align 4
  %14 = sext i32 %13 to i64
  br label %15

15:                                               ; preds = %12, %11
  %16 = phi i64 [ %9, %11 ], [ %14, %12 ]
  %17 = trunc i64 %16 to i32
  %18 = call i32 @sethostname_idempotent(i32 %17)
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @log_error_errno(i32 %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 %23, i32* %1, align 4
  br label %25

24:                                               ; preds = %15
  store i32 0, i32* %1, align 4
  br label %25

25:                                               ; preds = %24, %21, %7
  %26 = load i32, i32* %1, align 4
  ret i32 %26
}

declare dso_local i32 @sethostname_idempotent(i32) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
