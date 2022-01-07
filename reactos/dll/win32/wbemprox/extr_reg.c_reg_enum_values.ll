; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_reg.c_reg_enum_values.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_reg.c_reg_enum_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"%p, %p\0A\00", align 1
@param_defkeyW = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@param_subkeynameW = common dso_local global i32 0, align 4
@class_stdregprovW = common dso_local global i32 0, align 4
@method_enumvaluesW = common dso_local global i32 0, align 4
@PARAM_OUT = common dso_local global i32 0, align 4
@param_namesW = common dso_local global i32 0, align 4
@CIM_STRING = common dso_local global i32 0, align 4
@CIM_FLAG_ARRAY = common dso_local global i32 0, align 4
@param_typesW = common dso_local global i32 0, align 4
@CIM_SINT32 = common dso_local global i32 0, align 4
@param_returnvalueW = common dso_local global i32 0, align 4
@CIM_UINT32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @reg_enum_values(i32* %0, i32* %1, i32** %2) #0 {
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
  br label %133

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
  br label %133

36:                                               ; preds = %27
  %37 = load i32, i32* @class_stdregprovW, align 4
  %38 = load i32, i32* @method_enumvaluesW, align 4
  %39 = load i32, i32* @PARAM_OUT, align 4
  %40 = call i64 @create_signature(i32 %37, i32 %38, i32 %39, i32** %13)
  store i64 %40, i64* %15, align 8
  %41 = load i64, i64* %15, align 8
  %42 = load i64, i64* @S_OK, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = call i32 @VariantClear(i32* %9)
  %46 = load i64, i64* %15, align 8
  store i64 %46, i64* %4, align 8
  br label %133

47:                                               ; preds = %36
  %48 = load i32**, i32*** %7, align 8
  %49 = icmp ne i32** %48, null
  br i1 %49, label %50, label %62

50:                                               ; preds = %47
  %51 = load i32*, i32** %13, align 8
  %52 = call i64 @IWbemClassObject_SpawnInstance(i32* %51, i32 0, i32** %14)
  store i64 %52, i64* %15, align 8
  %53 = load i64, i64* %15, align 8
  %54 = load i64, i64* @S_OK, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = call i32 @VariantClear(i32* %9)
  %58 = load i32*, i32** %13, align 8
  %59 = call i32 @IWbemClassObject_Release(i32* %58)
  %60 = load i64, i64* %15, align 8
  store i64 %60, i64* %4, align 8
  br label %133

61:                                               ; preds = %50
  br label %62

62:                                               ; preds = %61, %47
  %63 = call i32 @VariantInit(i32* %10)
  %64 = call i32 @VariantInit(i32* %11)
  %65 = call i64 @V_I4(i32* %8)
  %66 = trunc i64 %65 to i32
  %67 = call i32 @V_BSTR(i32* %9)
  %68 = call i64 @enum_values(i32 %66, i32 %67, i32* %10, i32* %11, i32* %12)
  store i64 %68, i64* %15, align 8
  %69 = load i64, i64* %15, align 8
  %70 = load i64, i64* @S_OK, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %62
  br label %108

73:                                               ; preds = %62
  %74 = load i32*, i32** %14, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %107

76:                                               ; preds = %73
  %77 = call i32 @V_UI4(i32* %12)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %102, label %79

79:                                               ; preds = %76
  %80 = load i32*, i32** %14, align 8
  %81 = load i32, i32* @param_namesW, align 4
  %82 = load i32, i32* @CIM_STRING, align 4
  %83 = load i32, i32* @CIM_FLAG_ARRAY, align 4
  %84 = or i32 %82, %83
  %85 = call i64 @IWbemClassObject_Put(i32* %80, i32 %81, i32 0, i32* %10, i32 %84)
  store i64 %85, i64* %15, align 8
  %86 = load i64, i64* %15, align 8
  %87 = load i64, i64* @S_OK, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %79
  br label %108

90:                                               ; preds = %79
  %91 = load i32*, i32** %14, align 8
  %92 = load i32, i32* @param_typesW, align 4
  %93 = load i32, i32* @CIM_SINT32, align 4
  %94 = load i32, i32* @CIM_FLAG_ARRAY, align 4
  %95 = or i32 %93, %94
  %96 = call i64 @IWbemClassObject_Put(i32* %91, i32 %92, i32 0, i32* %11, i32 %95)
  store i64 %96, i64* %15, align 8
  %97 = load i64, i64* %15, align 8
  %98 = load i64, i64* @S_OK, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %90
  br label %108

101:                                              ; preds = %90
  br label %102

102:                                              ; preds = %101, %76
  %103 = load i32*, i32** %14, align 8
  %104 = load i32, i32* @param_returnvalueW, align 4
  %105 = load i32, i32* @CIM_UINT32, align 4
  %106 = call i64 @IWbemClassObject_Put(i32* %103, i32 %104, i32 0, i32* %12, i32 %105)
  store i64 %106, i64* %15, align 8
  br label %107

107:                                              ; preds = %102, %73
  br label %108

108:                                              ; preds = %107, %100, %89, %72
  %109 = call i32 @VariantClear(i32* %11)
  %110 = call i32 @VariantClear(i32* %10)
  %111 = call i32 @VariantClear(i32* %9)
  %112 = load i32*, i32** %13, align 8
  %113 = call i32 @IWbemClassObject_Release(i32* %112)
  %114 = load i64, i64* %15, align 8
  %115 = load i64, i64* @S_OK, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %125

117:                                              ; preds = %108
  %118 = load i32**, i32*** %7, align 8
  %119 = icmp ne i32** %118, null
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = load i32*, i32** %14, align 8
  %122 = load i32**, i32*** %7, align 8
  store i32* %121, i32** %122, align 8
  %123 = load i32*, i32** %14, align 8
  %124 = call i32 @IWbemClassObject_AddRef(i32* %123)
  br label %125

125:                                              ; preds = %120, %117, %108
  %126 = load i32*, i32** %14, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load i32*, i32** %14, align 8
  %130 = call i32 @IWbemClassObject_Release(i32* %129)
  br label %131

131:                                              ; preds = %128, %125
  %132 = load i64, i64* %15, align 8
  store i64 %132, i64* %4, align 8
  br label %133

133:                                              ; preds = %131, %56, %44, %34, %25
  %134 = load i64, i64* %4, align 8
  ret i64 %134
}

declare dso_local i32 @TRACE(i8*, i32*, i32**) #1

declare dso_local i64 @IWbemClassObject_Get(i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i64 @create_signature(i32, i32, i32, i32**) #1

declare dso_local i32 @VariantClear(i32*) #1

declare dso_local i64 @IWbemClassObject_SpawnInstance(i32*, i32, i32**) #1

declare dso_local i32 @IWbemClassObject_Release(i32*) #1

declare dso_local i32 @VariantInit(i32*) #1

declare dso_local i64 @enum_values(i32, i32, i32*, i32*, i32*) #1

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
