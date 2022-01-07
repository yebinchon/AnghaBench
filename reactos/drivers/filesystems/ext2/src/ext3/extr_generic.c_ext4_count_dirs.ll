; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext3/extr_generic.c_ext4_count_dirs.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext3/extr_generic.c_ext4_count_dirs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext4_group_desc = type { i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext4_count_dirs(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.ext4_group_desc*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %7

7:                                                ; preds = %28, %1
  %8 = load i64, i64* %6, align 8
  %9 = load %struct.super_block*, %struct.super_block** %2, align 8
  %10 = call %struct.TYPE_2__* @EXT3_SB(%struct.super_block* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp slt i64 %8, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %7
  %15 = load %struct.super_block*, %struct.super_block** %2, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block* %15, i64 %16, %struct.buffer_head** %4)
  store %struct.ext4_group_desc* %17, %struct.ext4_group_desc** %3, align 8
  %18 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %19 = icmp ne %struct.buffer_head* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  br label %28

21:                                               ; preds = %14
  %22 = load %struct.super_block*, %struct.super_block** %2, align 8
  %23 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %3, align 8
  %24 = call i64 @ext4_used_dirs_count(%struct.super_block* %22, %struct.ext4_group_desc* %23)
  %25 = load i64, i64* %5, align 8
  %26 = add i64 %25, %24
  store i64 %26, i64* %5, align 8
  %27 = call i32 @fini_bh(%struct.buffer_head** %4)
  br label %28

28:                                               ; preds = %21, %20
  %29 = load i64, i64* %6, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %6, align 8
  br label %7

31:                                               ; preds = %7
  %32 = load i64, i64* %5, align 8
  ret i64 %32
}

declare dso_local %struct.TYPE_2__* @EXT3_SB(%struct.super_block*) #1

declare dso_local %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block*, i64, %struct.buffer_head**) #1

declare dso_local i64 @ext4_used_dirs_count(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i32 @fini_bh(%struct.buffer_head**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
