; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_service.c_service_resume_service.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_service.c_service_resume_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"%p, %p, %p\0A\00", align 1
@prop_nameW = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@class_serviceW = common dso_local global i32 0, align 4
@method_resumeserviceW = common dso_local global i32 0, align 4
@PARAM_OUT = common dso_local global i32 0, align 4
@SERVICE_CONTROL_CONTINUE = common dso_local global i32 0, align 4
@param_returnvalueW = common dso_local global i32 0, align 4
@CIM_UINT32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @service_resume_service(i32* %0, i32* %1, i32** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i32* null, i32** %11, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32**, i32*** %7, align 8
  %16 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %13, i32* %14, i32** %15)
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* @prop_nameW, align 4
  %19 = call i64 @IWbemClassObject_Get(i32* %17, i32 %18, i32 0, i32* %8, i32* null, i32* null)
  store i64 %19, i64* %12, align 8
  %20 = load i64, i64* %12, align 8
  %21 = load i64, i64* @S_OK, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i64, i64* %12, align 8
  store i64 %24, i64* %4, align 8
  br label %91

25:                                               ; preds = %3
  %26 = load i32, i32* @class_serviceW, align 4
  %27 = load i32, i32* @method_resumeserviceW, align 4
  %28 = load i32, i32* @PARAM_OUT, align 4
  %29 = call i64 @create_signature(i32 %26, i32 %27, i32 %28, i32** %10)
  store i64 %29, i64* %12, align 8
  %30 = load i64, i64* %12, align 8
  %31 = load i64, i64* @S_OK, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = call i32 @VariantClear(i32* %8)
  %35 = load i64, i64* %12, align 8
  store i64 %35, i64* %4, align 8
  br label %91

36:                                               ; preds = %25
  %37 = load i32**, i32*** %7, align 8
  %38 = icmp ne i32** %37, null
  br i1 %38, label %39, label %51

39:                                               ; preds = %36
  %40 = load i32*, i32** %10, align 8
  %41 = call i64 @IWbemClassObject_SpawnInstance(i32* %40, i32 0, i32** %11)
  store i64 %41, i64* %12, align 8
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* @S_OK, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = call i32 @VariantClear(i32* %8)
  %47 = load i32*, i32** %10, align 8
  %48 = call i32 @IWbemClassObject_Release(i32* %47)
  %49 = load i64, i64* %12, align 8
  store i64 %49, i64* %4, align 8
  br label %91

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50, %36
  %52 = call i32 @V_BSTR(i32* %8)
  %53 = load i32, i32* @SERVICE_CONTROL_CONTINUE, align 4
  %54 = call i64 @control_service(i32 %52, i32 %53, i32* %9)
  store i64 %54, i64* %12, align 8
  %55 = load i64, i64* %12, align 8
  %56 = load i64, i64* @S_OK, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %68

59:                                               ; preds = %51
  %60 = load i32*, i32** %11, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load i32*, i32** %11, align 8
  %64 = load i32, i32* @param_returnvalueW, align 4
  %65 = load i32, i32* @CIM_UINT32, align 4
  %66 = call i64 @IWbemClassObject_Put(i32* %63, i32 %64, i32 0, i32* %9, i32 %65)
  store i64 %66, i64* %12, align 8
  br label %67

67:                                               ; preds = %62, %59
  br label %68

68:                                               ; preds = %67, %58
  %69 = call i32 @VariantClear(i32* %8)
  %70 = load i32*, i32** %10, align 8
  %71 = call i32 @IWbemClassObject_Release(i32* %70)
  %72 = load i64, i64* %12, align 8
  %73 = load i64, i64* @S_OK, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %68
  %76 = load i32**, i32*** %7, align 8
  %77 = icmp ne i32** %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = load i32*, i32** %11, align 8
  %80 = load i32**, i32*** %7, align 8
  store i32* %79, i32** %80, align 8
  %81 = load i32*, i32** %11, align 8
  %82 = call i32 @IWbemClassObject_AddRef(i32* %81)
  br label %83

83:                                               ; preds = %78, %75, %68
  %84 = load i32*, i32** %11, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32*, i32** %11, align 8
  %88 = call i32 @IWbemClassObject_Release(i32* %87)
  br label %89

89:                                               ; preds = %86, %83
  %90 = load i64, i64* %12, align 8
  store i64 %90, i64* %4, align 8
  br label %91

91:                                               ; preds = %89, %45, %33, %23
  %92 = load i64, i64* %4, align 8
  ret i64 %92
}

declare dso_local i32 @TRACE(i8*, i32*, i32*, i32**) #1

declare dso_local i64 @IWbemClassObject_Get(i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i64 @create_signature(i32, i32, i32, i32**) #1

declare dso_local i32 @VariantClear(i32*) #1

declare dso_local i64 @IWbemClassObject_SpawnInstance(i32*, i32, i32**) #1

declare dso_local i32 @IWbemClassObject_Release(i32*) #1

declare dso_local i64 @control_service(i32, i32, i32*) #1

declare dso_local i32 @V_BSTR(i32*) #1

declare dso_local i64 @IWbemClassObject_Put(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @IWbemClassObject_AddRef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
