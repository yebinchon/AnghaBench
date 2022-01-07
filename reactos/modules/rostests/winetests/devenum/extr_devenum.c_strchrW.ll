; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/devenum/extr_devenum.c_strchrW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/devenum/extr_devenum.c_strchrW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i64*, i64)* @strchrW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @strchrW(i64* %0, i64 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  br label %6

6:                                                ; preds = %14, %2
  %7 = load i64*, i64** %4, align 8
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = load i64*, i64** %4, align 8
  store i64* %12, i64** %3, align 8
  br label %20

13:                                               ; preds = %6
  br label %14

14:                                               ; preds = %13
  %15 = load i64*, i64** %4, align 8
  %16 = getelementptr inbounds i64, i64* %15, i32 1
  store i64* %16, i64** %4, align 8
  %17 = load i64, i64* %15, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %6, label %19

19:                                               ; preds = %14
  store i64* null, i64** %3, align 8
  br label %20

20:                                               ; preds = %19, %11
  %21 = load i64*, i64** %3, align 8
  ret i64* %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
