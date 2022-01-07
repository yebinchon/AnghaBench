; ModuleID = '/home/carl/AnghaBench/rufus/src/syslinux/libinstaller/extr_fs.c_syslinux_check_bootsect.c'
source_filename = "/home/carl/AnghaBench/rufus/src/syslinux/libinstaller/extr_fs.c_syslinux_check_bootsect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fat_boot_sector = type { i32, i32 }
%struct.ntfs_boot_sector = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"invalid media signature (not an FAT/NTFS volume?)\00", align 1
@SECTOR_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"unsupported sectors size\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"impossible sector size\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @syslinux_check_bootsect(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fat_boot_sector*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.fat_boot_sector*
  store %struct.fat_boot_sector* %11, %struct.fat_boot_sector** %8, align 8
  %12 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %8, align 8
  %13 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %12, i32 0, i32 1
  %14 = call i32 @get_8(i32* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 240
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 248
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %58

21:                                               ; preds = %17, %2
  %22 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %8, align 8
  %23 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %22, i32 0, i32 0
  %24 = call i32 @get_16(i32* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @SECTOR_SIZE, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %43

29:                                               ; preds = %21
  %30 = load i32, i32* %7, align 4
  %31 = icmp sge i32 %30, 512
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  %34 = icmp sle i32 %33, 4096
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = sub nsw i32 %37, 1
  %39 = and i32 %36, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %58

42:                                               ; preds = %35, %32, %29
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %58

43:                                               ; preds = %28
  %44 = load i8*, i8** %4, align 8
  %45 = bitcast i8* %44 to %struct.ntfs_boot_sector*
  %46 = call i64 @ntfs_check_zero_fields(%struct.ntfs_boot_sector* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i8*, i8** %4, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = call i8* @check_ntfs_bootsect(i8* %49, i32* %50)
  store i8* %51, i8** %9, align 8
  br label %56

52:                                               ; preds = %43
  %53 = load i8*, i8** %4, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = call i8* @check_fat_bootsect(i8* %53, i32* %54)
  store i8* %55, i8** %9, align 8
  br label %56

56:                                               ; preds = %52, %48
  %57 = load i8*, i8** %9, align 8
  store i8* %57, i8** %3, align 8
  br label %58

58:                                               ; preds = %56, %42, %41, %20
  %59 = load i8*, i8** %3, align 8
  ret i8* %59
}

declare dso_local i32 @get_8(i32*) #1

declare dso_local i32 @get_16(i32*) #1

declare dso_local i64 @ntfs_check_zero_fields(%struct.ntfs_boot_sector*) #1

declare dso_local i8* @check_ntfs_bootsect(i8*, i32*) #1

declare dso_local i8* @check_fat_bootsect(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
