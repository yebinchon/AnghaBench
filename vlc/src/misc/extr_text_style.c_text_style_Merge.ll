; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_text_style.c_text_style_Merge.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_text_style.c_text_style_Merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i8*, i8* }

@STYLE_NO_DEFAULTS = common dso_local global i32 0, align 4
@i_font_color = common dso_local global i32 0, align 4
@STYLE_HAS_FONT_COLOR = common dso_local global i32 0, align 4
@i_font_alpha = common dso_local global i32 0, align 4
@STYLE_HAS_FONT_ALPHA = common dso_local global i32 0, align 4
@i_outline_color = common dso_local global i32 0, align 4
@STYLE_HAS_OUTLINE_COLOR = common dso_local global i32 0, align 4
@i_outline_alpha = common dso_local global i32 0, align 4
@STYLE_HAS_OUTLINE_ALPHA = common dso_local global i32 0, align 4
@i_shadow_color = common dso_local global i32 0, align 4
@STYLE_HAS_SHADOW_COLOR = common dso_local global i32 0, align 4
@i_shadow_alpha = common dso_local global i32 0, align 4
@STYLE_HAS_SHADOW_ALPHA = common dso_local global i32 0, align 4
@i_background_color = common dso_local global i32 0, align 4
@STYLE_HAS_BACKGROUND_COLOR = common dso_local global i32 0, align 4
@i_background_alpha = common dso_local global i32 0, align 4
@STYLE_HAS_BACKGROUND_ALPHA = common dso_local global i32 0, align 4
@e_wrapinfo = common dso_local global i32 0, align 4
@STYLE_HAS_WRAP_INFO = common dso_local global i32 0, align 4
@f_font_relsize = common dso_local global i32 0, align 4
@i_font_size = common dso_local global i32 0, align 4
@i_outline_width = common dso_local global i32 0, align 4
@i_shadow_width = common dso_local global i32 0, align 4
@i_spacing = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @text_style_Merge(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 3
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %30

11:                                               ; preds = %3
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 3
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %16, %11
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 3
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @free(i8* %22)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 3
  %26 = load i8*, i8** %25, align 8
  %27 = call i8* @strdup(i8* %26)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 3
  store i8* %27, i8** %29, align 8
  br label %30

30:                                               ; preds = %19, %16, %3
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %54

35:                                               ; preds = %30
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %40, %35
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @free(i8* %46)
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = load i8*, i8** %49, align 8
  %51 = call i8* @strdup(i8* %50)
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  store i8* %51, i8** %53, align 8
  br label %54

54:                                               ; preds = %43, %40, %30
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @STYLE_NO_DEFAULTS, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %102

60:                                               ; preds = %54
  %61 = load i32, i32* @i_font_color, align 4
  %62 = load i32, i32* @STYLE_HAS_FONT_COLOR, align 4
  %63 = call i32 @MERGE(i32 %61, i32 %62)
  %64 = load i32, i32* @i_font_alpha, align 4
  %65 = load i32, i32* @STYLE_HAS_FONT_ALPHA, align 4
  %66 = call i32 @MERGE(i32 %64, i32 %65)
  %67 = load i32, i32* @i_outline_color, align 4
  %68 = load i32, i32* @STYLE_HAS_OUTLINE_COLOR, align 4
  %69 = call i32 @MERGE(i32 %67, i32 %68)
  %70 = load i32, i32* @i_outline_alpha, align 4
  %71 = load i32, i32* @STYLE_HAS_OUTLINE_ALPHA, align 4
  %72 = call i32 @MERGE(i32 %70, i32 %71)
  %73 = load i32, i32* @i_shadow_color, align 4
  %74 = load i32, i32* @STYLE_HAS_SHADOW_COLOR, align 4
  %75 = call i32 @MERGE(i32 %73, i32 %74)
  %76 = load i32, i32* @i_shadow_alpha, align 4
  %77 = load i32, i32* @STYLE_HAS_SHADOW_ALPHA, align 4
  %78 = call i32 @MERGE(i32 %76, i32 %77)
  %79 = load i32, i32* @i_background_color, align 4
  %80 = load i32, i32* @STYLE_HAS_BACKGROUND_COLOR, align 4
  %81 = call i32 @MERGE(i32 %79, i32 %80)
  %82 = load i32, i32* @i_background_alpha, align 4
  %83 = load i32, i32* @STYLE_HAS_BACKGROUND_ALPHA, align 4
  %84 = call i32 @MERGE(i32 %82, i32 %83)
  %85 = load i32, i32* @e_wrapinfo, align 4
  %86 = load i32, i32* @STYLE_HAS_WRAP_INFO, align 4
  %87 = call i32 @MERGE(i32 %85, i32 %86)
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 8
  br label %102

102:                                              ; preds = %60, %54
  %103 = load i32, i32* @f_font_relsize, align 4
  %104 = call i32 @MERGE_SIZE(i32 %103)
  %105 = load i32, i32* @i_font_size, align 4
  %106 = call i32 @MERGE_SIZE(i32 %105)
  %107 = load i32, i32* @i_outline_width, align 4
  %108 = call i32 @MERGE_SIZE(i32 %107)
  %109 = load i32, i32* @i_shadow_width, align 4
  %110 = call i32 @MERGE_SIZE(i32 %109)
  %111 = load i32, i32* @i_spacing, align 4
  %112 = call i32 @MERGE_SIZE(i32 %111)
  ret void
}

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @MERGE(i32, i32) #1

declare dso_local i32 @MERGE_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
