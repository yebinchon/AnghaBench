; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/printing/monitors/localmon/extr_xcv.c__HandleSetDefaultCommConfig.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/printing/monitors/localmon/extr_xcv.c__HandleSetDefaultCommConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32* }
%struct.TYPE_6__ = type { i32 }

@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@SERVER_ACCESS_ADMINISTER = common dso_local global i32 0, align 4
@ERROR_ACCESS_DENIED = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"RevertToPrinterSelf failed with error %lu!\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"SetDefaultCommConfigW failed with error %lu!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i64, i64*)* @_HandleSetDefaultCommConfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_HandleSetDefaultCommConfig(%struct.TYPE_5__* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %10, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = icmp ne %struct.TYPE_5__* %11, null
  br i1 %12, label %13, label %38

13:                                               ; preds = %3
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %38

18:                                               ; preds = %13
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %18
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = load i64, i64* %5, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i64*, i64** %6, align 8
  %37 = icmp ne i64* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %35, %32, %25, %18, %13, %3
  %39 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  store i64 %39, i64* %7, align 8
  br label %83

40:                                               ; preds = %35
  %41 = load i64*, i64** %6, align 8
  store i64 0, i64* %41, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @SERVER_ACCESS_ADMINISTER, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %40
  %49 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  store i64 %49, i64* %7, align 8
  br label %83

50:                                               ; preds = %40
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = call i64 @GetPortNameWithoutColon(i32* %53, i32** %10)
  store i64 %54, i64* %7, align 8
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* @ERROR_SUCCESS, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %83

59:                                               ; preds = %50
  %60 = call i32* (...) @RevertToPrinterSelf()
  store i32* %60, i32** %8, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = call i64 (...) @GetLastError()
  store i64 %64, i64* %7, align 8
  %65 = load i64, i64* %7, align 8
  %66 = call i32 @ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %65)
  br label %83

67:                                               ; preds = %59
  %68 = load i64, i64* %5, align 8
  %69 = inttoptr i64 %68 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %69, %struct.TYPE_6__** %9, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @SetDefaultCommConfigW(i32* %70, %struct.TYPE_6__* %71, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %67
  %78 = call i64 (...) @GetLastError()
  store i64 %78, i64* %7, align 8
  %79 = load i64, i64* %7, align 8
  %80 = call i32 @ERR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %79)
  br label %83

81:                                               ; preds = %67
  %82 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %82, i64* %7, align 8
  br label %83

83:                                               ; preds = %81, %77, %63, %58, %48, %38
  %84 = load i32*, i32** %8, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32*, i32** %8, align 8
  %88 = call i32 @ImpersonatePrinterClient(i32* %87)
  br label %89

89:                                               ; preds = %86, %83
  %90 = load i32*, i32** %10, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i32*, i32** %10, align 8
  %94 = call i32 @DllFreeSplMem(i32* %93)
  br label %95

95:                                               ; preds = %92, %89
  %96 = load i64, i64* %7, align 8
  ret i64 %96
}

declare dso_local i64 @GetPortNameWithoutColon(i32*, i32**) #1

declare dso_local i32* @RevertToPrinterSelf(...) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @ERR(i8*, i64) #1

declare dso_local i32 @SetDefaultCommConfigW(i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @ImpersonatePrinterClient(i32*) #1

declare dso_local i32 @DllFreeSplMem(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
