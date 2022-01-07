; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext3/extr_generic.c_ext4_group_used_meta_blocks.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext3/extr_generic.c_ext4_group_used_meta_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext3_sb_info = type { i32 }
%struct.ext4_group_desc = type { i32 }
%struct.buffer_head = type { i32 }

@EXT4_FEATURE_INCOMPAT_FLEX_BG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32)* @ext4_group_used_meta_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_group_used_meta_blocks(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.ext3_sb_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ext4_group_desc*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.super_block*, %struct.super_block** %3, align 8
  %11 = call %struct.ext3_sb_info* @EXT3_SB(%struct.super_block* %10)
  store %struct.ext3_sb_info* %11, %struct.ext3_sb_info** %6, align 8
  %12 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %6, align 8
  %13 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 2
  store i32 %15, i32* %7, align 4
  %16 = load %struct.super_block*, %struct.super_block** %3, align 8
  %17 = load i32, i32* @EXT4_FEATURE_INCOMPAT_FLEX_BG, align 4
  %18 = call i64 @EXT3_HAS_INCOMPAT_FEATURE(%struct.super_block* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %79

20:                                               ; preds = %2
  store %struct.buffer_head* null, %struct.buffer_head** %9, align 8
  %21 = load %struct.super_block*, %struct.super_block** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block* %21, i32 %22, %struct.buffer_head** %9)
  store %struct.ext4_group_desc* %23, %struct.ext4_group_desc** %8, align 8
  %24 = load %struct.super_block*, %struct.super_block** %3, align 8
  %25 = load %struct.super_block*, %struct.super_block** %3, align 8
  %26 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %8, align 8
  %27 = call i64 @ext4_block_bitmap(%struct.super_block* %25, %struct.ext4_group_desc* %26)
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @ext4_block_in_group(%struct.super_block* %24, i64 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %20
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %31, %20
  %35 = load %struct.super_block*, %struct.super_block** %3, align 8
  %36 = load %struct.super_block*, %struct.super_block** %3, align 8
  %37 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %8, align 8
  %38 = call i64 @ext4_inode_bitmap(%struct.super_block* %36, %struct.ext4_group_desc* %37)
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @ext4_block_in_group(%struct.super_block* %35, i64 %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %34
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %42, %34
  %46 = load %struct.super_block*, %struct.super_block** %3, align 8
  %47 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %8, align 8
  %48 = call i64 @ext4_inode_table(%struct.super_block* %46, %struct.ext4_group_desc* %47)
  store i64 %48, i64* %5, align 8
  br label %49

49:                                               ; preds = %70, %45
  %50 = load i64, i64* %5, align 8
  %51 = load %struct.super_block*, %struct.super_block** %3, align 8
  %52 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %8, align 8
  %53 = call i64 @ext4_inode_table(%struct.super_block* %51, %struct.ext4_group_desc* %52)
  %54 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %6, align 8
  %55 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %53, %57
  %59 = icmp slt i64 %50, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %49
  %61 = load %struct.super_block*, %struct.super_block** %3, align 8
  %62 = load i64, i64* %5, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @ext4_block_in_group(%struct.super_block* %61, i64 %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %60
  %67 = load i32, i32* %7, align 4
  %68 = sub nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %66, %60
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %5, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %5, align 8
  br label %49

73:                                               ; preds = %49
  %74 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %75 = icmp ne %struct.buffer_head* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = call i32 @fini_bh(%struct.buffer_head** %9)
  br label %78

78:                                               ; preds = %76, %73
  br label %79

79:                                               ; preds = %78, %2
  %80 = load i32, i32* %7, align 4
  ret i32 %80
}

declare dso_local %struct.ext3_sb_info* @EXT3_SB(%struct.super_block*) #1

declare dso_local i64 @EXT3_HAS_INCOMPAT_FEATURE(%struct.super_block*, i32) #1

declare dso_local %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block*, i32, %struct.buffer_head**) #1

declare dso_local i32 @ext4_block_in_group(%struct.super_block*, i64, i32) #1

declare dso_local i64 @ext4_block_bitmap(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i64 @ext4_inode_bitmap(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i64 @ext4_inode_table(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i32 @fini_bh(%struct.buffer_head**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
