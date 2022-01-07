; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_shared.c_doDbConnect.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_shared.c_doDbConnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32, %struct.TYPE_15__*, %struct.TYPE_13__, i64*, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }

@LSM_LOCK_DMS1 = common dso_local global i64 0, align 8
@LSM_LOCK_EXCL = common dso_local global i32 0, align 4
@LSM_BUSY = common dso_local global i32 0, align 4
@LSM_OK = common dso_local global i32 0, align 4
@LSM_LOCK_DMS3 = common dso_local global i64 0, align 8
@LSM_LOCK_DMS2 = common dso_local global i64 0, align 8
@LSM_LOCK_SHARED = common dso_local global i32 0, align 4
@LSM_LOCK_NRWCLIENT = common dso_local global i32 0, align 4
@LSM_LOCK_UNLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @doDbConnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @doDbConnect(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i32 100000, i32* %4, align 4
  store i32 1000, i32* %5, align 4
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %13 = icmp eq %struct.TYPE_15__* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  br label %22

22:                                               ; preds = %1, %42
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %24 = load i64, i64* @LSM_LOCK_DMS1, align 8
  %25 = load i32, i32* @LSM_LOCK_EXCL, align 4
  %26 = call i32 @lsmShmLock(%struct.TYPE_14__* %23, i64 %24, i32 %25, i32 1)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @LSM_BUSY, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %43

31:                                               ; preds = %22
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @lsmEnvSleep(i32 %34, i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = mul nsw i32 %37, 2
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp sgt i32 %39, 100000
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  store i32 100000, i32* %5, align 4
  br label %42

42:                                               ; preds = %41, %31
  br label %22

43:                                               ; preds = %30
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @LSM_OK, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %49 = call i32 @lsmShmCacheChunks(%struct.TYPE_14__* %48, i32 1)
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %47, %43
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @LSM_OK, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %176

56:                                               ; preds = %50
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 4
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to %struct.TYPE_15__*
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 2
  store %struct.TYPE_15__* %62, %struct.TYPE_15__** %64, align 8
  %65 = load i64, i64* @LSM_LOCK_DMS3, align 8
  %66 = load i64, i64* @LSM_LOCK_DMS2, align 8
  %67 = add nsw i64 1, %66
  %68 = icmp eq i64 %65, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %72 = load i64, i64* @LSM_LOCK_DMS2, align 8
  %73 = load i32, i32* @LSM_LOCK_EXCL, align 4
  %74 = call i32 @lsmShmTestLock(%struct.TYPE_14__* %71, i64 %72, i32 2, i32 %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @LSM_OK, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %118

78:                                               ; preds = %56
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %80, align 8
  %82 = call i32 @memset(%struct.TYPE_15__* %81, i32 0, i32 16)
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %84 = call i32 @lsmCheckpointRecover(%struct.TYPE_14__* %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @LSM_OK, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %78
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %90 = call i32 @lsmLogRecover(%struct.TYPE_14__* %89)
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %88, %78
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @LSM_OK, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %117

95:                                               ; preds = %91
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %97, align 8
  store %struct.TYPE_15__* %98, %struct.TYPE_15__** %7, align 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @lsmCheckpointId(i32 %101, i32 0)
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i64 0
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  store i32 %102, i32* %107, align 4
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i64 0
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  store i32 %111, i32* %116, align 4
  br label %117

117:                                              ; preds = %95, %91
  br label %125

118:                                              ; preds = %56
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* @LSM_BUSY, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %118
  %123 = load i32, i32* @LSM_OK, align 4
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %122, %118
  br label %125

125:                                              ; preds = %124, %117
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* @LSM_OK, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %125
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %131 = load i64, i64* @LSM_LOCK_DMS2, align 8
  %132 = load i32, i32* @LSM_LOCK_SHARED, align 4
  %133 = call i32 @lsmShmLock(%struct.TYPE_14__* %130, i64 %131, i32 %132, i32 0)
  store i32 %133, i32* %6, align 4
  br label %134

134:                                              ; preds = %129, %125
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* @LSM_OK, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %134
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 2
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %140, align 8
  br label %170

141:                                              ; preds = %134
  store i32 0, i32* %8, align 4
  br label %142

142:                                              ; preds = %166, %141
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* @LSM_LOCK_NRWCLIENT, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %169

146:                                              ; preds = %142
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %148 = load i32, i32* %8, align 4
  %149 = call i64 @LSM_LOCK_RWCLIENT(i32 %148)
  %150 = load i32, i32* @LSM_LOCK_EXCL, align 4
  %151 = call i32 @lsmShmLock(%struct.TYPE_14__* %147, i64 %149, i32 %150, i32 0)
  store i32 %151, i32* %9, align 4
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* @LSM_OK, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %146
  %156 = load i32, i32* %8, align 4
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 1
  store i32 %156, i32* %158, align 8
  br label %159

159:                                              ; preds = %155, %146
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* @LSM_BUSY, align 4
  %162 = icmp ne i32 %160, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %159
  %164 = load i32, i32* %9, align 4
  store i32 %164, i32* %6, align 4
  br label %169

165:                                              ; preds = %159
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %8, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %8, align 4
  br label %142

169:                                              ; preds = %163, %142
  br label %170

170:                                              ; preds = %169, %138
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %172 = load i64, i64* @LSM_LOCK_DMS1, align 8
  %173 = load i32, i32* @LSM_LOCK_UNLOCK, align 4
  %174 = call i32 @lsmShmLock(%struct.TYPE_14__* %171, i64 %172, i32 %173, i32 0)
  %175 = load i32, i32* %6, align 4
  store i32 %175, i32* %2, align 4
  br label %176

176:                                              ; preds = %170, %54
  %177 = load i32, i32* %2, align 4
  ret i32 %177
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @lsmShmLock(%struct.TYPE_14__*, i64, i32, i32) #1

declare dso_local i32 @lsmEnvSleep(i32, i32) #1

declare dso_local i32 @lsmShmCacheChunks(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @lsmShmTestLock(%struct.TYPE_14__*, i64, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @lsmCheckpointRecover(%struct.TYPE_14__*) #1

declare dso_local i32 @lsmLogRecover(%struct.TYPE_14__*) #1

declare dso_local i32 @lsmCheckpointId(i32, i32) #1

declare dso_local i64 @LSM_LOCK_RWCLIENT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
