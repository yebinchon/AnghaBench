; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_datacache.c_DataCache_Construct.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_datacache.c_DataCache_Construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, i32, i32*, i8*, i32, i32*, i8*, i64, i64, i64, %struct.TYPE_19__, %struct.TYPE_19__*, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_13__ = type { i32* }

@DataCache_IDataObject_VTable = common dso_local global i32 0, align 4
@DataCache_NDIUnknown_VTable = common dso_local global i32 0, align 4
@DataCache_IPersistStorage_VTable = common dso_local global i32 0, align 4
@DataCache_IViewObject2_VTable = common dso_local global i32 0, align 4
@DataCache_IOleCache2_VTable = common dso_local global i32 0, align 4
@DataCache_IOleCacheControl_VTable = common dso_local global i32 0, align 4
@DataCache_IAdviseSink_VTable = common dso_local global i32 0, align 4
@CLSID_NULL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_20__* (i32*, %struct.TYPE_19__*)* @DataCache_Construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_20__* @DataCache_Construct(i32* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %6, align 8
  %7 = call i32 (...) @GetProcessHeap()
  %8 = call %struct.TYPE_20__* @HeapAlloc(i32 %7, i32 0, i32 144)
  store %struct.TYPE_20__* %8, %struct.TYPE_20__** %6, align 8
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %10 = icmp eq %struct.TYPE_20__* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  store %struct.TYPE_20__* %12, %struct.TYPE_20__** %3, align 8
  br label %80

13:                                               ; preds = %2
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 18
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  store i32* @DataCache_IDataObject_VTable, i32** %16, align 8
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 11
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  store i32* @DataCache_NDIUnknown_VTable, i32** %19, align 8
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 17
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  store i32* @DataCache_IPersistStorage_VTable, i32** %22, align 8
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 16
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  store i32* @DataCache_IViewObject2_VTable, i32** %25, align 8
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 15
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  store i32* @DataCache_IOleCache2_VTable, i32** %28, align 8
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 14
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  store i32* @DataCache_IOleCacheControl_VTable, i32** %31, align 8
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  store i32* @DataCache_IAdviseSink_VTable, i32** %34, align 8
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %36 = icmp ne %struct.TYPE_19__* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %13
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  br label %42

39:                                               ; preds = %13
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 11
  br label %42

42:                                               ; preds = %39, %37
  %43 = phi %struct.TYPE_19__* [ %38, %37 ], [ %41, %39 ]
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 12
  store %struct.TYPE_19__* %43, %struct.TYPE_19__** %45, align 8
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 10
  store i64 0, i64* %49, align 8
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 9
  store i64 0, i64* %51, align 8
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 8
  store i64 0, i64* %53, align 8
  %54 = load i32, i32* @CLSID_NULL, align 4
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load i8*, i8** @FALSE, align 8
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 7
  store i8* %57, i8** %59, align 8
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 6
  store i32* null, i32** %61, align 8
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 5
  %64 = call i32 @list_init(i32* %63)
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 1
  store i32 2, i32* %66, align 4
  %67 = load i8*, i8** @FALSE, align 8
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 4
  store i8* %67, i8** %69, align 8
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 3
  store i32* null, i32** %71, align 8
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %73 = load i32*, i32** %4, align 8
  %74 = call i32 @create_automatic_entry(%struct.TYPE_20__* %72, i32* %73)
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  store %struct.TYPE_20__* %79, %struct.TYPE_20__** %3, align 8
  br label %80

80:                                               ; preds = %42, %11
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  ret %struct.TYPE_20__* %81
}

declare dso_local %struct.TYPE_20__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @list_init(i32*) #1

declare dso_local i32 @create_automatic_entry(%struct.TYPE_20__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
