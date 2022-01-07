; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-glyphs.c_xps_select_best_font_encoding.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-glyphs.c_xps_select_best_font_encoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i32 }

@xps_select_best_font_encoding.xps_cmap_list = internal global [9 x %struct.anon] [%struct.anon { i32 3, i32 10 }, %struct.anon { i32 3, i32 1 }, %struct.anon { i32 3, i32 5 }, %struct.anon { i32 3, i32 4 }, %struct.anon { i32 3, i32 3 }, %struct.anon { i32 3, i32 2 }, %struct.anon { i32 3, i32 0 }, %struct.anon { i32 1, i32 0 }, %struct.anon { i32 -1, i32 -1 }], align 16
@.str = private unnamed_addr constant [28 x i8] c"cannot find a suitable cmap\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @xps_select_best_font_encoding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xps_select_best_font_encoding(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @xps_count_font_encodings(i32* %12, i32* %13)
  store i32 %14, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %57, %3
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [9 x %struct.anon], [9 x %struct.anon]* @xps_select_best_font_encoding.xps_cmap_list, i64 0, i64 %17
  %19 = getelementptr inbounds %struct.anon, %struct.anon* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %60

22:                                               ; preds = %15
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %53, %22
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %56

27:                                               ; preds = %23
  %28 = load i32*, i32** %4, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @xps_identify_font_encoding(i32* %28, i32* %29, i32 %30, i32* %10, i32* %11)
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [9 x %struct.anon], [9 x %struct.anon]* @xps_select_best_font_encoding.xps_cmap_list, i64 0, i64 %34
  %36 = getelementptr inbounds %struct.anon, %struct.anon* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %32, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %27
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [9 x %struct.anon], [9 x %struct.anon]* @xps_select_best_font_encoding.xps_cmap_list, i64 0, i64 %42
  %44 = getelementptr inbounds %struct.anon, %struct.anon* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %40, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %39
  %48 = load i32*, i32** %4, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @xps_select_font_encoding(i32* %48, i32* %49, i32 %50)
  br label %63

52:                                               ; preds = %39, %27
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %23

56:                                               ; preds = %23
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %15

60:                                               ; preds = %15
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @fz_warn(i32* %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %47
  ret void
}

declare dso_local i32 @xps_count_font_encodings(i32*, i32*) #1

declare dso_local i32 @xps_identify_font_encoding(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @xps_select_font_encoding(i32*, i32*, i32) #1

declare dso_local i32 @fz_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
