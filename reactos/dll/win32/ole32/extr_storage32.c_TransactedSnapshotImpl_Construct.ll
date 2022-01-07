; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_TransactedSnapshotImpl_Construct.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_TransactedSnapshotImpl_Construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_15__*, i32, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32*, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__, %struct.TYPE_17__*, i8*, i64, i32, i32 }

@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@TransactedSnapshotImpl_Vtbl = common dso_local global i32 0, align 4
@TransactedSnapshotImpl_BaseVtbl = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@STGM_READWRITE = common dso_local global i32 0, align 4
@STGM_SHARE_EXCLUSIVE = common dso_local global i32 0, align 4
@STGM_CREATE = common dso_local global i32 0, align 4
@STGM_DELETEONRELEASE = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_16__**)* @TransactedSnapshotImpl_Construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TransactedSnapshotImpl_Construct(%struct.TYPE_17__* %0, %struct.TYPE_16__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_16__** %1, %struct.TYPE_16__*** %5, align 8
  %9 = call i32 (...) @GetProcessHeap()
  %10 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %11 = call i8* @HeapAlloc(i32 %9, i32 %10, i32 88)
  %12 = bitcast i8* %11 to %struct.TYPE_16__*
  %13 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %5, align 8
  store %struct.TYPE_16__* %12, %struct.TYPE_16__** %13, align 8
  %14 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %5, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %16 = icmp ne %struct.TYPE_16__* %15, null
  br i1 %16, label %17, label %138

17:                                               ; preds = %2
  %18 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %5, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 7
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  store i32* @TransactedSnapshotImpl_Vtbl, i32** %22, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %5, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 6
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  store i32 %26, i32* %31, align 8
  %32 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %5, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 5
  store i32* @TransactedSnapshotImpl_BaseVtbl, i32** %35, align 8
  %36 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %5, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 4
  %40 = call i32 @list_init(i32* %39)
  %41 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %5, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 3
  %45 = call i32 @list_init(i32* %44)
  %46 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %5, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %5, align 8
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 2
  store i32 %52, i32* %56, align 8
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %58 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %5, align 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 6
  %61 = load i32, i32* @FALSE, align 4
  %62 = call i32 @StorageBaseImpl_GetTransactionSig(%struct.TYPE_17__* %57, i32* %60, i32 %61)
  %63 = load i32, i32* @STGM_READWRITE, align 4
  %64 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @STGM_CREATE, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @STGM_DELETEONRELEASE, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @StgCreateDocfile(i32* null, i32 %69, i32 0, i32** %7)
  store i32 %70, i32* %6, align 4
  %71 = load i32*, i32** %7, align 8
  %72 = call i32 @impl_from_IStorage(i32* %71)
  %73 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %5, align 8
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 5
  store i32 %72, i32* %75, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i64 @SUCCEEDED(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %127

79:                                               ; preds = %17
  store i32 20, i32* %8, align 4
  %80 = call i32 (...) @GetProcessHeap()
  %81 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = mul i64 4, %83
  %85 = trunc i64 %84 to i32
  %86 = call i8* @HeapAlloc(i32 %80, i32 %81, i32 %85)
  %87 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %5, align 8
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 3
  store i8* %86, i8** %89, align 8
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %5, align 8
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 8
  %94 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %5, align 8
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 4
  store i64 0, i64* %96, align 8
  %97 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %5, align 8
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 3
  %100 = load i8*, i8** %99, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %122

102:                                              ; preds = %79
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %104 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %5, align 8
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 2
  store %struct.TYPE_17__* %103, %struct.TYPE_17__** %106, align 8
  %107 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %5, align 8
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 1
  store %struct.TYPE_15__* %109, %struct.TYPE_15__** %111, align 8
  %112 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %5, align 8
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %112, align 8
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @TransactedSnapshotImpl_CreateStubEntry(%struct.TYPE_16__* %113, i32 %116)
  %118 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %5, align 8
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 1
  store i32 %117, i32* %121, align 4
  br label %126

122:                                              ; preds = %79
  %123 = load i32*, i32** %7, align 8
  %124 = call i32 @IStorage_Release(i32* %123)
  %125 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %125, i32* %6, align 4
  br label %126

126:                                              ; preds = %122, %102
  br label %127

127:                                              ; preds = %126, %17
  %128 = load i32, i32* %6, align 4
  %129 = call i64 @FAILED(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %127
  %132 = call i32 (...) @GetProcessHeap()
  %133 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %5, align 8
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %133, align 8
  %135 = call i32 @HeapFree(i32 %132, i32 0, %struct.TYPE_16__* %134)
  br label %136

136:                                              ; preds = %131, %127
  %137 = load i32, i32* %6, align 4
  store i32 %137, i32* %3, align 4
  br label %140

138:                                              ; preds = %2
  %139 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %139, i32* %3, align 4
  br label %140

140:                                              ; preds = %138, %136
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @list_init(i32*) #1

declare dso_local i32 @StorageBaseImpl_GetTransactionSig(%struct.TYPE_17__*, i32*, i32) #1

declare dso_local i32 @StgCreateDocfile(i32*, i32, i32, i32**) #1

declare dso_local i32 @impl_from_IStorage(i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @TransactedSnapshotImpl_CreateStubEntry(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @IStorage_Release(i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
