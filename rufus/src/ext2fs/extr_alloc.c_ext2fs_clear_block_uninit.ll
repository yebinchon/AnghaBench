; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_alloc.c_ext2fs_clear_block_uninit.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_alloc.c_ext2fs_clear_block_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }

@EXT2_BG_BLOCK_UNINIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ext2fs_clear_block_uninit(%struct.TYPE_9__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp sge i64 %5, %8
  br i1 %9, label %20, label %10

10:                                               ; preds = %2
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = call i32 @ext2fs_has_group_desc_csum(%struct.TYPE_9__* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load i32, i32* @EXT2_BG_BLOCK_UNINIT, align 4
  %18 = call i32 @ext2fs_bg_flags_test(%struct.TYPE_9__* %15, i64 %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %14, %10, %2
  br label %33

21:                                               ; preds = %14
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = load i64, i64* %4, align 8
  %24 = load i32, i32* @EXT2_BG_BLOCK_UNINIT, align 4
  %25 = call i32 @ext2fs_bg_flags_clear(%struct.TYPE_9__* %22, i64 %23, i32 %24)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @ext2fs_group_desc_csum_set(%struct.TYPE_9__* %26, i64 %27)
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %30 = call i32 @ext2fs_mark_super_dirty(%struct.TYPE_9__* %29)
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %32 = call i32 @ext2fs_mark_bb_dirty(%struct.TYPE_9__* %31)
  br label %33

33:                                               ; preds = %21, %20
  ret void
}

declare dso_local i32 @ext2fs_has_group_desc_csum(%struct.TYPE_9__*) #1

declare dso_local i32 @ext2fs_bg_flags_test(%struct.TYPE_9__*, i64, i32) #1

declare dso_local i32 @ext2fs_bg_flags_clear(%struct.TYPE_9__*, i64, i32) #1

declare dso_local i32 @ext2fs_group_desc_csum_set(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @ext2fs_mark_super_dirty(%struct.TYPE_9__*) #1

declare dso_local i32 @ext2fs_mark_bb_dirty(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
