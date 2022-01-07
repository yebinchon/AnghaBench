; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/printing/base/winspool/extr_printers.c__StartDocPrinterSpooled.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/printing/base/winspool/extr_printers.c__StartDocPrinterSpooled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i64 }

@GENERIC_WRITE = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"CreateFileW failed for \22%S\22 with error %lu!\0A\00", align 1
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"GetJobW failed with error %lu!\0A\00", align 1
@hProcessHeap = common dso_local global i32 0, align 4
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"HeapAlloc failed!\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"SetJobW failed with error %lu!\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_10__*, %struct.TYPE_12__*, %struct.TYPE_13__*)* @_StartDocPrinterSpooled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_StartDocPrinterSpooled(%struct.TYPE_10__* %0, %struct.TYPE_12__* %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %9, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @GENERIC_WRITE, align 4
  %14 = load i32, i32* @FILE_SHARE_READ, align 4
  %15 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @CREATE_ALWAYS, align 4
  %18 = call i64 @CreateFileW(i32 %12, i32 %13, i32 %16, i32* null, i32 %17, i32 0, i32* null)
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %3
  %27 = call i64 (...) @GetLastError()
  store i64 %27, i64* %8, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* %8, align 8
  %32 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %30, i64 %31)
  br label %108

33:                                               ; preds = %3
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %35 = ptrtoint %struct.TYPE_10__* %34 to i32
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @GetJobW(i32 %35, i32 %38, i32 1, i32* null, i64 0, i64* %7)
  %40 = call i64 (...) @GetLastError()
  %41 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %33
  %44 = call i64 (...) @GetLastError()
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %8, align 8
  %46 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %45)
  br label %108

47:                                               ; preds = %33
  %48 = load i32, i32* @hProcessHeap, align 4
  %49 = load i64, i64* %7, align 8
  %50 = call %struct.TYPE_11__* @HeapAlloc(i32 %48, i32 0, i64 %49)
  store %struct.TYPE_11__* %50, %struct.TYPE_11__** %9, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %52 = icmp ne %struct.TYPE_11__* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %47
  %54 = load i64, i64* @ERROR_NOT_ENOUGH_MEMORY, align 8
  store i64 %54, i64* %8, align 8
  %55 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %108

56:                                               ; preds = %47
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %58 = ptrtoint %struct.TYPE_10__* %57 to i32
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %63 = bitcast %struct.TYPE_11__* %62 to i32*
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @GetJobW(i32 %58, i32 %61, i32 1, i32* %63, i64 %64, i64* %7)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %56
  %68 = call i64 (...) @GetLastError()
  store i64 %68, i64* %8, align 8
  %69 = load i64, i64* %8, align 8
  %70 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %69)
  br label %108

71:                                               ; preds = %56
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  store i64 %79, i64* %81, align 8
  br label %82

82:                                               ; preds = %76, %71
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %89 = ptrtoint %struct.TYPE_10__* %88 to i32
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %94 = bitcast %struct.TYPE_11__* %93 to i32*
  %95 = call i32 @SetJobW(i32 %89, i32 %92, i32 1, i32* %94, i32 0)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %82
  %98 = call i64 (...) @GetLastError()
  store i64 %98, i64* %8, align 8
  %99 = load i64, i64* %8, align 8
  %100 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i64 %99)
  br label %108

101:                                              ; preds = %82
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 8
  %107 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %107, i64* %8, align 8
  br label %108

108:                                              ; preds = %101, %97, %67, %53, %43, %26
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %110 = icmp ne %struct.TYPE_11__* %109, null
  br i1 %110, label %111, label %115

111:                                              ; preds = %108
  %112 = load i32, i32* @hProcessHeap, align 4
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %114 = call i32 @HeapFree(i32 %112, i32 0, %struct.TYPE_11__* %113)
  br label %115

115:                                              ; preds = %111, %108
  %116 = load i64, i64* %8, align 8
  ret i64 %116
}

declare dso_local i64 @CreateFileW(i32, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @GetJobW(i32, i32, i32, i32*, i64, i64*) #1

declare dso_local %struct.TYPE_11__* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @SetJobW(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
