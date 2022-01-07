; ModuleID = '/home/carl/AnghaBench/rufus/src/syslinux/libfat/extr_cache.c_libfat_get_sector.c'
source_filename = "/home/carl/AnghaBench/rufus/src/syslinux/libfat/extr_cache.c_libfat_get_sector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libfat_filesystem = type { i64 (i32, i8*, i64, i64)*, %struct.libfat_sector*, i32 }
%struct.libfat_sector = type { i64, i8*, %struct.libfat_sector* }

@LIBFAT_SECTOR_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @libfat_get_sector(%struct.libfat_filesystem* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.libfat_filesystem*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.libfat_sector*, align 8
  store %struct.libfat_filesystem* %0, %struct.libfat_filesystem** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %4, align 8
  %8 = getelementptr inbounds %struct.libfat_filesystem, %struct.libfat_filesystem* %7, i32 0, i32 1
  %9 = load %struct.libfat_sector*, %struct.libfat_sector** %8, align 8
  store %struct.libfat_sector* %9, %struct.libfat_sector** %6, align 8
  br label %10

10:                                               ; preds = %24, %2
  %11 = load %struct.libfat_sector*, %struct.libfat_sector** %6, align 8
  %12 = icmp ne %struct.libfat_sector* %11, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %10
  %14 = load %struct.libfat_sector*, %struct.libfat_sector** %6, align 8
  %15 = getelementptr inbounds %struct.libfat_sector, %struct.libfat_sector* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load %struct.libfat_sector*, %struct.libfat_sector** %6, align 8
  %21 = getelementptr inbounds %struct.libfat_sector, %struct.libfat_sector* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %3, align 8
  br label %77

23:                                               ; preds = %13
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.libfat_sector*, %struct.libfat_sector** %6, align 8
  %26 = getelementptr inbounds %struct.libfat_sector, %struct.libfat_sector* %25, i32 0, i32 2
  %27 = load %struct.libfat_sector*, %struct.libfat_sector** %26, align 8
  store %struct.libfat_sector* %27, %struct.libfat_sector** %6, align 8
  br label %10

28:                                               ; preds = %10
  %29 = load i64, i64* @LIBFAT_SECTOR_SIZE, align 8
  %30 = add i64 24, %29
  %31 = call %struct.libfat_sector* @_mm_malloc(i64 %30, i32 16)
  store %struct.libfat_sector* %31, %struct.libfat_sector** %6, align 8
  %32 = load %struct.libfat_sector*, %struct.libfat_sector** %6, align 8
  %33 = icmp ne %struct.libfat_sector* %32, null
  br i1 %33, label %44, label %34

34:                                               ; preds = %28
  %35 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %4, align 8
  %36 = call i32 @libfat_flush(%struct.libfat_filesystem* %35)
  %37 = load i64, i64* @LIBFAT_SECTOR_SIZE, align 8
  %38 = add i64 24, %37
  %39 = call %struct.libfat_sector* @_mm_malloc(i64 %38, i32 16)
  store %struct.libfat_sector* %39, %struct.libfat_sector** %6, align 8
  %40 = load %struct.libfat_sector*, %struct.libfat_sector** %6, align 8
  %41 = icmp ne %struct.libfat_sector* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %34
  store i8* null, i8** %3, align 8
  br label %77

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43, %28
  %45 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %4, align 8
  %46 = getelementptr inbounds %struct.libfat_filesystem, %struct.libfat_filesystem* %45, i32 0, i32 0
  %47 = load i64 (i32, i8*, i64, i64)*, i64 (i32, i8*, i64, i64)** %46, align 8
  %48 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %4, align 8
  %49 = getelementptr inbounds %struct.libfat_filesystem, %struct.libfat_filesystem* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.libfat_sector*, %struct.libfat_sector** %6, align 8
  %52 = getelementptr inbounds %struct.libfat_sector, %struct.libfat_sector* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = load i64, i64* @LIBFAT_SECTOR_SIZE, align 8
  %55 = load i64, i64* %5, align 8
  %56 = call i64 %47(i32 %50, i8* %53, i64 %54, i64 %55)
  %57 = load i64, i64* @LIBFAT_SECTOR_SIZE, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %44
  %60 = load %struct.libfat_sector*, %struct.libfat_sector** %6, align 8
  %61 = call i32 @_mm_free(%struct.libfat_sector* %60)
  store i8* null, i8** %3, align 8
  br label %77

62:                                               ; preds = %44
  %63 = load i64, i64* %5, align 8
  %64 = load %struct.libfat_sector*, %struct.libfat_sector** %6, align 8
  %65 = getelementptr inbounds %struct.libfat_sector, %struct.libfat_sector* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %4, align 8
  %67 = getelementptr inbounds %struct.libfat_filesystem, %struct.libfat_filesystem* %66, i32 0, i32 1
  %68 = load %struct.libfat_sector*, %struct.libfat_sector** %67, align 8
  %69 = load %struct.libfat_sector*, %struct.libfat_sector** %6, align 8
  %70 = getelementptr inbounds %struct.libfat_sector, %struct.libfat_sector* %69, i32 0, i32 2
  store %struct.libfat_sector* %68, %struct.libfat_sector** %70, align 8
  %71 = load %struct.libfat_sector*, %struct.libfat_sector** %6, align 8
  %72 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %4, align 8
  %73 = getelementptr inbounds %struct.libfat_filesystem, %struct.libfat_filesystem* %72, i32 0, i32 1
  store %struct.libfat_sector* %71, %struct.libfat_sector** %73, align 8
  %74 = load %struct.libfat_sector*, %struct.libfat_sector** %6, align 8
  %75 = getelementptr inbounds %struct.libfat_sector, %struct.libfat_sector* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  store i8* %76, i8** %3, align 8
  br label %77

77:                                               ; preds = %62, %59, %42, %19
  %78 = load i8*, i8** %3, align 8
  ret i8* %78
}

declare dso_local %struct.libfat_sector* @_mm_malloc(i64, i32) #1

declare dso_local i32 @libfat_flush(%struct.libfat_filesystem*) #1

declare dso_local i32 @_mm_free(%struct.libfat_sector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
