; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_csum.c_ext2fs_superblock_csum_verify.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_csum.c_ext2fs_superblock_csum_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.ext2_super_block = type { i32 }

@EXT2_FLAG_SWAP_BYTES = common dso_local global i32 0, align 4
@EXT4_FEATURE_RO_COMPAT_METADATA_CSUM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2fs_superblock_csum_verify(%struct.TYPE_4__* %0, %struct.ext2_super_block* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.ext2_super_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.ext2_super_block* %1, %struct.ext2_super_block** %5, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @EXT2_FLAG_SWAP_BYTES, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i64, i64* @EXT4_FEATURE_RO_COMPAT_METADATA_CSUM, align 8
  store i64 %15, i64* %6, align 8
  br label %19

16:                                               ; preds = %2
  %17 = load i64, i64* @EXT4_FEATURE_RO_COMPAT_METADATA_CSUM, align 8
  %18 = call i64 @ext2fs_cpu_to_le32(i64 %17)
  store i64 %18, i64* %6, align 8
  br label %19

19:                                               ; preds = %16, %14
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @EXT2_HAS_RO_COMPAT_FEATURE(i32 %22, i64 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %38

27:                                               ; preds = %19
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = load %struct.ext2_super_block*, %struct.ext2_super_block** %5, align 8
  %30 = call i64 @ext2fs_superblock_csum(%struct.TYPE_4__* %28, %struct.ext2_super_block* %29)
  store i64 %30, i64* %7, align 8
  %31 = load %struct.ext2_super_block*, %struct.ext2_super_block** %5, align 8
  %32 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @ext2fs_le32_to_cpu(i32 %33)
  %35 = load i64, i64* %7, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %27, %26
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i64 @ext2fs_cpu_to_le32(i64) #1

declare dso_local i32 @EXT2_HAS_RO_COMPAT_FEATURE(i32, i64) #1

declare dso_local i64 @ext2fs_superblock_csum(%struct.TYPE_4__*, %struct.ext2_super_block*) #1

declare dso_local i64 @ext2fs_le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
