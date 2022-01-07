; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_mkjournal.c_write_journal_inode.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_mkjournal.c_write_journal_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__*, i32, i64, i64 }
%struct.TYPE_14__ = type { i32, i32* }
%struct.ext2_inode = type { i64, i32, i32, i32, i32, i32, i64, i64, i32 }

@EXT2_FALLOCATE_FORCE_INIT = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i64 0, align 8
@EXT4_EXTENTS_FL = common dso_local global i32 0, align 4
@EXT2_MKJOURNAL_LAZYINIT = common dso_local global i32 0, align 4
@EXT2_FALLOCATE_ZERO_BLOCKS = common dso_local global i32 0, align 4
@LINUX_S_IFREG = common dso_local global i32 0, align 4
@EXT2_N_BLOCKS = common dso_local global i32 0, align 4
@EXT3_JNL_BACKUP_BLOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_13__*, i32, i64, i64, i32)* @write_journal_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @write_journal_inode(%struct.TYPE_13__* %0, i32 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.ext2_inode, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load i32, i32* @EXT2_FALLOCATE_FORCE_INIT, align 4
  store i32 %18, i32* %16, align 4
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %20 = load i64, i64* %9, align 8
  %21 = load i32, i32* %11, align 4
  %22 = call i64 @ext2fs_create_journal_superblock(%struct.TYPE_13__* %19, i64 %20, i32 %21, i8** %12)
  store i64 %22, i64* %13, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i64, i64* %13, align 8
  store i64 %25, i64* %6, align 8
  br label %169

26:                                               ; preds = %5
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %28 = call i64 @ext2fs_read_bitmaps(%struct.TYPE_13__* %27)
  store i64 %28, i64* %13, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %166

31:                                               ; preds = %26
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i64 @ext2fs_read_inode(%struct.TYPE_13__* %32, i32 %33, %struct.ext2_inode* %14)
  store i64 %34, i64* %13, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %166

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %14, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i64, i64* @EEXIST, align 8
  store i64 %42, i64* %13, align 8
  br label %166

43:                                               ; preds = %37
  %44 = load i64, i64* %10, align 8
  %45 = icmp eq i64 %44, -1
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %48 = call i64 @get_midpoint_journal_block(%struct.TYPE_13__* %47)
  store i64 %48, i64* %10, align 8
  br label %49

49:                                               ; preds = %46, %43
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %51, align 8
  %53 = call i64 @ext2fs_has_feature_extents(%struct.TYPE_14__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load i32, i32* @EXT4_EXTENTS_FL, align 4
  %57 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %14, i32 0, i32 8
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %56
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %55, %49
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @EXT2_MKJOURNAL_LAZYINIT, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* @EXT2_FALLOCATE_ZERO_BLOCKS, align 4
  %67 = load i32, i32* %16, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %16, align 4
  br label %69

69:                                               ; preds = %65, %60
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %9, align 8
  %74 = mul i64 %72, %73
  store i64 %74, i64* %15, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %69
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  br label %85

83:                                               ; preds = %69
  %84 = call i64 @time(i32 0)
  br label %85

85:                                               ; preds = %83, %79
  %86 = phi i64 [ %82, %79 ], [ %84, %83 ]
  %87 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %14, i32 0, i32 6
  store i64 %86, i64* %87, align 8
  %88 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %14, i32 0, i32 7
  store i64 %86, i64* %88, align 8
  %89 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %14, i32 0, i32 1
  store i32 1, i32* %89, align 8
  %90 = load i32, i32* @LINUX_S_IFREG, align 4
  %91 = or i32 %90, 384
  %92 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %14, i32 0, i32 2
  store i32 %91, i32* %92, align 4
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %94 = load i64, i64* %15, align 8
  %95 = call i64 @ext2fs_inode_size_set(%struct.TYPE_13__* %93, %struct.ext2_inode* %14, i64 %94)
  store i64 %95, i64* %13, align 8
  %96 = load i64, i64* %13, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %85
  br label %166

99:                                               ; preds = %85
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* %8, align 4
  %103 = load i64, i64* %10, align 8
  %104 = load i64, i64* %9, align 8
  %105 = call i64 @ext2fs_fallocate(%struct.TYPE_13__* %100, i32 %101, i32 %102, %struct.ext2_inode* %14, i64 %103, i32 0, i64 %104)
  store i64 %105, i64* %13, align 8
  %106 = load i64, i64* %13, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %99
  br label %166

109:                                              ; preds = %99
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %111 = load i32, i32* %8, align 4
  %112 = call i64 @ext2fs_write_new_inode(%struct.TYPE_13__* %110, i32 %111, %struct.ext2_inode* %14)
  store i64 %112, i64* %13, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  br label %166

115:                                              ; preds = %109
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %117 = load i32, i32* %8, align 4
  %118 = call i64 @ext2fs_bmap2(%struct.TYPE_13__* %116, i32 %117, %struct.ext2_inode* %14, i32* null, i32 0, i32 0, i32* null, i64* %17)
  store i64 %118, i64* %13, align 8
  %119 = load i64, i64* %13, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  br label %166

122:                                              ; preds = %115
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load i64, i64* %17, align 8
  %127 = load i8*, i8** %12, align 8
  %128 = call i64 @io_channel_write_blk64(i32 %125, i64 %126, i32 1, i8* %127)
  store i64 %128, i64* %13, align 8
  %129 = load i64, i64* %13, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %122
  br label %166

132:                                              ; preds = %122
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %14, i32 0, i32 5
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @EXT2_N_BLOCKS, align 4
  %141 = mul nsw i32 %140, 4
  %142 = call i32 @memcpy(i32* %137, i32 %139, i32 %141)
  %143 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %14, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 15
  store i32 %144, i32* %150, align 4
  %151 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %14, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 16
  store i32 %152, i32* %158, align 4
  %159 = load i32, i32* @EXT3_JNL_BACKUP_BLOCKS, align 4
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 0
  store i32 %159, i32* %163, align 8
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %165 = call i32 @ext2fs_mark_super_dirty(%struct.TYPE_13__* %164)
  br label %166

166:                                              ; preds = %132, %131, %121, %114, %108, %98, %41, %36, %30
  %167 = call i32 @ext2fs_free_mem(i8** %12)
  %168 = load i64, i64* %13, align 8
  store i64 %168, i64* %6, align 8
  br label %169

169:                                              ; preds = %166, %24
  %170 = load i64, i64* %6, align 8
  ret i64 %170
}

declare dso_local i64 @ext2fs_create_journal_superblock(%struct.TYPE_13__*, i64, i32, i8**) #1

declare dso_local i64 @ext2fs_read_bitmaps(%struct.TYPE_13__*) #1

declare dso_local i64 @ext2fs_read_inode(%struct.TYPE_13__*, i32, %struct.ext2_inode*) #1

declare dso_local i64 @get_midpoint_journal_block(%struct.TYPE_13__*) #1

declare dso_local i64 @ext2fs_has_feature_extents(%struct.TYPE_14__*) #1

declare dso_local i64 @time(i32) #1

declare dso_local i64 @ext2fs_inode_size_set(%struct.TYPE_13__*, %struct.ext2_inode*, i64) #1

declare dso_local i64 @ext2fs_fallocate(%struct.TYPE_13__*, i32, i32, %struct.ext2_inode*, i64, i32, i64) #1

declare dso_local i64 @ext2fs_write_new_inode(%struct.TYPE_13__*, i32, %struct.ext2_inode*) #1

declare dso_local i64 @ext2fs_bmap2(%struct.TYPE_13__*, i32, %struct.ext2_inode*, i32*, i32, i32, i32*, i64*) #1

declare dso_local i64 @io_channel_write_blk64(i32, i64, i32, i8*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @ext2fs_mark_super_dirty(%struct.TYPE_13__*) #1

declare dso_local i32 @ext2fs_free_mem(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
