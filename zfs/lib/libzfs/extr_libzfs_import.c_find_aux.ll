; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_import.c_find_aux.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_import.c_find_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__*, i32 }

@ZPOOL_CONFIG_VDEV_TREE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_GUID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*)* @find_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_aux(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %6, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ZPOOL_CONFIG_VDEV_TREE, align 4
  %18 = call i64 @nvlist_lookup_nvlist(i32 %16, i32 %17, i32** %11)
  %19 = icmp eq i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @verify(i32 %20)
  %22 = load i32*, i32** %11, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @nvlist_lookup_nvlist_array(i32* %22, i32 %25, i32*** %7, i64* %9)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %57

28:                                               ; preds = %2
  store i64 0, i64* %8, align 8
  br label %29

29:                                               ; preds = %53, %28
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %9, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %56

33:                                               ; preds = %29
  %34 = load i32**, i32*** %7, align 8
  %35 = load i64, i64* %8, align 8
  %36 = getelementptr inbounds i32*, i32** %34, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* @ZPOOL_CONFIG_GUID, align 4
  %39 = call i64 @nvlist_lookup_uint64(i32* %37, i32 %38, i64* %10)
  %40 = icmp eq i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @verify(i32 %41)
  %43 = load i64, i64* %10, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %43, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %33
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  store %struct.TYPE_5__* %49, %struct.TYPE_5__** %51, align 8
  store i32 1, i32* %3, align 4
  br label %60

52:                                               ; preds = %33
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %8, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %8, align 8
  br label %29

56:                                               ; preds = %29
  br label %57

57:                                               ; preds = %56, %2
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %59 = call i32 @zpool_close(%struct.TYPE_5__* %58)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %57, %48
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @verify(i32) #1

declare dso_local i64 @nvlist_lookup_nvlist(i32, i32, i32**) #1

declare dso_local i64 @nvlist_lookup_nvlist_array(i32*, i32, i32***, i64*) #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i64*) #1

declare dso_local i32 @zpool_close(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
