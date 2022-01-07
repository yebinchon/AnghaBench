; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_csum.c_ext2fs_extent_block_csum_set.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_csum.c_ext2fs_extent_block_csum_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.ext3_extent_header = type { i32 }
%struct.ext3_extent_tail = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext2fs_extent_block_csum_set(%struct.TYPE_4__* %0, i32 %1, %struct.ext3_extent_header* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ext3_extent_header*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ext3_extent_tail*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ext3_extent_header* %2, %struct.ext3_extent_header** %7, align 8
  %11 = load %struct.ext3_extent_header*, %struct.ext3_extent_header** %7, align 8
  %12 = call %struct.ext3_extent_tail* @get_extent_tail(%struct.ext3_extent_header* %11)
  store %struct.ext3_extent_tail* %12, %struct.ext3_extent_tail** %10, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ext2fs_has_feature_metadata_csum(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %34

19:                                               ; preds = %3
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.ext3_extent_header*, %struct.ext3_extent_header** %7, align 8
  %23 = call i64 @ext2fs_extent_block_csum(%struct.TYPE_4__* %20, i32 %21, %struct.ext3_extent_header* %22, i32* %9)
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i64, i64* %8, align 8
  store i64 %27, i64* %4, align 8
  br label %34

28:                                               ; preds = %19
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @ext2fs_cpu_to_le32(i32 %29)
  %31 = load %struct.ext3_extent_tail*, %struct.ext3_extent_tail** %10, align 8
  %32 = getelementptr inbounds %struct.ext3_extent_tail, %struct.ext3_extent_tail* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load i64, i64* %8, align 8
  store i64 %33, i64* %4, align 8
  br label %34

34:                                               ; preds = %28, %26, %18
  %35 = load i64, i64* %4, align 8
  ret i64 %35
}

declare dso_local %struct.ext3_extent_tail* @get_extent_tail(%struct.ext3_extent_header*) #1

declare dso_local i32 @ext2fs_has_feature_metadata_csum(i32) #1

declare dso_local i64 @ext2fs_extent_block_csum(%struct.TYPE_4__*, i32, %struct.ext3_extent_header*, i32*) #1

declare dso_local i32 @ext2fs_cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
