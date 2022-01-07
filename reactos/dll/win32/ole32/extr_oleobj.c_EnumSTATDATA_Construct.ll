; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_oleobj.c_EnumSTATDATA_Construct.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_oleobj.c_EnumSTATDATA_Construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__, i32*, %struct.TYPE_9__*, i32 }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@EnumSTATDATA_VTable = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EnumSTATDATA_Construct(i32* %0, i32 %1, i32 %2, %struct.TYPE_9__* %3, i64 %4, %struct.TYPE_10__** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_10__**, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.TYPE_10__** %5, %struct.TYPE_10__*** %13, align 8
  %17 = call i32 (...) @GetProcessHeap()
  %18 = call i8* @HeapAlloc(i32 %17, i32 0, i32 40)
  %19 = bitcast i8* %18 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %14, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %21 = icmp ne %struct.TYPE_11__* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %6
  %23 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %23, i32* %7, align 4
  br label %108

24:                                               ; preds = %6
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  store i32* @EnumSTATDATA_VTable, i32** %27, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 8
  %33 = load i64, i64* %12, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %86

35:                                               ; preds = %24
  %36 = call i32 (...) @GetProcessHeap()
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 8
  %40 = trunc i64 %39 to i32
  %41 = call i8* @HeapAlloc(i32 %36, i32 0, i32 %40)
  %42 = bitcast i8* %41 to %struct.TYPE_9__*
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 4
  store %struct.TYPE_9__* %42, %struct.TYPE_9__** %44, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = icmp ne %struct.TYPE_9__* %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %35
  %50 = call i32 (...) @GetProcessHeap()
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %52 = call i32 @HeapFree(i32 %50, i32 0, %struct.TYPE_11__* %51)
  %53 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %53, i32* %7, align 4
  br label %108

54:                                               ; preds = %35
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %55

55:                                               ; preds = %82, %54
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %85

59:                                               ; preds = %55
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %61 = load i32, i32* %15, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %59
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = load i32, i32* %16, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i64 %72
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %75 = load i32, i32* %15, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i64 %76
  %78 = call i32 @copy_statdata(%struct.TYPE_9__* %73, %struct.TYPE_9__* %77)
  %79 = load i32, i32* %16, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %16, align 4
  br label %81

81:                                               ; preds = %67, %59
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %15, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %15, align 4
  br label %55

85:                                               ; preds = %55
  br label %91

86:                                               ; preds = %24
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 4
  store %struct.TYPE_9__* %87, %struct.TYPE_9__** %89, align 8
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %16, align 4
  br label %91

91:                                               ; preds = %86, %85
  %92 = load i32, i32* %16, align 4
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load i32*, i32** %8, align 8
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 3
  store i32* %95, i32** %97, align 8
  %98 = load i32*, i32** %8, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %91
  %101 = load i32*, i32** %8, align 8
  %102 = call i32 @IUnknown_AddRef(i32* %101)
  br label %103

103:                                              ; preds = %100, %91
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %13, align 8
  store %struct.TYPE_10__* %105, %struct.TYPE_10__** %106, align 8
  %107 = load i32, i32* @S_OK, align 4
  store i32 %107, i32* %7, align 4
  br label %108

108:                                              ; preds = %103, %49, %22
  %109 = load i32, i32* %7, align 4
  ret i32 %109
}

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @copy_statdata(%struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i32 @IUnknown_AddRef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
