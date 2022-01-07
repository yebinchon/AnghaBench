; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/lib/vfdlib/extr_vfdfat.c_FormatBufferFat.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/lib/vfdlib/extr_vfdfat.c_FormatBufferFat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32, i32*, i32* }
%struct.TYPE_10__ = type { i32, i32*, i32*, i32 }

@.str = private unnamed_addr constant [27 x i8] c"[VFD] VfdFormatImage - IN\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"[VFD] Unsupported media size %lu\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@VFD_FORMAT_FILL_DATA = common dso_local global i32 0, align 4
@VFD_BYTES_PER_SECTOR = common dso_local global i32 0, align 4
@VFD_JUMP_CODE = common dso_local global %struct.TYPE_12__* null, align 8
@VFD_OEM_NAME = common dso_local global %struct.TYPE_12__* null, align 8
@VFD_VOLUME_LABEL = common dso_local global %struct.TYPE_12__* null, align 8
@VFD_FILESYSTEM = common dso_local global %struct.TYPE_12__* null, align 8
@FAT_DIR_ENTRY_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"[VFD] VfdFormatImage - OUT\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FormatBufferFat(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = call i32 @VFDTRACE(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.TYPE_12__* @SelectDosBpb(i32 %11)
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %6, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %14 = icmp ne %struct.TYPE_12__* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i8*
  %19 = call i32 @VFDTRACE(i32 0, i8* %18)
  %20 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %20, i32* %3, align 4
  br label %127

21:                                               ; preds = %2
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @VFD_SECTOR_TO_BYTE(i32 %23)
  %25 = load i32, i32* @VFD_FORMAT_FILL_DATA, align 4
  %26 = call i32 @FillMemory(i32* %22, i32 %24, i32 %25)
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* @VFD_BYTES_PER_SECTOR, align 4
  %29 = call i32 @ZeroMemory(i32* %27, i32 %28)
  %30 = load i32*, i32** %4, align 8
  %31 = bitcast i32* %30 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %31, %struct.TYPE_11__** %7, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** @VFD_JUMP_CODE, align 8
  %36 = call i32 @CopyMemory(i32* %34, %struct.TYPE_12__* %35, i32 8)
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** @VFD_OEM_NAME, align 8
  %41 = call i32 @CopyMemory(i32* %39, %struct.TYPE_12__* %40, i32 8)
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %45 = call i32 @CopyMemory(i32* %43, %struct.TYPE_12__* %44, i32 4)
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  store i32 41, i32* %48, align 8
  %49 = call i32 (...) @GetTickCount()
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 3
  store i32 %49, i32* %52, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** @VFD_VOLUME_LABEL, align 8
  %58 = call i32 @CopyMemory(i32* %56, %struct.TYPE_12__* %57, i32 8)
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** @VFD_FILESYSTEM, align 8
  %64 = call i32 @CopyMemory(i32* %62, %struct.TYPE_12__* %63, i32 8)
  %65 = load i32*, i32** %4, align 8
  %66 = load i32, i32* @VFD_BYTES_PER_SECTOR, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = getelementptr inbounds i32, i32* %68, i64 -2
  store i32 85, i32* %69, align 4
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* @VFD_BYTES_PER_SECTOR, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = getelementptr inbounds i32, i32* %73, i64 -1
  store i32 170, i32* %74, align 4
  %75 = load i32*, i32** %4, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @VFD_SECTOR_TO_BYTE(i32 %78)
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %75, i64 %80
  store i32* %81, i32** %8, align 8
  %82 = load i32*, i32** %8, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = mul nsw i32 %85, %88
  %90 = call i32 @VFD_SECTOR_TO_BYTE(i32 %89)
  %91 = call i32 @ZeroMemory(i32* %82, i32 %90)
  store i32 0, i32* %9, align 4
  br label %92

92:                                               ; preds = %114, %21
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = icmp slt i32 %93, %96
  br i1 %97, label %98, label %117

98:                                               ; preds = %92
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %8, align 8
  store i32 %101, i32* %102, align 4
  %103 = load i32*, i32** %8, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  store i32 255, i32* %104, align 4
  %105 = load i32*, i32** %8, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  store i32 255, i32* %106, align 4
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @VFD_SECTOR_TO_BYTE(i32 %109)
  %111 = load i32*, i32** %8, align 8
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  store i32* %113, i32** %8, align 8
  br label %114

114:                                              ; preds = %98
  %115 = load i32, i32* %9, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %9, align 4
  br label %92

117:                                              ; preds = %92
  %118 = load i32*, i32** %8, align 8
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @FAT_DIR_ENTRY_SIZE, align 4
  %123 = mul nsw i32 %121, %122
  %124 = call i32 @ZeroMemory(i32* %118, i32 %123)
  %125 = call i32 @VFDTRACE(i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %126 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %117, %15
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i32 @VFDTRACE(i32, i8*) #1

declare dso_local %struct.TYPE_12__* @SelectDosBpb(i32) #1

declare dso_local i32 @FillMemory(i32*, i32, i32) #1

declare dso_local i32 @VFD_SECTOR_TO_BYTE(i32) #1

declare dso_local i32 @ZeroMemory(i32*, i32) #1

declare dso_local i32 @CopyMemory(i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @GetTickCount(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
