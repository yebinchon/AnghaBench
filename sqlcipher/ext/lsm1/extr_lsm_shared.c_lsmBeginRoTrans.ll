; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_shared.c_lsmBeginRoTrans.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_shared.c_lsmBeginRoTrans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i64*, i32*, i64 }

@LSM_OK = common dso_local global i32 0, align 4
@LSM_LOCK_DMS1 = common dso_local global i32 0, align 4
@LSM_LOCK_SHARED = common dso_local global i32 0, align 4
@LSM_LOCK_NREADER = common dso_local global i32 0, align 4
@LSM_LOCK_ROTRANS = common dso_local global i32 0, align 4
@LSM_LOCK_UNLOCK = common dso_local global i32 0, align 4
@LSM_BUSY = common dso_local global i32 0, align 4
@LSM_LOCK_DMS3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lsmBeginRoTrans(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %5 = load i32, i32* @LSM_OK, align 4
  store i32 %5, i32* %4, align 4
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 3
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br label %15

15:                                               ; preds = %10, %1
  %16 = phi i1 [ false, %1 ], [ %14, %10 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %134

29:                                               ; preds = %15
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %31 = load i32, i32* @LSM_LOCK_DMS1, align 4
  %32 = load i32, i32* @LSM_LOCK_SHARED, align 4
  %33 = call i32 @lsmShmLock(%struct.TYPE_9__* %30, i32 %31, i32 %32, i32 0)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @LSM_OK, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %136

39:                                               ; preds = %29
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %41 = call i32 @LSM_LOCK_RWCLIENT(i32 0)
  %42 = load i32, i32* @LSM_LOCK_NREADER, align 4
  %43 = load i32, i32* @LSM_LOCK_SHARED, align 4
  %44 = call i32 @lsmShmTestLock(%struct.TYPE_9__* %40, i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @LSM_OK, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %92

48:                                               ; preds = %39
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %50 = load i32, i32* @LSM_LOCK_ROTRANS, align 4
  %51 = load i32, i32* @LSM_LOCK_SHARED, align 4
  %52 = call i32 @lsmShmLock(%struct.TYPE_9__* %49, i32 %50, i32 %51, i32 0)
  store i32 %52, i32* %4, align 4
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %54 = load i32, i32* @LSM_LOCK_DMS1, align 4
  %55 = load i32, i32* @LSM_LOCK_UNLOCK, align 4
  %56 = call i32 @lsmShmLock(%struct.TYPE_9__* %53, i32 %54, i32 %55, i32 0)
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @LSM_OK, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %91

60:                                               ; preds = %48
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  store i32 1, i32* %62, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %64 = call i32 @lsmShmCacheChunks(%struct.TYPE_9__* %63, i32 1)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @LSM_OK, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %90

68:                                               ; preds = %60
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 2
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 0
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to i32*
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 3
  store i32* %74, i32** %76, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 3
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @memset(i32* %79, i32 0, i32 4)
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %82 = call i32 @lsmCheckpointRecover(%struct.TYPE_9__* %81)
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @LSM_OK, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %68
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %88 = call i32 @lsmLogRecover(%struct.TYPE_9__* %87)
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %86, %68
  br label %90

90:                                               ; preds = %89, %60
  br label %91

91:                                               ; preds = %90, %48
  br label %126

92:                                               ; preds = %39
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @LSM_BUSY, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %125

96:                                               ; preds = %92
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %98 = load i32, i32* @LSM_LOCK_DMS3, align 4
  %99 = load i32, i32* @LSM_LOCK_SHARED, align 4
  %100 = call i32 @lsmShmLock(%struct.TYPE_9__* %97, i32 %98, i32 %99, i32 0)
  store i32 %100, i32* %4, align 4
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %102 = load i32, i32* @LSM_LOCK_DMS1, align 4
  %103 = load i32, i32* @LSM_LOCK_UNLOCK, align 4
  %104 = call i32 @lsmShmLock(%struct.TYPE_9__* %101, i32 %102, i32 %103, i32 0)
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* @LSM_OK, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %124

108:                                              ; preds = %96
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %110 = call i32 @lsmShmCacheChunks(%struct.TYPE_9__* %109, i32 1)
  store i32 %110, i32* %4, align 4
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* @LSM_OK, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %123

114:                                              ; preds = %108
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 2
  %117 = load i64*, i64** %116, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 0
  %119 = load i64, i64* %118, align 8
  %120 = inttoptr i64 %119 to i32*
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 3
  store i32* %120, i32** %122, align 8
  br label %123

123:                                              ; preds = %114, %108
  br label %124

124:                                              ; preds = %123, %96
  br label %125

125:                                              ; preds = %124, %92
  br label %126

126:                                              ; preds = %125, %91
  %127 = load i32, i32* %4, align 4
  %128 = load i32, i32* @LSM_OK, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %126
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %132 = call i32 @lsmBeginReadTrans(%struct.TYPE_9__* %131)
  store i32 %132, i32* %4, align 4
  br label %133

133:                                              ; preds = %130, %126
  br label %134

134:                                              ; preds = %133, %15
  %135 = load i32, i32* %4, align 4
  store i32 %135, i32* %2, align 4
  br label %136

136:                                              ; preds = %134, %37
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @lsmShmLock(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @lsmShmTestLock(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @LSM_LOCK_RWCLIENT(i32) #1

declare dso_local i32 @lsmShmCacheChunks(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @lsmCheckpointRecover(%struct.TYPE_9__*) #1

declare dso_local i32 @lsmLogRecover(%struct.TYPE_9__*) #1

declare dso_local i32 @lsmBeginReadTrans(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
