; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_create.c_Ext2AddDotEntries.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_create.c_Ext2AddDotEntries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2_icb = type { i32 }
%struct.inode = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.ext3_dir_entry_2 = type { i32, i32, i8*, i8* }
%struct.buffer_head = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@S_IFDIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Ext2AddDotEntries(%struct.ext2_icb* %0, %struct.inode* %1, %struct.inode* %2) #0 {
  %4 = alloca %struct.ext2_icb*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.ext3_dir_entry_2*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ext2_icb* %0, %struct.ext2_icb** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store %struct.inode* %2, %struct.inode** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.ext2_icb*, %struct.ext2_icb** %4, align 8
  %12 = load %struct.inode*, %struct.inode** %6, align 8
  %13 = call %struct.buffer_head* @ext3_append(%struct.ext2_icb* %11, %struct.inode* %12, i32* %9, i32* %10)
  store %struct.buffer_head* %13, %struct.buffer_head** %8, align 8
  %14 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %15 = icmp ne %struct.buffer_head* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %91

17:                                               ; preds = %3
  %18 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %19 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.ext3_dir_entry_2*
  store %struct.ext3_dir_entry_2* %21, %struct.ext3_dir_entry_2** %7, align 8
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i8* @cpu_to_le32(i32 %24)
  %26 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %7, align 8
  %27 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %26, i32 0, i32 3
  store i8* %25, i8** %27, align 8
  %28 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %7, align 8
  %29 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %7, align 8
  %31 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @EXT3_DIR_REC_LEN(i32 %32)
  %34 = call i8* @cpu_to_le16(i64 %33)
  %35 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %7, align 8
  %36 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  %37 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %7, align 8
  %38 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @strcpy(i32 %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.inode*, %struct.inode** %6, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %7, align 8
  %45 = load i32, i32* @S_IFDIR, align 4
  %46 = call i32 @ext3_set_de_type(%struct.TYPE_2__* %43, %struct.ext3_dir_entry_2* %44, i32 %45)
  %47 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %7, align 8
  %48 = bitcast %struct.ext3_dir_entry_2* %47 to i8*
  %49 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %7, align 8
  %50 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @le16_to_cpu(i8* %51)
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %48, i64 %53
  %55 = bitcast i8* %54 to %struct.ext3_dir_entry_2*
  store %struct.ext3_dir_entry_2* %55, %struct.ext3_dir_entry_2** %7, align 8
  %56 = load %struct.inode*, %struct.inode** %5, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i8* @cpu_to_le32(i32 %58)
  %60 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %7, align 8
  %61 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %60, i32 0, i32 3
  store i8* %59, i8** %61, align 8
  %62 = load %struct.inode*, %struct.inode** %6, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @EXT3_DIR_REC_LEN(i32 1)
  %68 = sub nsw i64 %66, %67
  %69 = call i8* @cpu_to_le16(i64 %68)
  %70 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %7, align 8
  %71 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %70, i32 0, i32 2
  store i8* %69, i8** %71, align 8
  %72 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %7, align 8
  %73 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %72, i32 0, i32 0
  store i32 2, i32* %73, align 8
  %74 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %7, align 8
  %75 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @strcpy(i32 %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %78 = load %struct.inode*, %struct.inode** %6, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 1
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %7, align 8
  %82 = load i32, i32* @S_IFDIR, align 4
  %83 = call i32 @ext3_set_de_type(%struct.TYPE_2__* %80, %struct.ext3_dir_entry_2* %81, i32 %82)
  %84 = load %struct.inode*, %struct.inode** %6, align 8
  %85 = getelementptr inbounds %struct.inode, %struct.inode* %84, i32 0, i32 0
  store i32 2, i32* %85, align 8
  %86 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %87 = call i32 @set_buffer_dirty(%struct.buffer_head* %86)
  %88 = load %struct.ext2_icb*, %struct.ext2_icb** %4, align 8
  %89 = load %struct.inode*, %struct.inode** %6, align 8
  %90 = call i32 @ext3_mark_inode_dirty(%struct.ext2_icb* %88, %struct.inode* %89)
  br label %91

91:                                               ; preds = %17, %16
  %92 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %93 = icmp ne %struct.buffer_head* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %96 = call i32 @__brelse(%struct.buffer_head* %95)
  br label %97

97:                                               ; preds = %94, %91
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @Ext2WinntError(i32 %98)
  ret i32 %99
}

declare dso_local %struct.buffer_head* @ext3_append(%struct.ext2_icb*, %struct.inode*, i32*, i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i64 @EXT3_DIR_REC_LEN(i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @ext3_set_de_type(%struct.TYPE_2__*, %struct.ext3_dir_entry_2*, i32) #1

declare dso_local i32 @le16_to_cpu(i8*) #1

declare dso_local i32 @set_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @ext3_mark_inode_dirty(%struct.ext2_icb*, %struct.inode*) #1

declare dso_local i32 @__brelse(%struct.buffer_head*) #1

declare dso_local i32 @Ext2WinntError(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
