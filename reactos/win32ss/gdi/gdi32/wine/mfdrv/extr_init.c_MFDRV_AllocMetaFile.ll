; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/mfdrv/extr_init.c_MFDRV_AllocMetaFile.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/mfdrv/extr_init.c_MFDRV_AllocMetaFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_12__, %struct.TYPE_9__*, i64, i64, i8* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i64, i64, i64 }

@OBJ_METADC = common dso_local global i32 0, align 4
@MFDRV_Funcs = common dso_local global i32 0, align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@HANDLE_LIST_INC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* ()* @MFDRV_AllocMetaFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @MFDRV_AllocMetaFile() #0 {
  %1 = alloca %struct.TYPE_11__*, align 8
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = load i32, i32* @OBJ_METADC, align 4
  %5 = call %struct.TYPE_11__* @alloc_dc_ptr(i32 %4)
  store %struct.TYPE_11__* %5, %struct.TYPE_11__** %2, align 8
  %6 = icmp ne %struct.TYPE_11__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %1, align 8
  br label %87

8:                                                ; preds = %0
  %9 = call i32 (...) @GetProcessHeap()
  %10 = call i8* @HeapAlloc(i32 %9, i32 0, i32 40)
  %11 = bitcast i8* %10 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %3, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %13 = icmp ne %struct.TYPE_10__* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %16 = call i32 @free_dc_ptr(%struct.TYPE_11__* %15)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %1, align 8
  br label %87

17:                                               ; preds = %8
  %18 = call i32 (...) @GetProcessHeap()
  %19 = call i8* @HeapAlloc(i32 %18, i32 0, i32 40)
  %20 = bitcast i8* %19 to %struct.TYPE_9__*
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 2
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %22, align 8
  %23 = icmp ne %struct.TYPE_9__* %20, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %17
  %25 = call i32 (...) @GetProcessHeap()
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %27 = call i32 @HeapFree(i32 %25, i32 0, %struct.TYPE_10__* %26)
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %29 = call i32 @free_dc_ptr(%struct.TYPE_11__* %28)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %1, align 8
  br label %87

30:                                               ; preds = %17
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = call i32 @push_dc_driver(i32* %32, %struct.TYPE_12__* %34, i32* @MFDRV_Funcs)
  %36 = call i32 (...) @GetProcessHeap()
  %37 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %38 = load i32, i32* @HANDLE_LIST_INC, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 1
  %41 = trunc i64 %40 to i32
  %42 = call i8* @HeapAlloc(i32 %36, i32 %37, i32 %41)
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 5
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* @HANDLE_LIST_INC, align 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 4
  store i64 0, i64* %49, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 3
  store i64 0, i64* %51, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  store i32 768, i32* %59, align 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 2
  store i32 %64, i32* %68, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 5
  store i64 0, i64* %72, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 4
  store i64 0, i64* %76, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 3
  store i64 0, i64* %80, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @SetVirtualResolution(i32 %84, i32 0, i32 0, i32 0, i32 0)
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  store %struct.TYPE_11__* %86, %struct.TYPE_11__** %1, align 8
  br label %87

87:                                               ; preds = %30, %24, %14, %7
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  ret %struct.TYPE_11__* %88
}

declare dso_local %struct.TYPE_11__* @alloc_dc_ptr(i32) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @free_dc_ptr(%struct.TYPE_11__*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @push_dc_driver(i32*, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @SetVirtualResolution(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
