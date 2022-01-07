; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zpl_ctldir.c_zpl_snapdir_iterate.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zpl_ctldir.c_zpl_snapdir_iterate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i32 }

@MAXNAMELEN = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@ZFSCTL_INO_SHARES = common dso_local global i64 0, align 8
@DT_DIR = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.TYPE_9__*)* @zpl_snapdir_iterate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zpl_snapdir_iterate(%struct.file* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %15 = load %struct.file*, %struct.file** %4, align 8
  %16 = call i32 @file_inode(%struct.file* %15)
  %17 = call %struct.TYPE_10__* @ITOZSB(i32 %16)
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %6, align 8
  %18 = load i32, i32* @MAXNAMELEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %8, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  store i32 0, i32* %13, align 4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %23 = call i32 @ZFS_ENTER(%struct.TYPE_10__* %22)
  %24 = call i32 (...) @spl_fstrans_mark()
  store i32 %24, i32* %7, align 4
  %25 = load %struct.file*, %struct.file** %4, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = call i32 @zpl_dir_emit_dots(%struct.file* %25, %struct.TYPE_9__* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %2
  br label %74

30:                                               ; preds = %2
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %12, align 8
  br label %34

34:                                               ; preds = %69, %30
  %35 = load i32, i32* %13, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %73

37:                                               ; preds = %34
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dmu_objset_pool(i32 %40)
  %42 = load i32, i32* @FTAG, align 4
  %43 = call i32 @dsl_pool_config_enter(i32 %41, i32 %42)
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @MAXNAMELEN, align 4
  %48 = call i32 @dmu_snapshot_list_next(i32 %46, i32 %47, i8* %21, i64* %11, i64* %12, i32* %10)
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %13, align 4
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dmu_objset_pool(i32 %52)
  %54 = load i32, i32* @FTAG, align 4
  %55 = call i32 @dsl_pool_config_exit(i32 %53, i32 %54)
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %37
  br label %74

59:                                               ; preds = %37
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %61 = call i32 @strlen(i8* %21)
  %62 = load i64, i64* @ZFSCTL_INO_SHARES, align 8
  %63 = load i64, i64* %11, align 8
  %64 = sub nsw i64 %62, %63
  %65 = load i32, i32* @DT_DIR, align 4
  %66 = call i32 @zpl_dir_emit(%struct.TYPE_9__* %60, i8* %21, i32 %61, i64 %64, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %59
  br label %74

69:                                               ; preds = %59
  %70 = load i64, i64* %12, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  br label %34

73:                                               ; preds = %34
  br label %74

74:                                               ; preds = %73, %68, %58, %29
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @spl_fstrans_unmark(i32 %75)
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %78 = call i32 @ZFS_EXIT(%struct.TYPE_10__* %77)
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* @ENOENT, align 4
  %81 = sub nsw i32 0, %80
  %82 = icmp eq i32 %79, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %86

84:                                               ; preds = %74
  %85 = load i32, i32* %13, align 4
  store i32 %85, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %86

86:                                               ; preds = %84, %83
  %87 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %87)
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local %struct.TYPE_10__* @ITOZSB(i32) #1

declare dso_local i32 @file_inode(%struct.file*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ZFS_ENTER(%struct.TYPE_10__*) #1

declare dso_local i32 @spl_fstrans_mark(...) #1

declare dso_local i32 @zpl_dir_emit_dots(%struct.file*, %struct.TYPE_9__*) #1

declare dso_local i32 @dsl_pool_config_enter(i32, i32) #1

declare dso_local i32 @dmu_objset_pool(i32) #1

declare dso_local i32 @dmu_snapshot_list_next(i32, i32, i8*, i64*, i64*, i32*) #1

declare dso_local i32 @dsl_pool_config_exit(i32, i32) #1

declare dso_local i32 @zpl_dir_emit(%struct.TYPE_9__*, i8*, i32, i64, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @spl_fstrans_unmark(i32) #1

declare dso_local i32 @ZFS_EXIT(%struct.TYPE_10__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
