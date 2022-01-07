; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext3/extr_htree.c_ext3_add_entry.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext3/extr_htree.c_ext3_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2_icb = type { i32 }
%struct.dentry = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.inode* }
%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32, i32 }
%struct.buffer_head = type { i64 }
%struct.ext3_dir_entry_2 = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@ERR_BAD_DX_DIR = common dso_local global i32 0, align 4
@EXT3_FEATURE_COMPAT_DIR_INDEX = common dso_local global i32 0, align 4
@EXT3_INDEX_FL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext3_add_entry(%struct.ext2_icb* %0, %struct.dentry* %1, %struct.inode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ext2_icb*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.ext3_dir_entry_2*, align 8
  %11 = alloca %struct.super_block*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ext2_icb* %0, %struct.ext2_icb** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  %16 = load %struct.dentry*, %struct.dentry** %6, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.inode*, %struct.inode** %19, align 8
  store %struct.inode* %20, %struct.inode** %8, align 8
  %21 = load %struct.inode*, %struct.inode** %8, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 1
  %23 = load %struct.super_block*, %struct.super_block** %22, align 8
  store %struct.super_block* %23, %struct.super_block** %11, align 8
  %24 = load %struct.super_block*, %struct.super_block** %11, align 8
  %25 = getelementptr inbounds %struct.super_block, %struct.super_block* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %13, align 4
  %27 = load %struct.dentry*, %struct.dentry** %6, align 8
  %28 = getelementptr inbounds %struct.dentry, %struct.dentry* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %3
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %99

35:                                               ; preds = %3
  %36 = load %struct.inode*, %struct.inode** %8, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.super_block*, %struct.super_block** %11, align 8
  %40 = getelementptr inbounds %struct.super_block, %struct.super_block* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %38, %41
  store i32 %42, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %43

43:                                               ; preds = %71, %35
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* %15, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %74

47:                                               ; preds = %43
  %48 = load %struct.ext2_icb*, %struct.ext2_icb** %5, align 8
  %49 = load %struct.inode*, %struct.inode** %8, align 8
  %50 = load i32, i32* %14, align 4
  %51 = call %struct.buffer_head* @ext3_bread(%struct.ext2_icb* %48, %struct.inode* %49, i32 %50, i32* %12)
  store %struct.buffer_head* %51, %struct.buffer_head** %9, align 8
  %52 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %53 = icmp ne %struct.buffer_head* %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %47
  %55 = load i32, i32* %12, align 4
  store i32 %55, i32* %4, align 4
  br label %99

56:                                               ; preds = %47
  %57 = load %struct.ext2_icb*, %struct.ext2_icb** %5, align 8
  %58 = load %struct.dentry*, %struct.dentry** %6, align 8
  %59 = load %struct.inode*, %struct.inode** %7, align 8
  %60 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %61 = call i32 @add_dirent_to_buf(%struct.ext2_icb* %57, %struct.dentry* %58, %struct.inode* %59, %struct.ext3_dir_entry_2* null, %struct.buffer_head* %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @ENOSPC, align 4
  %64 = sub nsw i32 0, %63
  %65 = icmp ne i32 %62, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %56
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %4, align 4
  br label %99

68:                                               ; preds = %56
  %69 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %70 = call i32 @brelse(%struct.buffer_head* %69)
  br label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %14, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %14, align 4
  br label %43

74:                                               ; preds = %43
  %75 = load %struct.ext2_icb*, %struct.ext2_icb** %5, align 8
  %76 = load %struct.inode*, %struct.inode** %8, align 8
  %77 = call %struct.buffer_head* @ext3_append(%struct.ext2_icb* %75, %struct.inode* %76, i32* %14, i32* %12)
  store %struct.buffer_head* %77, %struct.buffer_head** %9, align 8
  %78 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %79 = icmp ne %struct.buffer_head* %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %74
  %81 = load i32, i32* %12, align 4
  store i32 %81, i32* %4, align 4
  br label %99

82:                                               ; preds = %74
  %83 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %84 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to %struct.ext3_dir_entry_2*
  store %struct.ext3_dir_entry_2* %86, %struct.ext3_dir_entry_2** %10, align 8
  %87 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  %88 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %87, i32 0, i32 1
  store i64 0, i64* %88, align 8
  %89 = load i32, i32* %13, align 4
  %90 = call i32 @ext3_rec_len_to_disk(i32 %89)
  %91 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  %92 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load %struct.ext2_icb*, %struct.ext2_icb** %5, align 8
  %94 = load %struct.dentry*, %struct.dentry** %6, align 8
  %95 = load %struct.inode*, %struct.inode** %7, align 8
  %96 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  %97 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %98 = call i32 @add_dirent_to_buf(%struct.ext2_icb* %93, %struct.dentry* %94, %struct.inode* %95, %struct.ext3_dir_entry_2* %96, %struct.buffer_head* %97)
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %82, %80, %66, %54, %32
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local %struct.buffer_head* @ext3_bread(%struct.ext2_icb*, %struct.inode*, i32, i32*) #1

declare dso_local i32 @add_dirent_to_buf(%struct.ext2_icb*, %struct.dentry*, %struct.inode*, %struct.ext3_dir_entry_2*, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local %struct.buffer_head* @ext3_append(%struct.ext2_icb*, %struct.inode*, i32*, i32*) #1

declare dso_local i32 @ext3_rec_len_to_disk(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
