; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_alloc.c_check_inode_uninit.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_alloc.c_check_inode_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }

@EXT2_BG_INODE_UNINIT = common dso_local global i32 0, align 4
@EXT2_BG_BLOCK_UNINIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32, i64)* @check_inode_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_inode_uninit(%struct.TYPE_11__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sge i64 %9, %12
  br i1 %13, label %24, label %14

14:                                               ; preds = %3
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = call i32 @ext2fs_has_group_desc_csum(%struct.TYPE_11__* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i32, i32* @EXT2_BG_INODE_UNINIT, align 4
  %22 = call i32 @ext2fs_bg_flags_test(%struct.TYPE_11__* %19, i64 %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18, %14, %3
  br label %67

25:                                               ; preds = %18
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = mul nsw i64 %26, %31
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %8, align 8
  store i64 0, i64* %7, align 8
  br label %34

34:                                               ; preds = %46, %25
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %35, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %34
  %43 = load i32, i32* %5, align 4
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @ext2fs_fast_unmark_inode_bitmap2(i32 %43, i64 %44)
  br label %46

46:                                               ; preds = %42
  %47 = load i64, i64* %7, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %7, align 8
  %49 = load i64, i64* %8, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %8, align 8
  br label %34

51:                                               ; preds = %34
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %53 = load i64, i64* %6, align 8
  %54 = load i32, i32* @EXT2_BG_INODE_UNINIT, align 4
  %55 = call i32 @ext2fs_bg_flags_clear(%struct.TYPE_11__* %52, i64 %53, i32 %54)
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %57 = load i64, i64* %6, align 8
  %58 = load i32, i32* @EXT2_BG_BLOCK_UNINIT, align 4
  %59 = call i32 @ext2fs_bg_flags_clear(%struct.TYPE_11__* %56, i64 %57, i32 %58)
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %61 = load i64, i64* %6, align 8
  %62 = call i32 @ext2fs_group_desc_csum_set(%struct.TYPE_11__* %60, i64 %61)
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %64 = call i32 @ext2fs_mark_ib_dirty(%struct.TYPE_11__* %63)
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %66 = call i32 @ext2fs_mark_super_dirty(%struct.TYPE_11__* %65)
  br label %67

67:                                               ; preds = %51, %24
  ret void
}

declare dso_local i32 @ext2fs_has_group_desc_csum(%struct.TYPE_11__*) #1

declare dso_local i32 @ext2fs_bg_flags_test(%struct.TYPE_11__*, i64, i32) #1

declare dso_local i32 @ext2fs_fast_unmark_inode_bitmap2(i32, i64) #1

declare dso_local i32 @ext2fs_bg_flags_clear(%struct.TYPE_11__*, i64, i32) #1

declare dso_local i32 @ext2fs_group_desc_csum_set(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @ext2fs_mark_ib_dirty(%struct.TYPE_11__*) #1

declare dso_local i32 @ext2fs_mark_super_dirty(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
