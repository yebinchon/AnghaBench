; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msctf/extr_context.c_Context_Constructor.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msctf/extr_context.c_Context_Constructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_19__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_20__ = type { %struct.TYPE_21__*, i32 }

@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"(%p) %x %p %p %p\0A\00", align 1
@ContextVtbl = common dso_local global i32 0, align 4
@ContextSourceVtbl = common dso_local global i32 0, align 4
@ContextOwnerCompositionServicesVtbl = common dso_local global i32 0, align 4
@InsertAtSelectionVtbl = common dso_local global i32 0, align 4
@ContextSourceSingleVtbl = common dso_local global i32 0, align 4
@TextStoreACPSinkVtbl = common dso_local global i32 0, align 4
@TextStoreACPServicesVtbl = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@IID_IUnknown = common dso_local global i32 0, align 4
@TF_ES_READ = common dso_local global i32 0, align 4
@IID_ITextStoreACP = common dso_local global i32 0, align 4
@IID_ITfContextOwnerCompositionSink = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Unhandled pUnk\0A\00", align 1
@COOKIE_MAGIC_EDITCOOKIE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"returning %p\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Context_Constructor(i32 %0, i32* %1, i32* %2, %struct.TYPE_19__** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_19__**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca %struct.TYPE_20__*, align 8
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_19__** %3, %struct.TYPE_19__*** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = call i32 (...) @GetProcessHeap()
  %15 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %16 = call i8* @HeapAlloc(i32 %14, i32 %15, i32 120)
  %17 = bitcast i8* %16 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %17, %struct.TYPE_21__** %12, align 8
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %19 = icmp eq %struct.TYPE_21__* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %21, i32* %6, align 4
  br label %140

22:                                               ; preds = %5
  %23 = call i32 (...) @GetProcessHeap()
  %24 = call i8* @HeapAlloc(i32 %23, i32 0, i32 16)
  %25 = bitcast i8* %24 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %25, %struct.TYPE_20__** %13, align 8
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %27 = icmp eq %struct.TYPE_20__* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = call i32 (...) @GetProcessHeap()
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %31 = call i32 @HeapFree(i32 %29, i32 0, %struct.TYPE_21__* %30)
  %32 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %32, i32* %6, align 4
  br label %140

33:                                               ; preds = %22
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %10, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.TYPE_21__* %34, i32 %35, i32* %36, %struct.TYPE_19__** %37, i32* %38)
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 0
  store i32* @ContextVtbl, i32** %42, align 8
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 19
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  store i32* @ContextSourceVtbl, i32** %45, align 8
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 18
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  store i32* @ContextOwnerCompositionServicesVtbl, i32** %48, align 8
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 17
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  store i32* @InsertAtSelectionVtbl, i32** %51, align 8
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 16
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  store i32* @ContextSourceSingleVtbl, i32** %54, align 8
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 15
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 0
  store i32* @TextStoreACPSinkVtbl, i32** %57, align 8
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 14
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 0
  store i32* @TextStoreACPServicesVtbl, i32** %60, align 8
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 13
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @FALSE, align 4
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 12
  store i32 %66, i32* %68, align 8
  %69 = load i32*, i32** %9, align 8
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 11
  store i32* %69, i32** %71, align 8
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 1
  %74 = bitcast %struct.TYPE_19__* %73 to i32*
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 10
  %77 = bitcast i32* %76 to i32**
  %78 = call i32 @CompartmentMgr_Constructor(i32* %74, i32* @IID_IUnknown, i32** %77)
  %79 = load i32, i32* @TF_ES_READ, align 4
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 0
  store %struct.TYPE_21__* %82, %struct.TYPE_21__** %84, align 8
  %85 = load i32*, i32** %8, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %108

87:                                               ; preds = %33
  %88 = load i32*, i32** %8, align 8
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 9
  %91 = call i32 @IUnknown_QueryInterface(i32* %88, i32* @IID_ITextStoreACP, i32* %90)
  %92 = load i32*, i32** %8, align 8
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 8
  %95 = call i32 @IUnknown_QueryInterface(i32* %92, i32* @IID_ITfContextOwnerCompositionSink, i32* %94)
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 9
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %87
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 8
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %100
  %106 = call i32 @FIXME(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %107

107:                                              ; preds = %105, %100, %87
  br label %108

108:                                              ; preds = %107, %33
  %109 = load i32, i32* @COOKIE_MAGIC_EDITCOOKIE, align 4
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %111 = call i32 @generate_Cookie(i32 %109, %struct.TYPE_20__* %110)
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 7
  store i32 %111, i32* %113, align 4
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 7
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %11, align 8
  store i32 %116, i32* %117, align 4
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 6
  %120 = call i32 @list_init(i32* %119)
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 5
  %123 = call i32 @list_init(i32* %122)
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 4
  %126 = call i32 @list_init(i32* %125)
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 3
  %129 = call i32 @list_init(i32* %128)
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 2
  %132 = call i32 @list_init(i32* %131)
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %10, align 8
  store %struct.TYPE_19__* %134, %struct.TYPE_19__** %135, align 8
  %136 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %10, align 8
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %136, align 8
  %138 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_19__* %137)
  %139 = load i32, i32* @S_OK, align 4
  store i32 %139, i32* %6, align 4
  br label %140

140:                                              ; preds = %108, %28, %20
  %141 = load i32, i32* %6, align 4
  ret i32 %141
}

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_21__*) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @CompartmentMgr_Constructor(i32*, i32*, i32**) #1

declare dso_local i32 @IUnknown_QueryInterface(i32*, i32*, i32*) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @generate_Cookie(i32, %struct.TYPE_20__*) #1

declare dso_local i32 @list_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
