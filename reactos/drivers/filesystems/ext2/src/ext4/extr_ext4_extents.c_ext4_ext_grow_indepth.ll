; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_extents.c_ext4_ext_grow_indepth.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_extents.c_ext4_ext_grow_indepth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_extent_header = type { i64, i8*, i8*, i8* }
%struct.buffer_head = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EXT4_EXT_MAGIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"new root: num %d(%d), lblock %d, ptr %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, %struct.inode*, i32)* @ext4_ext_grow_indepth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_ext_grow_indepth(i8* %0, i32* %1, %struct.inode* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ext4_extent_header*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.inode* %2, %struct.inode** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.inode*, %struct.inode** %8, align 8
  %16 = call i64 @ext_depth(%struct.inode* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = load %struct.inode*, %struct.inode** %8, align 8
  %20 = call %struct.ext4_extent_header* @ext_inode_hdr(%struct.inode* %19)
  %21 = call %struct.TYPE_6__* @EXT_FIRST_INDEX(%struct.ext4_extent_header* %20)
  %22 = call i64 @ext4_idx_pblock(%struct.TYPE_6__* %21)
  store i64 %22, i64* %13, align 8
  br label %23

23:                                               ; preds = %18, %4
  %24 = load %struct.inode*, %struct.inode** %8, align 8
  %25 = call i64 @ext4_inode_to_goal_block(%struct.inode* %24)
  store i64 %25, i64* %13, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load %struct.inode*, %struct.inode** %8, align 8
  %29 = load i64, i64* %13, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i64 @ext4_new_meta_blocks(i8* %26, i32* %27, %struct.inode* %28, i64 %29, i32 %30, i32* null, i32* %14)
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %12, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = load i32, i32* %14, align 4
  store i32 %35, i32* %5, align 4
  br label %152

36:                                               ; preds = %23
  %37 = load %struct.inode*, %struct.inode** %8, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* %12, align 8
  %41 = call %struct.buffer_head* @extents_bwrite(i32 %39, i64 %40)
  store %struct.buffer_head* %41, %struct.buffer_head** %11, align 8
  %42 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %43 = icmp ne %struct.buffer_head* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %36
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %152

47:                                               ; preds = %36
  %48 = load i8*, i8** %6, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %51 = call i32 @ext4_journal_get_create_access(i8* %48, i32* %49, %struct.buffer_head* %50)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %148

55:                                               ; preds = %47
  %56 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %57 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.inode*, %struct.inode** %8, align 8
  %60 = call %struct.TYPE_8__* @EXT4_I(%struct.inode* %59)
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @memmove(i32 %58, i32 %62, i32 4)
  %64 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %65 = call %struct.ext4_extent_header* @ext_block_hdr(%struct.buffer_head* %64)
  store %struct.ext4_extent_header* %65, %struct.ext4_extent_header** %10, align 8
  %66 = load %struct.inode*, %struct.inode** %8, align 8
  %67 = call i64 @ext_depth(%struct.inode* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %55
  %70 = load %struct.inode*, %struct.inode** %8, align 8
  %71 = call i32 @ext4_ext_space_block_idx(%struct.inode* %70, i32 0)
  %72 = call i8* @cpu_to_le16(i32 %71)
  %73 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %10, align 8
  %74 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  br label %81

75:                                               ; preds = %55
  %76 = load %struct.inode*, %struct.inode** %8, align 8
  %77 = call i32 @ext4_ext_space_block(%struct.inode* %76, i32 0)
  %78 = call i8* @cpu_to_le16(i32 %77)
  %79 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %10, align 8
  %80 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %79, i32 0, i32 1
  store i8* %78, i8** %80, align 8
  br label %81

81:                                               ; preds = %75, %69
  %82 = load i32, i32* @EXT4_EXT_MAGIC, align 4
  %83 = call i8* @cpu_to_le16(i32 %82)
  %84 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %10, align 8
  %85 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %84, i32 0, i32 3
  store i8* %83, i8** %85, align 8
  %86 = load %struct.inode*, %struct.inode** %8, align 8
  %87 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %10, align 8
  %88 = call i32 @ext4_extent_block_csum_set(%struct.inode* %86, %struct.ext4_extent_header* %87)
  %89 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %90 = call i32 @set_buffer_uptodate(%struct.buffer_head* %89)
  %91 = load i8*, i8** %6, align 8
  %92 = load i32*, i32** %7, align 8
  %93 = load %struct.inode*, %struct.inode** %8, align 8
  %94 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %95 = call i32 @ext4_handle_dirty_metadata(i8* %91, i32* %92, %struct.inode* %93, %struct.buffer_head* %94)
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %14, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %81
  br label %148

99:                                               ; preds = %81
  %100 = load %struct.inode*, %struct.inode** %8, align 8
  %101 = call %struct.ext4_extent_header* @ext_inode_hdr(%struct.inode* %100)
  store %struct.ext4_extent_header* %101, %struct.ext4_extent_header** %10, align 8
  %102 = call i8* @cpu_to_le16(i32 1)
  %103 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %10, align 8
  %104 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %103, i32 0, i32 2
  store i8* %102, i8** %104, align 8
  %105 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %10, align 8
  %106 = call %struct.TYPE_6__* @EXT_FIRST_INDEX(%struct.ext4_extent_header* %105)
  %107 = load i64, i64* %12, align 8
  %108 = call i32 @ext4_idx_store_pblock(%struct.TYPE_6__* %106, i64 %107)
  %109 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %10, align 8
  %110 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %126

113:                                              ; preds = %99
  %114 = load %struct.inode*, %struct.inode** %8, align 8
  %115 = call i32 @ext4_ext_space_root_idx(%struct.inode* %114, i32 0)
  %116 = call i8* @cpu_to_le16(i32 %115)
  %117 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %10, align 8
  %118 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %117, i32 0, i32 1
  store i8* %116, i8** %118, align 8
  %119 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %10, align 8
  %120 = call %struct.TYPE_7__* @EXT_FIRST_EXTENT(%struct.ext4_extent_header* %119)
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %10, align 8
  %124 = call %struct.TYPE_6__* @EXT_FIRST_INDEX(%struct.ext4_extent_header* %123)
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  store i32 %122, i32* %125, align 4
  br label %126

126:                                              ; preds = %113, %99
  %127 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %10, align 8
  %128 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %127, i32 0, i32 2
  %129 = load i8*, i8** %128, align 8
  %130 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %10, align 8
  %131 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %130, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  %133 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %10, align 8
  %134 = call %struct.TYPE_6__* @EXT_FIRST_INDEX(%struct.ext4_extent_header* %133)
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %10, align 8
  %138 = call %struct.TYPE_6__* @EXT_FIRST_INDEX(%struct.ext4_extent_header* %137)
  %139 = call i64 @ext4_idx_pblock(%struct.TYPE_6__* %138)
  %140 = call i32 @ext_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %129, i8* %132, i32 %136, i64 %139)
  %141 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %10, align 8
  %142 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %141, i32 0, i32 0
  %143 = call i32 @le16_add_cpu(i64* %142, i32 1)
  %144 = load i8*, i8** %6, align 8
  %145 = load i32*, i32** %7, align 8
  %146 = load %struct.inode*, %struct.inode** %8, align 8
  %147 = call i32 @ext4_mark_inode_dirty(i8* %144, i32* %145, %struct.inode* %146)
  br label %148

148:                                              ; preds = %126, %98, %54
  %149 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %150 = call i32 @extents_brelse(%struct.buffer_head* %149)
  %151 = load i32, i32* %14, align 4
  store i32 %151, i32* %5, align 4
  br label %152

152:                                              ; preds = %148, %44, %34
  %153 = load i32, i32* %5, align 4
  ret i32 %153
}

declare dso_local i64 @ext_depth(%struct.inode*) #1

declare dso_local i64 @ext4_idx_pblock(%struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_6__* @EXT_FIRST_INDEX(%struct.ext4_extent_header*) #1

declare dso_local %struct.ext4_extent_header* @ext_inode_hdr(%struct.inode*) #1

declare dso_local i64 @ext4_inode_to_goal_block(%struct.inode*) #1

declare dso_local i64 @ext4_new_meta_blocks(i8*, i32*, %struct.inode*, i64, i32, i32*, i32*) #1

declare dso_local %struct.buffer_head* @extents_bwrite(i32, i64) #1

declare dso_local i32 @ext4_journal_get_create_access(i8*, i32*, %struct.buffer_head*) #1

declare dso_local i32 @memmove(i32, i32, i32) #1

declare dso_local %struct.TYPE_8__* @EXT4_I(%struct.inode*) #1

declare dso_local %struct.ext4_extent_header* @ext_block_hdr(%struct.buffer_head*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @ext4_ext_space_block_idx(%struct.inode*, i32) #1

declare dso_local i32 @ext4_ext_space_block(%struct.inode*, i32) #1

declare dso_local i32 @ext4_extent_block_csum_set(%struct.inode*, %struct.ext4_extent_header*) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @ext4_handle_dirty_metadata(i8*, i32*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @ext4_idx_store_pblock(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @ext4_ext_space_root_idx(%struct.inode*, i32) #1

declare dso_local %struct.TYPE_7__* @EXT_FIRST_EXTENT(%struct.ext4_extent_header*) #1

declare dso_local i32 @ext_debug(i8*, i8*, i8*, i32, i64) #1

declare dso_local i32 @le16_add_cpu(i64*, i32) #1

declare dso_local i32 @ext4_mark_inode_dirty(i8*, i32*, %struct.inode*) #1

declare dso_local i32 @extents_brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
