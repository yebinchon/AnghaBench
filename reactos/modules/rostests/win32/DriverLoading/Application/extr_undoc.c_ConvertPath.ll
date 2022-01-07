; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/win32/DriverLoading/Application/extr_undoc.c_ConvertPath.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/win32/DriverLoading/Application/extr_undoc.c_ConvertPath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i32] [i32 91, i32 37, i32 120, i32 93, i32 32, i32 70, i32 97, i32 105, i32 108, i32 101, i32 100, i32 32, i32 116, i32 111, i32 32, i32 111, i32 112, i32 101, i32 110, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@DRIVER_NAME = common dso_local global i8* null, align 8
@MAX_PATH = common dso_local global i32 0, align 4
@ObjectNameInformation = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@UNICODE_NULL = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ConvertPath(i64 %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %6, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %109

14:                                               ; preds = %2
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @GetLongPathNameW(i64 %15, %struct.TYPE_13__* null, i32 0)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %3, align 4
  br label %111

21:                                               ; preds = %14
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 4
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %7, align 4
  %27 = call i32 (...) @GetProcessHeap()
  %28 = load i32, i32* %7, align 4
  %29 = call %struct.TYPE_13__* @HeapAlloc(i32 %27, i32 0, i32 %28)
  store %struct.TYPE_13__* %29, %struct.TYPE_13__** %6, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %31 = icmp ne %struct.TYPE_13__* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %21
  %33 = load i32, i32* @FALSE, align 4
  store i32 %33, i32* %3, align 4
  br label %111

34:                                               ; preds = %21
  %35 = load i64, i64* %4, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @GetLongPathNameW(i64 %35, %struct.TYPE_13__* %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %108

40:                                               ; preds = %34
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %42 = load i32, i32* @GENERIC_READ, align 4
  %43 = load i32, i32* @GENERIC_WRITE, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @OPEN_EXISTING, align 4
  %46 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %47 = call i64 @CreateFileW(%struct.TYPE_13__* %41, i32 %44, i32 0, i32* null, i32 %45, i32 %46, i32* null)
  store i64 %47, i64* %8, align 8
  %48 = call i32 (...) @GetProcessHeap()
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %50 = call i32 @HeapFree(i32 %48, i32 0, %struct.TYPE_13__* %49)
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %40
  %55 = call i32 (...) @GetLastError()
  %56 = load i8*, i8** @DRIVER_NAME, align 8
  %57 = call i32 @wprintf(i8* bitcast ([24 x i32]* @.str to i8*), i32 %55, i8* %56)
  %58 = load i32, i32* @FALSE, align 4
  store i32 %58, i32* %3, align 4
  br label %111

59:                                               ; preds = %40
  %60 = load i32, i32* @MAX_PATH, align 4
  %61 = sext i32 %60 to i64
  %62 = mul i64 %61, 4
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %7, align 4
  %64 = call i32 (...) @GetProcessHeap()
  %65 = load i32, i32* %7, align 4
  %66 = call %struct.TYPE_13__* @HeapAlloc(i32 %64, i32 0, i32 %65)
  store %struct.TYPE_13__* %66, %struct.TYPE_13__** %9, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %68 = icmp ne %struct.TYPE_13__* %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %59
  %70 = load i32, i32* @FALSE, align 4
  store i32 %70, i32* %3, align 4
  br label %111

71:                                               ; preds = %59
  %72 = load i64, i64* %8, align 8
  %73 = load i32, i32* @ObjectNameInformation, align 4
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i64 @NtQueryObject(i64 %72, i32 %73, %struct.TYPE_13__* %74, i32 %75, i32* %7)
  store i64 %76, i64* %10, align 8
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* @STATUS_SUCCESS, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %104

80:                                               ; preds = %71
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = udiv i64 %85, 4
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %11, align 4
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @wcsncpy(%struct.TYPE_13__* %88, i32 %92, i32 %93)
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i64 %97
  %99 = bitcast %struct.TYPE_13__* %98 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %99, i8* align 4 bitcast (%struct.TYPE_13__* @UNICODE_NULL to i8*), i64 8, i1 false)
  %100 = call i32 (...) @GetProcessHeap()
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %102 = call i32 @HeapFree(i32 %100, i32 0, %struct.TYPE_13__* %101)
  %103 = load i32, i32* @TRUE, align 4
  store i32 %103, i32* %3, align 4
  br label %111

104:                                              ; preds = %71
  %105 = call i32 (...) @GetProcessHeap()
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %107 = call i32 @HeapFree(i32 %105, i32 0, %struct.TYPE_13__* %106)
  br label %108

108:                                              ; preds = %104, %34
  br label %109

109:                                              ; preds = %108, %2
  %110 = load i32, i32* @FALSE, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %109, %80, %69, %54, %32, %19
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @GetLongPathNameW(i64, %struct.TYPE_13__*, i32) #1

declare dso_local %struct.TYPE_13__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @CreateFileW(%struct.TYPE_13__*, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @wprintf(i8*, i32, i8*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i64 @NtQueryObject(i64, i32, %struct.TYPE_13__*, i32, i32*) #1

declare dso_local i32 @wcsncpy(%struct.TYPE_13__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
