; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_trim.c_vdev_trim_change_state.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_trim.c_vdev_trim_change_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i32, i8*, i8*, i8*, i8*, i32, i32*, i32 }
%struct.TYPE_7__ = type { i32 }

@KM_SLEEP = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i8* null, align 8
@TXG_WAIT = common dso_local global i32 0, align 4
@vdev_trim_zap_update_sync = common dso_local global i32 0, align 4
@ZFS_SPACE_CHECK_NONE = common dso_local global i32 0, align 4
@ESC_ZFS_TRIM_RESUME = common dso_local global i32 0, align 4
@ESC_ZFS_TRIM_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"trim\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"vdev=%s activated\00", align 1
@ESC_ZFS_TRIM_SUSPEND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"vdev=%s suspended\00", align 1
@ESC_ZFS_TRIM_CANCEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"vdev=%s canceled\00", align 1
@ESC_ZFS_TRIM_FINISH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"vdev=%s complete\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"invalid state %llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32, i64, i64, i64)* @vdev_trim_change_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdev_trim_change_state(%struct.TYPE_6__* %0, i32 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 9
  %17 = call i32 @MUTEX_HELD(i32* %16)
  %18 = call i32 @ASSERT(i32 %17)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 8
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %11, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  br label %181

28:                                               ; preds = %5
  %29 = load i32, i32* @KM_SLEEP, align 4
  %30 = call i64* @kmem_zalloc(i32 8, i32 %29)
  store i64* %30, i64** %12, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64*, i64** %12, align 8
  store i64 %33, i64* %34, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 128
  br i1 %38, label %39, label %43

39:                                               ; preds = %28
  %40 = call i32 (...) @gethrestime_sec()
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 7
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %39, %28
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 %44, 131
  br i1 %45, label %46, label %94

46:                                               ; preds = %43
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 129
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 130
  br i1 %55, label %56, label %69

56:                                               ; preds = %51, %46
  %57 = load i8*, i8** @UINT64_MAX, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 6
  store i8* %57, i8** %59, align 8
  %60 = load i8*, i8** @UINT64_MAX, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 5
  store i8* %60, i8** %62, align 8
  %63 = load i8*, i8** @UINT64_MAX, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 4
  store i8* %63, i8** %65, align 8
  %66 = load i8*, i8** @UINT64_MAX, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 3
  store i8* %66, i8** %68, align 8
  br label %69

69:                                               ; preds = %56, %51
  %70 = load i64, i64* %8, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load i64, i64* %8, align 8
  %74 = inttoptr i64 %73 to i8*
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 5
  store i8* %74, i8** %76, align 8
  br label %77

77:                                               ; preds = %72, %69
  %78 = load i64, i64* %9, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load i64, i64* %9, align 8
  %82 = inttoptr i64 %81 to i8*
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 4
  store i8* %82, i8** %84, align 8
  br label %85

85:                                               ; preds = %80, %77
  %86 = load i64, i64* %10, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load i64, i64* %10, align 8
  %90 = inttoptr i64 %89 to i8*
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 3
  store i8* %90, i8** %92, align 8
  br label %93

93:                                               ; preds = %88, %85
  br label %94

94:                                               ; preds = %93, %43
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp eq i32 %97, 128
  %99 = xor i1 %98, true
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  %102 = sext i32 %101 to i64
  store i64 %102, i64* %13, align 8
  %103 = load i32, i32* %7, align 4
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load i32*, i32** %11, align 8
  %107 = call %struct.TYPE_7__* @spa_get_dsl(i32* %106)
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32* @dmu_tx_create_dd(i32 %109)
  store i32* %110, i32** %14, align 8
  %111 = load i32*, i32** %14, align 8
  %112 = load i32, i32* @TXG_WAIT, align 4
  %113 = call i32 @dmu_tx_assign(i32* %111, i32 %112)
  %114 = call i32 @VERIFY0(i32 %113)
  %115 = load i32*, i32** %11, align 8
  %116 = call %struct.TYPE_7__* @spa_get_dsl(i32* %115)
  %117 = load i32, i32* @vdev_trim_zap_update_sync, align 4
  %118 = load i64*, i64** %12, align 8
  %119 = load i32, i32* @ZFS_SPACE_CHECK_NONE, align 4
  %120 = load i32*, i32** %14, align 8
  %121 = call i32 @dsl_sync_task_nowait(%struct.TYPE_7__* %116, i32 %117, i64* %118, i32 2, i32 %119, i32* %120)
  %122 = load i32, i32* %7, align 4
  switch i32 %122, label %174 [
    i32 131, label %123
    i32 128, label %141
    i32 130, label %152
    i32 129, label %163
  ]

123:                                              ; preds = %94
  %124 = load i32*, i32** %11, align 8
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %126 = load i64, i64* %13, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %123
  %129 = load i32, i32* @ESC_ZFS_TRIM_RESUME, align 4
  br label %132

130:                                              ; preds = %123
  %131 = load i32, i32* @ESC_ZFS_TRIM_START, align 4
  br label %132

132:                                              ; preds = %130, %128
  %133 = phi i32 [ %129, %128 ], [ %131, %130 ]
  %134 = call i32 @spa_event_notify(i32* %124, %struct.TYPE_6__* %125, i32* null, i32 %133)
  %135 = load i32*, i32** %11, align 8
  %136 = load i32*, i32** %14, align 8
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @spa_history_log_internal(i32* %135, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %136, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %139)
  br label %178

141:                                              ; preds = %94
  %142 = load i32*, i32** %11, align 8
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %144 = load i32, i32* @ESC_ZFS_TRIM_SUSPEND, align 4
  %145 = call i32 @spa_event_notify(i32* %142, %struct.TYPE_6__* %143, i32* null, i32 %144)
  %146 = load i32*, i32** %11, align 8
  %147 = load i32*, i32** %14, align 8
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @spa_history_log_internal(i32* %146, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %147, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %150)
  br label %178

152:                                              ; preds = %94
  %153 = load i32*, i32** %11, align 8
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %155 = load i32, i32* @ESC_ZFS_TRIM_CANCEL, align 4
  %156 = call i32 @spa_event_notify(i32* %153, %struct.TYPE_6__* %154, i32* null, i32 %155)
  %157 = load i32*, i32** %11, align 8
  %158 = load i32*, i32** %14, align 8
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @spa_history_log_internal(i32* %157, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %158, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %161)
  br label %178

163:                                              ; preds = %94
  %164 = load i32*, i32** %11, align 8
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %166 = load i32, i32* @ESC_ZFS_TRIM_FINISH, align 4
  %167 = call i32 @spa_event_notify(i32* %164, %struct.TYPE_6__* %165, i32* null, i32 %166)
  %168 = load i32*, i32** %11, align 8
  %169 = load i32*, i32** %14, align 8
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @spa_history_log_internal(i32* %168, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %169, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %172)
  br label %178

174:                                              ; preds = %94
  %175 = load i32, i32* %7, align 4
  %176 = sext i32 %175 to i64
  %177 = call i32 @panic(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i64 %176)
  br label %178

178:                                              ; preds = %174, %163, %152, %141, %132
  %179 = load i32*, i32** %14, align 8
  %180 = call i32 @dmu_tx_commit(i32* %179)
  br label %181

181:                                              ; preds = %178, %27
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i64* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @gethrestime_sec(...) #1

declare dso_local i32* @dmu_tx_create_dd(i32) #1

declare dso_local %struct.TYPE_7__* @spa_get_dsl(i32*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dmu_tx_assign(i32*, i32) #1

declare dso_local i32 @dsl_sync_task_nowait(%struct.TYPE_7__*, i32, i64*, i32, i32, i32*) #1

declare dso_local i32 @spa_event_notify(i32*, %struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @spa_history_log_internal(i32*, i8*, i32*, i8*, i32) #1

declare dso_local i32 @panic(i8*, i64) #1

declare dso_local i32 @dmu_tx_commit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
