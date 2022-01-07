; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_ext_attr.c_ext2fs_free_ext_attr.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_ext_attr.c_ext2fs_free_ext_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.ext2_inode_large = type { i32 }
%struct.ext2_ext_attr_header = type { i64, i64 }
%struct.ext2_inode = type { i32 }

@EXT2_ET_BAD_EA_BLOCK_NUM = common dso_local global i64 0, align 8
@EXT2_EXT_ATTR_MAGIC = common dso_local global i64 0, align 8
@EXT2_ET_BAD_EA_HEADER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext2fs_free_ext_attr(%struct.TYPE_13__* %0, i32 %1, %struct.ext2_inode_large* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ext2_inode_large*, align 8
  %8 = alloca %struct.ext2_ext_attr_header*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ext2_inode_large, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ext2_inode_large* %2, %struct.ext2_inode_large** %7, align 8
  store i8* null, i8** %9, align 8
  %13 = load %struct.ext2_inode_large*, %struct.ext2_inode_large** %7, align 8
  %14 = icmp eq %struct.ext2_inode_large* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %3
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = bitcast %struct.ext2_inode_large* %12 to %struct.ext2_inode*
  %19 = call i64 @ext2fs_read_inode_full(%struct.TYPE_13__* %16, i32 %17, %struct.ext2_inode* %18, i32 4)
  store i64 %19, i64* %11, align 8
  %20 = load i64, i64* %11, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i64, i64* %11, align 8
  store i64 %23, i64* %4, align 8
  br label %128

24:                                               ; preds = %15
  store %struct.ext2_inode_large* %12, %struct.ext2_inode_large** %7, align 8
  br label %25

25:                                               ; preds = %24, %3
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %27 = load %struct.ext2_inode_large*, %struct.ext2_inode_large** %7, align 8
  %28 = bitcast %struct.ext2_inode_large* %27 to %struct.ext2_inode*
  %29 = call i64 @ext2fs_file_acl_block(%struct.TYPE_13__* %26, %struct.ext2_inode* %28)
  store i64 %29, i64* %10, align 8
  %30 = load i64, i64* %10, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i64 0, i64* %4, align 8
  br label %128

33:                                               ; preds = %25
  %34 = load i64, i64* %10, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %34, %39
  br i1 %40, label %48, label %41

41:                                               ; preds = %33
  %42 = load i64, i64* %10, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  %46 = call i64 @ext2fs_blocks_count(%struct.TYPE_12__* %45)
  %47 = icmp sge i64 %42, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %41, %33
  %49 = load i64, i64* @EXT2_ET_BAD_EA_BLOCK_NUM, align 8
  store i64 %49, i64* %11, align 8
  br label %126

50:                                               ; preds = %41
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @ext2fs_get_mem(i32 %53, i8** %9)
  store i64 %54, i64* %11, align 8
  %55 = load i64, i64* %11, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %126

58:                                               ; preds = %50
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i64 @ext2fs_read_ext_attr3(%struct.TYPE_13__* %59, i64 %60, i8* %61, i32 %62)
  store i64 %63, i64* %11, align 8
  %64 = load i64, i64* %11, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  br label %124

67:                                               ; preds = %58
  %68 = load i8*, i8** %9, align 8
  %69 = bitcast i8* %68 to %struct.ext2_ext_attr_header*
  store %struct.ext2_ext_attr_header* %69, %struct.ext2_ext_attr_header** %8, align 8
  %70 = load %struct.ext2_ext_attr_header*, %struct.ext2_ext_attr_header** %8, align 8
  %71 = getelementptr inbounds %struct.ext2_ext_attr_header, %struct.ext2_ext_attr_header* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @EXT2_EXT_ATTR_MAGIC, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = load i64, i64* @EXT2_ET_BAD_EA_HEADER, align 8
  store i64 %76, i64* %11, align 8
  br label %124

77:                                               ; preds = %67
  %78 = load %struct.ext2_ext_attr_header*, %struct.ext2_ext_attr_header** %8, align 8
  %79 = getelementptr inbounds %struct.ext2_ext_attr_header, %struct.ext2_ext_attr_header* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, -1
  store i64 %81, i64* %79, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %83 = load i64, i64* %10, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i64 @ext2fs_write_ext_attr3(%struct.TYPE_13__* %82, i64 %83, i8* %84, i32 %85)
  store i64 %86, i64* %11, align 8
  %87 = load i64, i64* %11, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %77
  br label %124

90:                                               ; preds = %77
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %92 = load %struct.ext2_inode_large*, %struct.ext2_inode_large** %7, align 8
  %93 = bitcast %struct.ext2_inode_large* %92 to %struct.ext2_inode*
  %94 = call i32 @ext2fs_file_acl_block_set(%struct.TYPE_13__* %91, %struct.ext2_inode* %93, i32 0)
  %95 = load %struct.ext2_ext_attr_header*, %struct.ext2_ext_attr_header** %8, align 8
  %96 = getelementptr inbounds %struct.ext2_ext_attr_header, %struct.ext2_ext_attr_header* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %90
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %101 = load i64, i64* %10, align 8
  %102 = call i32 @ext2fs_block_alloc_stats2(%struct.TYPE_13__* %100, i64 %101, i32 -1)
  br label %103

103:                                              ; preds = %99, %90
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %105 = load %struct.ext2_inode_large*, %struct.ext2_inode_large** %7, align 8
  %106 = bitcast %struct.ext2_inode_large* %105 to %struct.ext2_inode*
  %107 = call i64 @ext2fs_iblk_sub_blocks(%struct.TYPE_13__* %104, %struct.ext2_inode* %106, i32 1)
  store i64 %107, i64* %11, align 8
  %108 = load i64, i64* %11, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  br label %124

111:                                              ; preds = %103
  %112 = load %struct.ext2_inode_large*, %struct.ext2_inode_large** %7, align 8
  %113 = icmp eq %struct.ext2_inode_large* %112, %12
  br i1 %113, label %114, label %123

114:                                              ; preds = %111
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %116 = load i32, i32* %6, align 4
  %117 = bitcast %struct.ext2_inode_large* %12 to %struct.ext2_inode*
  %118 = call i64 @ext2fs_write_inode_full(%struct.TYPE_13__* %115, i32 %116, %struct.ext2_inode* %117, i32 4)
  store i64 %118, i64* %11, align 8
  %119 = load i64, i64* %11, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %114
  br label %124

122:                                              ; preds = %114
  br label %123

123:                                              ; preds = %122, %111
  br label %124

124:                                              ; preds = %123, %121, %110, %89, %75, %66
  %125 = call i32 @ext2fs_free_mem(i8** %9)
  br label %126

126:                                              ; preds = %124, %57, %48
  %127 = load i64, i64* %11, align 8
  store i64 %127, i64* %4, align 8
  br label %128

128:                                              ; preds = %126, %32, %22
  %129 = load i64, i64* %4, align 8
  ret i64 %129
}

declare dso_local i64 @ext2fs_read_inode_full(%struct.TYPE_13__*, i32, %struct.ext2_inode*, i32) #1

declare dso_local i64 @ext2fs_file_acl_block(%struct.TYPE_13__*, %struct.ext2_inode*) #1

declare dso_local i64 @ext2fs_blocks_count(%struct.TYPE_12__*) #1

declare dso_local i64 @ext2fs_get_mem(i32, i8**) #1

declare dso_local i64 @ext2fs_read_ext_attr3(%struct.TYPE_13__*, i64, i8*, i32) #1

declare dso_local i64 @ext2fs_write_ext_attr3(%struct.TYPE_13__*, i64, i8*, i32) #1

declare dso_local i32 @ext2fs_file_acl_block_set(%struct.TYPE_13__*, %struct.ext2_inode*, i32) #1

declare dso_local i32 @ext2fs_block_alloc_stats2(%struct.TYPE_13__*, i64, i32) #1

declare dso_local i64 @ext2fs_iblk_sub_blocks(%struct.TYPE_13__*, %struct.ext2_inode*, i32) #1

declare dso_local i64 @ext2fs_write_inode_full(%struct.TYPE_13__*, i32, %struct.ext2_inode*, i32) #1

declare dso_local i32 @ext2fs_free_mem(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
