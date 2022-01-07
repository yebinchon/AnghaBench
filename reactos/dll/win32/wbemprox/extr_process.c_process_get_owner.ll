; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_process.c_process_get_owner.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_process.c_process_get_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"%p, %p, %p\0A\00", align 1
@class_processW = common dso_local global i32 0, align 4
@method_getownerW = common dso_local global i32 0, align 4
@PARAM_OUT = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@param_userW = common dso_local global i32 0, align 4
@CIM_STRING = common dso_local global i32 0, align 4
@param_domainW = common dso_local global i32 0, align 4
@param_returnvalueW = common dso_local global i32 0, align 4
@CIM_UINT32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @process_get_owner(i32* %0, i32* %1, i32** %2) #0 {
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
  %14 = load i32*, i32** %5, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32**, i32*** %7, align 8
  %17 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %14, i32* %15, i32** %16)
  %18 = load i32, i32* @class_processW, align 4
  %19 = load i32, i32* @method_getownerW, align 4
  %20 = load i32, i32* @PARAM_OUT, align 4
  %21 = call i64 @create_signature(i32 %18, i32 %19, i32 %20, i32** %11)
  store i64 %21, i64* %13, align 8
  %22 = load i64, i64* %13, align 8
  %23 = load i64, i64* @S_OK, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i64, i64* %13, align 8
  store i64 %26, i64* %4, align 8
  br label %104

27:                                               ; preds = %3
  %28 = load i32**, i32*** %7, align 8
  %29 = icmp ne i32** %28, null
  br i1 %29, label %30, label %41

30:                                               ; preds = %27
  %31 = load i32*, i32** %11, align 8
  %32 = call i64 @IWbemClassObject_SpawnInstance(i32* %31, i32 0, i32** %12)
  store i64 %32, i64* %13, align 8
  %33 = load i64, i64* %13, align 8
  %34 = load i64, i64* @S_OK, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i32*, i32** %11, align 8
  %38 = call i32 @IWbemClassObject_Release(i32* %37)
  %39 = load i64, i64* %13, align 8
  store i64 %39, i64* %4, align 8
  br label %104

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40, %27
  %42 = call i32 @VariantInit(i32* %8)
  %43 = call i32 @VariantInit(i32* %9)
  %44 = call i64 @get_owner(i32* %8, i32* %9, i32* %10)
  store i64 %44, i64* %13, align 8
  %45 = load i64, i64* %13, align 8
  %46 = load i64, i64* @S_OK, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %80

49:                                               ; preds = %41
  %50 = load i32*, i32** %12, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %79

52:                                               ; preds = %49
  %53 = call i32 @V_UI4(i32* %10)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %74, label %55

55:                                               ; preds = %52
  %56 = load i32*, i32** %12, align 8
  %57 = load i32, i32* @param_userW, align 4
  %58 = load i32, i32* @CIM_STRING, align 4
  %59 = call i64 @IWbemClassObject_Put(i32* %56, i32 %57, i32 0, i32* %8, i32 %58)
  store i64 %59, i64* %13, align 8
  %60 = load i64, i64* %13, align 8
  %61 = load i64, i64* @S_OK, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %80

64:                                               ; preds = %55
  %65 = load i32*, i32** %12, align 8
  %66 = load i32, i32* @param_domainW, align 4
  %67 = load i32, i32* @CIM_STRING, align 4
  %68 = call i64 @IWbemClassObject_Put(i32* %65, i32 %66, i32 0, i32* %9, i32 %67)
  store i64 %68, i64* %13, align 8
  %69 = load i64, i64* %13, align 8
  %70 = load i64, i64* @S_OK, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %80

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %73, %52
  %75 = load i32*, i32** %12, align 8
  %76 = load i32, i32* @param_returnvalueW, align 4
  %77 = load i32, i32* @CIM_UINT32, align 4
  %78 = call i64 @IWbemClassObject_Put(i32* %75, i32 %76, i32 0, i32* %10, i32 %77)
  store i64 %78, i64* %13, align 8
  br label %79

79:                                               ; preds = %74, %49
  br label %80

80:                                               ; preds = %79, %72, %63, %48
  %81 = call i32 @VariantClear(i32* %8)
  %82 = call i32 @VariantClear(i32* %9)
  %83 = load i32*, i32** %11, align 8
  %84 = call i32 @IWbemClassObject_Release(i32* %83)
  %85 = load i64, i64* %13, align 8
  %86 = load i64, i64* @S_OK, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %96

88:                                               ; preds = %80
  %89 = load i32**, i32*** %7, align 8
  %90 = icmp ne i32** %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = load i32*, i32** %12, align 8
  %93 = load i32**, i32*** %7, align 8
  store i32* %92, i32** %93, align 8
  %94 = load i32*, i32** %12, align 8
  %95 = call i32 @IWbemClassObject_AddRef(i32* %94)
  br label %96

96:                                               ; preds = %91, %88, %80
  %97 = load i32*, i32** %12, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i32*, i32** %12, align 8
  %101 = call i32 @IWbemClassObject_Release(i32* %100)
  br label %102

102:                                              ; preds = %99, %96
  %103 = load i64, i64* %13, align 8
  store i64 %103, i64* %4, align 8
  br label %104

104:                                              ; preds = %102, %36, %25
  %105 = load i64, i64* %4, align 8
  ret i64 %105
}

declare dso_local i32 @TRACE(i8*, i32*, i32*, i32**) #1

declare dso_local i64 @create_signature(i32, i32, i32, i32**) #1

declare dso_local i64 @IWbemClassObject_SpawnInstance(i32*, i32, i32**) #1

declare dso_local i32 @IWbemClassObject_Release(i32*) #1

declare dso_local i32 @VariantInit(i32*) #1

declare dso_local i64 @get_owner(i32*, i32*, i32*) #1

declare dso_local i32 @V_UI4(i32*) #1

declare dso_local i64 @IWbemClassObject_Put(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @VariantClear(i32*) #1

declare dso_local i32 @IWbemClassObject_AddRef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
