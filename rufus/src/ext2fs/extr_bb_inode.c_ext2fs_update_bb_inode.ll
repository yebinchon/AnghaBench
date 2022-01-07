; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_bb_inode.c_ext2fs_update_bb_inode.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_bb_inode.c_ext2fs_update_bb_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i8*, i32 }
%struct.set_badblock_record = type { i32, i32, %struct.set_badblock_record*, %struct.set_badblock_record*, i64, i32 }
%struct.ext2_inode = type { i8*, i8*, i8* }

@EXT2_ET_MAGIC_EXT2FS_FILSYS = common dso_local global i32 0, align 4
@EXT2_ET_NO_BLOCK_BITMAP = common dso_local global i64 0, align 8
@EXT2_BAD_INO = common dso_local global i32 0, align 4
@BLOCK_FLAG_DEPTH_TRAVERSE = common dso_local global i32 0, align 4
@clear_bad_block_proc = common dso_local global i32 0, align 4
@BLOCK_FLAG_APPEND = common dso_local global i32 0, align 4
@set_bad_block_proc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext2fs_update_bb_inode(%struct.TYPE_9__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.set_badblock_record, align 8
  %8 = alloca %struct.ext2_inode, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = load i32, i32* @EXT2_ET_MAGIC_EXT2FS_FILSYS, align 4
  %11 = call i32 @EXT2_CHECK_MAGIC(%struct.TYPE_9__* %9, i32 %10)
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i64, i64* @EXT2_ET_NO_BLOCK_BITMAP, align 8
  store i64 %17, i64* %3, align 8
  br label %168

18:                                               ; preds = %2
  %19 = call i32 @memset(%struct.set_badblock_record* %7, i32 0, i32 40)
  %20 = getelementptr inbounds %struct.set_badblock_record, %struct.set_badblock_record* %7, i32 0, i32 0
  store i32 10, i32* %20, align 8
  %21 = getelementptr inbounds %struct.set_badblock_record, %struct.set_badblock_record* %7, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds %struct.set_badblock_record, %struct.set_badblock_record* %7, i32 0, i32 3
  %24 = call i64 @ext2fs_get_array(i32 %22, i32 4, %struct.set_badblock_record** %23)
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i64, i64* %6, align 8
  store i64 %28, i64* %3, align 8
  br label %168

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.set_badblock_record, %struct.set_badblock_record* %7, i32 0, i32 3
  %31 = load %struct.set_badblock_record*, %struct.set_badblock_record** %30, align 8
  %32 = getelementptr inbounds %struct.set_badblock_record, %struct.set_badblock_record* %7, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 4
  %36 = trunc i64 %35 to i32
  %37 = call i32 @memset(%struct.set_badblock_record* %31, i32 0, i32 %36)
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds %struct.set_badblock_record, %struct.set_badblock_record* %7, i32 0, i32 2
  %42 = call i64 @ext2fs_get_mem(i32 %40, %struct.set_badblock_record** %41)
  store i64 %42, i64* %6, align 8
  %43 = load i64, i64* %6, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %29
  br label %162

46:                                               ; preds = %29
  %47 = getelementptr inbounds %struct.set_badblock_record, %struct.set_badblock_record* %7, i32 0, i32 2
  %48 = load %struct.set_badblock_record*, %struct.set_badblock_record** %47, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @memset(%struct.set_badblock_record* %48, i32 0, i32 %51)
  %53 = getelementptr inbounds %struct.set_badblock_record, %struct.set_badblock_record* %7, i32 0, i32 4
  store i64 0, i64* %53, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %55 = load i32, i32* @EXT2_BAD_INO, align 4
  %56 = load i32, i32* @BLOCK_FLAG_DEPTH_TRAVERSE, align 4
  %57 = load i32, i32* @clear_bad_block_proc, align 4
  %58 = call i64 @ext2fs_block_iterate2(%struct.TYPE_9__* %54, i32 %55, i32 %56, i32 0, i32 %57, %struct.set_badblock_record* %7)
  store i64 %58, i64* %6, align 8
  %59 = load i64, i64* %6, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %46
  br label %162

62:                                               ; preds = %46
  %63 = getelementptr inbounds %struct.set_badblock_record, %struct.set_badblock_record* %7, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.set_badblock_record, %struct.set_badblock_record* %7, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %6, align 8
  br label %162

69:                                               ; preds = %62
  %70 = load i64, i64* %5, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %99

72:                                               ; preds = %69
  %73 = load i64, i64* %5, align 8
  %74 = getelementptr inbounds %struct.set_badblock_record, %struct.set_badblock_record* %7, i32 0, i32 5
  %75 = call i64 @ext2fs_badblocks_list_iterate_begin(i64 %73, i32* %74)
  store i64 %75, i64* %6, align 8
  %76 = load i64, i64* %6, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %162

79:                                               ; preds = %72
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %81 = load i32, i32* @EXT2_BAD_INO, align 4
  %82 = load i32, i32* @BLOCK_FLAG_APPEND, align 4
  %83 = load i32, i32* @set_bad_block_proc, align 4
  %84 = call i64 @ext2fs_block_iterate2(%struct.TYPE_9__* %80, i32 %81, i32 %82, i32 0, i32 %83, %struct.set_badblock_record* %7)
  store i64 %84, i64* %6, align 8
  %85 = getelementptr inbounds %struct.set_badblock_record, %struct.set_badblock_record* %7, i32 0, i32 5
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @ext2fs_badblocks_list_iterate_end(i32 %86)
  %88 = load i64, i64* %6, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %79
  br label %162

91:                                               ; preds = %79
  %92 = getelementptr inbounds %struct.set_badblock_record, %struct.set_badblock_record* %7, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.set_badblock_record, %struct.set_badblock_record* %7, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %6, align 8
  br label %162

98:                                               ; preds = %91
  br label %99

99:                                               ; preds = %98, %69
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %101 = load i32, i32* @EXT2_BAD_INO, align 4
  %102 = call i64 @ext2fs_read_inode(%struct.TYPE_9__* %100, i32 %101, %struct.ext2_inode* %8)
  store i64 %102, i64* %6, align 8
  %103 = load i64, i64* %6, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  br label %162

106:                                              ; preds = %99
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  br label %117

115:                                              ; preds = %106
  %116 = call i8* @time(i32 0)
  br label %117

117:                                              ; preds = %115, %111
  %118 = phi i8* [ %114, %111 ], [ %116, %115 ]
  %119 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %8, i32 0, i32 1
  store i8* %118, i8** %119, align 8
  %120 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %8, i32 0, i32 2
  store i8* %118, i8** %120, align 8
  %121 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %8, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %138, label %124

124:                                              ; preds = %117
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 1
  %127 = load i8*, i8** %126, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  br label %135

133:                                              ; preds = %124
  %134 = call i8* @time(i32 0)
  br label %135

135:                                              ; preds = %133, %129
  %136 = phi i8* [ %132, %129 ], [ %134, %133 ]
  %137 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %8, i32 0, i32 0
  store i8* %136, i8** %137, align 8
  br label %138

138:                                              ; preds = %135, %117
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %140 = getelementptr inbounds %struct.set_badblock_record, %struct.set_badblock_record* %7, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @ext2fs_iblk_set(%struct.TYPE_9__* %139, %struct.ext2_inode* %8, i32 %141)
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %144 = getelementptr inbounds %struct.set_badblock_record, %struct.set_badblock_record* %7, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = mul nsw i32 %145, %148
  %150 = call i64 @ext2fs_inode_size_set(%struct.TYPE_9__* %143, %struct.ext2_inode* %8, i32 %149)
  store i64 %150, i64* %6, align 8
  %151 = load i64, i64* %6, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %138
  br label %162

154:                                              ; preds = %138
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %156 = load i32, i32* @EXT2_BAD_INO, align 4
  %157 = call i64 @ext2fs_write_inode(%struct.TYPE_9__* %155, i32 %156, %struct.ext2_inode* %8)
  store i64 %157, i64* %6, align 8
  %158 = load i64, i64* %6, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %154
  br label %162

161:                                              ; preds = %154
  br label %162

162:                                              ; preds = %161, %160, %153, %105, %95, %90, %78, %66, %61, %45
  %163 = getelementptr inbounds %struct.set_badblock_record, %struct.set_badblock_record* %7, i32 0, i32 3
  %164 = call i32 @ext2fs_free_mem(%struct.set_badblock_record** %163)
  %165 = getelementptr inbounds %struct.set_badblock_record, %struct.set_badblock_record* %7, i32 0, i32 2
  %166 = call i32 @ext2fs_free_mem(%struct.set_badblock_record** %165)
  %167 = load i64, i64* %6, align 8
  store i64 %167, i64* %3, align 8
  br label %168

168:                                              ; preds = %162, %27, %16
  %169 = load i64, i64* %3, align 8
  ret i64 %169
}

declare dso_local i32 @EXT2_CHECK_MAGIC(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @memset(%struct.set_badblock_record*, i32, i32) #1

declare dso_local i64 @ext2fs_get_array(i32, i32, %struct.set_badblock_record**) #1

declare dso_local i64 @ext2fs_get_mem(i32, %struct.set_badblock_record**) #1

declare dso_local i64 @ext2fs_block_iterate2(%struct.TYPE_9__*, i32, i32, i32, i32, %struct.set_badblock_record*) #1

declare dso_local i64 @ext2fs_badblocks_list_iterate_begin(i64, i32*) #1

declare dso_local i32 @ext2fs_badblocks_list_iterate_end(i32) #1

declare dso_local i64 @ext2fs_read_inode(%struct.TYPE_9__*, i32, %struct.ext2_inode*) #1

declare dso_local i8* @time(i32) #1

declare dso_local i32 @ext2fs_iblk_set(%struct.TYPE_9__*, %struct.ext2_inode*, i32) #1

declare dso_local i64 @ext2fs_inode_size_set(%struct.TYPE_9__*, %struct.ext2_inode*, i32) #1

declare dso_local i64 @ext2fs_write_inode(%struct.TYPE_9__*, i32, %struct.ext2_inode*) #1

declare dso_local i32 @ext2fs_free_mem(%struct.set_badblock_record**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
