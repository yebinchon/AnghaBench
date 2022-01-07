; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext3/extr_generic.c_ext3_inode_blocks_set.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext3/extr_generic.c_ext3_inode_blocks_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext3_inode = type { i8*, i8* }
%struct.inode = type { i32, i32, %struct.super_block* }
%struct.super_block = type { i32 }

@EXT4_HUGE_FILE_FL = common dso_local global i32 0, align 4
@EXT4_FEATURE_RO_COMPAT_HUGE_FILE = common dso_local global i32 0, align 4
@BLOCK_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext3_inode_blocks_set(%struct.ext3_inode* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ext3_inode*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i32, align 4
  store %struct.ext3_inode* %0, %struct.ext3_inode** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %5, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %6, align 4
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 2
  %14 = load %struct.super_block*, %struct.super_block** %13, align 8
  store %struct.super_block* %14, %struct.super_block** %7, align 8
  %15 = load %struct.super_block*, %struct.super_block** %7, align 8
  %16 = getelementptr inbounds %struct.super_block, %struct.super_block* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp slt i64 %19, 4294967296
  br i1 %20, label %21, label %34

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = call i8* @cpu_to_le32(i32 %22)
  %24 = load %struct.ext3_inode*, %struct.ext3_inode** %4, align 8
  %25 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load %struct.ext3_inode*, %struct.ext3_inode** %4, align 8
  %27 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %26, i32 0, i32 0
  store i8* null, i8** %27, align 8
  %28 = load i32, i32* @EXT4_HUGE_FILE_FL, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.inode*, %struct.inode** %5, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 4
  store i32 0, i32* %3, align 4
  br label %87

34:                                               ; preds = %2
  %35 = load %struct.super_block*, %struct.super_block** %7, align 8
  %36 = load i32, i32* @EXT4_FEATURE_RO_COMPAT_HUGE_FILE, align 4
  %37 = call i32 @EXT3_HAS_RO_COMPAT_FEATURE(%struct.super_block* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %34
  %40 = load %struct.super_block*, %struct.super_block** %7, align 8
  %41 = load i32, i32* @EXT4_FEATURE_RO_COMPAT_HUGE_FILE, align 4
  %42 = call i32 @EXT3_SET_RO_COMPAT_FEATURE(%struct.super_block* %40, i32 %41)
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @Ext2SaveSuper(i32* null, i32 %43)
  br label %45

45:                                               ; preds = %39, %34
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = icmp sle i64 %47, 281474976710655
  br i1 %48, label %49, label %66

49:                                               ; preds = %45
  %50 = load i32, i32* %6, align 4
  %51 = call i8* @cpu_to_le32(i32 %50)
  %52 = load %struct.ext3_inode*, %struct.ext3_inode** %4, align 8
  %53 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* %6, align 4
  %55 = ashr i32 %54, 32
  %56 = call i64 @cpu_to_le16(i32 %55)
  %57 = inttoptr i64 %56 to i8*
  %58 = load %struct.ext3_inode*, %struct.ext3_inode** %4, align 8
  %59 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  %60 = load i32, i32* @EXT4_HUGE_FILE_FL, align 4
  %61 = xor i32 %60, -1
  %62 = load %struct.inode*, %struct.inode** %5, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %86

66:                                               ; preds = %45
  %67 = load i32, i32* @EXT4_HUGE_FILE_FL, align 4
  %68 = load %struct.inode*, %struct.inode** %5, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @BLOCK_BITS, align 4
  %74 = sub nsw i32 %73, 9
  %75 = ashr i32 %72, %74
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i8* @cpu_to_le32(i32 %76)
  %78 = load %struct.ext3_inode*, %struct.ext3_inode** %4, align 8
  %79 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %78, i32 0, i32 1
  store i8* %77, i8** %79, align 8
  %80 = load i32, i32* %6, align 4
  %81 = ashr i32 %80, 32
  %82 = call i64 @cpu_to_le16(i32 %81)
  %83 = inttoptr i64 %82 to i8*
  %84 = load %struct.ext3_inode*, %struct.ext3_inode** %4, align 8
  %85 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %84, i32 0, i32 0
  store i8* %83, i8** %85, align 8
  br label %86

86:                                               ; preds = %66, %49
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %21
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @EXT3_HAS_RO_COMPAT_FEATURE(%struct.super_block*, i32) #1

declare dso_local i32 @EXT3_SET_RO_COMPAT_FEATURE(%struct.super_block*, i32) #1

declare dso_local i32 @Ext2SaveSuper(i32*, i32) #1

declare dso_local i64 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
