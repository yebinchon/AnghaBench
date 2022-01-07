; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext3/extr_htree.c_ext3_bread.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext3/extr_htree.c_ext3_bread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.ext2_icb = type { i32 }
%struct.inode = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_7__* }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@EXT2_MCB = common dso_local global i32 0, align 4
@Inode = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.buffer_head* @ext3_bread(%struct.ext2_icb* %0, %struct.inode* %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.ext2_icb*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_7__*, align 8
  store %struct.ext2_icb* %0, %struct.ext2_icb** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %10, align 8
  %15 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %15, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %16 = load %struct.inode*, %struct.inode** %7, align 8
  %17 = load i32, i32* @EXT2_MCB, align 4
  %18 = load i32, i32* @Inode, align 4
  %19 = call %struct.TYPE_7__* @CONTAINING_RECORD(%struct.inode* %16, i32 %17, i32 %18)
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %14, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %21 = icmp ne %struct.TYPE_7__* null, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %24 = call i64 @IsMcbSymLink(%struct.TYPE_7__* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  store %struct.TYPE_7__* %29, %struct.TYPE_7__** %14, align 8
  br label %30

30:                                               ; preds = %26, %22, %4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %32 = icmp eq %struct.TYPE_7__* null, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  %36 = load i32*, i32** %9, align 8
  store i32 %35, i32* %36, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %5, align 8
  br label %104

37:                                               ; preds = %30
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = call i64 @INODE_HAS_EXTENT(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %37
  %43 = load %struct.ext2_icb*, %struct.ext2_icb** %6, align 8
  %44 = load %struct.inode*, %struct.inode** %7, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 0
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load i32, i32* @FALSE, align 4
  %52 = call i32 @Ext2MapExtent(%struct.ext2_icb* %43, i32 %48, %struct.TYPE_7__* %49, i64 %50, i32 %51, i32* %12, i32* %13)
  store i32 %52, i32* %11, align 4
  br label %64

53:                                               ; preds = %37
  %54 = load %struct.ext2_icb*, %struct.ext2_icb** %6, align 8
  %55 = load %struct.inode*, %struct.inode** %7, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 0
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load i32, i32* @FALSE, align 4
  %63 = call i32 @Ext2MapIndirect(%struct.ext2_icb* %54, i32 %59, %struct.TYPE_7__* %60, i64 %61, i32 %62, i32* %12, i32* %13)
  store i32 %63, i32* %11, align 4
  br label %64

64:                                               ; preds = %53, %42
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @NT_SUCCESS(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @Ext2LinuxError(i32 %69)
  %71 = load i32*, i32** %9, align 8
  store i32 %70, i32* %71, align 4
  %72 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  store %struct.buffer_head* %72, %struct.buffer_head** %5, align 8
  br label %104

73:                                               ; preds = %64
  %74 = load %struct.inode*, %struct.inode** %7, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 0
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = load i32, i32* %12, align 4
  %78 = call %struct.buffer_head* @sb_getblk(%struct.TYPE_8__* %76, i32 %77)
  store %struct.buffer_head* %78, %struct.buffer_head** %10, align 8
  %79 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %80 = icmp ne %struct.buffer_head* %79, null
  br i1 %80, label %86, label %81

81:                                               ; preds = %73
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  %84 = load i32*, i32** %9, align 8
  store i32 %83, i32* %84, align 4
  %85 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  store %struct.buffer_head* %85, %struct.buffer_head** %5, align 8
  br label %104

86:                                               ; preds = %73
  %87 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %88 = call i64 @buffer_uptodate(%struct.buffer_head* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  store %struct.buffer_head* %91, %struct.buffer_head** %5, align 8
  br label %104

92:                                               ; preds = %86
  %93 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %94 = call i32 @bh_submit_read(%struct.buffer_head* %93)
  %95 = load i32*, i32** %9, align 8
  store i32 %94, i32* %95, align 4
  %96 = load i32*, i32** %9, align 8
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %92
  %100 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %101 = call i32 @__brelse(%struct.buffer_head* %100)
  store %struct.buffer_head* null, %struct.buffer_head** %5, align 8
  br label %104

102:                                              ; preds = %92
  %103 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  store %struct.buffer_head* %103, %struct.buffer_head** %5, align 8
  br label %104

104:                                              ; preds = %102, %99, %90, %81, %68, %33
  %105 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  ret %struct.buffer_head* %105
}

declare dso_local %struct.TYPE_7__* @CONTAINING_RECORD(%struct.inode*, i32, i32) #1

declare dso_local i64 @IsMcbSymLink(%struct.TYPE_7__*) #1

declare dso_local i64 @INODE_HAS_EXTENT(i32*) #1

declare dso_local i32 @Ext2MapExtent(%struct.ext2_icb*, i32, %struct.TYPE_7__*, i64, i32, i32*, i32*) #1

declare dso_local i32 @Ext2MapIndirect(%struct.ext2_icb*, i32, %struct.TYPE_7__*, i64, i32, i32*, i32*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @Ext2LinuxError(i32) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @bh_submit_read(%struct.buffer_head*) #1

declare dso_local i32 @__brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
