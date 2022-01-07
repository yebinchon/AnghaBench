; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_util.c_zprop_expand_list.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_util.c_zprop_expand_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__*, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32*, %struct.TYPE_6__** }

@zprop_expand_list_cb = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@ZPROP_INVAL = common dso_local global i64 0, align 8
@ZFS_TYPE_POOL = common dso_local global i32 0, align 4
@ZPOOL_PROP_NAME = common dso_local global i32 0, align 4
@ZFS_PROP_NAME = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zprop_expand_list(i32* %0, %struct.TYPE_6__** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_6__**, align 8
  %10 = alloca %struct.TYPE_7__, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_6__** %1, %struct.TYPE_6__*** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = icmp eq %struct.TYPE_6__* %12, null
  br i1 %13, label %14, label %65

14:                                               ; preds = %3
  %15 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  store %struct.TYPE_6__** %15, %struct.TYPE_6__*** %9, align 8
  %16 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 2
  store %struct.TYPE_6__** %16, %struct.TYPE_6__*** %17, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  store i32* %18, i32** %19, align 8
  %20 = load i32, i32* %7, align 4
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  store i32 %20, i32* %21, align 8
  %22 = load i32, i32* @zprop_expand_list_cb, align 4
  %23 = load i32, i32* @B_FALSE, align 4
  %24 = load i32, i32* @B_FALSE, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @zprop_iter_common(i32 %22, %struct.TYPE_7__* %10, i32 %23, i32 %24, i32 %25)
  %27 = load i64, i64* @ZPROP_INVAL, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %14
  store i32 -1, i32* %4, align 4
  br label %66

30:                                               ; preds = %14
  %31 = load i32*, i32** %5, align 8
  %32 = call %struct.TYPE_6__* @zfs_alloc(i32* %31, i32 24)
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %8, align 8
  %33 = icmp eq %struct.TYPE_6__* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 -1, i32* %4, align 4
  br label %66

35:                                               ; preds = %30
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @ZFS_TYPE_POOL, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @ZPOOL_PROP_NAME, align 4
  br label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @ZFS_PROP_NAME, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @zprop_width(i32 %49, i32* %51, i32 %52)
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @B_TRUE, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store %struct.TYPE_6__* %60, %struct.TYPE_6__** %62, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %64 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  store %struct.TYPE_6__* %63, %struct.TYPE_6__** %64, align 8
  br label %65

65:                                               ; preds = %43, %3
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %34, %29
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i64 @zprop_iter_common(i32, %struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_6__* @zfs_alloc(i32*, i32) #1

declare dso_local i32 @zprop_width(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
