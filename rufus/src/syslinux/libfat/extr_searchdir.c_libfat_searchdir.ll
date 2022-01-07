; ModuleID = '/home/carl/AnghaBench/rufus/src/syslinux/libfat/extr_searchdir.c_libfat_searchdir.c'
source_filename = "/home/carl/AnghaBench/rufus/src/syslinux/libfat/extr_searchdir.c_libfat_searchdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libfat_filesystem = type { i32 }
%struct.libfat_direntry = type { i32, i64, i32 }
%struct.fat_dirent = type { i64*, i32, i32, i32 }

@LIBFAT_SECTOR_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libfat_searchdir(%struct.libfat_filesystem* %0, i32 %1, i8* %2, %struct.libfat_direntry* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.libfat_filesystem*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.libfat_direntry*, align 8
  %10 = alloca %struct.fat_dirent*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.libfat_filesystem* %0, %struct.libfat_filesystem** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.libfat_direntry* %3, %struct.libfat_direntry** %9, align 8
  %13 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @libfat_clustertosector(%struct.libfat_filesystem* %13, i32 %14)
  store i64 %15, i64* %12, align 8
  br label %16

16:                                               ; preds = %4, %90
  %17 = load i64, i64* %12, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 -2, i32* %5, align 4
  br label %94

20:                                               ; preds = %16
  %21 = load i64, i64* %12, align 8
  %22 = icmp eq i64 %21, -1
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 -1, i32* %5, align 4
  br label %94

24:                                               ; preds = %20
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %6, align 8
  %27 = load i64, i64* %12, align 8
  %28 = call %struct.fat_dirent* @libfat_get_sector(%struct.libfat_filesystem* %26, i64 %27)
  store %struct.fat_dirent* %28, %struct.fat_dirent** %10, align 8
  %29 = load %struct.fat_dirent*, %struct.fat_dirent** %10, align 8
  %30 = icmp ne %struct.fat_dirent* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  store i32 -1, i32* %5, align 4
  br label %94

32:                                               ; preds = %25
  store i32 0, i32* %11, align 4
  br label %33

33:                                               ; preds = %85, %32
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @LIBFAT_SECTOR_SIZE, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %90

37:                                               ; preds = %33
  %38 = load %struct.fat_dirent*, %struct.fat_dirent** %10, align 8
  %39 = getelementptr inbounds %struct.fat_dirent, %struct.fat_dirent* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 @memcmp(i64* %40, i8* %41, i32 11)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %74, label %44

44:                                               ; preds = %37
  %45 = load %struct.libfat_direntry*, %struct.libfat_direntry** %9, align 8
  %46 = icmp ne %struct.libfat_direntry* %45, null
  br i1 %46, label %47, label %59

47:                                               ; preds = %44
  %48 = load %struct.libfat_direntry*, %struct.libfat_direntry** %9, align 8
  %49 = getelementptr inbounds %struct.libfat_direntry, %struct.libfat_direntry* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.fat_dirent*, %struct.fat_dirent** %10, align 8
  %52 = call i32 @memcpy(i32 %50, %struct.fat_dirent* %51, i32 24)
  %53 = load i64, i64* %12, align 8
  %54 = load %struct.libfat_direntry*, %struct.libfat_direntry** %9, align 8
  %55 = getelementptr inbounds %struct.libfat_direntry, %struct.libfat_direntry* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.libfat_direntry*, %struct.libfat_direntry** %9, align 8
  %58 = getelementptr inbounds %struct.libfat_direntry, %struct.libfat_direntry* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  br label %59

59:                                               ; preds = %47, %44
  %60 = load %struct.fat_dirent*, %struct.fat_dirent** %10, align 8
  %61 = getelementptr inbounds %struct.fat_dirent, %struct.fat_dirent* %60, i32 0, i32 3
  %62 = call i64 @read32(i32* %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i32 0, i32* %5, align 4
  br label %94

65:                                               ; preds = %59
  %66 = load %struct.fat_dirent*, %struct.fat_dirent** %10, align 8
  %67 = getelementptr inbounds %struct.fat_dirent, %struct.fat_dirent* %66, i32 0, i32 2
  %68 = call i32 @read16(i32* %67)
  %69 = load %struct.fat_dirent*, %struct.fat_dirent** %10, align 8
  %70 = getelementptr inbounds %struct.fat_dirent, %struct.fat_dirent* %69, i32 0, i32 1
  %71 = call i32 @read16(i32* %70)
  %72 = shl i32 %71, 16
  %73 = add nsw i32 %68, %72
  store i32 %73, i32* %5, align 4
  br label %94

74:                                               ; preds = %37
  %75 = load %struct.fat_dirent*, %struct.fat_dirent** %10, align 8
  %76 = getelementptr inbounds %struct.fat_dirent, %struct.fat_dirent* %75, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  store i32 -2, i32* %5, align 4
  br label %94

82:                                               ; preds = %74
  %83 = load %struct.fat_dirent*, %struct.fat_dirent** %10, align 8
  %84 = getelementptr inbounds %struct.fat_dirent, %struct.fat_dirent* %83, i32 1
  store %struct.fat_dirent* %84, %struct.fat_dirent** %10, align 8
  br label %85

85:                                               ; preds = %82
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = add i64 %87, 24
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %11, align 4
  br label %33

90:                                               ; preds = %33
  %91 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %6, align 8
  %92 = load i64, i64* %12, align 8
  %93 = call i64 @libfat_nextsector(%struct.libfat_filesystem* %91, i64 %92)
  store i64 %93, i64* %12, align 8
  br label %16

94:                                               ; preds = %81, %65, %64, %31, %23, %19
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i64 @libfat_clustertosector(%struct.libfat_filesystem*, i32) #1

declare dso_local %struct.fat_dirent* @libfat_get_sector(%struct.libfat_filesystem*, i64) #1

declare dso_local i32 @memcmp(i64*, i8*, i32) #1

declare dso_local i32 @memcpy(i32, %struct.fat_dirent*, i32) #1

declare dso_local i64 @read32(i32*) #1

declare dso_local i32 @read16(i32*) #1

declare dso_local i64 @libfat_nextsector(%struct.libfat_filesystem*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
