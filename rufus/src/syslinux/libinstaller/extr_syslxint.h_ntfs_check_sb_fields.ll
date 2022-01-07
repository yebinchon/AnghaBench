; ModuleID = '/home/carl/AnghaBench/rufus/src/syslinux/libinstaller/extr_syslxint.h_ntfs_check_sb_fields.c'
source_filename = "/home/carl/AnghaBench/rufus/src/syslinux/libinstaller/extr_syslxint.h_ntfs_check_sb_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntfs_boot_sector = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"NTFS    \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"MSWIN4.0\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"MSWIN4.1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ntfs_boot_sector*)* @ntfs_check_sb_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntfs_check_sb_fields(%struct.ntfs_boot_sector* %0) #0 {
  %2 = alloca %struct.ntfs_boot_sector*, align 8
  store %struct.ntfs_boot_sector* %0, %struct.ntfs_boot_sector** %2, align 8
  %3 = load %struct.ntfs_boot_sector*, %struct.ntfs_boot_sector** %2, align 8
  %4 = call i64 @ntfs_check_zero_fields(%struct.ntfs_boot_sector* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %27

6:                                                ; preds = %1
  %7 = load %struct.ntfs_boot_sector*, %struct.ntfs_boot_sector** %2, align 8
  %8 = getelementptr inbounds %struct.ntfs_boot_sector, %struct.ntfs_boot_sector* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @memcmp(i32 %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %6
  %13 = load %struct.ntfs_boot_sector*, %struct.ntfs_boot_sector** %2, align 8
  %14 = getelementptr inbounds %struct.ntfs_boot_sector, %struct.ntfs_boot_sector* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @memcmp(i32 %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = load %struct.ntfs_boot_sector*, %struct.ntfs_boot_sector** %2, align 8
  %20 = getelementptr inbounds %struct.ntfs_boot_sector, %struct.ntfs_boot_sector* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @memcmp(i32 %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br label %25

25:                                               ; preds = %18, %12, %6
  %26 = phi i1 [ true, %12 ], [ true, %6 ], [ %24, %18 ]
  br label %27

27:                                               ; preds = %25, %1
  %28 = phi i1 [ false, %1 ], [ %26, %25 ]
  %29 = zext i1 %28 to i32
  ret i32 %29
}

declare dso_local i64 @ntfs_check_zero_fields(%struct.ntfs_boot_sector*) #1

declare dso_local i32 @memcmp(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
