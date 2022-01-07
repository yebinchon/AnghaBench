; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_extents.c_ext4_can_extents_be_merged.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_extents.c_ext4_can_extents_be_merged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_extent = type { i32 }

@EXT_INIT_MAX_LEN = common dso_local global i16 0, align 2
@EXT_UNWRITTEN_MAX_LEN = common dso_local global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_can_extents_be_merged(%struct.inode* %0, %struct.ext4_extent* %1, %struct.ext4_extent* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ext4_extent*, align 8
  %7 = alloca %struct.ext4_extent*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.ext4_extent* %1, %struct.ext4_extent** %6, align 8
  store %struct.ext4_extent* %2, %struct.ext4_extent** %7, align 8
  %10 = load %struct.ext4_extent*, %struct.ext4_extent** %6, align 8
  %11 = call i64 @ext4_ext_is_unwritten(%struct.ext4_extent* %10)
  %12 = load %struct.ext4_extent*, %struct.ext4_extent** %7, align 8
  %13 = call i64 @ext4_ext_is_unwritten(%struct.ext4_extent* %12)
  %14 = icmp ne i64 %11, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %69

16:                                               ; preds = %3
  %17 = load %struct.ext4_extent*, %struct.ext4_extent** %6, align 8
  %18 = call zeroext i16 @ext4_ext_get_actual_len(%struct.ext4_extent* %17)
  store i16 %18, i16* %8, align 2
  %19 = load %struct.ext4_extent*, %struct.ext4_extent** %7, align 8
  %20 = call zeroext i16 @ext4_ext_get_actual_len(%struct.ext4_extent* %19)
  store i16 %20, i16* %9, align 2
  %21 = load %struct.ext4_extent*, %struct.ext4_extent** %6, align 8
  %22 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @le32_to_cpu(i32 %23)
  %25 = load i16, i16* %8, align 2
  %26 = zext i16 %25 to i64
  %27 = add nsw i64 %24, %26
  %28 = load %struct.ext4_extent*, %struct.ext4_extent** %7, align 8
  %29 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @le32_to_cpu(i32 %30)
  %32 = icmp ne i64 %27, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %69

34:                                               ; preds = %16
  %35 = load i16, i16* %8, align 2
  %36 = zext i16 %35 to i32
  %37 = load i16, i16* %9, align 2
  %38 = zext i16 %37 to i32
  %39 = add nsw i32 %36, %38
  %40 = load i16, i16* @EXT_INIT_MAX_LEN, align 2
  %41 = zext i16 %40 to i32
  %42 = icmp sgt i32 %39, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %69

44:                                               ; preds = %34
  %45 = load %struct.ext4_extent*, %struct.ext4_extent** %6, align 8
  %46 = call i64 @ext4_ext_is_unwritten(%struct.ext4_extent* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %44
  %49 = load i16, i16* %8, align 2
  %50 = zext i16 %49 to i32
  %51 = load i16, i16* %9, align 2
  %52 = zext i16 %51 to i32
  %53 = add nsw i32 %50, %52
  %54 = load i16, i16* @EXT_UNWRITTEN_MAX_LEN, align 2
  %55 = zext i16 %54 to i32
  %56 = icmp sgt i32 %53, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %69

58:                                               ; preds = %48, %44
  %59 = load %struct.ext4_extent*, %struct.ext4_extent** %6, align 8
  %60 = call i64 @ext4_ext_pblock(%struct.ext4_extent* %59)
  %61 = load i16, i16* %8, align 2
  %62 = zext i16 %61 to i64
  %63 = add nsw i64 %60, %62
  %64 = load %struct.ext4_extent*, %struct.ext4_extent** %7, align 8
  %65 = call i64 @ext4_ext_pblock(%struct.ext4_extent* %64)
  %66 = icmp eq i64 %63, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  store i32 1, i32* %4, align 4
  br label %69

68:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %68, %67, %57, %43, %33, %15
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i64 @ext4_ext_is_unwritten(%struct.ext4_extent*) #1

declare dso_local zeroext i16 @ext4_ext_get_actual_len(%struct.ext4_extent*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @ext4_ext_pblock(%struct.ext4_extent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
