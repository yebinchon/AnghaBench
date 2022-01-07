; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_get_one_dataset.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_get_one_dataset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i64, i64 }

@get_one_dataset.spin = internal global [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@get_one_dataset.spinval = internal global i32 0, align 4
@get_one_dataset.spincheck = internal global i32 0, align 4
@get_one_dataset.last_spin_time = internal global i64 0, align 8
@SPINNER_TIME = common dso_local global i64 0, align 8
@CHECK_SPINNER = common dso_local global i32 0, align 4
@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @get_one_dataset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_one_dataset(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %6, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @zfs_get_type(i32* %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %40

17:                                               ; preds = %2
  %18 = load i32, i32* @get_one_dataset.spincheck, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* @get_one_dataset.spincheck, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %17
  %22 = call i64 @time(i32* null)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* @get_one_dataset.last_spin_time, align 8
  %24 = load i64, i64* @SPINNER_TIME, align 8
  %25 = add nsw i64 %23, %24
  %26 = load i64, i64* %8, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %21
  %29 = load i32, i32* @get_one_dataset.spinval, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* @get_one_dataset.spinval, align 4
  %31 = srem i32 %29, 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [4 x i8*], [4 x i8*]* @get_one_dataset.spin, i64 0, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @update_progress(i8* %34)
  %36 = load i64, i64* %8, align 8
  store i64 %36, i64* @get_one_dataset.last_spin_time, align 8
  br label %37

37:                                               ; preds = %28, %21
  %38 = load i32, i32* @CHECK_SPINNER, align 4
  store i32 %38, i32* @get_one_dataset.spincheck, align 4
  br label %39

39:                                               ; preds = %37, %17
  br label %40

40:                                               ; preds = %39, %2
  %41 = load i32*, i32** %4, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = call i64 @zfs_iter_filesystems(i32* %41, i32 (i32*, i8*)* @get_one_dataset, i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @zfs_close(i32* %46)
  store i32 1, i32* %3, align 4
  br label %75

48:                                               ; preds = %40
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %51 = and i32 %49, %50
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @zfs_close(i32* %54)
  store i32 0, i32* %3, align 4
  br label %75

56:                                               ; preds = %48
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @libzfs_add_handle(%struct.TYPE_4__* %59, i32* %60)
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp sle i64 %66, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %56, %53, %45
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @zfs_get_type(i32*) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @update_progress(i8*) #1

declare dso_local i64 @zfs_iter_filesystems(i32*, i32 (i32*, i8*)*, i8*) #1

declare dso_local i32 @zfs_close(i32*) #1

declare dso_local i32 @libzfs_add_handle(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
