; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_libzfs_mnttab_add.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_libzfs_mnttab_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8*, i8*, i8*, i8* }

@MNTTYPE_ZFS = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @libzfs_mnttab_add(%struct.TYPE_13__* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = call i32 @pthread_mutex_lock(i32* %11)
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  %15 = call i64 @avl_numnodes(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %58

17:                                               ; preds = %4
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %19 = call %struct.TYPE_12__* @zfs_alloc(%struct.TYPE_13__* %18, i32 32)
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %9, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i8* @zfs_strdup(%struct.TYPE_13__* %20, i8* %21)
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 3
  store i8* %22, i8** %25, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i8* @zfs_strdup(%struct.TYPE_13__* %26, i8* %27)
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 2
  store i8* %28, i8** %31, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %33 = load i8*, i8** @MNTTYPE_ZFS, align 8
  %34 = call i8* @zfs_strdup(%struct.TYPE_13__* %32, i8* %33)
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  store i8* %34, i8** %37, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = call i8* @zfs_strdup(%struct.TYPE_13__* %38, i8* %39)
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  store i8* %40, i8** %43, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %47 = call i32* @avl_find(i32* %45, %struct.TYPE_12__* %46, i32* null)
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %17
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %51 = call i32 @free(%struct.TYPE_12__* %50)
  br label %57

52:                                               ; preds = %17
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %56 = call i32 @avl_add(i32* %54, %struct.TYPE_12__* %55)
  br label %57

57:                                               ; preds = %52, %49
  br label %58

58:                                               ; preds = %57, %4
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = call i32 @pthread_mutex_unlock(i32* %60)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @avl_numnodes(i32*) #1

declare dso_local %struct.TYPE_12__* @zfs_alloc(%struct.TYPE_13__*, i32) #1

declare dso_local i8* @zfs_strdup(%struct.TYPE_13__*, i8*) #1

declare dso_local i32* @avl_find(i32*, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @free(%struct.TYPE_12__*) #1

declare dso_local i32 @avl_add(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
