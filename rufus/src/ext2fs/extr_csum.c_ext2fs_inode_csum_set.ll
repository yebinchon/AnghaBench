; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_csum.c_ext2fs_inode_csum_set.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_csum.c_ext2fs_inode_csum_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.ext2_inode_large = type { i64, i8*, i8* }

@EXT2_GOOD_OLD_INODE_SIZE = common dso_local global i64 0, align 8
@EXT4_INODE_CSUM_HI_EXTRA_END = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext2fs_inode_csum_set(%struct.TYPE_4__* %0, i32 %1, %struct.ext2_inode_large* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ext2_inode_large*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ext2_inode_large* %2, %struct.ext2_inode_large** %7, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ext2fs_has_feature_metadata_csum(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %57

17:                                               ; preds = %3
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @EXT2_INODE_SIZE(i32 %20)
  %22 = load i64, i64* @EXT2_GOOD_OLD_INODE_SIZE, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = load %struct.ext2_inode_large*, %struct.ext2_inode_large** %7, align 8
  %26 = getelementptr inbounds %struct.ext2_inode_large, %struct.ext2_inode_large* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @EXT4_INODE_CSUM_HI_EXTRA_END, align 8
  %29 = icmp sge i64 %27, %28
  br label %30

30:                                               ; preds = %24, %17
  %31 = phi i1 [ false, %17 ], [ %29, %24 ]
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %10, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.ext2_inode_large*, %struct.ext2_inode_large** %7, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i64 @ext2fs_inode_csum(%struct.TYPE_4__* %33, i32 %34, %struct.ext2_inode_large* %35, i32* %9, i32 %36)
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %8, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i64, i64* %8, align 8
  store i64 %41, i64* %4, align 8
  br label %57

42:                                               ; preds = %30
  %43 = load i32, i32* %9, align 4
  %44 = and i32 %43, 65535
  %45 = call i8* @ext2fs_cpu_to_le16(i32 %44)
  %46 = load %struct.ext2_inode_large*, %struct.ext2_inode_large** %7, align 8
  %47 = getelementptr inbounds %struct.ext2_inode_large, %struct.ext2_inode_large* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %42
  %51 = load i32, i32* %9, align 4
  %52 = ashr i32 %51, 16
  %53 = call i8* @ext2fs_cpu_to_le16(i32 %52)
  %54 = load %struct.ext2_inode_large*, %struct.ext2_inode_large** %7, align 8
  %55 = getelementptr inbounds %struct.ext2_inode_large, %struct.ext2_inode_large* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  br label %56

56:                                               ; preds = %50, %42
  store i64 0, i64* %4, align 8
  br label %57

57:                                               ; preds = %56, %40, %16
  %58 = load i64, i64* %4, align 8
  ret i64 %58
}

declare dso_local i32 @ext2fs_has_feature_metadata_csum(i32) #1

declare dso_local i64 @EXT2_INODE_SIZE(i32) #1

declare dso_local i64 @ext2fs_inode_csum(%struct.TYPE_4__*, i32, %struct.ext2_inode_large*, i32*, i32) #1

declare dso_local i8* @ext2fs_cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
