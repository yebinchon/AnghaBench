; ModuleID = '/home/carl/AnghaBench/rufus/src/syslinux/libinstaller/extr_syslxint.h_fat_check_sb_fields.c'
source_filename = "/home/carl/AnghaBench/rufus/src/syslinux/libinstaller/extr_syslxint.h_fat_check_sb_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fat_boot_sector = type { %struct.TYPE_3__, %struct.TYPE_4__, i64, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"FAT12   \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"FAT16   \00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"FAT     \00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"FAT32   \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fat_boot_sector*)* @fat_check_sb_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fat_check_sb_fields(%struct.fat_boot_sector* %0) #0 {
  %2 = alloca %struct.fat_boot_sector*, align 8
  store %struct.fat_boot_sector* %0, %struct.fat_boot_sector** %2, align 8
  %3 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %2, align 8
  %4 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %3, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %43

7:                                                ; preds = %1
  %8 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %2, align 8
  %9 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %43

12:                                               ; preds = %7
  %13 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %2, align 8
  %14 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @memcmp(i32 %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %12
  %20 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %2, align 8
  %21 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @memcmp(i32 %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %19
  %27 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %2, align 8
  %28 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @memcmp(i32 %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %26
  %34 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %2, align 8
  %35 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @memcmp(i32 %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 8)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br label %41

41:                                               ; preds = %33, %26, %19, %12
  %42 = phi i1 [ true, %26 ], [ true, %19 ], [ true, %12 ], [ %40, %33 ]
  br label %43

43:                                               ; preds = %41, %7, %1
  %44 = phi i1 [ false, %7 ], [ false, %1 ], [ %42, %41 ]
  %45 = zext i1 %44 to i32
  ret i32 %45
}

declare dso_local i32 @memcmp(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
