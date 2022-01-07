; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_csum.c_ext2fs_extent_block_csum_verify.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_csum.c_ext2fs_extent_block_csum_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.ext3_extent_header = type { i32 }
%struct.ext3_extent_tail = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2fs_extent_block_csum_verify(%struct.TYPE_4__* %0, i32 %1, %struct.ext3_extent_header* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ext3_extent_header*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ext3_extent_tail*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ext3_extent_header* %2, %struct.ext3_extent_header** %7, align 8
  %12 = load %struct.ext3_extent_header*, %struct.ext3_extent_header** %7, align 8
  %13 = call %struct.ext3_extent_tail* @get_extent_tail(%struct.ext3_extent_header* %12)
  store %struct.ext3_extent_tail* %13, %struct.ext3_extent_tail** %11, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ext2fs_has_feature_metadata_csum(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %37

20:                                               ; preds = %3
  %21 = load %struct.ext3_extent_tail*, %struct.ext3_extent_tail** %11, align 8
  %22 = getelementptr inbounds %struct.ext3_extent_tail, %struct.ext3_extent_tail* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @ext2fs_le32_to_cpu(i32 %23)
  store i64 %24, i64* %9, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.ext3_extent_header*, %struct.ext3_extent_header** %7, align 8
  %28 = call i64 @ext2fs_extent_block_csum(%struct.TYPE_4__* %25, i32 %26, %struct.ext3_extent_header* %27, i64* %10)
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %37

32:                                               ; preds = %20
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* %10, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %32, %31, %19
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local %struct.ext3_extent_tail* @get_extent_tail(%struct.ext3_extent_header*) #1

declare dso_local i32 @ext2fs_has_feature_metadata_csum(i32) #1

declare dso_local i64 @ext2fs_le32_to_cpu(i32) #1

declare dso_local i64 @ext2fs_extent_block_csum(%struct.TYPE_4__*, i32, %struct.ext3_extent_header*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
