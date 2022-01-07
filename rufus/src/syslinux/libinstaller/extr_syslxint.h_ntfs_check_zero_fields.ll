; ModuleID = '/home/carl/AnghaBench/rufus/src/syslinux/libinstaller/extr_syslxint.h_ntfs_check_zero_fields.c'
source_filename = "/home/carl/AnghaBench/rufus/src/syslinux/libinstaller/extr_syslxint.h_ntfs_check_zero_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntfs_boot_sector = type { i32, i32, i32, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ntfs_boot_sector*)* @ntfs_check_zero_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntfs_check_zero_fields(%struct.ntfs_boot_sector* %0) #0 {
  %2 = alloca %struct.ntfs_boot_sector*, align 8
  store %struct.ntfs_boot_sector* %0, %struct.ntfs_boot_sector** %2, align 8
  %3 = load %struct.ntfs_boot_sector*, %struct.ntfs_boot_sector** %2, align 8
  %4 = getelementptr inbounds %struct.ntfs_boot_sector, %struct.ntfs_boot_sector* %3, i32 0, i32 4
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %44, label %7

7:                                                ; preds = %1
  %8 = load %struct.ntfs_boot_sector*, %struct.ntfs_boot_sector** %2, align 8
  %9 = getelementptr inbounds %struct.ntfs_boot_sector, %struct.ntfs_boot_sector* %8, i32 0, i32 3
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %44, label %14

14:                                               ; preds = %7
  %15 = load %struct.ntfs_boot_sector*, %struct.ntfs_boot_sector** %2, align 8
  %16 = getelementptr inbounds %struct.ntfs_boot_sector, %struct.ntfs_boot_sector* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %44, label %21

21:                                               ; preds = %14
  %22 = load %struct.ntfs_boot_sector*, %struct.ntfs_boot_sector** %2, align 8
  %23 = getelementptr inbounds %struct.ntfs_boot_sector, %struct.ntfs_boot_sector* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %21
  %29 = load %struct.ntfs_boot_sector*, %struct.ntfs_boot_sector** %2, align 8
  %30 = getelementptr inbounds %struct.ntfs_boot_sector, %struct.ntfs_boot_sector* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %28
  %34 = load %struct.ntfs_boot_sector*, %struct.ntfs_boot_sector** %2, align 8
  %35 = getelementptr inbounds %struct.ntfs_boot_sector, %struct.ntfs_boot_sector* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %33
  %39 = load %struct.ntfs_boot_sector*, %struct.ntfs_boot_sector** %2, align 8
  %40 = getelementptr inbounds %struct.ntfs_boot_sector, %struct.ntfs_boot_sector* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  br label %44

44:                                               ; preds = %38, %33, %28, %21, %14, %7, %1
  %45 = phi i1 [ false, %33 ], [ false, %28 ], [ false, %21 ], [ false, %14 ], [ false, %7 ], [ false, %1 ], [ %43, %38 ]
  %46 = zext i1 %45 to i32
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
