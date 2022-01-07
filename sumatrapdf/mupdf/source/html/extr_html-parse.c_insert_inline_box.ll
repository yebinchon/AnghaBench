; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_html-parse.c_insert_inline_box.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_html-parse.c_insert_inline_box.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32, %struct.TYPE_7__*, %struct.TYPE_7__* }
%struct.genstate = type { i32, i32, i32 }

@BOX_FLOW = common dso_local global i64 0, align 8
@BOX_INLINE = common dso_local global i64 0, align 8
@BOX_BLOCK = common dso_local global i64 0, align 8
@BOX_TABLE_CELL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_7__*, %struct.TYPE_7__*, i32, %struct.genstate*)* @insert_inline_box to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_inline_box(i32* %0, %struct.TYPE_7__* %1, %struct.TYPE_7__* %2, i32 %3, %struct.genstate* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.genstate*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.genstate* %4, %struct.genstate** %10, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @BOX_FLOW, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %5
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @BOX_INLINE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %18, %5
  %25 = load i32*, i32** %6, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %27 = load i64, i64* @BOX_INLINE, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %29 = call i32 @insert_box(i32* %25, %struct.TYPE_7__* %26, i64 %27, %struct.TYPE_7__* %28)
  br label %109

30:                                               ; preds = %18
  br label %31

31:                                               ; preds = %45, %30
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @BOX_BLOCK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @BOX_TABLE_CELL, align 8
  %42 = icmp ne i64 %40, %41
  br label %43

43:                                               ; preds = %37, %31
  %44 = phi i1 [ false, %31 ], [ %42, %37 ]
  br i1 %44, label %45, label %49

45:                                               ; preds = %43
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  store %struct.TYPE_7__* %48, %struct.TYPE_7__** %8, align 8
  br label %31

49:                                               ; preds = %43
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = icmp ne %struct.TYPE_7__* %52, null
  br i1 %53, label %54, label %70

54:                                               ; preds = %49
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 3
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @BOX_FLOW, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %54
  %63 = load i32*, i32** %6, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %65 = load i64, i64* @BOX_INLINE, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 3
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = call i32 @insert_box(i32* %63, %struct.TYPE_7__* %64, i64 %65, %struct.TYPE_7__* %68)
  br label %108

70:                                               ; preds = %54, %49
  %71 = load i32*, i32** %6, align 8
  %72 = load %struct.genstate*, %struct.genstate** %10, align 8
  %73 = getelementptr inbounds %struct.genstate, %struct.genstate* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call %struct.TYPE_7__* @new_short_box(i32* %71, i32 %74, i32 %75)
  store %struct.TYPE_7__* %76, %struct.TYPE_7__** %12, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 3
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = icmp ne %struct.TYPE_7__* %79, null
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 8
  %85 = load i32*, i32** %6, align 8
  %86 = call i32 @fz_default_css_style(i32* %85, i32* %11)
  %87 = load i32*, i32** %6, align 8
  %88 = load %struct.genstate*, %struct.genstate** %10, align 8
  %89 = getelementptr inbounds %struct.genstate, %struct.genstate* %88, i32 0, i32 2
  %90 = load %struct.genstate*, %struct.genstate** %10, align 8
  %91 = getelementptr inbounds %struct.genstate, %struct.genstate* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @fz_css_enlist(i32* %87, i32* %11, i32* %89, i32 %92)
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  %96 = load i32*, i32** %6, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %98 = load i64, i64* @BOX_FLOW, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %100 = call i32 @insert_box(i32* %96, %struct.TYPE_7__* %97, i64 %98, %struct.TYPE_7__* %99)
  %101 = load i32*, i32** %6, align 8
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %103 = load i64, i64* @BOX_INLINE, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %105 = call i32 @insert_box(i32* %101, %struct.TYPE_7__* %102, i64 %103, %struct.TYPE_7__* %104)
  %106 = load %struct.genstate*, %struct.genstate** %10, align 8
  %107 = getelementptr inbounds %struct.genstate, %struct.genstate* %106, i32 0, i32 0
  store i32 1, i32* %107, align 4
  br label %108

108:                                              ; preds = %70, %62
  br label %109

109:                                              ; preds = %108, %24
  ret void
}

declare dso_local i32 @insert_box(i32*, %struct.TYPE_7__*, i64, %struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @new_short_box(i32*, i32, i32) #1

declare dso_local i32 @fz_default_css_style(i32*, i32*) #1

declare dso_local i32 @fz_css_enlist(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
