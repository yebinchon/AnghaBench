; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_xattr.c_ext4_fs_put_xattr_ref.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_xattr.c_ext4_fs_put_xattr_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_xattr_ref = type { %struct.TYPE_8__*, %struct.TYPE_7__*, i32*, i8*, i32*, i8*, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@EXT4_GOOD_OLD_INODE_SIZE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_fs_put_xattr_ref(%struct.ext4_xattr_ref* %0) #0 {
  %2 = alloca %struct.ext4_xattr_ref*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ext4_xattr_ref* %0, %struct.ext4_xattr_ref** %2, align 8
  %5 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %2, align 8
  %6 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %5, i32 0, i32 1
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %2, align 8
  %12 = call i32 @ext4_xattr_write_to_disk(%struct.ext4_xattr_ref* %11)
  store i32 %12, i32* %3, align 4
  %13 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %2, align 8
  %14 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %13, i32 0, i32 5
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %87

17:                                               ; preds = %1
  %18 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %2, align 8
  %19 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @EXT4_GOOD_OLD_INODE_SIZE, align 8
  %24 = icmp sgt i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @ASSERT(i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %17
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %2, align 8
  %32 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %31, i32 0, i32 1
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  store i32 %30, i32* %35, align 4
  br label %36

36:                                               ; preds = %29, %17
  %37 = load i32, i32* %3, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %83, label %39

39:                                               ; preds = %36
  %40 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %2, align 8
  %41 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %2, align 8
  %44 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %2, align 8
  %47 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %46, i32 0, i32 1
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = call i64 @Ext2SaveInode(i32 %42, %struct.TYPE_8__* %45, %struct.TYPE_9__* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %39
  br label %56

53:                                               ; preds = %39
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  br label %56

56:                                               ; preds = %53, %52
  %57 = phi i32 [ 0, %52 ], [ %55, %53 ]
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* %3, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %82, label %60

60:                                               ; preds = %56
  %61 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %2, align 8
  %62 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %2, align 8
  %65 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %64, i32 0, i32 0
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %2, align 8
  %68 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %67, i32 0, i32 1
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %2, align 8
  %72 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = call i64 @Ext2SaveInodeXattr(i32 %63, %struct.TYPE_8__* %66, %struct.TYPE_9__* %70, i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %60
  br label %80

77:                                               ; preds = %60
  %78 = load i32, i32* @EIO, align 4
  %79 = sub nsw i32 0, %78
  br label %80

80:                                               ; preds = %77, %76
  %81 = phi i32 [ 0, %76 ], [ %79, %77 ]
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %80, %56
  br label %83

83:                                               ; preds = %82, %36
  %84 = load i8*, i8** @FALSE, align 8
  %85 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %2, align 8
  %86 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %85, i32 0, i32 5
  store i8* %84, i8** %86, align 8
  br label %87

87:                                               ; preds = %83, %1
  %88 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %2, align 8
  %89 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %88, i32 0, i32 3
  %90 = load i8*, i8** %89, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %111

92:                                               ; preds = %87
  %93 = load i32, i32* %3, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %92
  %96 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %2, align 8
  %97 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %96, i32 0, i32 4
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @extents_brelse(i32* %98)
  br label %105

100:                                              ; preds = %92
  %101 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %2, align 8
  %102 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %101, i32 0, i32 4
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @extents_bforget(i32* %103)
  br label %105

105:                                              ; preds = %100, %95
  %106 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %2, align 8
  %107 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %106, i32 0, i32 4
  store i32* null, i32** %107, align 8
  %108 = load i8*, i8** @FALSE, align 8
  %109 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %2, align 8
  %110 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %109, i32 0, i32 3
  store i8* %108, i8** %110, align 8
  br label %111

111:                                              ; preds = %105, %87
  %112 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %2, align 8
  %113 = call i32 @ext4_xattr_purge_items(%struct.ext4_xattr_ref* %112)
  %114 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %2, align 8
  %115 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %114, i32 0, i32 0
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %2, align 8
  %118 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = call i32 @Ext2DestroyInode(%struct.TYPE_8__* %116, i32* %119)
  %121 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %2, align 8
  %122 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %121, i32 0, i32 2
  store i32* null, i32** %122, align 8
  %123 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %2, align 8
  %124 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %123, i32 0, i32 1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %124, align 8
  %125 = load %struct.ext4_xattr_ref*, %struct.ext4_xattr_ref** %2, align 8
  %126 = getelementptr inbounds %struct.ext4_xattr_ref, %struct.ext4_xattr_ref* %125, i32 0, i32 0
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %126, align 8
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i32 @ext4_xattr_write_to_disk(%struct.ext4_xattr_ref*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @Ext2SaveInode(i32, %struct.TYPE_8__*, %struct.TYPE_9__*) #1

declare dso_local i64 @Ext2SaveInodeXattr(i32, %struct.TYPE_8__*, %struct.TYPE_9__*, i32*) #1

declare dso_local i32 @extents_brelse(i32*) #1

declare dso_local i32 @extents_bforget(i32*) #1

declare dso_local i32 @ext4_xattr_purge_items(%struct.ext4_xattr_ref*) #1

declare dso_local i32 @Ext2DestroyInode(%struct.TYPE_8__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
