; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_reg.c_reg_get_stringvalue.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_reg.c_reg_get_stringvalue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"%p, %p\0A\00", align 1
@param_defkeyW = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@param_subkeynameW = common dso_local global i32 0, align 4
@param_valuenameW = common dso_local global i32 0, align 4
@class_stdregprovW = common dso_local global i32 0, align 4
@method_getstringvalueW = common dso_local global i32 0, align 4
@PARAM_OUT = common dso_local global i32 0, align 4
@param_valueW = common dso_local global i32 0, align 4
@CIM_STRING = common dso_local global i32 0, align 4
@param_returnvalueW = common dso_local global i32 0, align 4
@CIM_UINT32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @reg_get_stringvalue(i32* %0, i32* %1, i32** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i32* null, i32** %14, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i32**, i32*** %7, align 8
  %18 = call i32 @TRACE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %16, i32** %17)
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* @param_defkeyW, align 4
  %21 = call i64 @IWbemClassObject_Get(i32* %19, i32 %20, i32 0, i32* %8, i32* null, i32* null)
  store i64 %21, i64* %15, align 8
  %22 = load i64, i64* %15, align 8
  %23 = load i64, i64* @S_OK, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i64, i64* %15, align 8
  store i64 %26, i64* %4, align 8
  br label %130

27:                                               ; preds = %3
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* @param_subkeynameW, align 4
  %30 = call i64 @IWbemClassObject_Get(i32* %28, i32 %29, i32 0, i32* %9, i32* null, i32* null)
  store i64 %30, i64* %15, align 8
  %31 = load i64, i64* %15, align 8
  %32 = load i64, i64* @S_OK, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i64, i64* %15, align 8
  store i64 %35, i64* %4, align 8
  br label %130

36:                                               ; preds = %27
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* @param_valuenameW, align 4
  %39 = call i64 @IWbemClassObject_Get(i32* %37, i32 %38, i32 0, i32* %10, i32* null, i32* null)
  store i64 %39, i64* %15, align 8
  %40 = load i64, i64* %15, align 8
  %41 = load i64, i64* @S_OK, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i64, i64* %15, align 8
  store i64 %44, i64* %4, align 8
  br label %130

45:                                               ; preds = %36
  %46 = load i32, i32* @class_stdregprovW, align 4
  %47 = load i32, i32* @method_getstringvalueW, align 4
  %48 = load i32, i32* @PARAM_OUT, align 4
  %49 = call i64 @create_signature(i32 %46, i32 %47, i32 %48, i32** %13)
  store i64 %49, i64* %15, align 8
  %50 = load i64, i64* %15, align 8
  %51 = load i64, i64* @S_OK, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = call i32 @VariantClear(i32* %10)
  %55 = call i32 @VariantClear(i32* %9)
  %56 = load i64, i64* %15, align 8
  store i64 %56, i64* %4, align 8
  br label %130

57:                                               ; preds = %45
  %58 = load i32**, i32*** %7, align 8
  %59 = icmp ne i32** %58, null
  br i1 %59, label %60, label %73

60:                                               ; preds = %57
  %61 = load i32*, i32** %13, align 8
  %62 = call i64 @IWbemClassObject_SpawnInstance(i32* %61, i32 0, i32** %14)
  store i64 %62, i64* %15, align 8
  %63 = load i64, i64* %15, align 8
  %64 = load i64, i64* @S_OK, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = call i32 @VariantClear(i32* %10)
  %68 = call i32 @VariantClear(i32* %9)
  %69 = load i32*, i32** %13, align 8
  %70 = call i32 @IWbemClassObject_Release(i32* %69)
  %71 = load i64, i64* %15, align 8
  store i64 %71, i64* %4, align 8
  br label %130

72:                                               ; preds = %60
  br label %73

73:                                               ; preds = %72, %57
  %74 = call i32 @VariantInit(i32* %11)
  %75 = call i64 @V_I4(i32* %8)
  %76 = trunc i64 %75 to i32
  %77 = call i32 @V_BSTR(i32* %9)
  %78 = call i32 @V_BSTR(i32* %10)
  %79 = call i64 @get_stringvalue(i32 %76, i32 %77, i32 %78, i32* %11, i32* %12)
  store i64 %79, i64* %15, align 8
  %80 = load i64, i64* %15, align 8
  %81 = load i64, i64* @S_OK, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %73
  br label %106

84:                                               ; preds = %73
  %85 = load i32*, i32** %14, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %105

87:                                               ; preds = %84
  %88 = call i32 @V_UI4(i32* %12)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %100, label %90

90:                                               ; preds = %87
  %91 = load i32*, i32** %14, align 8
  %92 = load i32, i32* @param_valueW, align 4
  %93 = load i32, i32* @CIM_STRING, align 4
  %94 = call i64 @IWbemClassObject_Put(i32* %91, i32 %92, i32 0, i32* %11, i32 %93)
  store i64 %94, i64* %15, align 8
  %95 = load i64, i64* %15, align 8
  %96 = load i64, i64* @S_OK, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  br label %106

99:                                               ; preds = %90
  br label %100

100:                                              ; preds = %99, %87
  %101 = load i32*, i32** %14, align 8
  %102 = load i32, i32* @param_returnvalueW, align 4
  %103 = load i32, i32* @CIM_UINT32, align 4
  %104 = call i64 @IWbemClassObject_Put(i32* %101, i32 %102, i32 0, i32* %12, i32 %103)
  store i64 %104, i64* %15, align 8
  br label %105

105:                                              ; preds = %100, %84
  br label %106

106:                                              ; preds = %105, %98, %83
  %107 = call i32 @VariantClear(i32* %10)
  %108 = call i32 @VariantClear(i32* %9)
  %109 = load i32*, i32** %13, align 8
  %110 = call i32 @IWbemClassObject_Release(i32* %109)
  %111 = load i64, i64* %15, align 8
  %112 = load i64, i64* @S_OK, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %106
  %115 = load i32**, i32*** %7, align 8
  %116 = icmp ne i32** %115, null
  br i1 %116, label %117, label %122

117:                                              ; preds = %114
  %118 = load i32*, i32** %14, align 8
  %119 = load i32**, i32*** %7, align 8
  store i32* %118, i32** %119, align 8
  %120 = load i32*, i32** %14, align 8
  %121 = call i32 @IWbemClassObject_AddRef(i32* %120)
  br label %122

122:                                              ; preds = %117, %114, %106
  %123 = load i32*, i32** %14, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load i32*, i32** %14, align 8
  %127 = call i32 @IWbemClassObject_Release(i32* %126)
  br label %128

128:                                              ; preds = %125, %122
  %129 = load i64, i64* %15, align 8
  store i64 %129, i64* %4, align 8
  br label %130

130:                                              ; preds = %128, %66, %53, %43, %34, %25
  %131 = load i64, i64* %4, align 8
  ret i64 %131
}

declare dso_local i32 @TRACE(i8*, i32*, i32**) #1

declare dso_local i64 @IWbemClassObject_Get(i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i64 @create_signature(i32, i32, i32, i32**) #1

declare dso_local i32 @VariantClear(i32*) #1

declare dso_local i64 @IWbemClassObject_SpawnInstance(i32*, i32, i32**) #1

declare dso_local i32 @IWbemClassObject_Release(i32*) #1

declare dso_local i32 @VariantInit(i32*) #1

declare dso_local i64 @get_stringvalue(i32, i32, i32, i32*, i32*) #1

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
