; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-image.c_xps_find_image_brush_source_part.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-image.c_xps_find_image_brush_source_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"ImageSource\00", align 1
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"cannot find image source attribute\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"{ColorConvertedBitmap\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"cannot find image source\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i8*, i32*, i32**, i32**)* @xps_find_image_brush_source_part to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xps_find_image_brush_source_part(i32* %0, i32* %1, i8* %2, i32* %3, i32** %4, i32** %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca [1024 x i8], align 16
  %15 = alloca [1024 x i8], align 16
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32** %4, i32*** %11, align 8
  store i32** %5, i32*** %12, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = call i8* @fz_xml_att(i32* %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i8* %20, i8** %13, align 8
  %21 = load i8*, i8** %13, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %6
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %26 = call i32 @fz_throw(i32* %24, i32 %25, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %23, %6
  %28 = load i8*, i8** %13, align 8
  %29 = call i8* @strstr(i8* %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i8*, i8** %13, align 8
  %31 = icmp eq i8* %29, %30
  br i1 %31, label %32, label %62

32:                                               ; preds = %27
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  %33 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %34 = load i8*, i8** %13, align 8
  %35 = call i32 @fz_strlcpy(i8* %33, i8* %34, i32 1024)
  %36 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %37 = call i8* @strchr(i8* %36, i8 signext 32)
  store i8* %37, i8** %18, align 8
  %38 = load i8*, i8** %18, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %61

40:                                               ; preds = %32
  %41 = load i8*, i8** %18, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  store i8* %42, i8** %16, align 8
  %43 = load i8*, i8** %18, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = call i8* @strchr(i8* %44, i8 signext 32)
  store i8* %45, i8** %18, align 8
  %46 = load i8*, i8** %18, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %60

48:                                               ; preds = %40
  %49 = load i8*, i8** %18, align 8
  store i8 0, i8* %49, align 1
  %50 = load i8*, i8** %18, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  store i8* %51, i8** %17, align 8
  %52 = load i8*, i8** %18, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = call i8* @strchr(i8* %53, i8 signext 125)
  store i8* %54, i8** %18, align 8
  %55 = load i8*, i8** %18, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = load i8*, i8** %18, align 8
  store i8 0, i8* %58, align 1
  br label %59

59:                                               ; preds = %57, %48
  br label %60

60:                                               ; preds = %59, %40
  br label %61

61:                                               ; preds = %60, %32
  br label %64

62:                                               ; preds = %27
  %63 = load i8*, i8** %13, align 8
  store i8* %63, i8** %16, align 8
  store i8* null, i8** %17, align 8
  br label %64

64:                                               ; preds = %62, %61
  %65 = load i8*, i8** %16, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %64
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %70 = call i32 @fz_throw(i32* %68, i32 %69, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %71

71:                                               ; preds = %67, %64
  %72 = load i32**, i32*** %11, align 8
  %73 = icmp ne i32** %72, null
  br i1 %73, label %74, label %86

74:                                               ; preds = %71
  %75 = load i32*, i32** %7, align 8
  %76 = load i32*, i32** %8, align 8
  %77 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %78 = load i8*, i8** %9, align 8
  %79 = load i8*, i8** %16, align 8
  %80 = call i32 @xps_resolve_url(i32* %75, i32* %76, i8* %77, i8* %78, i8* %79, i32 1024)
  %81 = load i32*, i32** %7, align 8
  %82 = load i32*, i32** %8, align 8
  %83 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %84 = call i32* @xps_read_part(i32* %81, i32* %82, i8* %83)
  %85 = load i32**, i32*** %11, align 8
  store i32* %84, i32** %85, align 8
  br label %86

86:                                               ; preds = %74, %71
  %87 = load i32**, i32*** %12, align 8
  %88 = icmp ne i32** %87, null
  br i1 %88, label %89, label %107

89:                                               ; preds = %86
  %90 = load i8*, i8** %17, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %104

92:                                               ; preds = %89
  %93 = load i32*, i32** %7, align 8
  %94 = load i32*, i32** %8, align 8
  %95 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %96 = load i8*, i8** %9, align 8
  %97 = load i8*, i8** %17, align 8
  %98 = call i32 @xps_resolve_url(i32* %93, i32* %94, i8* %95, i8* %96, i8* %97, i32 1024)
  %99 = load i32*, i32** %7, align 8
  %100 = load i32*, i32** %8, align 8
  %101 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %102 = call i32* @xps_read_part(i32* %99, i32* %100, i8* %101)
  %103 = load i32**, i32*** %12, align 8
  store i32* %102, i32** %103, align 8
  br label %106

104:                                              ; preds = %89
  %105 = load i32**, i32*** %12, align 8
  store i32* null, i32** %105, align 8
  br label %106

106:                                              ; preds = %104, %92
  br label %107

107:                                              ; preds = %106, %86
  ret void
}

declare dso_local i8* @fz_xml_att(i32*, i8*) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @fz_strlcpy(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @xps_resolve_url(i32*, i32*, i8*, i8*, i8*, i32) #1

declare dso_local i32* @xps_read_part(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
