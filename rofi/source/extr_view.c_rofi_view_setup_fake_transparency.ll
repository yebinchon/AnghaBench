; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_view.c_rofi_view_setup_fake_transparency.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_view.c_rofi_view_setup_fake_transparency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i64, i32* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@CacheState = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [11 x i8] c"Fake start\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"real\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"screenshot\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"background\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Opening %s to use as background.\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"Get surface.\00", align 1
@CAIRO_STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [43 x i8] c"Failed to open surface fake background: %s\00", align 1
@CAIRO_FORMAT_ARGB32 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"Fake transparency\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @rofi_view_setup_fake_transparency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rofi_view_setup_fake_transparency(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CacheState, i32 0, i32 2), align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %85

8:                                                ; preds = %1
  store i32* null, i32** %3, align 8
  %9 = call i32 @TICK_N(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %10 = load i8*, i8** %2, align 8
  %11 = call i64 @g_strcmp0(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  br label %85

14:                                               ; preds = %8
  %15 = load i8*, i8** %2, align 8
  %16 = call i64 @g_strcmp0(i8* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = call i32* (...) @x11_helper_get_screenshot_surface()
  store i32* %19, i32** %3, align 8
  br label %37

20:                                               ; preds = %14
  %21 = load i8*, i8** %2, align 8
  %22 = call i64 @g_strcmp0(i8* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32* (...) @x11_helper_get_bg_surface()
  store i32* %25, i32** %3, align 8
  br label %36

26:                                               ; preds = %20
  %27 = load i8*, i8** %2, align 8
  %28 = call i8* @rofi_expand_path(i8* %27)
  store i8* %28, i8** %4, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @g_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %29)
  %31 = load i8*, i8** %4, align 8
  %32 = call i32* @cairo_image_surface_create_from_png(i8* %31)
  store i32* %32, i32** %3, align 8
  %33 = load i64, i64* @TRUE, align 8
  store i64 %33, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CacheState, i32 0, i32 1), align 8
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @g_free(i8* %34)
  br label %36

36:                                               ; preds = %26, %24
  br label %37

37:                                               ; preds = %36, %18
  br label %38

38:                                               ; preds = %37
  %39 = call i32 @TICK_N(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %40 = load i32*, i32** %3, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %83

42:                                               ; preds = %38
  %43 = load i32*, i32** %3, align 8
  %44 = call i64 @cairo_surface_status(i32* %43)
  %45 = load i64, i64* @CAIRO_STATUS_SUCCESS, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load i32*, i32** %3, align 8
  %49 = call i64 @cairo_surface_status(i32* %48)
  %50 = call i8* @cairo_status_to_string(i64 %49)
  %51 = call i32 @g_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i8* %50)
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @cairo_surface_destroy(i32* %52)
  store i32* null, i32** %3, align 8
  br label %82

54:                                               ; preds = %42
  %55 = load i32, i32* @CAIRO_FORMAT_ARGB32, align 4
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CacheState, i32 0, i32 0, i32 3), align 4
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CacheState, i32 0, i32 0, i32 2), align 8
  %58 = call i32* @cairo_image_surface_create(i32 %55, i32 %56, i32 %57)
  store i32* %58, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CacheState, i32 0, i32 2), align 8
  %59 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CacheState, i32 0, i32 2), align 8
  %60 = call i32* @cairo_create(i32* %59)
  store i32* %60, i32** %5, align 8
  %61 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CacheState, i32 0, i32 1), align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %54
  %64 = load i32*, i32** %5, align 8
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 @cairo_set_source_surface(i32* %64, i32* %65, i32 0, i32 0)
  br label %75

67:                                               ; preds = %54
  %68 = load i32*, i32** %5, align 8
  %69 = load i32*, i32** %3, align 8
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CacheState, i32 0, i32 0, i32 1), align 4
  %71 = sub nsw i32 0, %70
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CacheState, i32 0, i32 0, i32 0), align 8
  %73 = sub nsw i32 0, %72
  %74 = call i32 @cairo_set_source_surface(i32* %68, i32* %69, i32 %71, i32 %73)
  br label %75

75:                                               ; preds = %67, %63
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 @cairo_paint(i32* %76)
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 @cairo_destroy(i32* %78)
  %80 = load i32*, i32** %3, align 8
  %81 = call i32 @cairo_surface_destroy(i32* %80)
  br label %82

82:                                               ; preds = %75, %47
  br label %83

83:                                               ; preds = %82, %38
  %84 = call i32 @TICK_N(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  br label %85

85:                                               ; preds = %13, %83, %1
  ret void
}

declare dso_local i32 @TICK_N(i8*) #1

declare dso_local i64 @g_strcmp0(i8*, i8*) #1

declare dso_local i32* @x11_helper_get_screenshot_surface(...) #1

declare dso_local i32* @x11_helper_get_bg_surface(...) #1

declare dso_local i8* @rofi_expand_path(i8*) #1

declare dso_local i32 @g_debug(i8*, i8*) #1

declare dso_local i32* @cairo_image_surface_create_from_png(i8*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i64 @cairo_surface_status(i32*) #1

declare dso_local i8* @cairo_status_to_string(i64) #1

declare dso_local i32 @cairo_surface_destroy(i32*) #1

declare dso_local i32* @cairo_image_surface_create(i32, i32, i32) #1

declare dso_local i32* @cairo_create(i32*) #1

declare dso_local i32 @cairo_set_source_surface(i32*, i32*, i32, i32) #1

declare dso_local i32 @cairo_paint(i32*) #1

declare dso_local i32 @cairo_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
