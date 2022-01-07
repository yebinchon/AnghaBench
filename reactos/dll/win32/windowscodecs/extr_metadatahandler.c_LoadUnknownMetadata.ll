; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_metadatahandler.c_LoadUnknownMetadata.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_metadatahandler.c_LoadUnknownMetadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__, %struct.TYPE_14__, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32*, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@STATFLAG_NONAME = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i64 0, align 8
@E_FAIL = common dso_local global i64 0, align 8
@S_OK = common dso_local global i64 0, align 8
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@VT_BLOB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32, %struct.TYPE_13__**, i32*)* @LoadUnknownMetadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @LoadUnknownMetadata(i32* %0, i32* %1, i32 %2, %struct.TYPE_13__** %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca %struct.TYPE_12__, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_13__** %3, %struct.TYPE_13__*** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* @STATFLAG_NONAME, align 4
  %20 = call i64 @IStream_Stat(i32* %18, %struct.TYPE_12__* %14, i32 %19)
  store i64 %20, i64* %12, align 8
  %21 = load i64, i64* %12, align 8
  %22 = call i64 @FAILED(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i64, i64* %12, align 8
  store i64 %25, i64* %6, align 8
  br label %109

26:                                               ; preds = %5
  %27 = call i32 (...) @GetProcessHeap()
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @HeapAlloc(i32 %27, i32 0, i32 %30)
  %32 = bitcast i8* %31 to i32*
  store i32* %32, i32** %15, align 8
  %33 = load i32*, i32** %15, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %26
  %36 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %36, i64* %6, align 8
  br label %109

37:                                               ; preds = %26
  %38 = load i32*, i32** %7, align 8
  %39 = load i32*, i32** %15, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @IStream_Read(i32* %38, i32* %39, i32 %42, i64* %16)
  store i64 %43, i64* %12, align 8
  %44 = load i64, i64* %16, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp ne i64 %44, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %37
  %51 = load i64, i64* @E_FAIL, align 8
  store i64 %51, i64* %12, align 8
  br label %52

52:                                               ; preds = %50, %37
  %53 = load i64, i64* %12, align 8
  %54 = load i64, i64* @S_OK, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = call i32 (...) @GetProcessHeap()
  %58 = load i32*, i32** %15, align 8
  %59 = call i32 @HeapFree(i32 %57, i32 0, i32* %58)
  %60 = load i64, i64* %12, align 8
  store i64 %60, i64* %6, align 8
  br label %109

61:                                               ; preds = %52
  %62 = call i32 (...) @GetProcessHeap()
  %63 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %64 = call i8* @HeapAlloc(i32 %62, i32 %63, i32 72)
  %65 = bitcast i8* %64 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %65, %struct.TYPE_13__** %13, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %67 = icmp ne %struct.TYPE_13__* %66, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %61
  %69 = call i32 (...) @GetProcessHeap()
  %70 = load i32*, i32** %15, align 8
  %71 = call i32 @HeapFree(i32 %69, i32 0, i32* %70)
  %72 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %72, i64* %6, align 8
  br label %109

73:                                               ; preds = %61
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i64 0
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 2
  %77 = call i32 @PropVariantInit(%struct.TYPE_14__* %76)
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i64 0
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = call i32 @PropVariantInit(%struct.TYPE_14__* %80)
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i64 0
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = call i32 @PropVariantInit(%struct.TYPE_14__* %84)
  %86 = load i32, i32* @VT_BLOB, align 4
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i64 0
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 1
  store i32 %86, i32* %90, align 8
  %91 = load i64, i64* %16, align 8
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i64 0
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  store i64 %91, i64* %97, align 8
  %98 = load i32*, i32** %15, align 8
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i64 0
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  store i32* %98, i32** %104, align 8
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %106 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %10, align 8
  store %struct.TYPE_13__* %105, %struct.TYPE_13__** %106, align 8
  %107 = load i32*, i32** %11, align 8
  store i32 1, i32* %107, align 4
  %108 = load i64, i64* @S_OK, align 8
  store i64 %108, i64* %6, align 8
  br label %109

109:                                              ; preds = %73, %68, %56, %35, %24
  %110 = load i64, i64* %6, align 8
  ret i64 %110
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i64 @IStream_Stat(i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @IStream_Read(i32*, i32*, i32, i64*) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @PropVariantInit(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
