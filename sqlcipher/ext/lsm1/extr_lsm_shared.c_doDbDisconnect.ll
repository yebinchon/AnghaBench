; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_shared.c_doDbDisconnect.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_shared.c_doDbDisconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64, i32, i32, %struct.TYPE_14__*, i64 }
%struct.TYPE_14__ = type { i32, i64 }

@LSM_LOCK_DMS3 = common dso_local global i32 0, align 4
@LSM_LOCK_UNLOCK = common dso_local global i32 0, align 4
@LSM_LOCK_DMS1 = common dso_local global i32 0, align 4
@LSM_LOCK_EXCL = common dso_local global i32 0, align 4
@LSM_OK = common dso_local global i32 0, align 4
@LSM_LOCK_DMS2 = common dso_local global i32 0, align 4
@LSM_LOCK_CHECKPOINTER = common dso_local global i32 0, align 4
@LSM_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @doDbDisconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doDbDisconnect(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 5
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %13 = load i32, i32* @LSM_LOCK_DMS3, align 4
  %14 = load i32, i32* @LSM_LOCK_UNLOCK, align 4
  %15 = call i32 @lsmShmLock(%struct.TYPE_13__* %12, i32 %13, i32 %14, i32 0)
  br label %159

16:                                               ; preds = %1
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %18 = load i32, i32* @LSM_LOCK_DMS1, align 4
  %19 = load i32, i32* @LSM_LOCK_EXCL, align 4
  %20 = call i32 @lsmShmLock(%struct.TYPE_13__* %17, i32 %18, i32 %19, i32 1)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @LSM_OK, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %139

24:                                               ; preds = %16
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %26 = load i32, i32* @LSM_LOCK_DMS2, align 4
  %27 = load i32, i32* @LSM_LOCK_UNLOCK, align 4
  %28 = call i32 @lsmShmLock(%struct.TYPE_13__* %25, i32 %26, i32 %27, i32 0)
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %30 = load i32, i32* @LSM_LOCK_DMS2, align 4
  %31 = load i32, i32* @LSM_LOCK_EXCL, align 4
  %32 = call i32 @lsmShmTestLock(%struct.TYPE_13__* %29, i32 %30, i32 1, i32 %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @LSM_OK, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %24
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %38 = load i32, i32* @LSM_LOCK_CHECKPOINTER, align 4
  %39 = load i32, i32* @LSM_LOCK_EXCL, align 4
  %40 = call i32 @lsmShmTestLock(%struct.TYPE_13__* %37, i32 %38, i32 1, i32 %39)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %36, %24
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @LSM_OK, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %138

45:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %47 = call i32 @lsmTreeLoadHeader(%struct.TYPE_13__* %46, i32 0)
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @LSM_OK, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %45
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %53 = call i64 @lsmTreeHasOld(%struct.TYPE_13__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %57 = call i64 @lsmTreeSize(%struct.TYPE_13__* %56)
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55, %51
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %61 = call i32 @lsmFlushTreeToDisk(%struct.TYPE_13__* %60)
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %59, %55, %45
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* @LSM_OK, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %62
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %68 = load i32, i32* @LSM_LOCK_DMS3, align 4
  %69 = load i32, i32* @LSM_LOCK_EXCL, align 4
  %70 = call i32 @lsmShmTestLock(%struct.TYPE_13__* %67, i32 %68, i32 1, i32 %69)
  store i32 %70, i32* %3, align 4
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* @LSM_BUSY, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  store i32 1, i32* %4, align 4
  %75 = load i32, i32* @LSM_OK, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %66
  br label %77

77:                                               ; preds = %76, %62
  %78 = load i32, i32* %3, align 4
  %79 = load i32, i32* @LSM_OK, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %83 = call i32 @lsmCheckpointWrite(%struct.TYPE_13__* %82, i32 0)
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %81, %77
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* @LSM_OK, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %137

88:                                               ; preds = %84
  store i32 0, i32* %5, align 4
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 4
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %90, align 8
  store %struct.TYPE_14__* %91, %struct.TYPE_14__** %6, align 8
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %93 = call i32 @lsmDetectRoTrans(%struct.TYPE_13__* %92, i32* %5)
  store i32 %93, i32* %3, align 4
  %94 = load i32, i32* %3, align 4
  %95 = load i32, i32* @LSM_OK, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %105

97:                                               ; preds = %88
  %98 = load i32, i32* %5, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %97
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @lsmFsCloseAndDeleteLog(i32 %103)
  br label %105

105:                                              ; preds = %100, %97, %88
  %106 = load i32, i32* %4, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %136

108:                                              ; preds = %105
  %109 = load i32, i32* %5, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %136

111:                                              ; preds = %108
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @lsmFsUnmap(i32 %114)
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %117 = call i32 @dbTruncateFile(%struct.TYPE_13__* %116)
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %135

122:                                              ; preds = %111
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %122
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @lsmEnvShmUnmap(i32 %130, i32 %133, i32 1)
  br label %135

135:                                              ; preds = %127, %122, %111
  br label %136

136:                                              ; preds = %135, %108, %105
  br label %137

137:                                              ; preds = %136, %84
  br label %138

138:                                              ; preds = %137, %41
  br label %139

139:                                              ; preds = %138, %16
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp sge i32 %142, 0
  br i1 %143, label %144, label %154

144:                                              ; preds = %139
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @LSM_LOCK_RWCLIENT(i32 %148)
  %150 = load i32, i32* @LSM_LOCK_UNLOCK, align 4
  %151 = call i32 @lsmShmLock(%struct.TYPE_13__* %145, i32 %149, i32 %150, i32 0)
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 0
  store i32 -1, i32* %153, align 8
  br label %154

154:                                              ; preds = %144, %139
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %156 = load i32, i32* @LSM_LOCK_DMS1, align 4
  %157 = load i32, i32* @LSM_LOCK_UNLOCK, align 4
  %158 = call i32 @lsmShmLock(%struct.TYPE_13__* %155, i32 %156, i32 %157, i32 0)
  br label %159

159:                                              ; preds = %154, %11
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 1
  store i64 0, i64* %161, align 8
  ret void
}

declare dso_local i32 @lsmShmLock(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @lsmShmTestLock(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @lsmTreeLoadHeader(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @lsmTreeHasOld(%struct.TYPE_13__*) #1

declare dso_local i64 @lsmTreeSize(%struct.TYPE_13__*) #1

declare dso_local i32 @lsmFlushTreeToDisk(%struct.TYPE_13__*) #1

declare dso_local i32 @lsmCheckpointWrite(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @lsmDetectRoTrans(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @lsmFsCloseAndDeleteLog(i32) #1

declare dso_local i32 @lsmFsUnmap(i32) #1

declare dso_local i32 @dbTruncateFile(%struct.TYPE_13__*) #1

declare dso_local i32 @lsmEnvShmUnmap(i32, i32, i32) #1

declare dso_local i32 @LSM_LOCK_RWCLIENT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
