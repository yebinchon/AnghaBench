; ModuleID = '/home/carl/AnghaBench/rufus/src/syslinux/libfat/extr_dumpdir.c_get_next_dirent.c'
source_filename = "/home/carl/AnghaBench/rufus/src/syslinux/libfat/extr_dumpdir.c_get_next_dirent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fat_dirent = type { i32 }
%struct.libfat_filesystem = type { i32 }

@LIBFAT_SECTOR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fat_dirent* (%struct.libfat_filesystem*, i64*, i32*)* @get_next_dirent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fat_dirent* @get_next_dirent(%struct.libfat_filesystem* %0, i64* %1, i32* %2) #0 {
  %4 = alloca %struct.fat_dirent*, align 8
  %5 = alloca %struct.libfat_filesystem*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.fat_dirent*, align 8
  store %struct.libfat_filesystem* %0, %struct.libfat_filesystem** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %7, align 8
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = add i64 %11, 4
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %9, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @LIBFAT_SECTOR_SIZE, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %3
  %19 = load i32*, i32** %7, align 8
  store i32 0, i32* %19, align 4
  %20 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %5, align 8
  %21 = load i64*, i64** %6, align 8
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @libfat_nextsector(%struct.libfat_filesystem* %20, i64 %22)
  %24 = load i64*, i64** %6, align 8
  store i64 %23, i64* %24, align 8
  %25 = load i64*, i64** %6, align 8
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %18
  %29 = load i64*, i64** %6, align 8
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, -1
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %18
  store %struct.fat_dirent* null, %struct.fat_dirent** %4, align 8
  br label %51

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %33, %3
  %35 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %5, align 8
  %36 = load i64*, i64** %6, align 8
  %37 = load i64, i64* %36, align 8
  %38 = call %struct.fat_dirent* @libfat_get_sector(%struct.libfat_filesystem* %35, i64 %37)
  store %struct.fat_dirent* %38, %struct.fat_dirent** %8, align 8
  %39 = load %struct.fat_dirent*, %struct.fat_dirent** %8, align 8
  %40 = icmp ne %struct.fat_dirent* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  store %struct.fat_dirent* null, %struct.fat_dirent** %4, align 8
  br label %51

42:                                               ; preds = %34
  %43 = load %struct.fat_dirent*, %struct.fat_dirent** %8, align 8
  %44 = bitcast %struct.fat_dirent* %43 to i8*
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %44, i64 %47
  %49 = bitcast i8* %48 to %struct.fat_dirent*
  store %struct.fat_dirent* %49, %struct.fat_dirent** %8, align 8
  %50 = load %struct.fat_dirent*, %struct.fat_dirent** %8, align 8
  store %struct.fat_dirent* %50, %struct.fat_dirent** %4, align 8
  br label %51

51:                                               ; preds = %42, %41, %32
  %52 = load %struct.fat_dirent*, %struct.fat_dirent** %4, align 8
  ret %struct.fat_dirent* %52
}

declare dso_local i64 @libfat_nextsector(%struct.libfat_filesystem*, i64) #1

declare dso_local %struct.fat_dirent* @libfat_get_sector(%struct.libfat_filesystem*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
