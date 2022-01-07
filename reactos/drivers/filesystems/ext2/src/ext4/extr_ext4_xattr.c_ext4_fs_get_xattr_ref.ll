; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_xattr.c_ext4_fs_get_xattr_ref.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_xattr.c_ext4_fs_get_xattr_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.ext4_xattr_ref = type { i32, i32, i32, i32, i32*, i8*, i32, %struct.TYPE_9__*, %struct.TYPE_10__*, i8*, i32*, i64, i32 }

@EIO = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_fs_get_xattr_ref(i32 %0, %struct.TYPE_9__* %1, %struct.TYPE_10__* %2, %struct.ext4_xattr_ref* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.ext4_xattr_ref*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %8, align 8
  store %struct.ext4_xattr_ref* %3, %struct.ext4_xattr_ref** %9, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %11, align 8
  %16 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %9, align 8
  %17 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %16, i32 0, i32 12
  %18 = call i32 @memset(i32* %17, i32 0, i32 4)
  %19 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %9, align 8
  %20 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %19, i32 0, i32 11
  store i64 0, i64* %20, align 8
  %21 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %9, align 8
  %22 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %21, i32 0, i32 10
  store i32* null, i32** %22, align 8
  %23 = load i64, i64* %11, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i64, i64* %11, align 8
  %29 = call i32* @extents_bread(i32* %27, i64 %28)
  %30 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %9, align 8
  %31 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %30, i32 0, i32 4
  store i32* %29, i32** %31, align 8
  %32 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %9, align 8
  %33 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %32, i32 0, i32 4
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %25
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %160

39:                                               ; preds = %25
  %40 = load i8*, i8** @TRUE, align 8
  %41 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %9, align 8
  %42 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %41, i32 0, i32 9
  store i8* %40, i8** %42, align 8
  br label %47

43:                                               ; preds = %4
  %44 = load i8*, i8** @FALSE, align 8
  %45 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %9, align 8
  %46 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %45, i32 0, i32 9
  store i8* %44, i8** %46, align 8
  br label %47

47:                                               ; preds = %43, %39
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %49 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %9, align 8
  %50 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %49, i32 0, i32 8
  store %struct.TYPE_10__* %48, %struct.TYPE_10__** %50, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %52 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %9, align 8
  %53 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %52, i32 0, i32 7
  store %struct.TYPE_9__* %51, %struct.TYPE_9__** %53, align 8
  %54 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %9, align 8
  %55 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %54, i32 0, i32 6
  %56 = call i32 @INIT_LIST_HEAD(i32* %55)
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %58 = call i32 @Ext2AllocateInode(%struct.TYPE_9__* %57)
  %59 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %9, align 8
  %60 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %9, align 8
  %62 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %78, label %65

65:                                               ; preds = %47
  %66 = load i64, i64* %11, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %65
  %69 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %9, align 8
  %70 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %69, i32 0, i32 4
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @extents_brelse(i32* %71)
  %73 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %9, align 8
  %74 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %73, i32 0, i32 4
  store i32* null, i32** %74, align 8
  br label %75

75:                                               ; preds = %68, %65
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %160

78:                                               ; preds = %47
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %9, align 8
  %83 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @Ext2LoadInodeXattr(%struct.TYPE_9__* %79, %struct.TYPE_11__* %81, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %105, label %87

87:                                               ; preds = %78
  %88 = load i64, i64* %11, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %87
  %91 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %9, align 8
  %92 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %91, i32 0, i32 4
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @extents_brelse(i32* %93)
  %95 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %9, align 8
  %96 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %95, i32 0, i32 4
  store i32* null, i32** %96, align 8
  br label %97

97:                                               ; preds = %90, %87
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %99 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %9, align 8
  %100 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @Ext2DestroyInode(%struct.TYPE_9__* %98, i32 %101)
  %103 = load i32, i32* @EIO, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %5, align 4
  br label %160

105:                                              ; preds = %78
  %106 = load i8*, i8** @FALSE, align 8
  %107 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %9, align 8
  %108 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %107, i32 0, i32 5
  store i8* %106, i8** %108, align 8
  %109 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %9, align 8
  %110 = call i32 @ext4_xattr_inode_space(%struct.ext4_xattr_ref* %109)
  %111 = sext i32 %110 to i64
  %112 = icmp ult i64 %111, 8
  br i1 %112, label %113, label %116

113:                                              ; preds = %105
  %114 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %9, align 8
  %115 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %114, i32 0, i32 0
  store i32 0, i32* %115, align 8
  br label %124

116:                                              ; preds = %105
  %117 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %9, align 8
  %118 = call i32 @ext4_xattr_inode_space(%struct.ext4_xattr_ref* %117)
  %119 = sext i32 %118 to i64
  %120 = sub i64 %119, 4
  %121 = trunc i64 %120 to i32
  %122 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %9, align 8
  %123 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  br label %124

124:                                              ; preds = %116, %113
  %125 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %9, align 8
  %126 = call i32 @ext4_xattr_block_space(%struct.ext4_xattr_ref* %125)
  %127 = sext i32 %126 to i64
  %128 = sub i64 %127, 4
  %129 = sub i64 %128, 4
  %130 = trunc i64 %129 to i32
  %131 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %9, align 8
  %132 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 4
  %133 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %9, align 8
  %134 = call i32 @ext4_xattr_fetch(%struct.ext4_xattr_ref* %133)
  store i32 %134, i32* %10, align 4
  %135 = load i32, i32* %10, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %156

137:                                              ; preds = %124
  %138 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %9, align 8
  %139 = call i32 @ext4_xattr_purge_items(%struct.ext4_xattr_ref* %138)
  %140 = load i64, i64* %11, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %137
  %143 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %9, align 8
  %144 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %143, i32 0, i32 4
  %145 = load i32*, i32** %144, align 8
  %146 = call i32 @extents_brelse(i32* %145)
  %147 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %9, align 8
  %148 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %147, i32 0, i32 4
  store i32* null, i32** %148, align 8
  br label %149

149:                                              ; preds = %142, %137
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %151 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %9, align 8
  %152 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @Ext2DestroyInode(%struct.TYPE_9__* %150, i32 %153)
  %155 = load i32, i32* %10, align 4
  store i32 %155, i32* %5, align 4
  br label %160

156:                                              ; preds = %124
  %157 = load i32, i32* %6, align 4
  %158 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %9, align 8
  %159 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %158, i32 0, i32 2
  store i32 %157, i32* %159, align 8
  store i32 0, i32* %5, align 4
  br label %160

160:                                              ; preds = %156, %149, %97, %75, %36
  %161 = load i32, i32* %5, align 4
  ret i32 %161
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32* @extents_bread(i32*, i64) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @Ext2AllocateInode(%struct.TYPE_9__*) #1

declare dso_local i32 @extents_brelse(i32*) #1

declare dso_local i32 @Ext2LoadInodeXattr(%struct.TYPE_9__*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @Ext2DestroyInode(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @ext4_xattr_inode_space(%struct.ext4_xattr_ref*) #1

declare dso_local i32 @ext4_xattr_block_space(%struct.ext4_xattr_ref*) #1

declare dso_local i32 @ext4_xattr_fetch(%struct.ext4_xattr_ref*) #1

declare dso_local i32 @ext4_xattr_purge_items(%struct.ext4_xattr_ref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
