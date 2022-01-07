; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_SmallBlockChainStream_Shrink.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_SmallBlockChainStream_Shrink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_19__*, i32 }
%struct.TYPE_19__ = type { i64, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_18__ = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@BLOCK_END_OF_CHAIN = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i64)* @SmallBlockChainStream_Shrink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SmallBlockChainStream_Shrink(%struct.TYPE_17__* %0, i64 %1) #0 {
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
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = sdiv i64 %15, %20
  store i64 %21, i64* %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = srem i64 %24, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load i64, i64* %8, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %8, align 8
  br label %35

35:                                               ; preds = %32, %2
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %37 = call i64 @SmallBlockChainStream_GetHeadOfChain(%struct.TYPE_17__* %36)
  store i64 %37, i64* %6, align 8
  br label %38

38:                                               ; preds = %50, %35
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @SmallBlockChainStream_GetNextBlockInChain(%struct.TYPE_17__* %43, i64 %44, i64* %6)
  %46 = call i64 @FAILED(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* @FALSE, align 4
  store i32 %49, i32* %3, align 4
  br label %118

50:                                               ; preds = %42
  %51 = load i64, i64* %9, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %9, align 8
  br label %38

53:                                               ; preds = %38
  %54 = load i64, i64* %9, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %53
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %58, align 8
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @StorageImpl_ReadDirEntry(%struct.TYPE_19__* %59, i32 %62, %struct.TYPE_18__* %10)
  %64 = load i64, i64* @BLOCK_END_OF_CHAIN, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  store i64 %64, i64* %65, align 8
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %67, align 8
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @StorageImpl_WriteDirEntry(%struct.TYPE_19__* %68, i32 %71, %struct.TYPE_18__* %10)
  %73 = load i64, i64* %6, align 8
  store i64 %73, i64* %7, align 8
  br label %87

74:                                               ; preds = %53
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %76 = load i64, i64* %6, align 8
  %77 = call i32 @SmallBlockChainStream_GetNextBlockInChain(%struct.TYPE_17__* %75, i64 %76, i64* %7)
  %78 = call i64 @FAILED(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i32, i32* @FALSE, align 4
  store i32 %81, i32* %3, align 4
  br label %118

82:                                               ; preds = %74
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %84 = load i64, i64* %6, align 8
  %85 = load i64, i64* @BLOCK_END_OF_CHAIN, align 8
  %86 = call i32 @SmallBlockChainStream_SetNextBlockInChain(%struct.TYPE_17__* %83, i64 %84, i64 %85)
  br label %87

87:                                               ; preds = %82, %56
  br label %88

88:                                               ; preds = %100, %87
  %89 = load i64, i64* %7, align 8
  %90 = load i64, i64* @BLOCK_END_OF_CHAIN, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %116

92:                                               ; preds = %88
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %94 = load i64, i64* %7, align 8
  %95 = call i32 @SmallBlockChainStream_GetNextBlockInChain(%struct.TYPE_17__* %93, i64 %94, i64* %6)
  %96 = call i64 @FAILED(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = load i32, i32* @FALSE, align 4
  store i32 %99, i32* %3, align 4
  br label %118

100:                                              ; preds = %92
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %102 = load i64, i64* %7, align 8
  %103 = call i32 @SmallBlockChainStream_FreeBlock(%struct.TYPE_17__* %101, i64 %102)
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load i64, i64* %7, align 8
  %110 = call i32 @min(i32 %108, i64 %109)
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 1
  store i32 %110, i32* %114, align 8
  %115 = load i64, i64* %6, align 8
  store i64 %115, i64* %7, align 8
  br label %88

116:                                              ; preds = %88
  %117 = load i32, i32* @TRUE, align 4
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %116, %98, %80, %48
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i64 @SmallBlockChainStream_GetHeadOfChain(%struct.TYPE_17__*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @SmallBlockChainStream_GetNextBlockInChain(%struct.TYPE_17__*, i64, i64*) #1

declare dso_local i32 @StorageImpl_ReadDirEntry(%struct.TYPE_19__*, i32, %struct.TYPE_18__*) #1

declare dso_local i32 @StorageImpl_WriteDirEntry(%struct.TYPE_19__*, i32, %struct.TYPE_18__*) #1

declare dso_local i32 @SmallBlockChainStream_SetNextBlockInChain(%struct.TYPE_17__*, i64, i64) #1

declare dso_local i32 @SmallBlockChainStream_FreeBlock(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @min(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
