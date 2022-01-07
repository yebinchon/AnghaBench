; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_ext_attr.c_prep_ea_block_for_write.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_ext_attr.c_prep_ea_block_for_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.ext2_inode_large = type { i32 }
%struct.ext2_ext_attr_header = type { i64, i32 }
%struct.ext2_inode = type { i32 }

@EXT2_ET_BAD_EA_BLOCK_NUM = common dso_local global i64 0, align 8
@EXT2_EXT_ATTR_MAGIC = common dso_local global i64 0, align 8
@EXT2_ET_BAD_EA_HEADER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_11__*, i32, %struct.ext2_inode_large*)* @prep_ea_block_for_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @prep_ea_block_for_write(%struct.TYPE_11__* %0, i32 %1, %struct.ext2_inode_large* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ext2_inode_large*, align 8
  %7 = alloca %struct.ext2_ext_attr_header*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ext2_inode_large* %2, %struct.ext2_inode_large** %6, align 8
  store i8* null, i8** %8, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %13 = load %struct.ext2_inode_large*, %struct.ext2_inode_large** %6, align 8
  %14 = bitcast %struct.ext2_inode_large* %13 to %struct.ext2_inode*
  %15 = call i64 @ext2fs_file_acl_block(%struct.TYPE_11__* %12, %struct.ext2_inode* %14)
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %82

18:                                               ; preds = %3
  %19 = load i64, i64* %9, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %19, %24
  br i1 %25, label %33, label %26

26:                                               ; preds = %18
  %27 = load i64, i64* %9, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = call i64 @ext2fs_blocks_count(%struct.TYPE_12__* %30)
  %32 = icmp sge i64 %27, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %26, %18
  %34 = load i64, i64* @EXT2_ET_BAD_EA_BLOCK_NUM, align 8
  store i64 %34, i64* %11, align 8
  br label %115

35:                                               ; preds = %26
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @ext2fs_get_mem(i32 %38, i8** %8)
  store i64 %39, i64* %11, align 8
  %40 = load i64, i64* %11, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %115

43:                                               ; preds = %35
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i64 @ext2fs_read_ext_attr3(%struct.TYPE_11__* %44, i64 %45, i8* %46, i32 %47)
  store i64 %48, i64* %11, align 8
  %49 = load i64, i64* %11, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %109

52:                                               ; preds = %43
  %53 = load i8*, i8** %8, align 8
  %54 = bitcast i8* %53 to %struct.ext2_ext_attr_header*
  store %struct.ext2_ext_attr_header* %54, %struct.ext2_ext_attr_header** %7, align 8
  %55 = load %struct.ext2_ext_attr_header*, %struct.ext2_ext_attr_header** %7, align 8
  %56 = getelementptr inbounds %struct.ext2_ext_attr_header, %struct.ext2_ext_attr_header* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @EXT2_EXT_ATTR_MAGIC, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i64, i64* @EXT2_ET_BAD_EA_HEADER, align 8
  store i64 %61, i64* %11, align 8
  br label %109

62:                                               ; preds = %52
  %63 = load %struct.ext2_ext_attr_header*, %struct.ext2_ext_attr_header** %7, align 8
  %64 = getelementptr inbounds %struct.ext2_ext_attr_header, %struct.ext2_ext_attr_header* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %109

68:                                               ; preds = %62
  %69 = load %struct.ext2_ext_attr_header*, %struct.ext2_ext_attr_header** %7, align 8
  %70 = getelementptr inbounds %struct.ext2_ext_attr_header, %struct.ext2_ext_attr_header* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %70, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %74 = load i64, i64* %9, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = load i32, i32* %5, align 4
  %77 = call i64 @ext2fs_write_ext_attr3(%struct.TYPE_11__* %73, i64 %74, i8* %75, i32 %76)
  store i64 %77, i64* %11, align 8
  %78 = load i64, i64* %11, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %68
  br label %109

81:                                               ; preds = %68
  br label %91

82:                                               ; preds = %3
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %84 = load %struct.ext2_inode_large*, %struct.ext2_inode_large** %6, align 8
  %85 = bitcast %struct.ext2_inode_large* %84 to %struct.ext2_inode*
  %86 = call i64 @ext2fs_iblk_add_blocks(%struct.TYPE_11__* %83, %struct.ext2_inode* %85, i32 1)
  store i64 %86, i64* %11, align 8
  %87 = load i64, i64* %11, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %115

90:                                               ; preds = %82
  br label %91

91:                                               ; preds = %90, %81
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %93 = load i32, i32* %5, align 4
  %94 = load %struct.ext2_inode_large*, %struct.ext2_inode_large** %6, align 8
  %95 = bitcast %struct.ext2_inode_large* %94 to %struct.ext2_inode*
  %96 = call i64 @ext2fs_find_inode_goal(%struct.TYPE_11__* %92, i32 %93, %struct.ext2_inode* %95, i32 0)
  store i64 %96, i64* %10, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %98 = load i64, i64* %10, align 8
  %99 = call i64 @ext2fs_alloc_block2(%struct.TYPE_11__* %97, i64 %98, i32* null, i64* %9)
  store i64 %99, i64* %11, align 8
  %100 = load i64, i64* %11, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %91
  br label %109

103:                                              ; preds = %91
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %105 = load %struct.ext2_inode_large*, %struct.ext2_inode_large** %6, align 8
  %106 = bitcast %struct.ext2_inode_large* %105 to %struct.ext2_inode*
  %107 = load i64, i64* %9, align 8
  %108 = call i32 @ext2fs_file_acl_block_set(%struct.TYPE_11__* %104, %struct.ext2_inode* %106, i64 %107)
  br label %109

109:                                              ; preds = %103, %102, %80, %67, %60, %51
  %110 = load i8*, i8** %8, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = call i32 @ext2fs_free_mem(i8** %8)
  br label %114

114:                                              ; preds = %112, %109
  br label %115

115:                                              ; preds = %114, %89, %42, %33
  %116 = load i64, i64* %11, align 8
  ret i64 %116
}

declare dso_local i64 @ext2fs_file_acl_block(%struct.TYPE_11__*, %struct.ext2_inode*) #1

declare dso_local i64 @ext2fs_blocks_count(%struct.TYPE_12__*) #1

declare dso_local i64 @ext2fs_get_mem(i32, i8**) #1

declare dso_local i64 @ext2fs_read_ext_attr3(%struct.TYPE_11__*, i64, i8*, i32) #1

declare dso_local i64 @ext2fs_write_ext_attr3(%struct.TYPE_11__*, i64, i8*, i32) #1

declare dso_local i64 @ext2fs_iblk_add_blocks(%struct.TYPE_11__*, %struct.ext2_inode*, i32) #1

declare dso_local i64 @ext2fs_find_inode_goal(%struct.TYPE_11__*, i32, %struct.ext2_inode*, i32) #1

declare dso_local i64 @ext2fs_alloc_block2(%struct.TYPE_11__*, i64, i32*, i64*) #1

declare dso_local i32 @ext2fs_file_acl_block_set(%struct.TYPE_11__*, %struct.ext2_inode*, i64) #1

declare dso_local i32 @ext2fs_free_mem(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
