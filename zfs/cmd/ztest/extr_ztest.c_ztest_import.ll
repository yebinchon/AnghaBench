; ModuleID = '/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_ztest_import.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_ztest_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i8*, i8*, i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_15__ = type { i32, i8**, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__** }
%struct.TYPE_11__ = type { i64 }

@ztest_opts = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@ZFS_IMPORT_MISSING_LOG = common dso_local global i32 0, align 4
@ztest_vdev_lock = common dso_local global i32 0, align 4
@MUTEX_DEFAULT = common dso_local global i32 0, align 4
@ztest_checkpoint_lock = common dso_local global i32 0, align 4
@ztest_name_lock = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@libzpool_config_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"No pools found\0A\00", align 1
@FTAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @ztest_import to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ztest_import(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_15__, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %12 = bitcast %struct.TYPE_15__* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 24, i1 false)
  store i32* null, i32** %5, align 8
  store i32 1, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i8*, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load i8*, i8** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @ztest_opts, i32 0, i32 0), align 8
  store i8* %17, i8** %9, align 8
  %18 = load i32, i32* @ZFS_IMPORT_MISSING_LOG, align 4
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* @MUTEX_DEFAULT, align 4
  %20 = call i32 @mutex_init(i32* @ztest_vdev_lock, i32* null, i32 %19, i32* null)
  %21 = load i32, i32* @MUTEX_DEFAULT, align 4
  %22 = call i32 @mutex_init(i32* @ztest_checkpoint_lock, i32* null, i32 %21, i32* null)
  %23 = call i32 @pthread_rwlock_init(i32* @ztest_name_lock, i32* null)
  %24 = call i32 @VERIFY0(i32 %23)
  %25 = load i32, i32* @FREAD, align 4
  %26 = load i32, i32* @FWRITE, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @kernel_init(i32 %27)
  %29 = load i8*, i8** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @ztest_opts, i32 0, i32 1), align 8
  %30 = getelementptr inbounds i8*, i8** %16, i64 0
  store i8* %29, i8** %30, align 16
  %31 = load i32, i32* %6, align 4
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 0
  store i32 %31, i32* %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 1
  store i8** %16, i8*** %33, align 8
  %34 = load i32, i32* @B_FALSE, align 4
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 2
  store i32 %34, i32* %35, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 @zpool_find_config(i32* null, i8* %36, i32** %5, %struct.TYPE_15__* %3, i32* @libzpool_config_ops)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %1
  %41 = call i32 @fatal(i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %1
  %43 = load i8*, i8** %9, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @spa_import(i8* %43, i32* %44, i32* null, i32 %45)
  %47 = call i32 @VERIFY0(i32 %46)
  %48 = load i8*, i8** %9, align 8
  %49 = load i32, i32* @FTAG, align 4
  %50 = call i32 @spa_open(i8* %48, %struct.TYPE_14__** %4, i32 %49)
  %51 = call i32 @VERIFY0(i32 %50)
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %56, i64 0
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = shl i64 1, %60
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %65 = load i32, i32* @FTAG, align 4
  %66 = call i32 @spa_close(%struct.TYPE_14__* %64, i32 %65)
  %67 = call i32 (...) @kernel_fini()
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @ztest_opts, i32 0, i32 2), align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %42
  %71 = load i8*, i8** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @ztest_opts, i32 0, i32 0), align 8
  %72 = call i32 @ztest_run_zdb(i8* %71)
  %73 = call i32 (...) @ztest_freeze()
  %74 = load i8*, i8** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @ztest_opts, i32 0, i32 0), align 8
  %75 = call i32 @ztest_run_zdb(i8* %74)
  br label %76

76:                                               ; preds = %70, %42
  %77 = call i32 @pthread_rwlock_destroy(i32* @ztest_name_lock)
  %78 = call i32 @mutex_destroy(i32* @ztest_vdev_lock)
  %79 = call i32 @mutex_destroy(i32* @ztest_checkpoint_lock)
  %80 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %80)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mutex_init(i32*, i32*, i32, i32*) #3

declare dso_local i32 @VERIFY0(i32) #3

declare dso_local i32 @pthread_rwlock_init(i32*, i32*) #3

declare dso_local i32 @kernel_init(i32) #3

declare dso_local i32 @zpool_find_config(i32*, i8*, i32**, %struct.TYPE_15__*, i32*) #3

declare dso_local i32 @fatal(i32, i8*) #3

declare dso_local i32 @spa_import(i8*, i32*, i32*, i32) #3

declare dso_local i32 @spa_open(i8*, %struct.TYPE_14__**, i32) #3

declare dso_local i32 @spa_close(%struct.TYPE_14__*, i32) #3

declare dso_local i32 @kernel_fini(...) #3

declare dso_local i32 @ztest_run_zdb(i8*) #3

declare dso_local i32 @ztest_freeze(...) #3

declare dso_local i32 @pthread_rwlock_destroy(i32*) #3

declare dso_local i32 @mutex_destroy(i32*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
