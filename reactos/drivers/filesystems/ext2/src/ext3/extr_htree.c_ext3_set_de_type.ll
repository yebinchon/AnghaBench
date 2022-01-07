; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext3/extr_htree.c_ext3_set_de_type.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext3/extr_htree.c_ext3_set_de_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext3_dir_entry_2 = type { i32 }

@EXT3_FEATURE_INCOMPAT_FILETYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ext3_set_de_type(%struct.super_block* %0, %struct.ext3_dir_entry_2* %1, i32 %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.ext3_dir_entry_2*, align 8
  %6 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.ext3_dir_entry_2* %1, %struct.ext3_dir_entry_2** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.super_block*, %struct.super_block** %4, align 8
  %8 = load i32, i32* @EXT3_FEATURE_INCOMPAT_FILETYPE, align 4
  %9 = call i64 @EXT3_HAS_INCOMPAT_FEATURE(%struct.super_block* %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @ext3_type_by_mode(i32 %12)
  %14 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %5, align 8
  %15 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  br label %16

16:                                               ; preds = %11, %3
  ret void
}

declare dso_local i64 @EXT3_HAS_INCOMPAT_FEATURE(%struct.super_block*, i32) #1

declare dso_local i32 @ext3_type_by_mode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
