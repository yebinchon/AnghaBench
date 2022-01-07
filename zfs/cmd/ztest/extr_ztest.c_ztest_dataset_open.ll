; ModuleID = '/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_ztest_dataset_open.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_ztest_dataset_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i8*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i64, i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i64 }

@ztest_ds = common dso_local global %struct.TYPE_14__* null, align 8
@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@ztest_opts = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@ztest_name_lock = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@DMU_OST_OTHER = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"missing log records: claimed %llu < committed %llu\00", align 1
@ztest_replay_vector = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"%s replay %llu blocks, %llu records, seq %llu\0A\00", align 1
@ztest_get_data = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"missing log records: replayed %llu < committed %llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ztest_dataset_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ztest_dataset_open(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** @ztest_ds, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i64 %14
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %4, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call %struct.TYPE_16__* @ZTEST_GET_SHARED_DS(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %5, align 8
  %20 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %8, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %9, align 8
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ztest_opts, i32 0, i32 1), align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @ztest_dataset_name(i8* %23, i32 %24, i32 %25)
  %27 = call i32 @pthread_rwlock_rdlock(i32* @ztest_name_lock)
  %28 = call i32 @ztest_dataset_create(i8* %23)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @ENOSPC, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %1
  %33 = call i32 @pthread_rwlock_unlock(i32* @ztest_name_lock)
  %34 = load i32, i32* @FTAG, align 4
  %35 = call i32 @ztest_record_enospc(i32 %34)
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %134

37:                                               ; preds = %1
  %38 = load i32, i32* %10, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @EEXIST, align 4
  %43 = icmp eq i32 %41, %42
  br label %44

44:                                               ; preds = %40, %37
  %45 = phi i1 [ true, %37 ], [ %43, %40 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @ASSERT(i32 %46)
  %48 = load i32, i32* @DMU_OST_OTHER, align 4
  %49 = load i32, i32* @B_FALSE, align 4
  %50 = load i32, i32* @B_TRUE, align 4
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %52 = call i32 @ztest_dmu_objset_own(i8* %23, i32 %48, i32 %49, i32 %50, %struct.TYPE_14__* %51, i32** %6)
  %53 = call i32 @VERIFY0(i32 %52)
  %54 = call i32 @pthread_rwlock_unlock(i32* @ztest_name_lock)
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %56 = load i32, i32* %3, align 4
  %57 = call %struct.TYPE_16__* @ZTEST_GET_SHARED_DS(i32 %56)
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @ztest_zd_init(%struct.TYPE_14__* %55, %struct.TYPE_16__* %57, i32* %58)
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %61, align 8
  store %struct.TYPE_15__* %62, %struct.TYPE_15__** %7, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 3
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %44
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 3
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %5, align 8
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %69
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %5, align 8
  %84 = call i32 @fatal(i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %82, i64 %83)
  br label %85

85:                                               ; preds = %77, %69, %44
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %87 = call i32 @ztest_dataset_dirobj_verify(%struct.TYPE_14__* %86)
  %88 = load i32*, i32** %6, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %90 = load i32, i32* @ztest_replay_vector, align 4
  %91 = call i32 @zil_replay(i32* %88, %struct.TYPE_14__* %89, i32 %90)
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %93 = call i32 @ztest_dataset_dirobj_verify(%struct.TYPE_14__* %92)
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ztest_opts, i32 0, i32 0), align 4
  %95 = icmp sge i32 %94, 6
  br i1 %95, label %96, label %113

96:                                               ; preds = %85
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = trunc i64 %102 to i32
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = trunc i64 %106 to i32
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = trunc i64 %110 to i32
  %112 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8* %99, i32 %103, i32 %107, i32 %111)
  br label %113

113:                                              ; preds = %96, %85
  %114 = load i32*, i32** %6, align 8
  %115 = load i32, i32* @ztest_get_data, align 4
  %116 = call %struct.TYPE_15__* @zil_open(i32* %114, i32 %115)
  store %struct.TYPE_15__* %116, %struct.TYPE_15__** %7, align 8
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %133

121:                                              ; preds = %113
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* %5, align 8
  %126 = icmp slt i64 %124, %125
  br i1 %126, label %127, label %133

127:                                              ; preds = %121
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* %5, align 8
  %132 = call i32 @fatal(i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i64 %130, i64 %131)
  br label %133

133:                                              ; preds = %127, %121, %113
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %134

134:                                              ; preds = %133, %32
  %135 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %135)
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local %struct.TYPE_16__* @ZTEST_GET_SHARED_DS(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ztest_dataset_name(i8*, i32, i32) #1

declare dso_local i32 @pthread_rwlock_rdlock(i32*) #1

declare dso_local i32 @ztest_dataset_create(i8*) #1

declare dso_local i32 @pthread_rwlock_unlock(i32*) #1

declare dso_local i32 @ztest_record_enospc(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @ztest_dmu_objset_own(i8*, i32, i32, i32, %struct.TYPE_14__*, i32**) #1

declare dso_local i32 @ztest_zd_init(%struct.TYPE_14__*, %struct.TYPE_16__*, i32*) #1

declare dso_local i32 @fatal(i32, i8*, i64, i64) #1

declare dso_local i32 @ztest_dataset_dirobj_verify(%struct.TYPE_14__*) #1

declare dso_local i32 @zil_replay(i32*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @printf(i8*, i8*, i32, i32, i32) #1

declare dso_local %struct.TYPE_15__* @zil_open(i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
