; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_initialize.c_vdev_initialize_ranges.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_initialize.c_vdev_initialize_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@zfs_initialize_chunk_size = common dso_local global i32 0, align 4
@VDEV_LABEL_START_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*)* @vdev_initialize_ranges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdev_initialize_ranges(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %6, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  store i32* %18, i32** %7, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i32* @zfs_btree_first(i32* %19, i32* %8)
  store i32* %20, i32** %9, align 8
  br label %21

21:                                               ; preds = %70, %2
  %22 = load i32*, i32** %9, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %73

24:                                               ; preds = %21
  %25 = load i32*, i32** %9, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %27 = call i32 @rs_get_end(i32* %25, %struct.TYPE_8__* %26)
  %28 = load i32*, i32** %9, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %30 = call i32 @rs_get_start(i32* %28, %struct.TYPE_8__* %29)
  %31 = sub nsw i32 %27, %30
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = sub nsw i32 %32, 1
  %34 = load i32, i32* @zfs_initialize_chunk_size, align 4
  %35 = sdiv i32 %33, %34
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %37

37:                                               ; preds = %66, %24
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %69

41:                                               ; preds = %37
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %43 = load i32, i32* @VDEV_LABEL_START_SIZE, align 4
  %44 = load i32*, i32** %9, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %46 = call i32 @rs_get_start(i32* %44, %struct.TYPE_8__* %45)
  %47 = add nsw i32 %43, %46
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @zfs_initialize_chunk_size, align 4
  %50 = mul nsw i32 %48, %49
  %51 = add nsw i32 %47, %50
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @zfs_initialize_chunk_size, align 4
  %55 = mul nsw i32 %53, %54
  %56 = sub nsw i32 %52, %55
  %57 = load i32, i32* @zfs_initialize_chunk_size, align 4
  %58 = call i32 @MIN(i32 %56, i32 %57)
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @vdev_initialize_write(%struct.TYPE_7__* %42, i32 %51, i32 %58, i32* %59)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %41
  %64 = load i32, i32* %13, align 4
  store i32 %64, i32* %3, align 4
  br label %74

65:                                               ; preds = %41
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %12, align 4
  br label %37

69:                                               ; preds = %37
  br label %70

70:                                               ; preds = %69
  %71 = load i32*, i32** %7, align 8
  %72 = call i32* @zfs_btree_next(i32* %71, i32* %8, i32* %8)
  store i32* %72, i32** %9, align 8
  br label %21

73:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %63
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32* @zfs_btree_first(i32*, i32*) #1

declare dso_local i32 @rs_get_end(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @rs_get_start(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @vdev_initialize_write(%struct.TYPE_7__*, i32, i32, i32*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32* @zfs_btree_next(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
