; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_reg.c_reg_create_key.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_reg.c_reg_create_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"%p, %p\0A\00", align 1
@param_defkeyW = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@param_subkeynameW = common dso_local global i32 0, align 4
@class_stdregprovW = common dso_local global i32 0, align 4
@method_createkeyW = common dso_local global i32 0, align 4
@PARAM_OUT = common dso_local global i32 0, align 4
@param_returnvalueW = common dso_local global i32 0, align 4
@CIM_UINT32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @reg_create_key(i32* %0, i32* %1, i32** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i32* null, i32** %12, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32**, i32*** %7, align 8
  %16 = call i32 @TRACE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %14, i32** %15)
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* @param_defkeyW, align 4
  %19 = call i64 @IWbemClassObject_Get(i32* %17, i32 %18, i32 0, i32* %8, i32* null, i32* null)
  store i64 %19, i64* %13, align 8
  %20 = load i64, i64* %13, align 8
  %21 = load i64, i64* @S_OK, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i64, i64* %13, align 8
  store i64 %24, i64* %4, align 8
  br label %99

25:                                               ; preds = %3
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* @param_subkeynameW, align 4
  %28 = call i64 @IWbemClassObject_Get(i32* %26, i32 %27, i32 0, i32* %9, i32* null, i32* null)
  store i64 %28, i64* %13, align 8
  %29 = load i64, i64* %13, align 8
  %30 = load i64, i64* @S_OK, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i64, i64* %13, align 8
  store i64 %33, i64* %4, align 8
  br label %99

34:                                               ; preds = %25
  %35 = load i32, i32* @class_stdregprovW, align 4
  %36 = load i32, i32* @method_createkeyW, align 4
  %37 = load i32, i32* @PARAM_OUT, align 4
  %38 = call i64 @create_signature(i32 %35, i32 %36, i32 %37, i32** %11)
  store i64 %38, i64* %13, align 8
  %39 = load i64, i64* %13, align 8
  %40 = load i64, i64* @S_OK, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = call i32 @VariantClear(i32* %9)
  %44 = load i64, i64* %13, align 8
  store i64 %44, i64* %4, align 8
  br label %99

45:                                               ; preds = %34
  %46 = load i32**, i32*** %7, align 8
  %47 = icmp ne i32** %46, null
  br i1 %47, label %48, label %60

48:                                               ; preds = %45
  %49 = load i32*, i32** %11, align 8
  %50 = call i64 @IWbemClassObject_SpawnInstance(i32* %49, i32 0, i32** %12)
  store i64 %50, i64* %13, align 8
  %51 = load i64, i64* %13, align 8
  %52 = load i64, i64* @S_OK, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = call i32 @VariantClear(i32* %9)
  %56 = load i32*, i32** %11, align 8
  %57 = call i32 @IWbemClassObject_Release(i32* %56)
  %58 = load i64, i64* %13, align 8
  store i64 %58, i64* %4, align 8
  br label %99

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %59, %45
  %61 = call i64 @V_I4(i32* %8)
  %62 = trunc i64 %61 to i32
  %63 = call i32 @V_BSTR(i32* %9)
  %64 = call i64 @create_key(i32 %62, i32 %63, i32* %10)
  store i64 %64, i64* %13, align 8
  %65 = load i64, i64* %13, align 8
  %66 = load i64, i64* @S_OK, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %60
  %69 = load i32*, i32** %12, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load i32*, i32** %12, align 8
  %73 = load i32, i32* @param_returnvalueW, align 4
  %74 = load i32, i32* @CIM_UINT32, align 4
  %75 = call i64 @IWbemClassObject_Put(i32* %72, i32 %73, i32 0, i32* %10, i32 %74)
  store i64 %75, i64* %13, align 8
  br label %76

76:                                               ; preds = %71, %68, %60
  %77 = call i32 @VariantClear(i32* %9)
  %78 = load i32*, i32** %11, align 8
  %79 = call i32 @IWbemClassObject_Release(i32* %78)
  %80 = load i64, i64* %13, align 8
  %81 = load i64, i64* @S_OK, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %76
  %84 = load i32**, i32*** %7, align 8
  %85 = icmp ne i32** %84, null
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load i32*, i32** %12, align 8
  %88 = load i32**, i32*** %7, align 8
  store i32* %87, i32** %88, align 8
  %89 = load i32*, i32** %12, align 8
  %90 = call i32 @IWbemClassObject_AddRef(i32* %89)
  br label %91

91:                                               ; preds = %86, %83, %76
  %92 = load i32*, i32** %12, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32*, i32** %12, align 8
  %96 = call i32 @IWbemClassObject_Release(i32* %95)
  br label %97

97:                                               ; preds = %94, %91
  %98 = load i64, i64* %13, align 8
  store i64 %98, i64* %4, align 8
  br label %99

99:                                               ; preds = %97, %54, %42, %32, %23
  %100 = load i64, i64* %4, align 8
  ret i64 %100
}

declare dso_local i32 @TRACE(i8*, i32*, i32**) #1

declare dso_local i64 @IWbemClassObject_Get(i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i64 @create_signature(i32, i32, i32, i32**) #1

declare dso_local i32 @VariantClear(i32*) #1

declare dso_local i64 @IWbemClassObject_SpawnInstance(i32*, i32, i32**) #1

declare dso_local i32 @IWbemClassObject_Release(i32*) #1

declare dso_local i64 @create_key(i32, i32, i32*) #1

declare dso_local i64 @V_I4(i32*) #1

declare dso_local i32 @V_BSTR(i32*) #1

declare dso_local i64 @IWbemClassObject_Put(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @IWbemClassObject_AddRef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
