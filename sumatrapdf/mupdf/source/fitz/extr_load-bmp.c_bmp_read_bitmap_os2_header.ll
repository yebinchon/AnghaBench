; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-bmp.c_bmp_read_bitmap_os2_header.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-bmp.c_bmp_read_bitmap_os2_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.info = type { i32, i32, i8*, i8*, i8*, i32, i8*, i8* }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"unsupported os2 header size in bmp image\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"premature end in bitmap os2 header in bmp image\00", align 1
@BI_RGB = common dso_local global i32 0, align 4
@BI_UNSUPPORTED = common dso_local global i32 0, align 4
@BI_RLE24 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, %struct.info*, i8*, i8*)* @bmp_read_bitmap_os2_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @bmp_read_bitmap_os2_header(i32* %0, %struct.info* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.info* %1, %struct.info** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = call i8* @read32(i8* %11)
  %13 = ptrtoint i8* %12 to i32
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 16
  br i1 %15, label %16, label %23

16:                                               ; preds = %4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 64
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %22 = call i32 @fz_throw(i32* %20, i32 %21, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %19, %16, %4
  %24 = load i32, i32* %9, align 4
  %25 = icmp sge i32 %24, 16
  br i1 %25, label %26, label %56

26:                                               ; preds = %23
  %27 = load i8*, i8** %8, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = ptrtoint i8* %27 to i64
  %30 = ptrtoint i8* %28 to i64
  %31 = sub i64 %29, %30
  %32 = icmp slt i64 %31, 16
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %36 = call i32 @fz_throw(i32* %34, i32 %35, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %33, %26
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 4
  %40 = call i8* @read32(i8* %39)
  %41 = load %struct.info*, %struct.info** %6, align 8
  %42 = getelementptr inbounds %struct.info, %struct.info* %41, i32 0, i32 7
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 8
  %45 = call i8* @read32(i8* %44)
  %46 = load %struct.info*, %struct.info** %6, align 8
  %47 = getelementptr inbounds %struct.info, %struct.info* %46, i32 0, i32 6
  store i8* %45, i8** %47, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 14
  %50 = call i32 @read16(i8* %49)
  %51 = load %struct.info*, %struct.info** %6, align 8
  %52 = getelementptr inbounds %struct.info, %struct.info* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @BI_RGB, align 4
  %54 = load %struct.info*, %struct.info** %6, align 8
  %55 = getelementptr inbounds %struct.info, %struct.info* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  br label %56

56:                                               ; preds = %37, %23
  %57 = load i32, i32* %9, align 4
  %58 = icmp sge i32 %57, 64
  br i1 %58, label %59, label %111

59:                                               ; preds = %56
  %60 = load i8*, i8** %8, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = ptrtoint i8* %60 to i64
  %63 = ptrtoint i8* %61 to i64
  %64 = sub i64 %62, %63
  %65 = icmp slt i64 %64, 64
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %69 = call i32 @fz_throw(i32* %67, i32 %68, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %70

70:                                               ; preds = %66, %59
  %71 = load i8*, i8** %7, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 16
  %73 = call i8* @read32(i8* %72)
  %74 = ptrtoint i8* %73 to i32
  %75 = load %struct.info*, %struct.info** %6, align 8
  %76 = getelementptr inbounds %struct.info, %struct.info* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 24
  %79 = call i8* @read32(i8* %78)
  %80 = load %struct.info*, %struct.info** %6, align 8
  %81 = getelementptr inbounds %struct.info, %struct.info* %80, i32 0, i32 4
  store i8* %79, i8** %81, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 28
  %84 = call i8* @read32(i8* %83)
  %85 = load %struct.info*, %struct.info** %6, align 8
  %86 = getelementptr inbounds %struct.info, %struct.info* %85, i32 0, i32 3
  store i8* %84, i8** %86, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 32
  %89 = call i8* @read32(i8* %88)
  %90 = load %struct.info*, %struct.info** %6, align 8
  %91 = getelementptr inbounds %struct.info, %struct.info* %90, i32 0, i32 2
  store i8* %89, i8** %91, align 8
  %92 = load %struct.info*, %struct.info** %6, align 8
  %93 = getelementptr inbounds %struct.info, %struct.info* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %70
  %97 = load i32, i32* @BI_UNSUPPORTED, align 4
  %98 = load %struct.info*, %struct.info** %6, align 8
  %99 = getelementptr inbounds %struct.info, %struct.info* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  br label %110

100:                                              ; preds = %70
  %101 = load %struct.info*, %struct.info** %6, align 8
  %102 = getelementptr inbounds %struct.info, %struct.info* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp eq i32 %103, 4
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load i32, i32* @BI_RLE24, align 4
  %107 = load %struct.info*, %struct.info** %6, align 8
  %108 = getelementptr inbounds %struct.info, %struct.info* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  br label %109

109:                                              ; preds = %105, %100
  br label %110

110:                                              ; preds = %109, %96
  br label %111

111:                                              ; preds = %110, %56
  %112 = load %struct.info*, %struct.info** %6, align 8
  %113 = getelementptr inbounds %struct.info, %struct.info* %112, i32 0, i32 1
  store i32 1, i32* %113, align 4
  %114 = load i8*, i8** %7, align 8
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  ret i8* %117
}

declare dso_local i8* @read32(i8*) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local i32 @read16(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
