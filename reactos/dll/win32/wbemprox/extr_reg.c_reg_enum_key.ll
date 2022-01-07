; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_reg.c_reg_enum_key.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_reg.c_reg_enum_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"%p, %p\0A\00", align 1
@param_defkeyW = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@param_subkeynameW = common dso_local global i32 0, align 4
@class_stdregprovW = common dso_local global i32 0, align 4
@method_enumkeyW = common dso_local global i32 0, align 4
@PARAM_OUT = common dso_local global i32 0, align 4
@param_namesW = common dso_local global i32 0, align 4
@CIM_STRING = common dso_local global i32 0, align 4
@CIM_FLAG_ARRAY = common dso_local global i32 0, align 4
@param_returnvalueW = common dso_local global i32 0, align 4
@CIM_UINT32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @reg_enum_key(i32* %0, i32* %1, i32** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i32* null, i32** %13, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32**, i32*** %7, align 8
  %17 = call i32 @TRACE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %15, i32** %16)
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* @param_defkeyW, align 4
  %20 = call i64 @IWbemClassObject_Get(i32* %18, i32 %19, i32 0, i32* %8, i32* null, i32* null)
  store i64 %20, i64* %14, align 8
  %21 = load i64, i64* %14, align 8
  %22 = load i64, i64* @S_OK, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i64, i64* %14, align 8
  store i64 %25, i64* %4, align 8
  br label %119

26:                                               ; preds = %3
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* @param_subkeynameW, align 4
  %29 = call i64 @IWbemClassObject_Get(i32* %27, i32 %28, i32 0, i32* %9, i32* null, i32* null)
  store i64 %29, i64* %14, align 8
  %30 = load i64, i64* %14, align 8
  %31 = load i64, i64* @S_OK, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i64, i64* %14, align 8
  store i64 %34, i64* %4, align 8
  br label %119

35:                                               ; preds = %26
  %36 = load i32, i32* @class_stdregprovW, align 4
  %37 = load i32, i32* @method_enumkeyW, align 4
  %38 = load i32, i32* @PARAM_OUT, align 4
  %39 = call i64 @create_signature(i32 %36, i32 %37, i32 %38, i32** %12)
  store i64 %39, i64* %14, align 8
  %40 = load i64, i64* %14, align 8
  %41 = load i64, i64* @S_OK, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = call i32 @VariantClear(i32* %9)
  %45 = load i64, i64* %14, align 8
  store i64 %45, i64* %4, align 8
  br label %119

46:                                               ; preds = %35
  %47 = load i32**, i32*** %7, align 8
  %48 = icmp ne i32** %47, null
  br i1 %48, label %49, label %61

49:                                               ; preds = %46
  %50 = load i32*, i32** %12, align 8
  %51 = call i64 @IWbemClassObject_SpawnInstance(i32* %50, i32 0, i32** %13)
  store i64 %51, i64* %14, align 8
  %52 = load i64, i64* %14, align 8
  %53 = load i64, i64* @S_OK, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = call i32 @VariantClear(i32* %9)
  %57 = load i32*, i32** %12, align 8
  %58 = call i32 @IWbemClassObject_Release(i32* %57)
  %59 = load i64, i64* %14, align 8
  store i64 %59, i64* %4, align 8
  br label %119

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %60, %46
  %62 = call i32 @VariantInit(i32* %10)
  %63 = call i64 @V_I4(i32* %8)
  %64 = trunc i64 %63 to i32
  %65 = call i32 @V_BSTR(i32* %9)
  %66 = call i64 @enum_key(i32 %64, i32 %65, i32* %10, i32* %11)
  store i64 %66, i64* %14, align 8
  %67 = load i64, i64* %14, align 8
  %68 = load i64, i64* @S_OK, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  br label %95

71:                                               ; preds = %61
  %72 = load i32*, i32** %13, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %94

74:                                               ; preds = %71
  %75 = call i32 @V_UI4(i32* %11)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %89, label %77

77:                                               ; preds = %74
  %78 = load i32*, i32** %13, align 8
  %79 = load i32, i32* @param_namesW, align 4
  %80 = load i32, i32* @CIM_STRING, align 4
  %81 = load i32, i32* @CIM_FLAG_ARRAY, align 4
  %82 = or i32 %80, %81
  %83 = call i64 @IWbemClassObject_Put(i32* %78, i32 %79, i32 0, i32* %10, i32 %82)
  store i64 %83, i64* %14, align 8
  %84 = load i64, i64* %14, align 8
  %85 = load i64, i64* @S_OK, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  br label %95

88:                                               ; preds = %77
  br label %89

89:                                               ; preds = %88, %74
  %90 = load i32*, i32** %13, align 8
  %91 = load i32, i32* @param_returnvalueW, align 4
  %92 = load i32, i32* @CIM_UINT32, align 4
  %93 = call i64 @IWbemClassObject_Put(i32* %90, i32 %91, i32 0, i32* %11, i32 %92)
  store i64 %93, i64* %14, align 8
  br label %94

94:                                               ; preds = %89, %71
  br label %95

95:                                               ; preds = %94, %87, %70
  %96 = call i32 @VariantClear(i32* %10)
  %97 = call i32 @VariantClear(i32* %9)
  %98 = load i32*, i32** %12, align 8
  %99 = call i32 @IWbemClassObject_Release(i32* %98)
  %100 = load i64, i64* %14, align 8
  %101 = load i64, i64* @S_OK, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %111

103:                                              ; preds = %95
  %104 = load i32**, i32*** %7, align 8
  %105 = icmp ne i32** %104, null
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load i32*, i32** %13, align 8
  %108 = load i32**, i32*** %7, align 8
  store i32* %107, i32** %108, align 8
  %109 = load i32*, i32** %13, align 8
  %110 = call i32 @IWbemClassObject_AddRef(i32* %109)
  br label %111

111:                                              ; preds = %106, %103, %95
  %112 = load i32*, i32** %13, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i32*, i32** %13, align 8
  %116 = call i32 @IWbemClassObject_Release(i32* %115)
  br label %117

117:                                              ; preds = %114, %111
  %118 = load i64, i64* %14, align 8
  store i64 %118, i64* %4, align 8
  br label %119

119:                                              ; preds = %117, %55, %43, %33, %24
  %120 = load i64, i64* %4, align 8
  ret i64 %120
}

declare dso_local i32 @TRACE(i8*, i32*, i32**) #1

declare dso_local i64 @IWbemClassObject_Get(i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i64 @create_signature(i32, i32, i32, i32**) #1

declare dso_local i32 @VariantClear(i32*) #1

declare dso_local i64 @IWbemClassObject_SpawnInstance(i32*, i32, i32**) #1

declare dso_local i32 @IWbemClassObject_Release(i32*) #1

declare dso_local i32 @VariantInit(i32*) #1

declare dso_local i64 @enum_key(i32, i32, i32*, i32*) #1

declare dso_local i64 @V_I4(i32*) #1

declare dso_local i32 @V_BSTR(i32*) #1

declare dso_local i32 @V_UI4(i32*) #1

declare dso_local i64 @IWbemClassObject_Put(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @IWbemClassObject_AddRef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
