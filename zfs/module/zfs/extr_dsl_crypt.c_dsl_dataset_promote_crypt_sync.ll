; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_crypt.c_dsl_dataset_promote_crypt_sync.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_crypt.c_dsl_dataset_promote_crypt_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_17__ = type { i32 }

@ZAP_MAXVALUELEN = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@ZFS_PROP_KEYLOCATION = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@ZPROP_SRC_LOCAL = common dso_local global i32 0, align 4
@ZPROP_SRC_NONE = common dso_local global i32 0, align 4
@RW_WRITER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsl_dataset_promote_crypt_sync(%struct.TYPE_16__* %0, %struct.TYPE_16__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %8, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %111

20:                                               ; preds = %3
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %22 = call i64 @dsl_dir_is_clone(%struct.TYPE_16__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %111

25:                                               ; preds = %20
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %27 = call i32 @dsl_dir_get_encryption_root_ddobj(%struct.TYPE_16__* %26, i32* %7)
  %28 = call i32 @VERIFY0(i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %111

35:                                               ; preds = %25
  %36 = load i32, i32* @ZAP_MAXVALUELEN, align 4
  %37 = load i32, i32* @KM_SLEEP, align 4
  %38 = call i8* @kmem_alloc(i32 %36, i32 %37)
  store i8* %38, i8** %11, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %41 = call %struct.TYPE_17__* @dsl_dir_phys(%struct.TYPE_16__* %40)
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @FTAG, align 4
  %45 = call i32 @dsl_dataset_hold_obj(%struct.TYPE_15__* %39, i32 %43, i32 %44, i32** %9)
  %46 = call i32 @VERIFY0(i32 %45)
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %49 = call %struct.TYPE_17__* @dsl_dir_phys(%struct.TYPE_16__* %48)
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @FTAG, align 4
  %53 = call i32 @dsl_dataset_hold_obj(%struct.TYPE_15__* %47, i32 %51, i32 %52, i32** %10)
  %54 = call i32 @VERIFY0(i32 %53)
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %56 = load i32, i32* @ZFS_PROP_KEYLOCATION, align 4
  %57 = call i32 @zfs_prop_to_name(i32 %56)
  %58 = load i32, i32* @ZAP_MAXVALUELEN, align 4
  %59 = load i8*, i8** %11, align 8
  %60 = load i32, i32* @B_FALSE, align 4
  %61 = call i32 @dsl_prop_get_dd(%struct.TYPE_16__* %55, i32 %57, i32 1, i32 %58, i8* %59, i32* null, i32 %60)
  %62 = call i32 @VERIFY0(i32 %61)
  %63 = load i32*, i32** %9, align 8
  %64 = load i32, i32* @ZFS_PROP_KEYLOCATION, align 4
  %65 = call i32 @zfs_prop_to_name(i32 %64)
  %66 = load i32, i32* @ZPROP_SRC_LOCAL, align 4
  %67 = load i8*, i8** %11, align 8
  %68 = call i64 @strlen(i8* %67)
  %69 = add nsw i64 %68, 1
  %70 = load i8*, i8** %11, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = call i32 @dsl_prop_set_sync_impl(i32* %63, i32 %65, i32 %66, i32 1, i64 %69, i8* %70, i32* %71)
  %73 = load i32*, i32** %10, align 8
  %74 = load i32, i32* @ZFS_PROP_KEYLOCATION, align 4
  %75 = call i32 @zfs_prop_to_name(i32 %74)
  %76 = load i32, i32* @ZPROP_SRC_NONE, align 4
  %77 = load i32*, i32** %6, align 8
  %78 = call i32 @dsl_prop_set_sync_impl(i32* %73, i32 %75, i32 %76, i32 0, i64 0, i8* null, i32* %77)
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i32, i32* @RW_WRITER, align 4
  %85 = call i32 @rw_enter(i32* %83, i32 %84)
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @B_FALSE, align 4
  %94 = load i32*, i32** %6, align 8
  %95 = call i32 @spa_keystore_change_key_sync_impl(i32 %86, i32 %89, i32 %92, i32* null, i32 %93, i32* %94)
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = call i32 @rw_exit(i32* %100)
  %102 = load i32*, i32** %9, align 8
  %103 = load i32, i32* @FTAG, align 4
  %104 = call i32 @dsl_dataset_rele(i32* %102, i32 %103)
  %105 = load i32*, i32** %10, align 8
  %106 = load i32, i32* @FTAG, align 4
  %107 = call i32 @dsl_dataset_rele(i32* %105, i32 %106)
  %108 = load i8*, i8** %11, align 8
  %109 = load i32, i32* @ZAP_MAXVALUELEN, align 4
  %110 = call i32 @kmem_free(i8* %108, i32 %109)
  br label %111

111:                                              ; preds = %35, %34, %24, %19
  ret void
}

declare dso_local i64 @dsl_dir_is_clone(%struct.TYPE_16__*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dsl_dir_get_encryption_root_ddobj(%struct.TYPE_16__*, i32*) #1

declare dso_local i8* @kmem_alloc(i32, i32) #1

declare dso_local i32 @dsl_dataset_hold_obj(%struct.TYPE_15__*, i32, i32, i32**) #1

declare dso_local %struct.TYPE_17__* @dsl_dir_phys(%struct.TYPE_16__*) #1

declare dso_local i32 @dsl_prop_get_dd(%struct.TYPE_16__*, i32, i32, i32, i8*, i32*, i32) #1

declare dso_local i32 @zfs_prop_to_name(i32) #1

declare dso_local i32 @dsl_prop_set_sync_impl(i32*, i32, i32, i32, i64, i8*, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @rw_enter(i32*, i32) #1

declare dso_local i32 @spa_keystore_change_key_sync_impl(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @rw_exit(i32*) #1

declare dso_local i32 @dsl_dataset_rele(i32*, i32) #1

declare dso_local i32 @kmem_free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
