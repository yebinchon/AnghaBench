; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext3/extr_generic.c_ext3_inode_blocks.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext3/extr_generic.c_ext3_inode_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext3_inode = type { i32, i32 }
%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }

@EXT4_FEATURE_RO_COMPAT_HUGE_FILE = common dso_local global i32 0, align 4
@EXT4_HUGE_FILE_FL = common dso_local global i32 0, align 4
@BLOCK_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext3_inode_blocks(%struct.ext3_inode* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ext3_inode*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i32, align 4
  store %struct.ext3_inode* %0, %struct.ext3_inode** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %5, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 1
  %11 = load %struct.super_block*, %struct.super_block** %10, align 8
  store %struct.super_block* %11, %struct.super_block** %7, align 8
  %12 = load %struct.super_block*, %struct.super_block** %7, align 8
  %13 = getelementptr inbounds %struct.super_block, %struct.super_block* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.super_block*, %struct.super_block** %7, align 8
  %16 = load i32, i32* @EXT4_FEATURE_RO_COMPAT_HUGE_FILE, align 4
  %17 = call i64 @EXT3_HAS_RO_COMPAT_FEATURE(%struct.super_block* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %2
  %20 = load %struct.ext3_inode*, %struct.ext3_inode** %4, align 8
  %21 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @le16_to_cpu(i32 %22)
  %24 = trunc i64 %23 to i32
  %25 = shl i32 %24, 32
  %26 = load %struct.ext3_inode*, %struct.ext3_inode** %4, align 8
  %27 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le32_to_cpu(i32 %28)
  %30 = or i32 %25, %29
  store i32 %30, i32* %6, align 4
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @EXT4_HUGE_FILE_FL, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %19
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @BLOCK_BITS, align 4
  %40 = sub nsw i32 %39, 9
  %41 = shl i32 %38, %40
  store i32 %41, i32* %3, align 4
  br label %49

42:                                               ; preds = %19
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %49

44:                                               ; preds = %2
  %45 = load %struct.ext3_inode*, %struct.ext3_inode** %4, align 8
  %46 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @le32_to_cpu(i32 %47)
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %44, %42, %37
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i64 @EXT3_HAS_RO_COMPAT_FEATURE(%struct.super_block*, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
