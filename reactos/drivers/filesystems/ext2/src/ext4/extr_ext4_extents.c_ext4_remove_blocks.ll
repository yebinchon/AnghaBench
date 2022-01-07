; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_extents.c_ext4_remove_blocks.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_extents.c_ext4_remove_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_extent = type { i32 }
%struct.buffer_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, %struct.inode*, %struct.ext4_extent*, i64, i64)* @ext4_remove_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_remove_blocks(i8* %0, i32* %1, %struct.inode* %2, %struct.ext4_extent* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.ext4_extent*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.inode* %2, %struct.inode** %9, align 8
  store %struct.ext4_extent* %3, %struct.ext4_extent** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %17 = load i64, i64* %11, align 8
  %18 = load %struct.ext4_extent*, %struct.ext4_extent** %10, align 8
  %19 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le32_to_cpu(i32 %20)
  %22 = sext i32 %21 to i64
  %23 = icmp uge i64 %17, %22
  br i1 %23, label %24, label %61

24:                                               ; preds = %6
  %25 = load i64, i64* %12, align 8
  %26 = load %struct.ext4_extent*, %struct.ext4_extent** %10, align 8
  %27 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le32_to_cpu(i32 %28)
  %30 = load %struct.ext4_extent*, %struct.ext4_extent** %10, align 8
  %31 = call i32 @ext4_ext_get_actual_len(%struct.ext4_extent* %30)
  %32 = add nsw i32 %29, %31
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = icmp eq i64 %25, %34
  br i1 %35, label %36, label %61

36:                                               ; preds = %24
  %37 = load %struct.ext4_extent*, %struct.ext4_extent** %10, align 8
  %38 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @le32_to_cpu(i32 %39)
  %41 = load %struct.ext4_extent*, %struct.ext4_extent** %10, align 8
  %42 = call i32 @ext4_ext_get_actual_len(%struct.ext4_extent* %41)
  %43 = add nsw i32 %40, %42
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* %11, align 8
  %46 = sub i64 %44, %45
  store i64 %46, i64* %15, align 8
  %47 = load %struct.ext4_extent*, %struct.ext4_extent** %10, align 8
  %48 = call i64 @ext4_ext_pblock(%struct.ext4_extent* %47)
  %49 = load %struct.ext4_extent*, %struct.ext4_extent** %10, align 8
  %50 = call i32 @ext4_ext_get_actual_len(%struct.ext4_extent* %49)
  %51 = sext i32 %50 to i64
  %52 = add i64 %48, %51
  %53 = load i64, i64* %15, align 8
  %54 = sub i64 %52, %53
  store i64 %54, i64* %16, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = load %struct.inode*, %struct.inode** %9, align 8
  %58 = load i64, i64* %16, align 8
  %59 = load i64, i64* %15, align 8
  %60 = call i32 @ext4_free_blocks(i8* %55, i32* %56, %struct.inode* %57, i32* null, i64 %58, i64 %59, i32 0)
  br label %84

61:                                               ; preds = %24, %6
  %62 = load i64, i64* %11, align 8
  %63 = load %struct.ext4_extent*, %struct.ext4_extent** %10, align 8
  %64 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @le32_to_cpu(i32 %65)
  %67 = sext i32 %66 to i64
  %68 = icmp eq i64 %62, %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %61
  %70 = load i64, i64* %12, align 8
  %71 = load %struct.ext4_extent*, %struct.ext4_extent** %10, align 8
  %72 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @le32_to_cpu(i32 %73)
  %75 = load %struct.ext4_extent*, %struct.ext4_extent** %10, align 8
  %76 = call i32 @ext4_ext_get_actual_len(%struct.ext4_extent* %75)
  %77 = add nsw i32 %74, %76
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = icmp ule i64 %70, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %69
  br label %83

82:                                               ; preds = %69, %61
  br label %83

83:                                               ; preds = %82, %81
  br label %84

84:                                               ; preds = %83, %36
  ret i32 0
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ext4_ext_get_actual_len(%struct.ext4_extent*) #1

declare dso_local i64 @ext4_ext_pblock(%struct.ext4_extent*) #1

declare dso_local i32 @ext4_free_blocks(i8*, i32*, %struct.inode*, i32*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
