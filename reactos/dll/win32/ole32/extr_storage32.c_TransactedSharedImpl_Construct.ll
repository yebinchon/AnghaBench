; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_TransactedSharedImpl_Construct.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_TransactedSharedImpl_Construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, i32, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_26__*, %struct.TYPE_24__*, %struct.TYPE_23__, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_23__ = type { i32, i32, i32, i32, i32, i32*, %struct.TYPE_21__, %struct.TYPE_20__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32* }
%struct.TYPE_27__ = type { i32, i32, i32*, i64 }

@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@TransactedSharedImpl_Vtbl = common dso_local global i32 0, align 4
@TransactedSharedImpl_BaseVtbl = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@STGM_READWRITE = common dso_local global i32 0, align 4
@STGM_SHARE_EXCLUSIVE = common dso_local global i32 0, align 4
@STGM_CREATE = common dso_local global i32 0, align 4
@STGM_DELETEONRELEASE = common dso_local global i32 0, align 4
@STGM_TRANSACTED = common dso_local global i32 0, align 4
@STGFMT_DOCFILE = common dso_local global i32 0, align 4
@IID_IStorage = common dso_local global i32 0, align 4
@STGC_DEFAULT = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*, %struct.TYPE_25__**)* @TransactedSharedImpl_Construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TransactedSharedImpl_Construct(%struct.TYPE_26__* %0, %struct.TYPE_25__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_25__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_27__, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %4, align 8
  store %struct.TYPE_25__** %1, %struct.TYPE_25__*** %5, align 8
  %9 = call i32 (...) @GetProcessHeap()
  %10 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %11 = call %struct.TYPE_25__* @HeapAlloc(i32 %9, i32 %10, i32 72)
  %12 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %5, align 8
  store %struct.TYPE_25__* %11, %struct.TYPE_25__** %12, align 8
  %13 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %5, align 8
  %14 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %15 = icmp ne %struct.TYPE_25__* %14, null
  br i1 %15, label %16, label %157

16:                                               ; preds = %2
  %17 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %5, align 8
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 7
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 0
  store i32* @TransactedSharedImpl_Vtbl, i32** %21, align 8
  %22 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %5, align 8
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %28, i32 0, i32 6
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 0
  store i32 %25, i32* %30, align 8
  %31 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %5, align 8
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 5
  store i32* @TransactedSharedImpl_BaseVtbl, i32** %34, align 8
  %35 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %5, align 8
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %37, i32 0, i32 4
  %39 = call i32 @list_init(i32* %38)
  %40 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %5, align 8
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 3
  %44 = call i32 @list_init(i32* %43)
  %45 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %5, align 8
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %5, align 8
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 2
  store i32 %51, i32* %55, align 8
  %56 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %57 = load i32, i32* @FALSE, align 4
  %58 = call i32 @StorageBaseImpl_LockTransaction(%struct.TYPE_26__* %56, i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i64 @SUCCEEDED(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %146

62:                                               ; preds = %16
  %63 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %64 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %5, align 8
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 3
  %67 = load i32, i32* @FALSE, align 4
  %68 = call i32 @StorageBaseImpl_GetTransactionSig(%struct.TYPE_26__* %63, i32* %66, i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %8, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %8, i32 0, i32 3
  store i64 0, i64* %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %8, i32 0, i32 1
  store i32 4096, i32* %71, align 4
  %72 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %8, i32 0, i32 2
  store i32* null, i32** %72, align 8
  %73 = load i32, i32* @STGM_READWRITE, align 4
  %74 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @STGM_CREATE, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @STGM_DELETEONRELEASE, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @STGM_TRANSACTED, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @STGFMT_DOCFILE, align 4
  %83 = bitcast i32** %7 to i8**
  %84 = call i32 @StgCreateStorageEx(i32* null, i32 %81, i32 %82, i32 0, %struct.TYPE_27__* %8, i32* null, i32* @IID_IStorage, i8** %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32*, i32** %7, align 8
  %86 = call i64 @impl_from_IStorage(i32* %85)
  %87 = inttoptr i64 %86 to %struct.TYPE_24__*
  %88 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %5, align 8
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %89, i32 0, i32 1
  store %struct.TYPE_24__* %87, %struct.TYPE_24__** %90, align 8
  %91 = load i32, i32* %6, align 4
  %92 = call i64 @SUCCEEDED(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %142

94:                                               ; preds = %62
  %95 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %5, align 8
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %5, align 8
  %101 = load %struct.TYPE_25__*, %struct.TYPE_25__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %108 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @StorageBaseImpl_CopyStorageTree(%struct.TYPE_19__* %99, i32 %106, %struct.TYPE_26__* %107, i32 %110)
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %6, align 4
  %113 = call i64 @SUCCEEDED(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %134

115:                                              ; preds = %94
  %116 = load i32*, i32** %7, align 8
  %117 = load i32, i32* @STGC_DEFAULT, align 4
  %118 = call i32 @IStorage_Commit(i32* %116, i32 %117)
  store i32 %118, i32* %6, align 4
  %119 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %5, align 8
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %5, align 8
  %127 = load %struct.TYPE_25__*, %struct.TYPE_25__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %128, i32 0, i32 1
  store i32 %125, i32* %129, align 4
  %130 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %131 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %5, align 8
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %132, i32 0, i32 0
  store %struct.TYPE_26__* %130, %struct.TYPE_26__** %133, align 8
  br label %134

134:                                              ; preds = %115, %94
  %135 = load i32, i32* %6, align 4
  %136 = call i64 @FAILED(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %134
  %139 = load i32*, i32** %7, align 8
  %140 = call i32 @IStorage_Release(i32* %139)
  br label %141

141:                                              ; preds = %138, %134
  br label %142

142:                                              ; preds = %141, %62
  %143 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %144 = load i32, i32* @FALSE, align 4
  %145 = call i32 @StorageBaseImpl_UnlockTransaction(%struct.TYPE_26__* %143, i32 %144)
  br label %146

146:                                              ; preds = %142, %16
  %147 = load i32, i32* %6, align 4
  %148 = call i64 @FAILED(i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %146
  %151 = call i32 (...) @GetProcessHeap()
  %152 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %5, align 8
  %153 = load %struct.TYPE_25__*, %struct.TYPE_25__** %152, align 8
  %154 = call i32 @HeapFree(i32 %151, i32 0, %struct.TYPE_25__* %153)
  br label %155

155:                                              ; preds = %150, %146
  %156 = load i32, i32* %6, align 4
  store i32 %156, i32* %3, align 4
  br label %159

157:                                              ; preds = %2
  %158 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %158, i32* %3, align 4
  br label %159

159:                                              ; preds = %157, %155
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local %struct.TYPE_25__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @list_init(i32*) #1

declare dso_local i32 @StorageBaseImpl_LockTransaction(%struct.TYPE_26__*, i32) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @StorageBaseImpl_GetTransactionSig(%struct.TYPE_26__*, i32*, i32) #1

declare dso_local i32 @StgCreateStorageEx(i32*, i32, i32, i32, %struct.TYPE_27__*, i32*, i32*, i8**) #1

declare dso_local i64 @impl_from_IStorage(i32*) #1

declare dso_local i32 @StorageBaseImpl_CopyStorageTree(%struct.TYPE_19__*, i32, %struct.TYPE_26__*, i32) #1

declare dso_local i32 @IStorage_Commit(i32*, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IStorage_Release(i32*) #1

declare dso_local i32 @StorageBaseImpl_UnlockTransaction(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
