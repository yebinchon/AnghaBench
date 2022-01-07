; ModuleID = '/home/carl/AnghaBench/systemd/src/cryptsetup/extr_cryptsetup.c_determine_flags.c'
source_filename = "/home/carl/AnghaBench/systemd/src/cryptsetup/extr_cryptsetup.c_determine_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arg_readonly = common dso_local global i64 0, align 8
@CRYPT_ACTIVATE_READONLY = common dso_local global i32 0, align 4
@arg_discards = common dso_local global i64 0, align 8
@CRYPT_ACTIVATE_ALLOW_DISCARDS = common dso_local global i32 0, align 4
@arg_same_cpu_crypt = common dso_local global i64 0, align 8
@CRYPT_ACTIVATE_SAME_CPU_CRYPT = common dso_local global i32 0, align 4
@arg_submit_from_crypt_cpus = common dso_local global i64 0, align 8
@CRYPT_ACTIVATE_SUBMIT_FROM_CRYPT_CPUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @determine_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @determine_flags() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i64, i64* @arg_readonly, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  %5 = load i32, i32* @CRYPT_ACTIVATE_READONLY, align 4
  %6 = load i32, i32* %1, align 4
  %7 = or i32 %6, %5
  store i32 %7, i32* %1, align 4
  br label %8

8:                                                ; preds = %4, %0
  %9 = load i64, i64* @arg_discards, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load i32, i32* @CRYPT_ACTIVATE_ALLOW_DISCARDS, align 4
  %13 = load i32, i32* %1, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %1, align 4
  br label %15

15:                                               ; preds = %11, %8
  %16 = load i64, i64* @arg_same_cpu_crypt, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, i32* @CRYPT_ACTIVATE_SAME_CPU_CRYPT, align 4
  %20 = load i32, i32* %1, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %1, align 4
  br label %22

22:                                               ; preds = %18, %15
  %23 = load i64, i64* @arg_submit_from_crypt_cpus, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* @CRYPT_ACTIVATE_SUBMIT_FROM_CRYPT_CPUS, align 4
  %27 = load i32, i32* %1, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %1, align 4
  br label %29

29:                                               ; preds = %25, %22
  %30 = load i32, i32* %1, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
