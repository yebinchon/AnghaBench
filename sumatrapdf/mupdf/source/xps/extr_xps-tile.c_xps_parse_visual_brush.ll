; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-tile.c_xps_parse_visual_brush.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-tile.c_xps_parse_visual_brush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"Visual\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"VisualBrush.Visual\00", align 1
@xps_paint_visual_brush = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xps_parse_visual_brush(i32* %0, i32* %1, i32 %2, i32 %3, i8* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  store i32* null, i32** %18, align 8
  %19 = load i32*, i32** %14, align 8
  %20 = call i8* @fz_xml_att(i32* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %20, i8** %17, align 8
  %21 = load i32*, i32** %14, align 8
  %22 = call i32* @fz_xml_down(i32* %21)
  store i32* %22, i32** %15, align 8
  br label %23

23:                                               ; preds = %34, %7
  %24 = load i32*, i32** %15, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %23
  %27 = load i32*, i32** %15, align 8
  %28 = call i64 @fz_xml_is_tag(i32* %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32*, i32** %15, align 8
  %32 = call i32* @fz_xml_down(i32* %31)
  store i32* %32, i32** %18, align 8
  br label %33

33:                                               ; preds = %30, %26
  br label %34

34:                                               ; preds = %33
  %35 = load i32*, i32** %15, align 8
  %36 = call i32* @fz_xml_next(i32* %35)
  store i32* %36, i32** %15, align 8
  br label %23

37:                                               ; preds = %23
  %38 = load i8*, i8** %12, align 8
  store i8* %38, i8** %16, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = load i32*, i32** %13, align 8
  %42 = call i32 @xps_resolve_resource_reference(i32* %39, i32* %40, i32* %41, i8** %17, i32** %18, i8** %16)
  %43 = load i32*, i32** %18, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %56

45:                                               ; preds = %37
  %46 = load i32*, i32** %8, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i8*, i8** %16, align 8
  %51 = load i32*, i32** %13, align 8
  %52 = load i32*, i32** %14, align 8
  %53 = load i32, i32* @xps_paint_visual_brush, align 4
  %54 = load i32*, i32** %18, align 8
  %55 = call i32 @xps_parse_tiling_brush(i32* %46, i32* %47, i32 %48, i32 %49, i8* %50, i32* %51, i32* %52, i32 %53, i32* %54)
  br label %56

56:                                               ; preds = %45, %37
  ret void
}

declare dso_local i8* @fz_xml_att(i32*, i8*) #1

declare dso_local i32* @fz_xml_down(i32*) #1

declare dso_local i64 @fz_xml_is_tag(i32*, i8*) #1

declare dso_local i32* @fz_xml_next(i32*) #1

declare dso_local i32 @xps_resolve_resource_reference(i32*, i32*, i32*, i8**, i32**, i8**) #1

declare dso_local i32 @xps_parse_tiling_brush(i32*, i32*, i32, i32, i8*, i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
