; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_csum.c_ext2fs_set_gdt_csum.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_csum.c_ext2fs_set_gdt_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32, %struct.ext2_super_block* }
%struct.ext2_super_block = type { i64, i64 }

@EXT2_ET_NO_INODE_BITMAP = common dso_local global i32 0, align 4
@EXT2_BG_BLOCK_UNINIT = common dso_local global i32 0, align 4
@EXT2_BG_INODE_UNINIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2fs_set_gdt_csum(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.ext2_super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %15 = load %struct.ext2_super_block*, %struct.ext2_super_block** %14, align 8
  store %struct.ext2_super_block* %15, %struct.ext2_super_block** %4, align 8
  store i32 0, i32* %5, align 4
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @EXT2_ET_NO_INODE_BITMAP, align 4
  store i32 %21, i32* %2, align 4
  br label %144

22:                                               ; preds = %1
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %24 = call i32 @ext2fs_has_group_desc_csum(%struct.TYPE_14__* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %144

27:                                               ; preds = %22
  store i64 0, i64* %6, align 8
  br label %28

28:                                               ; preds = %134, %27
  %29 = load i64, i64* %6, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %29, %32
  br i1 %33, label %34, label %137

34:                                               ; preds = %28
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i64 @ext2fs_bg_checksum(%struct.TYPE_14__* %35, i64 %36)
  store i64 %37, i64* %7, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i64 @ext2fs_bg_itable_unused(%struct.TYPE_14__* %38, i64 %39)
  store i64 %40, i64* %8, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %42 = load i64, i64* %6, align 8
  %43 = call i64 @ext2fs_bg_flags(%struct.TYPE_14__* %41, i64 %42)
  store i64 %43, i64* %9, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %45 = load i64, i64* %6, align 8
  %46 = call i64 @ext2fs_bg_free_inodes_count(%struct.TYPE_14__* %44, i64 %45)
  store i64 %46, i64* %10, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %48 = load i64, i64* %6, align 8
  %49 = call i64 @ext2fs_bg_free_blocks_count(%struct.TYPE_14__* %47, i64 %48)
  store i64 %49, i64* %11, align 8
  %50 = load i64, i64* %11, align 8
  %51 = load %struct.ext2_super_block*, %struct.ext2_super_block** %4, align 8
  %52 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %50, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %34
  %56 = load i64, i64* %6, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %59, 1
  %61 = icmp ne i64 %56, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %55
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %64 = load i64, i64* %6, align 8
  %65 = load i32, i32* @EXT2_BG_BLOCK_UNINIT, align 4
  %66 = call i32 @ext2fs_bg_flags_set(%struct.TYPE_14__* %63, i64 %64, i32 %65)
  br label %67

67:                                               ; preds = %62, %55, %34
  %68 = load i64, i64* %10, align 8
  %69 = load %struct.ext2_super_block*, %struct.ext2_super_block** %4, align 8
  %70 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %68, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %67
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %75 = load i64, i64* %6, align 8
  %76 = load i32, i32* @EXT2_BG_INODE_UNINIT, align 4
  %77 = call i32 @ext2fs_bg_flags_set(%struct.TYPE_14__* %74, i64 %75, i32 %76)
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %79 = load i64, i64* %6, align 8
  %80 = load %struct.ext2_super_block*, %struct.ext2_super_block** %4, align 8
  %81 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = call i32 @ext2fs_bg_itable_unused_set(%struct.TYPE_14__* %78, i64 %79, i32 %83)
  br label %109

85:                                               ; preds = %67
  %86 = load %struct.ext2_super_block*, %struct.ext2_super_block** %4, align 8
  %87 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.ext2_super_block*, %struct.ext2_super_block** %4, align 8
  %93 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = trunc i64 %94 to i32
  %96 = load i64, i64* %6, align 8
  %97 = call i32 @find_last_inode_ingrp(i32 %91, i32 %95, i64 %96)
  %98 = sext i32 %97 to i64
  %99 = sub nsw i64 %88, %98
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %12, align 4
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %102 = load i64, i64* %6, align 8
  %103 = load i32, i32* @EXT2_BG_INODE_UNINIT, align 4
  %104 = call i32 @ext2fs_bg_flags_clear(%struct.TYPE_14__* %101, i64 %102, i32 %103)
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %106 = load i64, i64* %6, align 8
  %107 = load i32, i32* %12, align 4
  %108 = call i32 @ext2fs_bg_itable_unused_set(%struct.TYPE_14__* %105, i64 %106, i32 %107)
  br label %109

109:                                              ; preds = %85, %73
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %111 = load i64, i64* %6, align 8
  %112 = call i32 @ext2fs_group_desc_csum_set(%struct.TYPE_14__* %110, i64 %111)
  %113 = load i64, i64* %9, align 8
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %115 = load i64, i64* %6, align 8
  %116 = call i64 @ext2fs_bg_flags(%struct.TYPE_14__* %114, i64 %115)
  %117 = icmp ne i64 %113, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %109
  store i32 1, i32* %5, align 4
  br label %119

119:                                              ; preds = %118, %109
  %120 = load i64, i64* %8, align 8
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %122 = load i64, i64* %6, align 8
  %123 = call i64 @ext2fs_bg_itable_unused(%struct.TYPE_14__* %121, i64 %122)
  %124 = icmp ne i64 %120, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %119
  store i32 1, i32* %5, align 4
  br label %126

126:                                              ; preds = %125, %119
  %127 = load i64, i64* %7, align 8
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %129 = load i64, i64* %6, align 8
  %130 = call i64 @ext2fs_bg_checksum(%struct.TYPE_14__* %128, i64 %129)
  %131 = icmp ne i64 %127, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %126
  store i32 1, i32* %5, align 4
  br label %133

133:                                              ; preds = %132, %126
  br label %134

134:                                              ; preds = %133
  %135 = load i64, i64* %6, align 8
  %136 = add nsw i64 %135, 1
  store i64 %136, i64* %6, align 8
  br label %28

137:                                              ; preds = %28
  %138 = load i32, i32* %5, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %142 = call i32 @ext2fs_mark_super_dirty(%struct.TYPE_14__* %141)
  br label %143

143:                                              ; preds = %140, %137
  store i32 0, i32* %2, align 4
  br label %144

144:                                              ; preds = %143, %26, %20
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local i32 @ext2fs_has_group_desc_csum(%struct.TYPE_14__*) #1

declare dso_local i64 @ext2fs_bg_checksum(%struct.TYPE_14__*, i64) #1

declare dso_local i64 @ext2fs_bg_itable_unused(%struct.TYPE_14__*, i64) #1

declare dso_local i64 @ext2fs_bg_flags(%struct.TYPE_14__*, i64) #1

declare dso_local i64 @ext2fs_bg_free_inodes_count(%struct.TYPE_14__*, i64) #1

declare dso_local i64 @ext2fs_bg_free_blocks_count(%struct.TYPE_14__*, i64) #1

declare dso_local i32 @ext2fs_bg_flags_set(%struct.TYPE_14__*, i64, i32) #1

declare dso_local i32 @ext2fs_bg_itable_unused_set(%struct.TYPE_14__*, i64, i32) #1

declare dso_local i32 @find_last_inode_ingrp(i32, i32, i64) #1

declare dso_local i32 @ext2fs_bg_flags_clear(%struct.TYPE_14__*, i64, i32) #1

declare dso_local i32 @ext2fs_group_desc_csum_set(%struct.TYPE_14__*, i64) #1

declare dso_local i32 @ext2fs_mark_super_dirty(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
