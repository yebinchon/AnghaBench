; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartest.c_IsValidVariantClearVT.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartest.c_IsValidVariantClearVT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@VT_LPWSTR = common dso_local global i64 0, align 8
@VT_RECORD = common dso_local global i64 0, align 8
@VT_CLSID = common dso_local global i64 0, align 8
@VT_BYREF = common dso_local global i64 0, align 8
@VT_ARRAY = common dso_local global i64 0, align 8
@VT_NULL = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@has_i8 = common dso_local global i32 0, align 4
@VT_I8 = common dso_local global i64 0, align 8
@VT_UI8 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @IsValidVariantClearVT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IsValidVariantClearVT(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i32, i32* @FALSE, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @VT_LPWSTR, align 8
  %9 = icmp sle i64 %7, %8
  br i1 %9, label %18, label %10

10:                                               ; preds = %2
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @VT_RECORD, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @VT_CLSID, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %57

18:                                               ; preds = %14, %10, %2
  %19 = load i64, i64* %3, align 8
  %20 = icmp ne i64 %19, 15
  br i1 %20, label %21, label %57

21:                                               ; preds = %18
  %22 = load i64, i64* %3, align 8
  %23 = icmp slt i64 %22, 24
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i64, i64* %3, align 8
  %26 = icmp sgt i64 %25, 31
  br i1 %26, label %27, label %57

27:                                               ; preds = %24, %21
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* @VT_BYREF, align 8
  %30 = load i64, i64* @VT_ARRAY, align 8
  %31 = or i64 %29, %30
  %32 = and i64 %28, %31
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i64, i64* %3, align 8
  %36 = load i64, i64* @VT_NULL, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %57

38:                                               ; preds = %34, %27
  %39 = load i64, i64* %4, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %55, label %41

41:                                               ; preds = %38
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* @VT_BYREF, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %55, label %45

45:                                               ; preds = %41
  %46 = load i64, i64* %4, align 8
  %47 = load i64, i64* @VT_ARRAY, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %55, label %49

49:                                               ; preds = %45
  %50 = load i64, i64* %4, align 8
  %51 = load i64, i64* @VT_ARRAY, align 8
  %52 = load i64, i64* @VT_BYREF, align 8
  %53 = or i64 %51, %52
  %54 = icmp eq i64 %50, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49, %45, %41, %38
  %56 = load i32, i32* @TRUE, align 4
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %55, %49, %34, %24, %18, %14
  %58 = load i32, i32* @has_i8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %57
  %61 = load i64, i64* %3, align 8
  %62 = load i64, i64* @VT_I8, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = load i64, i64* %3, align 8
  %66 = load i64, i64* @VT_UI8, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64, %60
  %69 = load i32, i32* @FALSE, align 4
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %68, %64, %57
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
