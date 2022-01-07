; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_query.c_resolve_type.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_query.c_resolve_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CIM_ILLEGAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @resolve_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resolve_type(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %22 [
    i32 133, label %7
    i32 136, label %7
    i32 135, label %7
    i32 134, label %7
    i32 128, label %7
    i32 131, label %7
    i32 130, label %7
    i32 129, label %7
    i32 132, label %12
    i32 137, label %17
  ]

7:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %10 [
    i32 133, label %9
    i32 136, label %9
    i32 135, label %9
    i32 134, label %9
    i32 128, label %9
    i32 131, label %9
    i32 130, label %9
    i32 129, label %9
  ]

9:                                                ; preds = %7, %7, %7, %7, %7, %7, %7, %7
  store i32 129, i32* %3, align 4
  br label %25

10:                                               ; preds = %7
  br label %11

11:                                               ; preds = %10
  br label %23

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 132
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 132, i32* %3, align 4
  br label %25

16:                                               ; preds = %12
  br label %23

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 137
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 137, i32* %3, align 4
  br label %25

21:                                               ; preds = %17
  br label %23

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %22, %21, %16, %11
  %24 = load i32, i32* @CIM_ILLEGAL, align 4
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %23, %20, %15, %9
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
