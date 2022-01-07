; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_safearray.c_SAFEARRAY_GetVTSize.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_safearray.c_SAFEARRAY_GetVTSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@has_i8 = common dso_local global i32 0, align 4
@has_int_ptr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @SAFEARRAY_GetVTSize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SAFEARRAY_GetVTSize(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %27 [
    i32 143, label %5
    i32 135, label %5
    i32 150, label %6
    i32 142, label %6
    i32 134, label %6
    i32 141, label %7
    i32 133, label %7
    i32 137, label %7
    i32 144, label %7
    i32 136, label %8
    i32 140, label %9
    i32 132, label %9
    i32 139, label %14
    i32 131, label %14
    i32 138, label %15
    i32 130, label %15
    i32 148, label %20
    i32 147, label %21
    i32 149, label %22
    i32 145, label %23
    i32 128, label %24
    i32 129, label %25
    i32 146, label %26
  ]

5:                                                ; preds = %1, %1
  store i32 4, i32* %2, align 4
  br label %28

6:                                                ; preds = %1, %1, %1
  store i32 4, i32* %2, align 4
  br label %28

7:                                                ; preds = %1, %1, %1, %1
  store i32 4, i32* %2, align 4
  br label %28

8:                                                ; preds = %1
  store i32 4, i32* %2, align 4
  br label %28

9:                                                ; preds = %1, %1
  %10 = load i32, i32* @has_i8, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 4, i32* %2, align 4
  br label %28

13:                                               ; preds = %9
  br label %27

14:                                               ; preds = %1, %1
  store i32 4, i32* %2, align 4
  br label %28

15:                                               ; preds = %1, %1
  %16 = load i32, i32* @has_int_ptr, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 4, i32* %2, align 4
  br label %28

19:                                               ; preds = %15
  br label %27

20:                                               ; preds = %1
  store i32 4, i32* %2, align 4
  br label %28

21:                                               ; preds = %1
  store i32 4, i32* %2, align 4
  br label %28

22:                                               ; preds = %1
  store i32 4, i32* %2, align 4
  br label %28

23:                                               ; preds = %1
  store i32 4, i32* %2, align 4
  br label %28

24:                                               ; preds = %1
  store i32 4, i32* %2, align 4
  br label %28

25:                                               ; preds = %1
  store i32 4, i32* %2, align 4
  br label %28

26:                                               ; preds = %1
  store i32 4, i32* %2, align 4
  br label %28

27:                                               ; preds = %1, %19, %13
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %26, %25, %24, %23, %22, %21, %20, %18, %14, %12, %8, %7, %6, %5
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
