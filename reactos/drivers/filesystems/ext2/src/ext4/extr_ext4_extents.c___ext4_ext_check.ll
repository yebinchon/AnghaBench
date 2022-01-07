; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_extents.c___ext4_ext_check.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_extents.c___ext4_ext_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_extent_header = type { i64, i64, i64, i32 }
%struct.ext4_extent_tail = type { i64 }

@EXT4_EXT_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"invalid magic\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"unexpected eh_depth\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"invalid eh_max\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"invalid eh_entries\00", align 1
@.str.4 = private unnamed_addr constant [86 x i8] c"Warning: extent checksum damaged? tail->et_checksum = %lu, ext4_ext_block_csum = %lu\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"corrupted! %s\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.inode*, %struct.ext4_extent_header*, i32, i32)* @__ext4_ext_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ext4_ext_check(i8* %0, i32 %1, %struct.inode* %2, %struct.ext4_extent_header* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.ext4_extent_header*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ext4_extent_tail*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.inode* %2, %struct.inode** %10, align 8
  store %struct.ext4_extent_header* %3, %struct.ext4_extent_header** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %16, align 4
  %17 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %11, align 8
  %18 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @EXT4_EXT_MAGIC, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %6
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  br label %66

23:                                               ; preds = %6
  %24 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %11, align 8
  %25 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @le16_to_cpu(i32 %26)
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** %15, align 8
  br label %66

31:                                               ; preds = %23
  %32 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %11, align 8
  %33 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %15, align 8
  br label %66

37:                                               ; preds = %31
  %38 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %11, align 8
  %39 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %11, align 8
  %42 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8** %15, align 8
  br label %66

46:                                               ; preds = %37
  %47 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %11, align 8
  %48 = call %struct.ext4_extent_tail* @find_ext4_extent_tail(%struct.ext4_extent_header* %47)
  store %struct.ext4_extent_tail* %48, %struct.ext4_extent_tail** %14, align 8
  %49 = load %struct.ext4_extent_tail*, %struct.ext4_extent_tail** %14, align 8
  %50 = getelementptr inbounds %struct.ext4_extent_tail, %struct.ext4_extent_tail* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.inode*, %struct.inode** %10, align 8
  %53 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %11, align 8
  %54 = call i64 @ext4_ext_block_csum(%struct.inode* %52, %struct.ext4_extent_header* %53)
  %55 = icmp ne i64 %51, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %46
  %57 = load %struct.ext4_extent_tail*, %struct.ext4_extent_tail** %14, align 8
  %58 = getelementptr inbounds %struct.ext4_extent_tail, %struct.ext4_extent_tail* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i8*
  %61 = load %struct.inode*, %struct.inode** %10, align 8
  %62 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %11, align 8
  %63 = call i64 @ext4_ext_block_csum(%struct.inode* %61, %struct.ext4_extent_header* %62)
  %64 = call i32 (i8*, i8*, ...) @ext_debug(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.4, i64 0, i64 0), i8* %60, i64 %63)
  br label %65

65:                                               ; preds = %56, %46
  store i32 0, i32* %7, align 4
  br label %71

66:                                               ; preds = %45, %36, %30, %22
  %67 = load i8*, i8** %15, align 8
  %68 = call i32 (i8*, i8*, ...) @ext_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %67)
  %69 = load i32, i32* @EIO, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %66, %65
  %72 = load i32, i32* %7, align 4
  ret i32 %72
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.ext4_extent_tail* @find_ext4_extent_tail(%struct.ext4_extent_header*) #1

declare dso_local i64 @ext4_ext_block_csum(%struct.inode*, %struct.ext4_extent_header*) #1

declare dso_local i32 @ext_debug(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
