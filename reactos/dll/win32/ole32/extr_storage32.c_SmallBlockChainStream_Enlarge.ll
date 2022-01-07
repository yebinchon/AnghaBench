; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_SmallBlockChainStream_Enlarge.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_SmallBlockChainStream_Enlarge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_19__*, i32, i64* }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_18__ = type { i64 }

@BLOCK_END_OF_CHAIN = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i64)* @SmallBlockChainStream_Enlarge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SmallBlockChainStream_Enlarge(%struct.TYPE_17__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_18__, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  store i64 %1, i64* %12, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i64 0, i64* %9, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %14 = call i64 @SmallBlockChainStream_GetHeadOfChain(%struct.TYPE_17__* %13)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @BLOCK_END_OF_CHAIN, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %52

18:                                               ; preds = %2
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %20 = call i64 @SmallBlockChainStream_GetNextFreeBlock(%struct.TYPE_17__* %19)
  store i64 %20, i64* %6, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @BLOCK_END_OF_CHAIN, align 8
  %24 = call i32 @SmallBlockChainStream_SetNextBlockInChain(%struct.TYPE_17__* %21, i64 %22, i64 %23)
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 2
  %27 = load i64*, i64** %26, align 8
  %28 = icmp ne i64* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %18
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 2
  %33 = load i64*, i64** %32, align 8
  store i64 %30, i64* %33, align 8
  br label %51

34:                                               ; preds = %18
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %36, align 8
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @StorageImpl_ReadDirEntry(%struct.TYPE_19__* %37, i32 %40, %struct.TYPE_18__* %10)
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  store i64 %42, i64* %43, align 8
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %45, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @StorageImpl_WriteDirEntry(%struct.TYPE_19__* %46, i32 %49, %struct.TYPE_18__* %10)
  br label %51

51:                                               ; preds = %34, %29
  br label %52

52:                                               ; preds = %51, %2
  %53 = load i64, i64* %6, align 8
  store i64 %53, i64* %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = sdiv i64 %56, %61
  store i64 %62, i64* %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = srem i64 %65, %70
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %52
  %74 = load i64, i64* %8, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %8, align 8
  br label %76

76:                                               ; preds = %73, %52
  br label %77

77:                                               ; preds = %92, %76
  %78 = load i64, i64* %6, align 8
  %79 = load i64, i64* @BLOCK_END_OF_CHAIN, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %77
  %82 = load i64, i64* %9, align 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* %9, align 8
  %84 = load i64, i64* %6, align 8
  store i64 %84, i64* %7, align 8
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %86 = load i64, i64* %7, align 8
  %87 = call i32 @SmallBlockChainStream_GetNextBlockInChain(%struct.TYPE_17__* %85, i64 %86, i64* %6)
  %88 = call i64 @FAILED(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %81
  %91 = load i32, i32* @FALSE, align 4
  store i32 %91, i32* %3, align 4
  br label %114

92:                                               ; preds = %81
  br label %77

93:                                               ; preds = %77
  br label %94

94:                                               ; preds = %98, %93
  %95 = load i64, i64* %9, align 8
  %96 = load i64, i64* %8, align 8
  %97 = icmp slt i64 %95, %96
  br i1 %97, label %98, label %112

98:                                               ; preds = %94
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %100 = call i64 @SmallBlockChainStream_GetNextFreeBlock(%struct.TYPE_17__* %99)
  store i64 %100, i64* %6, align 8
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %102 = load i64, i64* %7, align 8
  %103 = load i64, i64* %6, align 8
  %104 = call i32 @SmallBlockChainStream_SetNextBlockInChain(%struct.TYPE_17__* %101, i64 %102, i64 %103)
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %106 = load i64, i64* %6, align 8
  %107 = load i64, i64* @BLOCK_END_OF_CHAIN, align 8
  %108 = call i32 @SmallBlockChainStream_SetNextBlockInChain(%struct.TYPE_17__* %105, i64 %106, i64 %107)
  %109 = load i64, i64* %6, align 8
  store i64 %109, i64* %7, align 8
  %110 = load i64, i64* %9, align 8
  %111 = add nsw i64 %110, 1
  store i64 %111, i64* %9, align 8
  br label %94

112:                                              ; preds = %94
  %113 = load i32, i32* @TRUE, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %112, %90
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i64 @SmallBlockChainStream_GetHeadOfChain(%struct.TYPE_17__*) #1

declare dso_local i64 @SmallBlockChainStream_GetNextFreeBlock(%struct.TYPE_17__*) #1

declare dso_local i32 @SmallBlockChainStream_SetNextBlockInChain(%struct.TYPE_17__*, i64, i64) #1

declare dso_local i32 @StorageImpl_ReadDirEntry(%struct.TYPE_19__*, i32, %struct.TYPE_18__*) #1

declare dso_local i32 @StorageImpl_WriteDirEntry(%struct.TYPE_19__*, i32, %struct.TYPE_18__*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @SmallBlockChainStream_GetNextBlockInChain(%struct.TYPE_17__*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
