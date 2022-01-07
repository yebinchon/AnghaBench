; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_security.c_security_get_sd.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_security.c_security_get_sd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"%p, %p\0A\00", align 1
@class_systemsecurityW = common dso_local global i32 0, align 4
@method_getsdW = common dso_local global i32 0, align 4
@PARAM_OUT = common dso_local global i32 0, align 4
@param_sdW = common dso_local global i32 0, align 4
@CIM_UINT8 = common dso_local global i32 0, align 4
@CIM_FLAG_ARRAY = common dso_local global i32 0, align 4
@VT_UI4 = common dso_local global i32 0, align 4
@param_returnvalueW = common dso_local global i32 0, align 4
@CIM_UINT32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @security_get_sd(i32* %0, i32* %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32** %2, i32*** %6, align 8
  store i32* null, i32** %10, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i32**, i32*** %6, align 8
  %17 = call i32 @TRACE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %15, i32** %16)
  %18 = load i32, i32* @class_systemsecurityW, align 4
  %19 = load i32, i32* @method_getsdW, align 4
  %20 = load i32, i32* @PARAM_OUT, align 4
  %21 = call i32 @create_signature(i32 %18, i32 %19, i32 %20, i32** %9)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = call i64 @SUCCEEDED(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load i32*, i32** %9, align 8
  %27 = call i32 @IWbemClassObject_SpawnInstance(i32* %26, i32 0, i32** %10)
  store i32 %27, i32* %11, align 4
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @IWbemClassObject_Release(i32* %28)
  br label %30

30:                                               ; preds = %25, %3
  %31 = load i32, i32* %11, align 4
  %32 = call i64 @SUCCEEDED(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %86

34:                                               ; preds = %30
  %35 = call i32 @get_sd(i32** %13, i32* %14)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = call i64 @SUCCEEDED(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %34
  %40 = call i32 @VariantInit(i32* %7)
  %41 = load i32*, i32** %13, align 8
  %42 = load i32, i32* %14, align 4
  %43 = call i32 @to_byte_array(i32* %41, i32 %42, i32* %7)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i64 @SUCCEEDED(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %39
  %48 = load i32*, i32** %10, align 8
  %49 = load i32, i32* @param_sdW, align 4
  %50 = load i32, i32* @CIM_UINT8, align 4
  %51 = load i32, i32* @CIM_FLAG_ARRAY, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @IWbemClassObject_Put(i32* %48, i32 %49, i32 0, i32* %7, i32 %52)
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %47, %39
  %55 = call i32 (...) @GetProcessHeap()
  %56 = load i32*, i32** %13, align 8
  %57 = call i32 @HeapFree(i32 %55, i32 0, i32* %56)
  %58 = call i32 @VariantClear(i32* %7)
  br label %59

59:                                               ; preds = %54, %34
  %60 = load i32, i32* %11, align 4
  %61 = call i64 @SUCCEEDED(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = load i32, i32* @VT_UI4, align 4
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @set_variant(i32 %64, i32 %65, i32* null, i32* %8)
  %67 = load i32*, i32** %10, align 8
  %68 = load i32, i32* @param_returnvalueW, align 4
  %69 = load i32, i32* @CIM_UINT32, align 4
  %70 = call i32 @IWbemClassObject_Put(i32* %67, i32 %68, i32 0, i32* %8, i32 %69)
  store i32 %70, i32* %11, align 4
  br label %71

71:                                               ; preds = %63, %59
  %72 = load i32, i32* %11, align 4
  %73 = call i64 @SUCCEEDED(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %71
  %76 = load i32**, i32*** %6, align 8
  %77 = icmp ne i32** %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = load i32*, i32** %10, align 8
  %80 = load i32**, i32*** %6, align 8
  store i32* %79, i32** %80, align 8
  %81 = load i32*, i32** %10, align 8
  %82 = call i32 @IWbemClassObject_AddRef(i32* %81)
  br label %83

83:                                               ; preds = %78, %75, %71
  %84 = load i32*, i32** %10, align 8
  %85 = call i32 @IWbemClassObject_Release(i32* %84)
  br label %86

86:                                               ; preds = %83, %30
  %87 = load i32, i32* %11, align 4
  ret i32 %87
}

declare dso_local i32 @TRACE(i8*, i32*, i32**) #1

declare dso_local i32 @create_signature(i32, i32, i32, i32**) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @IWbemClassObject_SpawnInstance(i32*, i32, i32**) #1

declare dso_local i32 @IWbemClassObject_Release(i32*) #1

declare dso_local i32 @get_sd(i32**, i32*) #1

declare dso_local i32 @VariantInit(i32*) #1

declare dso_local i32 @to_byte_array(i32*, i32, i32*) #1

declare dso_local i32 @IWbemClassObject_Put(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @VariantClear(i32*) #1

declare dso_local i32 @set_variant(i32, i32, i32*, i32*) #1

declare dso_local i32 @IWbemClassObject_AddRef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
