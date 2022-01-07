; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_gen_bitmap64.c_ext2fs_resize_generic_bmap.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_gen_bitmap64.c_ext2fs_resize_generic_bmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_11__*, i32, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@resize_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2fs_resize_generic_bmap(%struct.TYPE_12__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %10 = bitcast %struct.TYPE_12__* %9 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %8, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %12 = icmp ne %struct.TYPE_11__* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %4, align 4
  br label %46

15:                                               ; preds = %3
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %17 = call i64 @EXT2FS_IS_32_BITMAP(%struct.TYPE_11__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %26 = call i32 @ext2fs_resize_generic_bitmap(i32 %22, i32 %23, i32 %24, %struct.TYPE_12__* %25)
  store i32 %26, i32* %4, align 4
  br label %46

27:                                               ; preds = %15
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %29 = call i32 @EXT2FS_IS_64_BITMAP(%struct.TYPE_11__* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %4, align 4
  br label %46

33:                                               ; preds = %27
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %35 = load i32, i32* @resize_count, align 4
  %36 = call i32 @INC_STAT(%struct.TYPE_11__* %34, i32 %35)
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32 (%struct.TYPE_11__*, i32, i32)*, i32 (%struct.TYPE_11__*, i32, i32)** %40, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 %41(%struct.TYPE_11__* %42, i32 %43, i32 %44)
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %33, %31, %19, %13
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i64 @EXT2FS_IS_32_BITMAP(%struct.TYPE_11__*) #1

declare dso_local i32 @ext2fs_resize_generic_bitmap(i32, i32, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @EXT2FS_IS_64_BITMAP(%struct.TYPE_11__*) #1

declare dso_local i32 @INC_STAT(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
