; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_extents.c_ext4_ext_try_to_merge_right.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_extents.c_ext4_ext_try_to_merge_right.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_ext_path = type { %struct.ext4_extent_header* }
%struct.ext4_extent_header = type { i32 }
%struct.ext4_extent = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"eh->eh_entries = 0!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ext4_ext_path*, %struct.ext4_extent*)* @ext4_ext_try_to_merge_right to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_ext_try_to_merge_right(%struct.inode* %0, %struct.ext4_ext_path* %1, %struct.ext4_extent* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.ext4_ext_path*, align 8
  %6 = alloca %struct.ext4_extent*, align 8
  %7 = alloca %struct.ext4_extent_header*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.ext4_ext_path* %1, %struct.ext4_ext_path** %5, align 8
  store %struct.ext4_extent* %2, %struct.ext4_extent** %6, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = call i32 @ext_depth(%struct.inode* %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %5, align 8
  %15 = load i32, i32* %8, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %14, i64 %16
  %18 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %17, i32 0, i32 0
  %19 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %18, align 8
  %20 = icmp ne %struct.ext4_extent_header* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %23, i64 %25
  %27 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %26, i32 0, i32 0
  %28 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %27, align 8
  store %struct.ext4_extent_header* %28, %struct.ext4_extent_header** %7, align 8
  br label %29

29:                                               ; preds = %93, %3
  %30 = load %struct.ext4_extent*, %struct.ext4_extent** %6, align 8
  %31 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %7, align 8
  %32 = call %struct.ext4_extent* @EXT_LAST_EXTENT(%struct.ext4_extent_header* %31)
  %33 = icmp ult %struct.ext4_extent* %30, %32
  br i1 %33, label %34, label %94

34:                                               ; preds = %29
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = load %struct.ext4_extent*, %struct.ext4_extent** %6, align 8
  %37 = load %struct.ext4_extent*, %struct.ext4_extent** %6, align 8
  %38 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %37, i64 1
  %39 = call i32 @ext4_can_extents_be_merged(%struct.inode* %35, %struct.ext4_extent* %36, %struct.ext4_extent* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  br label %94

42:                                               ; preds = %34
  %43 = load %struct.ext4_extent*, %struct.ext4_extent** %6, align 8
  %44 = call i32 @ext4_ext_is_unwritten(%struct.ext4_extent* %43)
  store i32 %44, i32* %11, align 4
  %45 = load %struct.ext4_extent*, %struct.ext4_extent** %6, align 8
  %46 = call i64 @ext4_ext_get_actual_len(%struct.ext4_extent* %45)
  %47 = load %struct.ext4_extent*, %struct.ext4_extent** %6, align 8
  %48 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %47, i64 1
  %49 = call i64 @ext4_ext_get_actual_len(%struct.ext4_extent* %48)
  %50 = add nsw i64 %46, %49
  %51 = call i32 @cpu_to_le16(i64 %50)
  %52 = load %struct.ext4_extent*, %struct.ext4_extent** %6, align 8
  %53 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %42
  %57 = load %struct.ext4_extent*, %struct.ext4_extent** %6, align 8
  %58 = call i32 @ext4_ext_mark_unwritten(%struct.ext4_extent* %57)
  br label %59

59:                                               ; preds = %56, %42
  %60 = load %struct.ext4_extent*, %struct.ext4_extent** %6, align 8
  %61 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %60, i64 1
  %62 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %7, align 8
  %63 = call %struct.ext4_extent* @EXT_LAST_EXTENT(%struct.ext4_extent_header* %62)
  %64 = icmp ult %struct.ext4_extent* %61, %63
  br i1 %64, label %65, label %82

65:                                               ; preds = %59
  %66 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %7, align 8
  %67 = call %struct.ext4_extent* @EXT_LAST_EXTENT(%struct.ext4_extent_header* %66)
  %68 = load %struct.ext4_extent*, %struct.ext4_extent** %6, align 8
  %69 = ptrtoint %struct.ext4_extent* %67 to i64
  %70 = ptrtoint %struct.ext4_extent* %68 to i64
  %71 = sub i64 %69, %70
  %72 = sdiv exact i64 %71, 4
  %73 = sub nsw i64 %72, 1
  %74 = mul i64 %73, 4
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %9, align 4
  %76 = load %struct.ext4_extent*, %struct.ext4_extent** %6, align 8
  %77 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %76, i64 1
  %78 = load %struct.ext4_extent*, %struct.ext4_extent** %6, align 8
  %79 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %78, i64 2
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @memmove(%struct.ext4_extent* %77, %struct.ext4_extent* %79, i32 %80)
  br label %82

82:                                               ; preds = %65, %59
  %83 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %7, align 8
  %84 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %83, i32 0, i32 0
  %85 = call i32 @le16_add_cpu(i32* %84, i32 -1)
  store i32 1, i32* %10, align 4
  %86 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %7, align 8
  %87 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %82
  %91 = load %struct.inode*, %struct.inode** %4, align 8
  %92 = call i32 @EXT4_ERROR_INODE(%struct.inode* %91, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %93

93:                                               ; preds = %90, %82
  br label %29

94:                                               ; preds = %41, %29
  %95 = load i32, i32* %10, align 4
  ret i32 %95
}

declare dso_local i32 @ext_depth(%struct.inode*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.ext4_extent* @EXT_LAST_EXTENT(%struct.ext4_extent_header*) #1

declare dso_local i32 @ext4_can_extents_be_merged(%struct.inode*, %struct.ext4_extent*, %struct.ext4_extent*) #1

declare dso_local i32 @ext4_ext_is_unwritten(%struct.ext4_extent*) #1

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i64 @ext4_ext_get_actual_len(%struct.ext4_extent*) #1

declare dso_local i32 @ext4_ext_mark_unwritten(%struct.ext4_extent*) #1

declare dso_local i32 @memmove(%struct.ext4_extent*, %struct.ext4_extent*, i32) #1

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

declare dso_local i32 @EXT4_ERROR_INODE(%struct.inode*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
