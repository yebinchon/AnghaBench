; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/printing/processors/winprint/extr_raw.c_PrintRawJob.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/printing/processors/winprint/extr_raw.c_PrintRawJob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"OpenPrinterW failed for \22%S\22 with error %lu!\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"StartDocPrinterW failed with error %lu!\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"DllAllocSplMem failed with error %lu!\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PrintRawJob(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_5__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 262144, i32* %5, align 4
  %14 = load i64, i64* @FALSE, align 8
  store i64 %14, i64* %6, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @OpenPrinterW(i32 %15, i32** %11, i32* null)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = call i32 (...) @GetLastError()
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 (...) @GetLastError()
  %22 = call i32 (i8*, i32, ...) @ERR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21)
  br label %84

23:                                               ; preds = %2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @OpenPrinterW(i32 %26, i32** %12, i32* null)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %23
  %30 = call i32 (...) @GetLastError()
  store i32 %30, i32* %10, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (...) @GetLastError()
  %35 = call i32 (i8*, i32, ...) @ERR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  br label %84

36:                                               ; preds = %23
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  store i32 %39, i32* %40, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  store i32 %43, i32* %44, align 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = load i32*, i32** %12, align 8
  %50 = bitcast %struct.TYPE_5__* %7 to i32*
  %51 = call i32 @StartDocPrinterW(i32* %49, i32 1, i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %36
  %54 = call i32 (...) @GetLastError()
  store i32 %54, i32* %10, align 4
  %55 = call i32 (...) @GetLastError()
  %56 = call i32 (i8*, i32, ...) @ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  br label %84

57:                                               ; preds = %36
  %58 = load i64, i64* @TRUE, align 8
  store i64 %58, i64* %6, align 8
  %59 = call i32* @DllAllocSplMem(i32 262144)
  store i32* %59, i32** %13, align 8
  %60 = load i32*, i32** %13, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* @ERROR_NOT_ENOUGH_MEMORY, align 4
  store i32 %63, i32* %10, align 4
  %64 = call i32 (...) @GetLastError()
  %65 = call i32 (i8*, i32, ...) @ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  br label %84

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %77, %66
  %68 = load i32*, i32** %11, align 8
  %69 = load i32*, i32** %13, align 8
  %70 = call i64 @ReadPrinter(i32* %68, i32* %69, i32 262144, i32* %8)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br label %75

75:                                               ; preds = %72, %67
  %76 = phi i1 [ false, %67 ], [ %74, %72 ]
  br i1 %76, label %77, label %82

77:                                               ; preds = %75
  %78 = load i32*, i32** %12, align 8
  %79 = load i32*, i32** %13, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @WritePrinter(i32* %78, i32* %79, i32 %80, i32* %9)
  br label %67

82:                                               ; preds = %75
  %83 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %83, i32* %10, align 4
  br label %84

84:                                               ; preds = %82, %62, %53, %29, %18
  %85 = load i32*, i32** %13, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32*, i32** %13, align 8
  %89 = call i32 @DllFreeSplMem(i32* %88)
  br label %90

90:                                               ; preds = %87, %84
  %91 = load i64, i64* %6, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32*, i32** %12, align 8
  %95 = call i32 @EndDocPrinter(i32* %94)
  br label %96

96:                                               ; preds = %93, %90
  %97 = load i32*, i32** %12, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i32*, i32** %12, align 8
  %101 = call i32 @ClosePrinter(i32* %100)
  br label %102

102:                                              ; preds = %99, %96
  %103 = load i32*, i32** %11, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i32*, i32** %11, align 8
  %107 = call i32 @ClosePrinter(i32* %106)
  br label %108

108:                                              ; preds = %105, %102
  %109 = load i32, i32* %10, align 4
  ret i32 %109
}

declare dso_local i32 @OpenPrinterW(i32, i32**, i32*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @ERR(i8*, i32, ...) #1

declare dso_local i32 @StartDocPrinterW(i32*, i32, i32*) #1

declare dso_local i32* @DllAllocSplMem(i32) #1

declare dso_local i64 @ReadPrinter(i32*, i32*, i32, i32*) #1

declare dso_local i32 @WritePrinter(i32*, i32*, i32, i32*) #1

declare dso_local i32 @DllFreeSplMem(i32*) #1

declare dso_local i32 @EndDocPrinter(i32*) #1

declare dso_local i32 @ClosePrinter(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
