; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_iter.c_zfs_sort_snaps.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_iter.c_zfs_sort_snaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i8*)* @zfs_sort_snaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_sort_snaps(%struct.TYPE_12__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_11__, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to i32*
  store i32* %9, i32** %5, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  store %struct.TYPE_12__* %10, %struct.TYPE_12__** %11, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call %struct.TYPE_11__* @avl_find(i32* %12, %struct.TYPE_11__* %7, i32* null)
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %6, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %15 = icmp ne %struct.TYPE_11__* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %2
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %20 = call i32 @zfs_close(%struct.TYPE_12__* %19)
  %21 = load i32*, i32** %5, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %23 = call i32 @avl_remove(i32* %21, %struct.TYPE_11__* %22)
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %25 = call i32 @free(%struct.TYPE_11__* %24)
  br label %26

26:                                               ; preds = %16, %2
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.TYPE_11__* @zfs_alloc(i32 %29, i32 8)
  store %struct.TYPE_11__* %30, %struct.TYPE_11__** %6, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  store %struct.TYPE_12__* %31, %struct.TYPE_12__** %33, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %36 = call i32 @avl_add(i32* %34, %struct.TYPE_11__* %35)
  ret i32 0
}

declare dso_local %struct.TYPE_11__* @avl_find(i32*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @zfs_close(%struct.TYPE_12__*) #1

declare dso_local i32 @avl_remove(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @free(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @zfs_alloc(i32, i32) #1

declare dso_local i32 @avl_add(i32*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
