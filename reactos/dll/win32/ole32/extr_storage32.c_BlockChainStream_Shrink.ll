; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_BlockChainStream_Shrink.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_BlockChainStream_Shrink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i64, i32, i32, %struct.TYPE_14__*, %struct.TYPE_18__*, %struct.BlockChainRun*, i8** }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.BlockChainRun = type { i32, i64, i64 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i8* }

@BLOCK_END_OF_CHAIN = common dso_local global i8* null, align 8
@DIRENTRY_NULL = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i32)* @BlockChainStream_Shrink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BlockChainStream_Shrink(%struct.TYPE_17__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_15__, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__, align 8
  %9 = alloca %struct.BlockChainRun*, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 0
  store i32 %1, i32* %10, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 5
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sdiv i32 %12, %17
  store i32 %18, i32* %6, align 4
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 5
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = srem i32 %20, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %28, %2
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %31
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sub nsw i32 %36, 1
  %38 = call i32 @BlockChainStream_GetSectorOfOffset(%struct.TYPE_17__* %35, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 5
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i8*, i8** @BLOCK_END_OF_CHAIN, align 8
  %44 = call i32 @StorageImpl_SetNextBlockInChain(%struct.TYPE_18__* %41, i32 %42, i8* %43)
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  br label %87

48:                                               ; preds = %31
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 7
  %51 = load i8**, i8*** %50, align 8
  %52 = icmp ne i8** %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load i8*, i8** @BLOCK_END_OF_CHAIN, align 8
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 7
  %57 = load i8**, i8*** %56, align 8
  store i8* %54, i8** %57, align 8
  br label %82

58:                                               ; preds = %48
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @DIRENTRY_NULL, align 8
  %63 = icmp ne i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 5
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %67, align 8
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @StorageImpl_ReadDirEntry(%struct.TYPE_18__* %68, i64 %71, %struct.TYPE_16__* %8)
  %73 = load i8*, i8** @BLOCK_END_OF_CHAIN, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  store i8* %73, i8** %74, align 8
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 5
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %76, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @StorageImpl_WriteDirEntry(%struct.TYPE_18__* %77, i64 %80, %struct.TYPE_16__* %8)
  br label %82

82:                                               ; preds = %58, %53
  %83 = load i8*, i8** @BLOCK_END_OF_CHAIN, align 8
  %84 = ptrtoint i8* %83 to i32
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  br label %87

87:                                               ; preds = %82, %34
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  br label %91

91:                                               ; preds = %156, %87
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %110

96:                                               ; preds = %91
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 6
  %99 = load %struct.BlockChainRun*, %struct.BlockChainRun** %98, align 8
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = sub nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.BlockChainRun, %struct.BlockChainRun* %99, i64 %104
  %106 = getelementptr inbounds %struct.BlockChainRun, %struct.BlockChainRun* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = icmp sge i32 %107, %108
  br label %110

110:                                              ; preds = %96, %91
  %111 = phi i1 [ false, %91 ], [ %109, %96 ]
  br i1 %111, label %112, label %157

112:                                              ; preds = %110
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 6
  %115 = load %struct.BlockChainRun*, %struct.BlockChainRun** %114, align 8
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = sub nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.BlockChainRun, %struct.BlockChainRun* %115, i64 %120
  store %struct.BlockChainRun* %121, %struct.BlockChainRun** %9, align 8
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 5
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %123, align 8
  %125 = load %struct.BlockChainRun*, %struct.BlockChainRun** %9, align 8
  %126 = getelementptr inbounds %struct.BlockChainRun, %struct.BlockChainRun* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.BlockChainRun*, %struct.BlockChainRun** %9, align 8
  %129 = getelementptr inbounds %struct.BlockChainRun, %struct.BlockChainRun* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %127, %131
  %133 = load %struct.BlockChainRun*, %struct.BlockChainRun** %9, align 8
  %134 = getelementptr inbounds %struct.BlockChainRun, %struct.BlockChainRun* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = sub nsw i64 %132, %135
  %137 = call i32 @StorageImpl_FreeBigBlock(%struct.TYPE_18__* %124, i64 %136)
  %138 = load %struct.BlockChainRun*, %struct.BlockChainRun** %9, align 8
  %139 = getelementptr inbounds %struct.BlockChainRun, %struct.BlockChainRun* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = sext i32 %140 to i64
  %142 = load %struct.BlockChainRun*, %struct.BlockChainRun** %9, align 8
  %143 = getelementptr inbounds %struct.BlockChainRun, %struct.BlockChainRun* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = icmp eq i64 %141, %144
  br i1 %145, label %146, label %151

146:                                              ; preds = %112
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, -1
  store i32 %150, i32* %148, align 4
  br label %156

151:                                              ; preds = %112
  %152 = load %struct.BlockChainRun*, %struct.BlockChainRun** %9, align 8
  %153 = getelementptr inbounds %struct.BlockChainRun, %struct.BlockChainRun* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = add nsw i32 %154, -1
  store i32 %155, i32* %153, align 8
  br label %156

156:                                              ; preds = %151, %146
  br label %91

157:                                              ; preds = %110
  store i32 0, i32* %7, align 4
  br label %158

158:                                              ; preds = %189, %157
  %159 = load i32, i32* %7, align 4
  %160 = icmp slt i32 %159, 2
  br i1 %160, label %161, label %192

161:                                              ; preds = %158
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 4
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %163, align 8
  %165 = load i32, i32* %7, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %6, align 4
  %171 = icmp sge i32 %169, %170
  br i1 %171, label %172, label %188

172:                                              ; preds = %161
  %173 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 4
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %174, align 8
  %176 = load i32, i32* %7, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 0
  store i32 -1, i32* %179, align 4
  %180 = load i32, i32* @FALSE, align 4
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 4
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %182, align 8
  %184 = load i32, i32* %7, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 1
  store i32 %180, i32* %187, align 4
  br label %188

188:                                              ; preds = %172, %161
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %7, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %7, align 4
  br label %158

192:                                              ; preds = %158
  %193 = load i32, i32* @TRUE, align 4
  ret i32 %193
}

declare dso_local i32 @BlockChainStream_GetSectorOfOffset(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @StorageImpl_SetNextBlockInChain(%struct.TYPE_18__*, i32, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @StorageImpl_ReadDirEntry(%struct.TYPE_18__*, i64, %struct.TYPE_16__*) #1

declare dso_local i32 @StorageImpl_WriteDirEntry(%struct.TYPE_18__*, i64, %struct.TYPE_16__*) #1

declare dso_local i32 @StorageImpl_FreeBigBlock(%struct.TYPE_18__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
