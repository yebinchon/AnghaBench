; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_BlockChainStream_Enlarge.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_BlockChainStream_Enlarge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64, i32, %struct.TYPE_18__*, i64* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_16__ = type { i64 }

@BLOCK_END_OF_CHAIN = common dso_local global i64 0, align 8
@DIRENTRY_NULL = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i64)* @BlockChainStream_Enlarge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BlockChainStream_Enlarge(%struct.TYPE_17__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_16__, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %4, i32 0, i32 0
  store i64 %1, i64* %11, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i64 0, i64* %9, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %13 = call i64 @BlockChainStream_GetHeadOfChain(%struct.TYPE_17__* %12)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @BLOCK_END_OF_CHAIN, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %67

17:                                               ; preds = %2
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %21 = call i64 @StorageImpl_GetNextFreeBigBlock(%struct.TYPE_18__* %20)
  store i64 %21, i64* %6, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @BLOCK_END_OF_CHAIN, align 8
  %27 = call i32 @StorageImpl_SetNextBlockInChain(%struct.TYPE_18__* %24, i64 %25, i64 %26)
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 4
  %30 = load i64*, i64** %29, align 8
  %31 = icmp ne i64* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %17
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 4
  %36 = load i64*, i64** %35, align 8
  store i64 %33, i64* %36, align 8
  br label %61

37:                                               ; preds = %17
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @DIRENTRY_NULL, align 8
  %42 = icmp ne i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 3
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %46, align 8
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @StorageImpl_ReadDirEntry(%struct.TYPE_18__* %47, i64 %50, %struct.TYPE_16__* %10)
  %52 = load i64, i64* %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  store i64 %52, i64* %53, align 8
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 3
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %55, align 8
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @StorageImpl_WriteDirEntry(%struct.TYPE_18__* %56, i64 %59, %struct.TYPE_16__* %10)
  br label %61

61:                                               ; preds = %37, %32
  %62 = load i64, i64* %6, align 8
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 2
  store i32 1, i32* %66, align 8
  br label %67

67:                                               ; preds = %61, %2
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %4, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 3
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = sdiv i64 %69, %74
  store i64 %75, i64* %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %4, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = srem i64 %77, %82
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %67
  %86 = load i64, i64* %8, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %8, align 8
  br label %88

88:                                               ; preds = %85, %67
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @BLOCK_END_OF_CHAIN, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %120

94:                                               ; preds = %88
  %95 = load i64, i64* %6, align 8
  store i64 %95, i64* %7, align 8
  br label %96

96:                                               ; preds = %115, %94
  %97 = load i64, i64* %6, align 8
  %98 = load i64, i64* @BLOCK_END_OF_CHAIN, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %116

100:                                              ; preds = %96
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 8
  %105 = load i64, i64* %6, align 8
  store i64 %105, i64* %7, align 8
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 3
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %107, align 8
  %109 = load i64, i64* %7, align 8
  %110 = call i32 @StorageImpl_GetNextBlockInChain(%struct.TYPE_18__* %108, i64 %109, i64* %6)
  %111 = call i64 @FAILED(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %100
  %114 = load i32, i32* @FALSE, align 4
  store i32 %114, i32* %3, align 4
  br label %173

115:                                              ; preds = %100
  br label %96

116:                                              ; preds = %96
  %117 = load i64, i64* %7, align 8
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 1
  store i64 %117, i64* %119, align 8
  br label %120

120:                                              ; preds = %116, %88
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  store i64 %123, i64* %7, align 8
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = sext i32 %126 to i64
  store i64 %127, i64* %9, align 8
  %128 = load i64, i64* %9, align 8
  %129 = load i64, i64* %8, align 8
  %130 = icmp slt i64 %128, %129
  br i1 %130, label %131, label %164

131:                                              ; preds = %120
  br label %132

132:                                              ; preds = %136, %131
  %133 = load i64, i64* %9, align 8
  %134 = load i64, i64* %8, align 8
  %135 = icmp slt i64 %133, %134
  br i1 %135, label %136, label %156

136:                                              ; preds = %132
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 3
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %138, align 8
  %140 = call i64 @StorageImpl_GetNextFreeBigBlock(%struct.TYPE_18__* %139)
  store i64 %140, i64* %6, align 8
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 3
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %142, align 8
  %144 = load i64, i64* %7, align 8
  %145 = load i64, i64* %6, align 8
  %146 = call i32 @StorageImpl_SetNextBlockInChain(%struct.TYPE_18__* %143, i64 %144, i64 %145)
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 3
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %148, align 8
  %150 = load i64, i64* %6, align 8
  %151 = load i64, i64* @BLOCK_END_OF_CHAIN, align 8
  %152 = call i32 @StorageImpl_SetNextBlockInChain(%struct.TYPE_18__* %149, i64 %150, i64 %151)
  %153 = load i64, i64* %6, align 8
  store i64 %153, i64* %7, align 8
  %154 = load i64, i64* %9, align 8
  %155 = add nsw i64 %154, 1
  store i64 %155, i64* %9, align 8
  br label %132

156:                                              ; preds = %132
  %157 = load i64, i64* %6, align 8
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 1
  store i64 %157, i64* %159, align 8
  %160 = load i64, i64* %8, align 8
  %161 = trunc i64 %160 to i32
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 2
  store i32 %161, i32* %163, align 8
  br label %164

164:                                              ; preds = %156, %120
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %166 = call i32 @BlockChainStream_UpdateIndexCache(%struct.TYPE_17__* %165)
  %167 = call i64 @FAILED(i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %164
  %170 = load i32, i32* @FALSE, align 4
  store i32 %170, i32* %3, align 4
  br label %173

171:                                              ; preds = %164
  %172 = load i32, i32* @TRUE, align 4
  store i32 %172, i32* %3, align 4
  br label %173

173:                                              ; preds = %171, %169, %113
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local i64 @BlockChainStream_GetHeadOfChain(%struct.TYPE_17__*) #1

declare dso_local i64 @StorageImpl_GetNextFreeBigBlock(%struct.TYPE_18__*) #1

declare dso_local i32 @StorageImpl_SetNextBlockInChain(%struct.TYPE_18__*, i64, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @StorageImpl_ReadDirEntry(%struct.TYPE_18__*, i64, %struct.TYPE_16__*) #1

declare dso_local i32 @StorageImpl_WriteDirEntry(%struct.TYPE_18__*, i64, %struct.TYPE_16__*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @StorageImpl_GetNextBlockInChain(%struct.TYPE_18__*, i64, i64*) #1

declare dso_local i32 @BlockChainStream_UpdateIndexCache(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
