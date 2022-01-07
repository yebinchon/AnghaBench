; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_shared.c_lsmCheckpointWrite.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_shared.c_lsmCheckpointWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i64, i64*, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@LSM_LOCK_WORKER = common dso_local global i32 0, align 4
@LSM_LOCK_UNLOCK = common dso_local global i32 0, align 4
@LSM_LOCK_CHECKPOINTER = common dso_local global i32 0, align 4
@LSM_LOCK_EXCL = common dso_local global i32 0, align 4
@LSM_OK = common dso_local global i32 0, align 4
@LSM_SAFETY_OFF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lsmCheckpointWrite(%struct.TYPE_9__* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 0, i64* %7, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = call i32 @assert(i32 1)
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %25 = load i32, i32* @LSM_LOCK_WORKER, align 4
  %26 = load i32, i32* @LSM_LOCK_UNLOCK, align 4
  %27 = call i32 @lsmShmAssertLock(%struct.TYPE_9__* %24, i32 %25, i32 %26)
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = load i32, i32* @LSM_LOCK_CHECKPOINTER, align 4
  %31 = load i32, i32* @LSM_LOCK_EXCL, align 4
  %32 = call i32 @lsmShmLock(%struct.TYPE_9__* %29, i32 %30, i32 %31, i32 0)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @LSM_OK, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %2
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %166

38:                                               ; preds = %2
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %40 = call i32 @lsmCheckpointLoad(%struct.TYPE_9__* %39, i32 0)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @LSM_OK, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %150

44:                                               ; preds = %38
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 3
  %47 = load i64*, i64** %46, align 8
  %48 = call i32 @lsmCheckpointNBlock(i64* %47)
  store i32 %48, i32* %8, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 5
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  store %struct.TYPE_10__* %51, %struct.TYPE_10__** %9, align 8
  store i32 0, i32* %10, align 4
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %87

56:                                               ; preds = %44
  store i64 0, i64* %15, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 3
  %59 = load i64*, i64** %58, align 8
  %60 = call i64 @lsmCheckpointId(i64* %59, i32 0)
  store i64 %60, i64* %14, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @lsmFsMetaPageGet(i32 %63, i32 0, i32 %66, i32** %11)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @LSM_OK, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %82

71:                                               ; preds = %56
  %72 = load i32*, i32** %11, align 8
  %73 = call i32* @lsmFsMetaPageData(i32* %72, i32* %13)
  store i32* %73, i32** %12, align 8
  %74 = load i32*, i32** %12, align 8
  %75 = bitcast i32* %74 to i64*
  %76 = call i64 @lsmCheckpointId(i64* %75, i32 1)
  store i64 %76, i64* %15, align 8
  %77 = load i32*, i32** %12, align 8
  %78 = bitcast i32* %77 to i64*
  %79 = call i64 @lsmCheckpointNWrite(i64* %78, i32 1)
  store i64 %79, i64* %7, align 8
  %80 = load i32*, i32** %11, align 8
  %81 = call i32 @lsmFsMetaPageRelease(i32* %80)
  br label %82

82:                                               ; preds = %71, %56
  %83 = load i64, i64* %15, align 8
  %84 = load i64, i64* %14, align 8
  %85 = icmp sge i64 %83, %84
  %86 = zext i1 %85 to i32
  store i32 %86, i32* %10, align 4
  br label %87

87:                                               ; preds = %82, %44
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @LSM_OK, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %149

91:                                               ; preds = %87
  %92 = load i32, i32* %10, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %149

94:                                               ; preds = %91
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = srem i32 %97, 2
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %16, align 4
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @LSM_SAFETY_OFF, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %94
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @lsmFsSyncDb(i32 %108, i32 %109)
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %105, %94
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* @LSM_OK, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %117 = load i32, i32* %16, align 4
  %118 = call i32 @lsmCheckpointStore(%struct.TYPE_9__* %116, i32 %117)
  store i32 %118, i32* %6, align 4
  br label %119

119:                                              ; preds = %115, %111
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* @LSM_OK, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %134

123:                                              ; preds = %119
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @LSM_SAFETY_OFF, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %123
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @lsmFsSyncDb(i32 %132, i32 0)
  store i32 %133, i32* %6, align 4
  br label %134

134:                                              ; preds = %129, %123, %119
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* @LSM_OK, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %148

138:                                              ; preds = %134
  %139 = load i32, i32* %16, align 4
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 4
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 3
  %144 = load i64*, i64** %143, align 8
  %145 = call i64 @lsmCheckpointNWrite(i64* %144, i32 0)
  %146 = load i64, i64* %7, align 8
  %147 = sub nsw i64 %145, %146
  store i64 %147, i64* %7, align 8
  br label %148

148:                                              ; preds = %138, %134
  br label %149

149:                                              ; preds = %148, %91, %87
  br label %150

150:                                              ; preds = %149, %38
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %152 = load i32, i32* @LSM_LOCK_CHECKPOINTER, align 4
  %153 = load i32, i32* @LSM_LOCK_UNLOCK, align 4
  %154 = call i32 @lsmShmLock(%struct.TYPE_9__* %151, i32 %152, i32 %153, i32 0)
  %155 = load i64*, i64** %5, align 8
  %156 = icmp ne i64* %155, null
  br i1 %156, label %157, label %164

157:                                              ; preds = %150
  %158 = load i32, i32* %6, align 4
  %159 = load i32, i32* @LSM_OK, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %157
  %162 = load i64, i64* %7, align 8
  %163 = load i64*, i64** %5, align 8
  store i64 %162, i64* %163, align 8
  br label %164

164:                                              ; preds = %161, %157, %150
  %165 = load i32, i32* %6, align 4
  store i32 %165, i32* %3, align 4
  br label %166

166:                                              ; preds = %164, %36
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @lsmShmAssertLock(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @lsmShmLock(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @lsmCheckpointLoad(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @lsmCheckpointNBlock(i64*) #1

declare dso_local i64 @lsmCheckpointId(i64*, i32) #1

declare dso_local i32 @lsmFsMetaPageGet(i32, i32, i32, i32**) #1

declare dso_local i32* @lsmFsMetaPageData(i32*, i32*) #1

declare dso_local i64 @lsmCheckpointNWrite(i64*, i32) #1

declare dso_local i32 @lsmFsMetaPageRelease(i32*) #1

declare dso_local i32 @lsmFsSyncDb(i32, i32) #1

declare dso_local i32 @lsmCheckpointStore(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
