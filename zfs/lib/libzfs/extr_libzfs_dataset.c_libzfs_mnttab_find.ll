; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_libzfs_mnttab_find.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_libzfs_mnttab_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.mnttab = type { i8*, i32, i32 }
%struct.TYPE_8__ = type { %struct.mnttab }

@ENOENT = common dso_local global i32 0, align 4
@MNTTAB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@MNTTYPE_ZFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libzfs_mnttab_find(%struct.TYPE_9__* %0, i8* %1, %struct.mnttab* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mnttab*, align 8
  %8 = alloca %struct.TYPE_8__, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mnttab, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.mnttab* %2, %struct.mnttab** %7, align 8
  %13 = load i32, i32* @ENOENT, align 4
  store i32 %13, i32* %10, align 4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %50, label %18

18:                                               ; preds = %3
  %19 = bitcast %struct.mnttab* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 16, i1 false)
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = call i64 @avl_numnodes(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %26 = call i32 @libzfs_mnttab_fini(%struct.TYPE_9__* %25)
  br label %27

27:                                               ; preds = %24, %18
  %28 = load i32, i32* @MNTTAB, align 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32* @freopen(i32 %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @ENOENT, align 4
  store i32 %35, i32* %4, align 4
  br label %88

36:                                               ; preds = %27
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds %struct.mnttab, %struct.mnttab* %11, i32 0, i32 0
  store i8* %37, i8** %38, align 8
  %39 = load i32, i32* @MNTTYPE_ZFS, align 4
  %40 = getelementptr inbounds %struct.mnttab, %struct.mnttab* %11, i32 0, i32 1
  store i32 %39, i32* %40, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mnttab*, %struct.mnttab** %7, align 8
  %45 = call i64 @getmntany(i32 %43, %struct.mnttab* %44, %struct.mnttab* %11)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %88

48:                                               ; preds = %36
  %49 = load i32, i32* @ENOENT, align 4
  store i32 %49, i32* %4, align 4
  br label %88

50:                                               ; preds = %3
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = call i32 @pthread_mutex_lock(i32* %52)
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = call i64 @avl_numnodes(i32* %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %50
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %60 = call i32 @libzfs_mnttab_update(%struct.TYPE_9__* %59)
  store i32 %60, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = call i32 @pthread_mutex_unlock(i32* %64)
  %66 = load i32, i32* %12, align 4
  store i32 %66, i32* %4, align 4
  br label %88

67:                                               ; preds = %58
  br label %68

68:                                               ; preds = %67, %50
  %69 = load i8*, i8** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %71 = getelementptr inbounds %struct.mnttab, %struct.mnttab* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = call %struct.TYPE_8__* @avl_find(i32* %73, %struct.TYPE_8__* %8, i32* null)
  store %struct.TYPE_8__* %74, %struct.TYPE_8__** %9, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %76 = icmp ne %struct.TYPE_8__* %75, null
  br i1 %76, label %77, label %83

77:                                               ; preds = %68
  %78 = load %struct.mnttab*, %struct.mnttab** %7, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = bitcast %struct.mnttab* %78 to i8*
  %82 = bitcast %struct.mnttab* %80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %81, i8* align 8 %82, i64 16, i1 false)
  store i32 0, i32* %10, align 4
  br label %83

83:                                               ; preds = %77, %68
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = call i32 @pthread_mutex_unlock(i32* %85)
  %87 = load i32, i32* %10, align 4
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %83, %62, %48, %47, %34
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @avl_numnodes(i32*) #2

declare dso_local i32 @libzfs_mnttab_fini(%struct.TYPE_9__*) #2

declare dso_local i32* @freopen(i32, i8*, i32) #2

declare dso_local i64 @getmntany(i32, %struct.mnttab*, %struct.mnttab*) #2

declare dso_local i32 @pthread_mutex_lock(i32*) #2

declare dso_local i32 @libzfs_mnttab_update(%struct.TYPE_9__*) #2

declare dso_local i32 @pthread_mutex_unlock(i32*) #2

declare dso_local %struct.TYPE_8__* @avl_find(i32*, %struct.TYPE_8__*, i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
