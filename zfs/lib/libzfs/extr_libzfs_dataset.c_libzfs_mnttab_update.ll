; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_libzfs_mnttab_update.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_libzfs_mnttab_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.mnttab = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__* }

@MNTTAB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@MNTTYPE_ZFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libzfs_mnttab_update(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.mnttab, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %7 = load i32, i32* @MNTTAB, align 4
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32* @freopen(i32 %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOENT, align 4
  store i32 %14, i32* %2, align 4
  br label %98

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %92, %69, %28, %15
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @getmntent(i32 %19, %struct.mnttab* %4)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %97

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.mnttab, %struct.mnttab* %4, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MNTTYPE_ZFS, align 4
  %26 = call i64 @strcmp(i32 %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %16

29:                                               ; preds = %22
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %31 = call %struct.TYPE_12__* @zfs_alloc(%struct.TYPE_13__* %30, i32 32)
  store %struct.TYPE_12__* %31, %struct.TYPE_12__** %5, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %33 = getelementptr inbounds %struct.mnttab, %struct.mnttab* %4, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @zfs_strdup(%struct.TYPE_13__* %32, i32 %34)
  %36 = bitcast i8* %35 to %struct.TYPE_12__*
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 3
  store %struct.TYPE_12__* %36, %struct.TYPE_12__** %39, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %41 = getelementptr inbounds %struct.mnttab, %struct.mnttab* %4, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @zfs_strdup(%struct.TYPE_13__* %40, i32 %42)
  %44 = bitcast i8* %43 to %struct.TYPE_12__*
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 2
  store %struct.TYPE_12__* %44, %struct.TYPE_12__** %47, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %49 = getelementptr inbounds %struct.mnttab, %struct.mnttab* %4, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @zfs_strdup(%struct.TYPE_13__* %48, i32 %50)
  %52 = bitcast i8* %51 to %struct.TYPE_12__*
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  store %struct.TYPE_12__* %52, %struct.TYPE_12__** %55, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %57 = getelementptr inbounds %struct.mnttab, %struct.mnttab* %4, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @zfs_strdup(%struct.TYPE_13__* %56, i32 %58)
  %60 = bitcast i8* %59 to %struct.TYPE_12__*
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  store %struct.TYPE_12__* %60, %struct.TYPE_12__** %63, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %67 = call i32* @avl_find(i32* %65, %struct.TYPE_12__* %66, i32* %6)
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %92

69:                                               ; preds = %29
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 3
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %72, align 8
  %74 = call i32 @free(%struct.TYPE_12__* %73)
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = call i32 @free(%struct.TYPE_12__* %78)
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %82, align 8
  %84 = call i32 @free(%struct.TYPE_12__* %83)
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %87, align 8
  %89 = call i32 @free(%struct.TYPE_12__* %88)
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %91 = call i32 @free(%struct.TYPE_12__* %90)
  br label %16

92:                                               ; preds = %29
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %96 = call i32 @avl_add(i32* %94, %struct.TYPE_12__* %95)
  br label %16

97:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %97, %13
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32* @freopen(i32, i8*, i32) #1

declare dso_local i64 @getmntent(i32, %struct.mnttab*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local %struct.TYPE_12__* @zfs_alloc(%struct.TYPE_13__*, i32) #1

declare dso_local i8* @zfs_strdup(%struct.TYPE_13__*, i32) #1

declare dso_local i32* @avl_find(i32*, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @free(%struct.TYPE_12__*) #1

declare dso_local i32 @avl_add(i32*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
