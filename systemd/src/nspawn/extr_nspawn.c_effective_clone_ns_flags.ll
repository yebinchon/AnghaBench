; ModuleID = '/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn.c_effective_clone_ns_flags.c'
source_filename = "/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn.c_effective_clone_ns_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arg_clone_ns_flags = common dso_local global i64 0, align 8
@arg_private_network = common dso_local global i64 0, align 8
@CLONE_NEWNET = common dso_local global i64 0, align 8
@arg_use_cgns = common dso_local global i64 0, align 8
@CLONE_NEWCGROUP = common dso_local global i64 0, align 8
@arg_userns_mode = common dso_local global i64 0, align 8
@USER_NAMESPACE_NO = common dso_local global i64 0, align 8
@CLONE_NEWUSER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @effective_clone_ns_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @effective_clone_ns_flags() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* @arg_clone_ns_flags, align 8
  store i64 %2, i64* %1, align 8
  %3 = load i64, i64* @arg_private_network, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = load i64, i64* @CLONE_NEWNET, align 8
  %7 = load i64, i64* %1, align 8
  %8 = or i64 %7, %6
  store i64 %8, i64* %1, align 8
  br label %9

9:                                                ; preds = %5, %0
  %10 = load i64, i64* @arg_use_cgns, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i64, i64* @CLONE_NEWCGROUP, align 8
  %14 = load i64, i64* %1, align 8
  %15 = or i64 %14, %13
  store i64 %15, i64* %1, align 8
  br label %16

16:                                               ; preds = %12, %9
  %17 = load i64, i64* @arg_userns_mode, align 8
  %18 = load i64, i64* @USER_NAMESPACE_NO, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i64, i64* @CLONE_NEWUSER, align 8
  %22 = load i64, i64* %1, align 8
  %23 = or i64 %22, %21
  store i64 %23, i64* %1, align 8
  br label %24

24:                                               ; preds = %20, %16
  %25 = load i64, i64* %1, align 8
  ret i64 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
