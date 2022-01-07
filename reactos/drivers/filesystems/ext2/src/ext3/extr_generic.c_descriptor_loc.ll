; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext3/extr_generic.c_descriptor_loc.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext3/extr_generic.c_descriptor_loc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext3_sb_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EXT4_FEATURE_INCOMPAT_META_BG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @descriptor_loc(%struct.super_block* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ext3_sb_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.super_block*, %struct.super_block** %5, align 8
  %13 = call %struct.ext3_sb_info* @EXT3_SB(%struct.super_block* %12)
  store %struct.ext3_sb_info* %13, %struct.ext3_sb_info** %8, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %8, align 8
  %15 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @le32_to_cpu(i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.super_block*, %struct.super_block** %5, align 8
  %21 = load i32, i32* @EXT4_FEATURE_INCOMPAT_META_BG, align 4
  %22 = call i32 @EXT3_HAS_INCOMPAT_FEATURE(%struct.super_block* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %24, %3
  %29 = load i64, i64* %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = add nsw i64 %29, %31
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %4, align 8
  br label %52

34:                                               ; preds = %24
  %35 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %8, align 8
  %36 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = mul i32 %37, %38
  store i32 %39, i32* %9, align 4
  %40 = load %struct.super_block*, %struct.super_block** %5, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i64 @ext3_bg_has_super(%struct.super_block* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  store i32 1, i32* %11, align 4
  br label %45

45:                                               ; preds = %44, %34
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = load %struct.super_block*, %struct.super_block** %5, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i64 @ext3_group_first_block_no(%struct.super_block* %48, i32 %49)
  %51 = add nsw i64 %47, %50
  store i64 %51, i64* %4, align 8
  br label %52

52:                                               ; preds = %45, %28
  %53 = load i64, i64* %4, align 8
  ret i64 %53
}

declare dso_local %struct.ext3_sb_info* @EXT3_SB(%struct.super_block*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @EXT3_HAS_INCOMPAT_FEATURE(%struct.super_block*, i32) #1

declare dso_local i64 @ext3_bg_has_super(%struct.super_block*, i32) #1

declare dso_local i64 @ext3_group_first_block_no(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
