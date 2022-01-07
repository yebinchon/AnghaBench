; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_format.c_FormatPartition.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_format.c_FormatPartition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@FS_MAX = common dso_local global i64 0, align 8
@ERROR_SEVERITY_ERROR = common dso_local global i32 0, align 4
@FACILITY_STORAGE = common dso_local global i32 0, align 4
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@actual_fs_type = common dso_local global i64 0, align 8
@FS_FAT32 = common dso_local global i64 0, align 8
@SelectedDrive = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@LARGE_FAT32_SIZE = common dso_local global i64 0, align 8
@force_large_fat32 = common dso_local global i64 0, align 8
@FP_LARGE_FAT32 = common dso_local global i32 0, align 4
@FileSystemLabel = common dso_local global i32* null, align 8
@FS_EXT2 = common dso_local global i64 0, align 8
@use_vds = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i64, i32, i32)* @FormatPartition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FormatPartition(i32 %0, i32 %1, i32 %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 128
  br i1 %15, label %32, label %16

16:                                               ; preds = %6
  %17 = load i32, i32* %8, align 4
  %18 = icmp sgt i32 %17, 256
  br i1 %18, label %32, label %19

19:                                               ; preds = %16
  %20 = load i64, i64* %11, align 8
  %21 = load i64, i64* @FS_MAX, align 8
  %22 = icmp uge i64 %20, %21
  br i1 %22, label %32, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %23
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = sub nsw i32 %28, 1
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %26, %19, %16, %6
  %33 = load i32, i32* @ERROR_SEVERITY_ERROR, align 4
  %34 = load i32, i32* @FACILITY_STORAGE, align 4
  %35 = call i32 @FAC(i32 %34)
  %36 = or i32 %33, %35
  %37 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* %7, align 4
  br label %108

40:                                               ; preds = %26, %23
  %41 = load i64, i64* %11, align 8
  store i64 %41, i64* @actual_fs_type, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* @FS_FAT32, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %68

45:                                               ; preds = %40
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SelectedDrive, i32 0, i32 0), align 8
  %47 = load i64, i64* @LARGE_FAT32_SIZE, align 8
  %48 = icmp sgt i64 %46, %47
  br i1 %48, label %57, label %49

49:                                               ; preds = %45
  %50 = load i64, i64* @force_large_fat32, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* @FP_LARGE_FAT32, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %52, %49, %45
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32*, i32** @FileSystemLabel, align 8
  %62 = load i64, i64* %11, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @FormatLargeFAT32(i32 %58, i32 %59, i32 %60, i32 %64, i32 %65, i32 %66)
  store i32 %67, i32* %7, align 4
  br label %108

68:                                               ; preds = %52, %40
  %69 = load i64, i64* %11, align 8
  %70 = load i64, i64* @FS_EXT2, align 8
  %71 = icmp uge i64 %69, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %68
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load i32*, i32** @FileSystemLabel, align 8
  %77 = load i64, i64* %11, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @FormatExtFs(i32 %73, i32 %74, i32 %75, i32 %79, i32 %80, i32 %81)
  store i32 %82, i32* %7, align 4
  br label %108

83:                                               ; preds = %68
  %84 = load i64, i64* @use_vds, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %83
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %10, align 4
  %90 = load i32*, i32** @FileSystemLabel, align 8
  %91 = load i64, i64* %11, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @FormatNativeVds(i32 %87, i32 %88, i32 %89, i32 %93, i32 %94, i32 %95)
  store i32 %96, i32* %7, align 4
  br label %108

97:                                               ; preds = %83
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load i32*, i32** @FileSystemLabel, align 8
  %102 = load i64, i64* %11, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %13, align 4
  %107 = call i32 @FormatNative(i32 %98, i32 %99, i32 %100, i32 %104, i32 %105, i32 %106)
  store i32 %107, i32* %7, align 4
  br label %108

108:                                              ; preds = %97, %86, %72, %57, %32
  %109 = load i32, i32* %7, align 4
  ret i32 %109
}

declare dso_local i32 @FAC(i32) #1

declare dso_local i32 @FormatLargeFAT32(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FormatExtFs(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FormatNativeVds(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FormatNative(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
