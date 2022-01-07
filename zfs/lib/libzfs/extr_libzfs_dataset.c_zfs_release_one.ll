; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_zfs_release_one.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_zfs_release_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }
%struct.holdarg = type { i8*, i64, i32, i32, i8* }

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s@%s\00", align 1
@EINVAL = common dso_local global i8* null, align 8
@ENOENT = common dso_local global i8* null, align 8
@ESRCH = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*)* @zfs_release_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_release_one(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.holdarg*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.holdarg*
  store %struct.holdarg* %12, %struct.holdarg** %5, align 8
  %13 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %17 = trunc i64 %14 to i32
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.holdarg*, %struct.holdarg** %5, align 8
  %22 = getelementptr inbounds %struct.holdarg, %struct.holdarg* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @snprintf(i8* %16, i32 %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %20, i8* %23)
  %25 = sext i32 %24 to i64
  %26 = icmp uge i64 %25, %14
  br i1 %26, label %27, label %33

27:                                               ; preds = %2
  %28 = load i8*, i8** @EINVAL, align 8
  %29 = load %struct.holdarg*, %struct.holdarg** %5, align 8
  %30 = getelementptr inbounds %struct.holdarg, %struct.holdarg* %29, i32 0, i32 4
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** @EINVAL, align 8
  %32 = ptrtoint i8* %31 to i32
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %27, %2
  %34 = call i64 @lzc_get_holds(i8* %16, i32** %9)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i8*, i8** @ENOENT, align 8
  %38 = load %struct.holdarg*, %struct.holdarg** %5, align 8
  %39 = getelementptr inbounds %struct.holdarg, %struct.holdarg* %38, i32 0, i32 4
  store i8* %37, i8** %39, align 8
  br label %66

40:                                               ; preds = %33
  %41 = load i32*, i32** %9, align 8
  %42 = load %struct.holdarg*, %struct.holdarg** %5, align 8
  %43 = getelementptr inbounds %struct.holdarg, %struct.holdarg* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @nvlist_exists(i32* %41, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %40
  %48 = load i8*, i8** @ESRCH, align 8
  %49 = load %struct.holdarg*, %struct.holdarg** %5, align 8
  %50 = getelementptr inbounds %struct.holdarg, %struct.holdarg* %49, i32 0, i32 4
  store i8* %48, i8** %50, align 8
  br label %65

51:                                               ; preds = %40
  %52 = call i32* (...) @fnvlist_alloc()
  store i32* %52, i32** %10, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = load %struct.holdarg*, %struct.holdarg** %5, align 8
  %55 = getelementptr inbounds %struct.holdarg, %struct.holdarg* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @fnvlist_add_boolean(i32* %53, i32 %56)
  %58 = load %struct.holdarg*, %struct.holdarg** %5, align 8
  %59 = getelementptr inbounds %struct.holdarg, %struct.holdarg* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = call i32 @fnvlist_add_nvlist(i32 %60, i8* %16, i32* %61)
  %63 = load i32*, i32** %10, align 8
  %64 = call i32 @fnvlist_free(i32* %63)
  br label %65

65:                                               ; preds = %51, %47
  br label %66

66:                                               ; preds = %65, %36
  %67 = load %struct.holdarg*, %struct.holdarg** %5, align 8
  %68 = getelementptr inbounds %struct.holdarg, %struct.holdarg* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %73 = load %struct.holdarg*, %struct.holdarg** %5, align 8
  %74 = call i32 @zfs_iter_filesystems(%struct.TYPE_6__* %72, i32 (%struct.TYPE_6__*, i8*)* @zfs_release_one, %struct.holdarg* %73)
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %71, %66
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %77 = call i32 @zfs_close(%struct.TYPE_6__* %76)
  %78 = load i32, i32* %8, align 4
  %79 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %79)
  ret i32 %78
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i64 @lzc_get_holds(i8*, i32**) #2

declare dso_local i32 @nvlist_exists(i32*, i32) #2

declare dso_local i32* @fnvlist_alloc(...) #2

declare dso_local i32 @fnvlist_add_boolean(i32*, i32) #2

declare dso_local i32 @fnvlist_add_nvlist(i32, i8*, i32*) #2

declare dso_local i32 @fnvlist_free(i32*) #2

declare dso_local i32 @zfs_iter_filesystems(%struct.TYPE_6__*, i32 (%struct.TYPE_6__*, i8*)*, %struct.holdarg*) #2

declare dso_local i32 @zfs_close(%struct.TYPE_6__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
