; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/unarr/lzmasdk/extr_CpuArch.c_CPU_Is_InOrder.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/unarr/lzmasdk/extr_CpuArch.c_CPU_Is_InOrder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@True = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CPU_Is_InOrder() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i32 @x86cpuid_CheckAndRead(i32* %2)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @True, align 4
  store i32 %9, i32* %1, align 4
  br label %78

10:                                               ; preds = %0
  %11 = call i32 @x86cpuid_GetFamily(i32* %2)
  store i32 %11, i32* %4, align 4
  %12 = call i32 @x86cpuid_GetModel(i32* %2)
  store i32 %12, i32* %5, align 4
  %13 = call i32 @x86cpuid_GetFirm(i32* %2)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  switch i32 %14, label %76 [
    i32 129, label %15
    i32 130, label %43
    i32 128, label %62
  ]

15:                                               ; preds = %10
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 6
  br i1 %17, label %40, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 6
  br i1 %20, label %21, label %38

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 4108
  br i1 %23, label %36, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 8198
  br i1 %26, label %36, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, 8199
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, 12293
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %34, 12294
  br label %36

36:                                               ; preds = %33, %30, %27, %24, %21
  %37 = phi i1 [ true, %30 ], [ true, %27 ], [ true, %24 ], [ true, %21 ], [ %35, %33 ]
  br label %38

38:                                               ; preds = %36, %18
  %39 = phi i1 [ false, %18 ], [ %37, %36 ]
  br label %40

40:                                               ; preds = %38, %15
  %41 = phi i1 [ true, %15 ], [ %39, %38 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %1, align 4
  br label %78

43:                                               ; preds = %10
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %44, 5
  br i1 %45, label %59, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %4, align 4
  %48 = icmp eq i32 %47, 5
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load i32, i32* %5, align 4
  %51 = icmp slt i32 %50, 6
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %5, align 4
  %54 = icmp eq i32 %53, 10
  br label %55

55:                                               ; preds = %52, %49
  %56 = phi i1 [ true, %49 ], [ %54, %52 ]
  br label %57

57:                                               ; preds = %55, %46
  %58 = phi i1 [ false, %46 ], [ %56, %55 ]
  br label %59

59:                                               ; preds = %57, %43
  %60 = phi i1 [ true, %43 ], [ %58, %57 ]
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %1, align 4
  br label %78

62:                                               ; preds = %10
  %63 = load i32, i32* %4, align 4
  %64 = icmp slt i32 %63, 6
  br i1 %64, label %73, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %4, align 4
  %67 = icmp eq i32 %66, 6
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32, i32* %5, align 4
  %70 = icmp slt i32 %69, 15
  br label %71

71:                                               ; preds = %68, %65
  %72 = phi i1 [ false, %65 ], [ %70, %68 ]
  br label %73

73:                                               ; preds = %71, %62
  %74 = phi i1 [ true, %62 ], [ %72, %71 ]
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %1, align 4
  br label %78

76:                                               ; preds = %10
  %77 = load i32, i32* @True, align 4
  store i32 %77, i32* %1, align 4
  br label %78

78:                                               ; preds = %76, %73, %59, %40, %8
  %79 = load i32, i32* %1, align 4
  ret i32 %79
}

declare dso_local i32 @x86cpuid_CheckAndRead(i32*) #1

declare dso_local i32 @x86cpuid_GetFamily(i32*) #1

declare dso_local i32 @x86cpuid_GetModel(i32*) #1

declare dso_local i32 @x86cpuid_GetFirm(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
