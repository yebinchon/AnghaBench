; ModuleID = '/home/carl/AnghaBench/rufus/src/syslinux/libinstaller/extr_fs.c_syslinux_make_bootsect.c'
source_filename = "/home/carl/AnghaBench/rufus/src/syslinux/libinstaller/extr_fs.c_syslinux_make_bootsect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fat_boot_sector = type { i32, i32 }
%struct.ntfs_boot_sector = type { i32, i32 }

@VFAT = common dso_local global i32 0, align 4
@boot_sector = common dso_local global i64 0, align 8
@FAT_bsHeadLen = common dso_local global i32 0, align 4
@FAT_bsCodeLen = common dso_local global i32 0, align 4
@NTFS = common dso_local global i32 0, align 4
@NTFS_bsHeadLen = common dso_local global i32 0, align 4
@NTFS_bsCodeLen = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @syslinux_make_bootsect(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fat_boot_sector*, align 8
  %6 = alloca %struct.fat_boot_sector*, align 8
  %7 = alloca %struct.ntfs_boot_sector*, align 8
  %8 = alloca %struct.ntfs_boot_sector*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @VFAT, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %29

12:                                               ; preds = %2
  %13 = load i8*, i8** %3, align 8
  %14 = bitcast i8* %13 to %struct.fat_boot_sector*
  store %struct.fat_boot_sector* %14, %struct.fat_boot_sector** %5, align 8
  %15 = load i64, i64* @boot_sector, align 8
  %16 = inttoptr i64 %15 to %struct.fat_boot_sector*
  store %struct.fat_boot_sector* %16, %struct.fat_boot_sector** %6, align 8
  %17 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %5, align 8
  %18 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %17, i32 0, i32 1
  %19 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %6, align 8
  %20 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %19, i32 0, i32 1
  %21 = load i32, i32* @FAT_bsHeadLen, align 4
  %22 = call i32 @memcpy(i32* %18, i32* %20, i32 %21)
  %23 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %5, align 8
  %24 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %23, i32 0, i32 0
  %25 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %6, align 8
  %26 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %25, i32 0, i32 0
  %27 = load i32, i32* @FAT_bsCodeLen, align 4
  %28 = call i32 @memcpy(i32* %24, i32* %26, i32 %27)
  br label %51

29:                                               ; preds = %2
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @NTFS, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %29
  %34 = load i8*, i8** %3, align 8
  %35 = bitcast i8* %34 to %struct.ntfs_boot_sector*
  store %struct.ntfs_boot_sector* %35, %struct.ntfs_boot_sector** %7, align 8
  %36 = load i64, i64* @boot_sector, align 8
  %37 = inttoptr i64 %36 to %struct.ntfs_boot_sector*
  store %struct.ntfs_boot_sector* %37, %struct.ntfs_boot_sector** %8, align 8
  %38 = load %struct.ntfs_boot_sector*, %struct.ntfs_boot_sector** %7, align 8
  %39 = getelementptr inbounds %struct.ntfs_boot_sector, %struct.ntfs_boot_sector* %38, i32 0, i32 1
  %40 = load %struct.ntfs_boot_sector*, %struct.ntfs_boot_sector** %8, align 8
  %41 = getelementptr inbounds %struct.ntfs_boot_sector, %struct.ntfs_boot_sector* %40, i32 0, i32 1
  %42 = load i32, i32* @NTFS_bsHeadLen, align 4
  %43 = call i32 @memcpy(i32* %39, i32* %41, i32 %42)
  %44 = load %struct.ntfs_boot_sector*, %struct.ntfs_boot_sector** %7, align 8
  %45 = getelementptr inbounds %struct.ntfs_boot_sector, %struct.ntfs_boot_sector* %44, i32 0, i32 0
  %46 = load %struct.ntfs_boot_sector*, %struct.ntfs_boot_sector** %8, align 8
  %47 = getelementptr inbounds %struct.ntfs_boot_sector, %struct.ntfs_boot_sector* %46, i32 0, i32 0
  %48 = load i32, i32* @NTFS_bsCodeLen, align 4
  %49 = call i32 @memcpy(i32* %45, i32* %47, i32 %48)
  br label %50

50:                                               ; preds = %33, %29
  br label %51

51:                                               ; preds = %50, %12
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
