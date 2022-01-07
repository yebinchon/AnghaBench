; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/tdilib/extr_enum.c_tdiGetSetOfThings.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/tdilib/extr_enum.c_tdiGetSetOfThings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i64, i64, i64 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_11__ = type { i64, i64 }

@TCP_REQUEST_QUERY_INFORMATION_INIT = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@MAX_TDI_ENTITIES = common dso_local global i64 0, align 8
@IOCTL_TCP_QUERY_INFORMATION_EX = common dso_local global i32 0, align 4
@STATUS_PENDING = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tdiGetSetOfThings(i32 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i32** %8, i64* %9) #0 {
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32**, align 8
  %21 = alloca i64*, align 8
  %22 = alloca %struct.TYPE_10__, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca %struct.TYPE_11__, align 8
  store i32 %0, i32* %12, align 4
  store i64 %1, i64* %13, align 8
  store i64 %2, i64* %14, align 8
  store i64 %3, i64* %15, align 8
  store i64 %4, i64* %16, align 8
  store i64 %5, i64* %17, align 8
  store i64 %6, i64* %18, align 8
  store i64 %7, i64* %19, align 8
  store i32** %8, i32*** %20, align 8
  store i64* %9, i64** %21, align 8
  %27 = bitcast %struct.TYPE_10__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 bitcast (%struct.TYPE_10__* @TCP_REQUEST_QUERY_INFORMATION_INIT to i8*), i64 40, i1 false)
  store i32* null, i32** %23, align 8
  %28 = load i64, i64* @STATUS_SUCCESS, align 8
  store i64 %28, i64* %24, align 8
  %29 = load i64, i64* %19, align 8
  %30 = load i64, i64* @MAX_TDI_ENTITIES, align 8
  %31 = mul nsw i64 %29, %30
  store i64 %31, i64* %25, align 8
  %32 = load i64, i64* %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 3
  store i64 %32, i64* %34, align 8
  %35 = load i64, i64* %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 2
  store i64 %35, i64* %37, align 8
  %38 = load i64, i64* %15, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load i64, i64* %16, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  store i64 %41, i64* %44, align 8
  %45 = load i64, i64* %17, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  store i64 %45, i64* %48, align 8
  br label %49

49:                                               ; preds = %120, %10
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @IOCTL_TCP_QUERY_INFORMATION_EX, align 4
  %52 = call i64 @NtDeviceIoControlFile(i32 %50, i32* null, i32* null, i32* null, %struct.TYPE_11__* %26, i32 %51, %struct.TYPE_10__* %22, i32 40, i32* null, i64 0)
  store i64 %52, i64* %24, align 8
  %53 = load i64, i64* %24, align 8
  %54 = load i64, i64* @STATUS_PENDING, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %49
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @FALSE, align 4
  %59 = call i64 @NtWaitForSingleObject(i32 %57, i32 %58, i32* null)
  store i64 %59, i64* %24, align 8
  %60 = load i64, i64* %24, align 8
  %61 = call i64 @NT_SUCCESS(i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %24, align 8
  br label %66

66:                                               ; preds = %63, %56
  br label %67

67:                                               ; preds = %66, %49
  %68 = load i64, i64* %24, align 8
  %69 = call i64 @NT_SUCCESS(i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %67
  %72 = load i64, i64* %24, align 8
  store i64 %72, i64* %11, align 8
  br label %133

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %25, align 8
  %76 = call i32 (...) @GetProcessHeap()
  %77 = load i64, i64* %25, align 8
  %78 = call i32* @HeapAlloc(i32 %76, i32 0, i64 %77)
  store i32* %78, i32** %23, align 8
  %79 = load i32*, i32** %23, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %73
  %82 = load i64, i64* @STATUS_INSUFFICIENT_RESOURCES, align 8
  store i64 %82, i64* %24, align 8
  %83 = load i64, i64* %24, align 8
  store i64 %83, i64* %11, align 8
  br label %133

84:                                               ; preds = %73
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* @IOCTL_TCP_QUERY_INFORMATION_EX, align 4
  %87 = load i32*, i32** %23, align 8
  %88 = load i64, i64* %25, align 8
  %89 = call i64 @NtDeviceIoControlFile(i32 %85, i32* null, i32* null, i32* null, %struct.TYPE_11__* %26, i32 %86, %struct.TYPE_10__* %22, i32 40, i32* %87, i64 %88)
  store i64 %89, i64* %24, align 8
  %90 = load i64, i64* %24, align 8
  %91 = load i64, i64* @STATUS_PENDING, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %104

93:                                               ; preds = %84
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* @FALSE, align 4
  %96 = call i64 @NtWaitForSingleObject(i32 %94, i32 %95, i32* null)
  store i64 %96, i64* %24, align 8
  %97 = load i64, i64* %24, align 8
  %98 = call i64 @NT_SUCCESS(i64 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %93
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  store i64 %102, i64* %24, align 8
  br label %103

103:                                              ; preds = %100, %93
  br label %104

104:                                              ; preds = %103, %84
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %25, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %123

110:                                              ; preds = %104
  %111 = call i32 (...) @GetProcessHeap()
  %112 = load i32*, i32** %23, align 8
  %113 = call i32 @HeapFree(i32 %111, i32 0, i32* %112)
  store i32* null, i32** %23, align 8
  %114 = load i64, i64* %24, align 8
  %115 = call i64 @NT_SUCCESS(i64 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %110
  %118 = load i64, i64* %24, align 8
  store i64 %118, i64* %11, align 8
  br label %133

119:                                              ; preds = %110
  br label %120

120:                                              ; preds = %119
  %121 = load i64, i64* @TRUE, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %49, label %123

123:                                              ; preds = %120, %109
  %124 = load i64, i64* %25, align 8
  %125 = load i64, i64* %18, align 8
  %126 = sub nsw i64 %124, %125
  %127 = load i64, i64* %19, align 8
  %128 = sdiv i64 %126, %127
  %129 = load i64*, i64** %21, align 8
  store i64 %128, i64* %129, align 8
  %130 = load i32*, i32** %23, align 8
  %131 = load i32**, i32*** %20, align 8
  store i32* %130, i32** %131, align 8
  %132 = load i64, i64* @STATUS_SUCCESS, align 8
  store i64 %132, i64* %11, align 8
  br label %133

133:                                              ; preds = %123, %117, %81, %71
  %134 = load i64, i64* %11, align 8
  ret i64 %134
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @NtDeviceIoControlFile(i32, i32*, i32*, i32*, %struct.TYPE_11__*, i32, %struct.TYPE_10__*, i32, i32*, i64) #2

declare dso_local i64 @NtWaitForSingleObject(i32, i32, i32*) #2

declare dso_local i64 @NT_SUCCESS(i64) #2

declare dso_local i32* @HeapAlloc(i32, i32, i64) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i32 @HeapFree(i32, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
