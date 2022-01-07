; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_extents.c_ext4_ext_convert_to_initialized.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_extents.c_ext4_ext_convert_to_initialized.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_ext_path = type { %struct.ext4_extent* }
%struct.ext4_extent = type { i32 }

@EXT4_EXT_MARK_UNWRIT1 = common dso_local global i32 0, align 4
@EXT4_EXT_MARK_UNWRIT2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, %struct.inode*, %struct.ext4_ext_path**, i64, i64, i32)* @ext4_ext_convert_to_initialized to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_ext_convert_to_initialized(i8* %0, i32* %1, %struct.inode* %2, %struct.ext4_ext_path** %3, i64 %4, i64 %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.ext4_ext_path**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ext4_extent*, align 8
  store i8* %0, i8** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.inode* %2, %struct.inode** %10, align 8
  store %struct.ext4_ext_path** %3, %struct.ext4_ext_path*** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 %6, i32* %14, align 4
  %18 = load %struct.inode*, %struct.inode** %10, align 8
  %19 = call i32 @ext_depth(%struct.inode* %18)
  store i32 %19, i32* %15, align 4
  %20 = load %struct.ext4_ext_path**, %struct.ext4_ext_path*** %11, align 8
  %21 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %20, align 8
  %22 = load i32, i32* %15, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %21, i64 %23
  %25 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %24, i32 0, i32 0
  %26 = load %struct.ext4_extent*, %struct.ext4_extent** %25, align 8
  store %struct.ext4_extent* %26, %struct.ext4_extent** %17, align 8
  %27 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %28 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @le32_to_cpu(i32 %29)
  %31 = load i64, i64* %12, align 8
  %32 = icmp sle i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i64, i64* %12, align 8
  %36 = load i64, i64* %13, align 8
  %37 = add i64 %35, %36
  %38 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %39 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @le32_to_cpu(i32 %40)
  %42 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %43 = call i64 @ext4_ext_get_actual_len(%struct.ext4_extent* %42)
  %44 = add nsw i64 %41, %43
  %45 = icmp eq i64 %37, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %7
  %47 = load i8*, i8** %8, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = load %struct.inode*, %struct.inode** %10, align 8
  %50 = load %struct.ext4_ext_path**, %struct.ext4_ext_path*** %11, align 8
  %51 = load i64, i64* %12, align 8
  %52 = load i32, i32* @EXT4_EXT_MARK_UNWRIT1, align 4
  %53 = load i32, i32* %14, align 4
  %54 = call i32 @ext4_split_extent_at(i8* %47, i32* %48, %struct.inode* %49, %struct.ext4_ext_path** %50, i64 %51, i32 %52, i32 %53)
  store i32 %54, i32* %16, align 4
  br label %99

55:                                               ; preds = %7
  %56 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %57 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @le32_to_cpu(i32 %58)
  %60 = load i64, i64* %12, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %55
  %63 = load i8*, i8** %8, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = load %struct.inode*, %struct.inode** %10, align 8
  %66 = load %struct.ext4_ext_path**, %struct.ext4_ext_path*** %11, align 8
  %67 = load i64, i64* %12, align 8
  %68 = load i64, i64* %13, align 8
  %69 = add i64 %67, %68
  %70 = load i32, i32* @EXT4_EXT_MARK_UNWRIT2, align 4
  %71 = load i32, i32* %14, align 4
  %72 = call i32 @ext4_split_extent_at(i8* %63, i32* %64, %struct.inode* %65, %struct.ext4_ext_path** %66, i64 %69, i32 %70, i32 %71)
  store i32 %72, i32* %16, align 4
  br label %98

73:                                               ; preds = %55
  %74 = load i8*, i8** %8, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = load %struct.inode*, %struct.inode** %10, align 8
  %77 = load %struct.ext4_ext_path**, %struct.ext4_ext_path*** %11, align 8
  %78 = load i64, i64* %12, align 8
  %79 = load i64, i64* %13, align 8
  %80 = add i64 %78, %79
  %81 = load i32, i32* @EXT4_EXT_MARK_UNWRIT1, align 4
  %82 = load i32, i32* @EXT4_EXT_MARK_UNWRIT2, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* %14, align 4
  %85 = call i32 @ext4_split_extent_at(i8* %74, i32* %75, %struct.inode* %76, %struct.ext4_ext_path** %77, i64 %80, i32 %83, i32 %84)
  store i32 %85, i32* %16, align 4
  %86 = load i32, i32* %16, align 4
  %87 = icmp eq i32 0, %86
  br i1 %87, label %88, label %97

88:                                               ; preds = %73
  %89 = load i8*, i8** %8, align 8
  %90 = load i32*, i32** %9, align 8
  %91 = load %struct.inode*, %struct.inode** %10, align 8
  %92 = load %struct.ext4_ext_path**, %struct.ext4_ext_path*** %11, align 8
  %93 = load i64, i64* %12, align 8
  %94 = load i32, i32* @EXT4_EXT_MARK_UNWRIT1, align 4
  %95 = load i32, i32* %14, align 4
  %96 = call i32 @ext4_split_extent_at(i8* %89, i32* %90, %struct.inode* %91, %struct.ext4_ext_path** %92, i64 %93, i32 %94, i32 %95)
  store i32 %96, i32* %16, align 4
  br label %97

97:                                               ; preds = %88, %73
  br label %98

98:                                               ; preds = %97, %62
  br label %99

99:                                               ; preds = %98, %46
  %100 = load i32, i32* %16, align 4
  ret i32 %100
}

declare dso_local i32 @ext_depth(%struct.inode*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @ext4_ext_get_actual_len(%struct.ext4_extent*) #1

declare dso_local i32 @ext4_split_extent_at(i8*, i32*, %struct.inode*, %struct.ext4_ext_path**, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
