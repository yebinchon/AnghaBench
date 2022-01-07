; ModuleID = '/home/carl/AnghaBench/sway/common/extr_background-image.c_load_background_image.c'
source_filename = "/home/carl/AnghaBench/sway/common/extr_background-image.c_load_background_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SWAY_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to read background image.\00", align 1
@CAIRO_STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [143 x i8] c"Failed to read background image: %s.\0ASway was compiled without gdk_pixbuf support, so only\0APNG images can be loaded. This is the likely cause.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @load_background_image(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i32* @cairo_image_surface_create_from_png(i8* %5)
  store i32* %6, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @SWAY_ERROR, align 4
  %11 = call i32 (i32, i8*, ...) @sway_log(i32 %10, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  br label %25

12:                                               ; preds = %1
  %13 = load i32*, i32** %4, align 8
  %14 = call i64 @cairo_surface_status(i32* %13)
  %15 = load i64, i64* @CAIRO_STATUS_SUCCESS, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load i32, i32* @SWAY_ERROR, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = call i64 @cairo_surface_status(i32* %19)
  %21 = call i32 @cairo_status_to_string(i64 %20)
  %22 = call i32 (i32, i8*, ...) @sway_log(i32 %18, i8* getelementptr inbounds ([143 x i8], [143 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  store i32* null, i32** %2, align 8
  br label %25

23:                                               ; preds = %12
  %24 = load i32*, i32** %4, align 8
  store i32* %24, i32** %2, align 8
  br label %25

25:                                               ; preds = %23, %17, %9
  %26 = load i32*, i32** %2, align 8
  ret i32* %26
}

declare dso_local i32* @cairo_image_surface_create_from_png(i8*) #1

declare dso_local i32 @sway_log(i32, i8*, ...) #1

declare dso_local i64 @cairo_surface_status(i32*) #1

declare dso_local i32 @cairo_status_to_string(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
