; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_inode.c_ext2fs_check_directory.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_inode.c_ext2fs_check_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { {}*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.ext2_inode = type { i32 }

@EXT2_ET_MAGIC_EXT2FS_FILSYS = common dso_local global i32 0, align 4
@EXT2_ET_BAD_INODE_NUM = common dso_local global i64 0, align 8
@EXT2_ET_CALLBACK_NOTHANDLED = common dso_local global i64 0, align 8
@EXT2_ET_NO_DIRECTORY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext2fs_check_directory(%struct.TYPE_8__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ext2_inode, align 4
  %7 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %9 = load i32, i32* @EXT2_ET_MAGIC_EXT2FS_FILSYS, align 4
  %10 = call i32 @EXT2_CHECK_MAGIC(%struct.TYPE_8__* %8, i32 %9)
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %11, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i64, i64* @EXT2_ET_BAD_INODE_NUM, align 8
  store i64 %19, i64* %3, align 8
  br label %56

20:                                               ; preds = %2
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = bitcast {}** %22 to i64 (%struct.TYPE_8__*, i64)**
  %24 = load i64 (%struct.TYPE_8__*, i64)*, i64 (%struct.TYPE_8__*, i64)** %23, align 8
  %25 = icmp ne i64 (%struct.TYPE_8__*, i64)* %24, null
  br i1 %25, label %26, label %40

26:                                               ; preds = %20
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = bitcast {}** %28 to i64 (%struct.TYPE_8__*, i64)**
  %30 = load i64 (%struct.TYPE_8__*, i64)*, i64 (%struct.TYPE_8__*, i64)** %29, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i64 %30(%struct.TYPE_8__* %31, i64 %32)
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @EXT2_ET_CALLBACK_NOTHANDLED, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = load i64, i64* %7, align 8
  store i64 %38, i64* %3, align 8
  br label %56

39:                                               ; preds = %26
  br label %40

40:                                               ; preds = %39, %20
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %42 = load i64, i64* %5, align 8
  %43 = call i64 @ext2fs_read_inode(%struct.TYPE_8__* %41, i64 %42, %struct.ext2_inode* %6)
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i64, i64* %7, align 8
  store i64 %47, i64* %3, align 8
  br label %56

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %6, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @LINUX_S_ISDIR(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %48
  %54 = load i64, i64* @EXT2_ET_NO_DIRECTORY, align 8
  store i64 %54, i64* %3, align 8
  br label %56

55:                                               ; preds = %48
  store i64 0, i64* %3, align 8
  br label %56

56:                                               ; preds = %55, %53, %46, %37, %18
  %57 = load i64, i64* %3, align 8
  ret i64 %57
}

declare dso_local i32 @EXT2_CHECK_MAGIC(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @ext2fs_read_inode(%struct.TYPE_8__*, i64, %struct.ext2_inode*) #1

declare dso_local i32 @LINUX_S_ISDIR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
