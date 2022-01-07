; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wintrust/extr_wintrust_main.c_WINTRUST_DefaultVerify.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wintrust/extr_wintrust_main.c_WINTRUST_DefaultVerify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_12__*, %struct.TYPE_10__, %struct.TYPE_12__*, i32, i32*, i64, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.wintrust_step = type { i32 }

@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"(%p, %s, %p)\0A\00", align 1
@ERROR_OUTOFMEMORY = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"returning %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32*, %struct.TYPE_11__*)* @WINTRUST_DefaultVerify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WINTRUST_DefaultVerify(i64 %0, i32* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [5 x %struct.wintrust_step], align 16
  store i64 %0, i64* %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  %13 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %13, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = load i64, i64* %5, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @debugstr_guid(i32* %15)
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %18 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %14, i32 %16, %struct.TYPE_11__* %17)
  %19 = call %struct.TYPE_12__* (...) @WINTRUST_AllocateProviderData()
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %10, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %21 = icmp ne %struct.TYPE_12__* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  store i32 %23, i32* %4, align 4
  br label %93

24:                                               ; preds = %3
  %25 = load i32*, i32** %6, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = call i32 @WintrustLoadFunctionPointers(i32* %25, %struct.TYPE_12__* %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %24
  %33 = call i32 (...) @GetLastError()
  store i32 %33, i32* %8, align 4
  br label %68

34:                                               ; preds = %24
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  store %struct.TYPE_12__* %35, %struct.TYPE_12__** %37, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 6
  store %struct.TYPE_11__* %38, %struct.TYPE_11__** %40, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %34
  %45 = call i64 (...) @GetDesktopWindow()
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 5
  store i64 %45, i64* %47, align 8
  br label %52

48:                                               ; preds = %34
  %49 = load i64, i64* %5, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 5
  store i64 %49, i64* %51, align 8
  br label %52

52:                                               ; preds = %48, %44
  %53 = load i32*, i32** %6, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 4
  store i32* %53, i32** %55, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 3
  %58 = call i32 @WintrustGetRegPolicyFlags(i32* %57)
  %59 = getelementptr inbounds [5 x %struct.wintrust_step], [5 x %struct.wintrust_step]* %12, i64 0, i64 0
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %61, align 8
  %63 = call i32 @WINTRUST_AddTrustStepsFromFunctions(%struct.wintrust_step* %59, %struct.TYPE_12__* %62)
  store i32 %63, i32* %9, align 4
  %64 = getelementptr inbounds [5 x %struct.wintrust_step], [5 x %struct.wintrust_step]* %12, i64 0, i64 0
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %67 = call i32 @WINTRUST_ExecuteSteps(%struct.wintrust_step* %64, i32 %65, %struct.TYPE_12__* %66)
  store i32 %67, i32* %8, align 4
  br label %88

68:                                               ; preds = %32
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %70 = icmp ne %struct.TYPE_12__* %69, null
  br i1 %70, label %71, label %87

71:                                               ; preds = %68
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %73, align 8
  %75 = call i32 @WINTRUST_Free(%struct.TYPE_12__* %74)
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = call i32 @WINTRUST_Free(%struct.TYPE_12__* %79)
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %82, align 8
  %84 = call i32 @WINTRUST_Free(%struct.TYPE_12__* %83)
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %86 = call i32 @WINTRUST_Free(%struct.TYPE_12__* %85)
  br label %87

87:                                               ; preds = %71, %68
  br label %88

88:                                               ; preds = %87, %52
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 %90)
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %88, %22
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @TRACE(i8*, i64, ...) #1

declare dso_local i32 @debugstr_guid(i32*) #1

declare dso_local %struct.TYPE_12__* @WINTRUST_AllocateProviderData(...) #1

declare dso_local i32 @WintrustLoadFunctionPointers(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i64 @GetDesktopWindow(...) #1

declare dso_local i32 @WintrustGetRegPolicyFlags(i32*) #1

declare dso_local i32 @WINTRUST_AddTrustStepsFromFunctions(%struct.wintrust_step*, %struct.TYPE_12__*) #1

declare dso_local i32 @WINTRUST_ExecuteSteps(%struct.wintrust_step*, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @WINTRUST_Free(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
