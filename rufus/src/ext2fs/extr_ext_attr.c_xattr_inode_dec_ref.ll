; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_ext_attr.c_xattr_inode_dec_ref.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_ext_attr.c_xattr_inode_dec_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.ext2_inode_large = type { i64, i64 }
%struct.ext2_inode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_9__*, i32)* @xattr_inode_dec_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @xattr_inode_dec_ref(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ext2_inode_large, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = bitcast %struct.ext2_inode_large* %5 to %struct.ext2_inode*
  %11 = call i64 @ext2fs_read_inode_full(%struct.TYPE_9__* %8, i32 %9, %struct.ext2_inode* %10, i32 16)
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %70

15:                                               ; preds = %2
  %16 = call i32 @EXT2_INODE(%struct.ext2_inode_large* %5)
  %17 = call i64 @ext2fs_get_ea_inode_ref(i32 %16)
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  %19 = add nsw i64 %18, -1
  store i64 %19, i64* %6, align 8
  %20 = call i32 @EXT2_INODE(%struct.ext2_inode_large* %5)
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @ext2fs_set_ea_inode_ref(i32 %20, i64 %21)
  %23 = load i64, i64* %6, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  br label %65

26:                                               ; preds = %15
  %27 = getelementptr inbounds %struct.ext2_inode_large, %struct.ext2_inode_large* %5, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  br label %38

36:                                               ; preds = %26
  %37 = call i64 @time(i32 0)
  br label %38

38:                                               ; preds = %36, %32
  %39 = phi i64 [ %35, %32 ], [ %37, %36 ]
  %40 = getelementptr inbounds %struct.ext2_inode_large, %struct.ext2_inode_large* %5, i32 0, i32 0
  store i64 %39, i64* %40, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i64 @ext2fs_free_ext_attr(%struct.TYPE_9__* %41, i32 %42, %struct.ext2_inode_large* %5)
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %65

47:                                               ; preds = %38
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %49 = bitcast %struct.ext2_inode_large* %5 to %struct.ext2_inode*
  %50 = call i64 @ext2fs_inode_has_valid_blocks2(%struct.TYPE_9__* %48, %struct.ext2_inode* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %47
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %54 = load i32, i32* %4, align 4
  %55 = bitcast %struct.ext2_inode_large* %5 to %struct.ext2_inode*
  %56 = call i64 @ext2fs_punch(%struct.TYPE_9__* %53, i32 %54, %struct.ext2_inode* %55, i32* null, i32 0, i64 -1)
  store i64 %56, i64* %7, align 8
  %57 = load i64, i64* %7, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %70

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60, %47
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @ext2fs_inode_alloc_stats2(%struct.TYPE_9__* %62, i32 %63, i32 -1, i32 0)
  br label %65

65:                                               ; preds = %61, %46, %25
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %67 = load i32, i32* %4, align 4
  %68 = bitcast %struct.ext2_inode_large* %5 to %struct.ext2_inode*
  %69 = call i64 @ext2fs_write_inode_full(%struct.TYPE_9__* %66, i32 %67, %struct.ext2_inode* %68, i32 16)
  store i64 %69, i64* %7, align 8
  br label %70

70:                                               ; preds = %65, %59, %14
  %71 = load i64, i64* %7, align 8
  ret i64 %71
}

declare dso_local i64 @ext2fs_read_inode_full(%struct.TYPE_9__*, i32, %struct.ext2_inode*, i32) #1

declare dso_local i64 @ext2fs_get_ea_inode_ref(i32) #1

declare dso_local i32 @EXT2_INODE(%struct.ext2_inode_large*) #1

declare dso_local i32 @ext2fs_set_ea_inode_ref(i32, i64) #1

declare dso_local i64 @time(i32) #1

declare dso_local i64 @ext2fs_free_ext_attr(%struct.TYPE_9__*, i32, %struct.ext2_inode_large*) #1

declare dso_local i64 @ext2fs_inode_has_valid_blocks2(%struct.TYPE_9__*, %struct.ext2_inode*) #1

declare dso_local i64 @ext2fs_punch(%struct.TYPE_9__*, i32, %struct.ext2_inode*, i32*, i32, i64) #1

declare dso_local i32 @ext2fs_inode_alloc_stats2(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i64 @ext2fs_write_inode_full(%struct.TYPE_9__*, i32, %struct.ext2_inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
