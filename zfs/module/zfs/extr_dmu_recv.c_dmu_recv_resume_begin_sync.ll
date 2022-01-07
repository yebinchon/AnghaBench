; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_recv.c_dmu_recv_resume_begin_sync.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_recv.c_dmu_recv_resume_begin_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8*, i32, %struct.TYPE_9__*, i8*, i8* }
%struct.TYPE_9__ = type { i32 }

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@recv_clone_name = common dso_local global i8* null, align 8
@DMU_BACKUP_FEATURE_RAW = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i8* null, align 8
@DS_HOLD_FLAG_DECRYPT = common dso_local global i32 0, align 4
@dmu_recv_tag = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"resume receive\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @dmu_recv_resume_begin_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmu_recv_resume_begin_sync(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %5, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i32* @dmu_tx_pool(i32* %15)
  store i32* %16, i32** %6, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %7, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %27 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %28 = add nsw i32 %27, 6
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %11, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %12, align 8
  %32 = trunc i64 %29 to i32
  %33 = load i8*, i8** %7, align 8
  %34 = load i8*, i8** @recv_clone_name, align 8
  %35 = call i32 @snprintf(i8* %31, i32 %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %33, i8* %34)
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @DMU_BACKUP_FEATURE_RAW, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %2
  %41 = load i8*, i8** @B_TRUE, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 3
  store i8* %41, i8** %45, align 8
  br label %50

46:                                               ; preds = %2
  %47 = load i32, i32* @DS_HOLD_FLAG_DECRYPT, align 4
  %48 = load i32, i32* %10, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %46, %40
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @dmu_recv_tag, align 4
  %54 = call i64 @dsl_dataset_own_force(i32* %51, i8* %31, i32 %52, i32 %53, %struct.TYPE_9__** %9)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %50
  %57 = load i32*, i32** %6, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @dmu_recv_tag, align 4
  %61 = call i64 @dsl_dataset_own_force(i32* %57, i8* %58, i32 %59, i32 %60, %struct.TYPE_9__** %9)
  %62 = call i32 @VERIFY0(i64 %61)
  %63 = load i8*, i8** @B_TRUE, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 4
  store i8* %63, i8** %67, align 8
  br label %68

68:                                               ; preds = %56, %50
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %70 = call i32 @DS_IS_INCONSISTENT(%struct.TYPE_9__* %69)
  %71 = call i32 @ASSERT(i32 %70)
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* @RW_READER, align 4
  %75 = load i32, i32* @FTAG, align 4
  %76 = call i32 @rrw_enter(i32* %73, i32 %74, i32 %75)
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %78 = call i32 @dsl_dataset_get_blkptr(%struct.TYPE_9__* %77)
  %79 = call i32 @BP_IS_HOLE(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %68
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 3
  %86 = load i8*, i8** %85, align 8
  %87 = icmp ne i8* %86, null
  br label %88

88:                                               ; preds = %81, %68
  %89 = phi i1 [ true, %68 ], [ %87, %81 ]
  %90 = zext i1 %89 to i32
  %91 = call i32 @ASSERT(i32 %90)
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i32, i32* @FTAG, align 4
  %95 = call i32 @rrw_exit(i32* %93, i32 %94)
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 2
  store %struct.TYPE_9__* %96, %struct.TYPE_9__** %100, align 8
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %102 = load i32*, i32** %4, align 8
  %103 = call i32 @spa_history_log_internal_ds(%struct.TYPE_9__* %101, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* %102, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %104 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %104)
  ret void
}

declare dso_local i32* @dmu_tx_pool(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i64 @dsl_dataset_own_force(i32*, i8*, i32, i32, %struct.TYPE_9__**) #1

declare dso_local i32 @VERIFY0(i64) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @DS_IS_INCONSISTENT(%struct.TYPE_9__*) #1

declare dso_local i32 @rrw_enter(i32*, i32, i32) #1

declare dso_local i32 @BP_IS_HOLE(i32) #1

declare dso_local i32 @dsl_dataset_get_blkptr(%struct.TYPE_9__*) #1

declare dso_local i32 @rrw_exit(i32*, i32) #1

declare dso_local i32 @spa_history_log_internal_ds(%struct.TYPE_9__*, i8*, i32*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
