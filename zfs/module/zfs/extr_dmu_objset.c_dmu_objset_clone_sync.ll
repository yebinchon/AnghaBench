; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_objset.c_dmu_objset_clone_sync.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_objset.c_dmu_objset_clone_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i64 }

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"clone\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"origin=%s (%llu)\00", align 1
@B_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @dmu_objset_clone_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmu_objset_clone_sync(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %15, %struct.TYPE_20__** %5, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call %struct.TYPE_17__* @dmu_tx_pool(i32* %16)
  store %struct.TYPE_17__* %17, %struct.TYPE_17__** %6, align 8
  %18 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %12, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %13, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @FTAG, align 4
  %27 = call i32 @dsl_dir_hold(%struct.TYPE_17__* %22, i32 %25, i32 %26, %struct.TYPE_18__** %7, i8** %8)
  %28 = call i32 @VERIFY0(i32 %27)
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @FTAG, align 4
  %34 = call i32 @dsl_dataset_hold(%struct.TYPE_17__* %29, i32 %32, i32 %33, %struct.TYPE_19__** %9)
  %35 = call i32 @VERIFY0(i32 %34)
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @dsl_dataset_create_sync(%struct.TYPE_18__* %36, i8* %37, %struct.TYPE_19__* %38, i32 0, i32 %41, i32* null, i32* %42)
  store i32 %43, i32* %11, align 4
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @FTAG, align 4
  %49 = call i32 @dsl_dataset_hold_obj(i32 %46, i32 %47, i32 %48, %struct.TYPE_19__** %10)
  %50 = call i32 @VERIFY0(i32 %49)
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %52 = call i32 @dsl_dataset_name(%struct.TYPE_19__* %51, i8* %21)
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %54 = load i32*, i32** %4, align 8
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  %59 = call i32 @spa_history_log_internal_ds(%struct.TYPE_19__* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %54, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %21, i32 %58)
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @B_TRUE, align 4
  %67 = call i32 @zvol_create_minors(i32 %62, i32 %65, i32 %66)
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %69 = load i32, i32* @FTAG, align 4
  %70 = call i32 @dsl_dataset_rele(%struct.TYPE_19__* %68, i32 %69)
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %72 = load i32, i32* @FTAG, align 4
  %73 = call i32 @dsl_dataset_rele(%struct.TYPE_19__* %71, i32 %72)
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %75 = load i32, i32* @FTAG, align 4
  %76 = call i32 @dsl_dir_rele(%struct.TYPE_18__* %74, i32 %75)
  %77 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %77)
  ret void
}

declare dso_local %struct.TYPE_17__* @dmu_tx_pool(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dsl_dir_hold(%struct.TYPE_17__*, i32, i32, %struct.TYPE_18__**, i8**) #1

declare dso_local i32 @dsl_dataset_hold(%struct.TYPE_17__*, i32, i32, %struct.TYPE_19__**) #1

declare dso_local i32 @dsl_dataset_create_sync(%struct.TYPE_18__*, i8*, %struct.TYPE_19__*, i32, i32, i32*, i32*) #1

declare dso_local i32 @dsl_dataset_hold_obj(i32, i32, i32, %struct.TYPE_19__**) #1

declare dso_local i32 @dsl_dataset_name(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @spa_history_log_internal_ds(%struct.TYPE_19__*, i8*, i32*, i8*, i8*, i32) #1

declare dso_local i32 @zvol_create_minors(i32, i32, i32) #1

declare dso_local i32 @dsl_dataset_rele(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @dsl_dir_rele(%struct.TYPE_18__*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
