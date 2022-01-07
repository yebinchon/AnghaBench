; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_variant.c_VARIANT_ValidateType.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_variant.c_VARIANT_ValidateType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VT_EXTRA_TYPE = common dso_local global i32 0, align 4
@VT_TYPEMASK = common dso_local global i32 0, align 4
@VT_VECTOR = common dso_local global i32 0, align 4
@VT_RESERVED = common dso_local global i32 0, align 4
@VT_VOID = common dso_local global i32 0, align 4
@VT_RECORD = common dso_local global i32 0, align 4
@VT_CLSID = common dso_local global i32 0, align 4
@VT_BYREF = common dso_local global i32 0, align 4
@VT_ARRAY = common dso_local global i32 0, align 4
@VT_NULL = common dso_local global i32 0, align 4
@DISP_E_BADVARTYPE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @VARIANT_ValidateType to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @VARIANT_ValidateType(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @VT_EXTRA_TYPE, align 4
  %7 = and i32 %5, %6
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @VT_TYPEMASK, align 4
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, %8
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @VT_VECTOR, align 4
  %13 = load i32, i32* @VT_RESERVED, align 4
  %14 = or i32 %12, %13
  %15 = and i32 %11, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %49, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @VT_VOID, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @VT_RECORD, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @VT_CLSID, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %25, %21, %17
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @VT_BYREF, align 4
  %32 = load i32, i32* @VT_ARRAY, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @VT_NULL, align 4
  %39 = icmp sle i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @DISP_E_BADVARTYPE, align 4
  store i32 %41, i32* %2, align 4
  br label %51

42:                                               ; preds = %36, %29
  %43 = load i32, i32* %3, align 4
  %44 = icmp ne i32 %43, 15
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* @S_OK, align 4
  store i32 %46, i32* %2, align 4
  br label %51

47:                                               ; preds = %42
  br label %48

48:                                               ; preds = %47, %25
  br label %49

49:                                               ; preds = %48, %1
  %50 = load i32, i32* @DISP_E_BADVARTYPE, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %49, %45, %40
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
