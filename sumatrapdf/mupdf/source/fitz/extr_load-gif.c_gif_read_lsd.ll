; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-gif.c_gif_read_lsd.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-gif.c_gif_read_lsd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.info = type { i8, i8, i8, i32, i8, i32, i32, i32 }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"premature end in logical screen descriptor in gif image\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"image width must be > 0\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"image height must be > 0\00", align 1
@UINT_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"image dimensions might overflow\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, %struct.info*, i8*, i8*)* @gif_read_lsd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gif_read_lsd(i32* %0, %struct.info* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.info* %1, %struct.info** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = ptrtoint i8* %9 to i64
  %12 = ptrtoint i8* %10 to i64
  %13 = sub i64 %11, %12
  %14 = icmp slt i64 %13, 7
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %18 = call i32 @fz_throw(i32* %16, i32 %17, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %15, %4
  %20 = load i8*, i8** %7, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = shl i32 %23, 8
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = or i32 %24, %28
  %30 = trunc i32 %29 to i8
  %31 = load %struct.info*, %struct.info** %6, align 8
  %32 = getelementptr inbounds %struct.info, %struct.info* %31, i32 0, i32 0
  store i8 %30, i8* %32, align 4
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 3
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = shl i32 %36, 8
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 2
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = or i32 %37, %41
  %43 = trunc i32 %42 to i8
  %44 = load %struct.info*, %struct.info** %6, align 8
  %45 = getelementptr inbounds %struct.info, %struct.info* %44, i32 0, i32 1
  store i8 %43, i8* %45, align 1
  %46 = load %struct.info*, %struct.info** %6, align 8
  %47 = getelementptr inbounds %struct.info, %struct.info* %46, i32 0, i32 0
  %48 = load i8, i8* %47, align 4
  %49 = zext i8 %48 to i32
  %50 = icmp sle i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %19
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %54 = call i32 @fz_throw(i32* %52, i32 %53, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %51, %19
  %56 = load %struct.info*, %struct.info** %6, align 8
  %57 = getelementptr inbounds %struct.info, %struct.info* %56, i32 0, i32 1
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp sle i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %64 = call i32 @fz_throw(i32* %62, i32 %63, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %65

65:                                               ; preds = %61, %55
  %66 = load %struct.info*, %struct.info** %6, align 8
  %67 = getelementptr inbounds %struct.info, %struct.info* %66, i32 0, i32 1
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = load i32, i32* @UINT_MAX, align 4
  %71 = load %struct.info*, %struct.info** %6, align 8
  %72 = getelementptr inbounds %struct.info, %struct.info* %71, i32 0, i32 0
  %73 = load i8, i8* %72, align 4
  %74 = zext i8 %73 to i32
  %75 = sdiv i32 %70, %74
  %76 = sdiv i32 %75, 3
  %77 = icmp sgt i32 %69, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %65
  %79 = load i32*, i32** %5, align 8
  %80 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %81 = call i32 @fz_throw(i32* %79, i32 %80, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %82

82:                                               ; preds = %78, %65
  %83 = load i8*, i8** %7, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 4
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = ashr i32 %86, 7
  %88 = and i32 %87, 1
  %89 = trunc i32 %88 to i8
  %90 = load %struct.info*, %struct.info** %6, align 8
  %91 = getelementptr inbounds %struct.info, %struct.info* %90, i32 0, i32 2
  store i8 %89, i8* %91, align 2
  %92 = load %struct.info*, %struct.info** %6, align 8
  %93 = getelementptr inbounds %struct.info, %struct.info* %92, i32 0, i32 2
  %94 = load i8, i8* %93, align 2
  %95 = icmp ne i8 %94, 0
  br i1 %95, label %96, label %116

96:                                               ; preds = %82
  %97 = load i8*, i8** %7, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 4
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = and i32 %100, 7
  %102 = add nsw i32 %101, 1
  %103 = shl i32 1, %102
  %104 = load %struct.info*, %struct.info** %6, align 8
  %105 = getelementptr inbounds %struct.info, %struct.info* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 4
  %106 = load i8*, i8** %7, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 5
  %108 = load i8, i8* %107, align 1
  %109 = load %struct.info*, %struct.info** %6, align 8
  %110 = getelementptr inbounds %struct.info, %struct.info* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = sub nsw i32 %111, 1
  %113 = call i32 @fz_clampi(i8 zeroext %108, i32 0, i32 %112)
  %114 = load %struct.info*, %struct.info** %6, align 8
  %115 = getelementptr inbounds %struct.info, %struct.info* %114, i32 0, i32 7
  store i32 %113, i32* %115, align 4
  br label %116

116:                                              ; preds = %96, %82
  %117 = load i8*, i8** %7, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 6
  %119 = load i8, i8* %118, align 1
  %120 = load %struct.info*, %struct.info** %6, align 8
  %121 = getelementptr inbounds %struct.info, %struct.info* %120, i32 0, i32 4
  store i8 %119, i8* %121, align 4
  %122 = load %struct.info*, %struct.info** %6, align 8
  %123 = getelementptr inbounds %struct.info, %struct.info* %122, i32 0, i32 5
  store i32 96, i32* %123, align 4
  %124 = load %struct.info*, %struct.info** %6, align 8
  %125 = getelementptr inbounds %struct.info, %struct.info* %124, i32 0, i32 6
  store i32 96, i32* %125, align 4
  %126 = load %struct.info*, %struct.info** %6, align 8
  %127 = getelementptr inbounds %struct.info, %struct.info* %126, i32 0, i32 4
  %128 = load i8, i8* %127, align 4
  %129 = zext i8 %128 to i32
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %142

131:                                              ; preds = %116
  %132 = load %struct.info*, %struct.info** %6, align 8
  %133 = getelementptr inbounds %struct.info, %struct.info* %132, i32 0, i32 4
  %134 = load i8, i8* %133, align 4
  %135 = uitofp i8 %134 to float
  %136 = fadd float %135, 1.500000e+01
  %137 = fdiv float %136, 6.400000e+01
  %138 = fmul float %137, 9.600000e+01
  %139 = fptosi float %138 to i32
  %140 = load %struct.info*, %struct.info** %6, align 8
  %141 = getelementptr inbounds %struct.info, %struct.info* %140, i32 0, i32 6
  store i32 %139, i32* %141, align 4
  br label %142

142:                                              ; preds = %131, %116
  %143 = load i8*, i8** %7, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 7
  ret i8* %144
}

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local i32 @fz_clampi(i8 zeroext, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
