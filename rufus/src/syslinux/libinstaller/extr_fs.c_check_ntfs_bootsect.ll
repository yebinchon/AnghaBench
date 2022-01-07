; ModuleID = '/home/carl/AnghaBench/rufus/src/syslinux/libinstaller/extr_fs.c_check_ntfs_bootsect.c'
source_filename = "/home/carl/AnghaBench/rufus/src/syslinux/libinstaller/extr_fs.c_check_ntfs_bootsect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntfs_boot_sector = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"NTFS    \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"MSWIN4.0\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"MSWIN4.1\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"unknown OEM name but claims NTFS\00", align 1
@NTFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32*)* @check_ntfs_bootsect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @check_ntfs_bootsect(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ntfs_boot_sector*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.ntfs_boot_sector*
  store %struct.ntfs_boot_sector* %8, %struct.ntfs_boot_sector** %6, align 8
  %9 = load %struct.ntfs_boot_sector*, %struct.ntfs_boot_sector** %6, align 8
  %10 = getelementptr inbounds %struct.ntfs_boot_sector, %struct.ntfs_boot_sector* %9, i32 0, i32 0
  %11 = call i64 @memcmp(i32* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load %struct.ntfs_boot_sector*, %struct.ntfs_boot_sector** %6, align 8
  %15 = getelementptr inbounds %struct.ntfs_boot_sector, %struct.ntfs_boot_sector* %14, i32 0, i32 0
  %16 = call i64 @memcmp(i32* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load %struct.ntfs_boot_sector*, %struct.ntfs_boot_sector** %6, align 8
  %20 = getelementptr inbounds %struct.ntfs_boot_sector, %struct.ntfs_boot_sector* %19, i32 0, i32 0
  %21 = call i64 @memcmp(i32* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %31

24:                                               ; preds = %18, %13, %2
  %25 = load i32*, i32** %5, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @NTFS, align 4
  %29 = load i32*, i32** %5, align 8
  store i32 %28, i32* %29, align 4
  br label %30

30:                                               ; preds = %27, %24
  store i8* null, i8** %3, align 8
  br label %31

31:                                               ; preds = %30, %23
  %32 = load i8*, i8** %3, align 8
  ret i8* %32
}

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
