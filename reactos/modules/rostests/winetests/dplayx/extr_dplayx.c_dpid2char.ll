; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/dplayx/extr_dplayx.c_dpid2char.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/dplayx/extr_dplayx.c_dpid2char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DPID_SYSMSG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i64*, i64, i64)* @dpid2char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @dpid2char(i64* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = load i64, i64* @DPID_SYSMSG, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i8 83, i8* %4, align 1
  br label %34

13:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  br label %14

14:                                               ; preds = %30, %13
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %14
  %19 = load i64, i64* %7, align 8
  %20 = load i64*, i64** %5, align 8
  %21 = load i64, i64* %8, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %19, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load i64, i64* %8, align 8
  %27 = add i64 %26, 48
  %28 = trunc i64 %27 to i8
  store i8 %28, i8* %4, align 1
  br label %34

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %29
  %31 = load i64, i64* %8, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %8, align 8
  br label %14

33:                                               ; preds = %14
  store i8 63, i8* %4, align 1
  br label %34

34:                                               ; preds = %33, %25, %12
  %35 = load i8, i8* %4, align 1
  ret i8 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
