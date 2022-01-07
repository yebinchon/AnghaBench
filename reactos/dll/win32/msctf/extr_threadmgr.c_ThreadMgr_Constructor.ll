; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msctf/extr_threadmgr.c_ThreadMgr_Constructor.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msctf/extr_threadmgr.c_ThreadMgr_Constructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, %struct.TYPE_14__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_21__ = type { i32* }
%struct.TYPE_20__ = type { i32* }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_15__ = type { i32* }

@CLASS_E_NOAGGREGATION = common dso_local global i32 0, align 4
@tlsIndex = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@ThreadMgrExVtbl = common dso_local global i32 0, align 4
@ThreadMgrSourceVtbl = common dso_local global i32 0, align 4
@KeystrokeMgrVtbl = common dso_local global i32 0, align 4
@MessagePumpVtbl = common dso_local global i32 0, align 4
@ClientIdVtbl = common dso_local global i32 0, align 4
@ThreadMgrEventSinkVtbl = common dso_local global i32 0, align 4
@ThreadMgrUIElementMgrVtbl = common dso_local global i32 0, align 4
@SourceSingleVtbl = common dso_local global i32 0, align 4
@IID_IUnknown = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"returning %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ThreadMgr_Constructor(i32* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  store i32* %0, i32** %4, align 8
  store i32** %1, i32*** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @CLASS_E_NOAGGREGATION, align 4
  store i32 %10, i32* %3, align 4
  br label %110

11:                                               ; preds = %2
  %12 = load i32, i32* @tlsIndex, align 4
  %13 = call %struct.TYPE_22__* @TlsGetValue(i32 %12)
  store %struct.TYPE_22__* %13, %struct.TYPE_22__** %6, align 8
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %15 = icmp ne %struct.TYPE_22__* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %11
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 1
  %19 = call i32 @ThreadMgr_AddRef(%struct.TYPE_14__* %18)
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 1
  %22 = bitcast %struct.TYPE_14__* %21 to i32*
  %23 = load i32**, i32*** %5, align 8
  store i32* %22, i32** %23, align 8
  %24 = load i32, i32* @S_OK, align 4
  store i32 %24, i32* %3, align 4
  br label %110

25:                                               ; preds = %11
  %26 = call i32 (...) @GetProcessHeap()
  %27 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %28 = call %struct.TYPE_22__* @HeapAlloc(i32 %26, i32 %27, i32 120)
  store %struct.TYPE_22__* %28, %struct.TYPE_22__** %6, align 8
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %30 = icmp eq %struct.TYPE_22__* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %32, i32* %3, align 4
  br label %110

33:                                               ; preds = %25
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  store i32* @ThreadMgrExVtbl, i32** %36, align 8
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 20
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  store i32* @ThreadMgrSourceVtbl, i32** %39, align 8
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 19
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  store i32* @KeystrokeMgrVtbl, i32** %42, align 8
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 18
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  store i32* @MessagePumpVtbl, i32** %45, align 8
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 17
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  store i32* @ClientIdVtbl, i32** %48, align 8
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 16
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 0
  store i32* @ThreadMgrEventSinkVtbl, i32** %51, align 8
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 15
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 0
  store i32* @ThreadMgrUIElementMgrVtbl, i32** %54, align 8
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 14
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 0
  store i32* @SourceSingleVtbl, i32** %57, align 8
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  %60 = load i32, i32* @tlsIndex, align 4
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %62 = call i32 @TlsSetValue(i32 %60, %struct.TYPE_22__* %61)
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 1
  %65 = bitcast %struct.TYPE_14__* %64 to i32*
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 13
  %68 = bitcast i32* %67 to i32**
  %69 = call i32 @CompartmentMgr_Constructor(i32* %65, i32* @IID_IUnknown, i32** %68)
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 12
  %72 = call i32 @list_init(i32* %71)
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 11
  %75 = call i32 @list_init(i32* %74)
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 10
  %78 = call i32 @list_init(i32* %77)
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 9
  %81 = call i32 @list_init(i32* %80)
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 8
  %84 = call i32 @list_init(i32* %83)
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 7
  %87 = call i32 @list_init(i32* %86)
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 6
  %90 = call i32 @list_init(i32* %89)
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 5
  %93 = call i32 @list_init(i32* %92)
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 4
  %96 = call i32 @list_init(i32* %95)
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 3
  %99 = call i32 @list_init(i32* %98)
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 2
  %102 = call i32 @list_init(i32* %101)
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %104 = call i32 @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.TYPE_22__* %103)
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 1
  %107 = bitcast %struct.TYPE_14__* %106 to i32*
  %108 = load i32**, i32*** %5, align 8
  store i32* %107, i32** %108, align 8
  %109 = load i32, i32* @S_OK, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %33, %31, %16, %9
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local %struct.TYPE_22__* @TlsGetValue(i32) #1

declare dso_local i32 @ThreadMgr_AddRef(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_22__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @TlsSetValue(i32, %struct.TYPE_22__*) #1

declare dso_local i32 @CompartmentMgr_Constructor(i32*, i32*, i32**) #1

declare dso_local i32 @list_init(i32*) #1

declare dso_local i32 @TRACE(i8*, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
