; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/ttml/extr_substtml.c_AppendTextToRegion.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/ttml/extr_substtml.c_AppendTextToRegion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i64, i32, i32, %struct.TYPE_18__, i32, %struct.TYPE_18__, i64, i32, i64, %struct.TYPE_20__* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_24__**, %struct.TYPE_19__ }
%struct.TYPE_24__ = type { %struct.TYPE_24__*, %struct.TYPE_20__* }
%struct.TYPE_19__ = type { i32 }

@TTML_DISPLAY_NONE = common dso_local global i64 0, align 8
@STYLE_BACKGROUND = common dso_local global i32 0, align 4
@STYLE_OUTLINE = common dso_local global i32 0, align 4
@STYLE_STRIKEOUT = common dso_local global i32 0, align 4
@STYLE_SHADOW = common dso_local global i32 0, align 4
@STYLE_ALPHA_TRANSPARENT = common dso_local global i32 0, align 4
@STYLE_HAS_FONT_ALPHA = common dso_local global i32 0, align 4
@SUBPICTURE_ALIGN_LEFT = common dso_local global i32 0, align 4
@SUBPICTURE_ALIGN_RIGHT = common dso_local global i32 0, align 4
@TTML_UNIT_UNKNOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_23__*, %struct.TYPE_21__*, %struct.TYPE_22__*)* @AppendTextToRegion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AppendTextToRegion(i32* %0, %struct.TYPE_23__* %1, %struct.TYPE_21__* %2, %struct.TYPE_22__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_21__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %6, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %7, align 8
  store %struct.TYPE_22__* %3, %struct.TYPE_22__** %8, align 8
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %13 = icmp eq %struct.TYPE_22__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  br label %171

15:                                               ; preds = %4
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.TYPE_24__* @text_segment_New(i32 %18)
  store %struct.TYPE_24__* %19, %struct.TYPE_24__** %9, align 8
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %21 = icmp ne %struct.TYPE_24__* %20, null
  br i1 %21, label %22, label %162

22:                                               ; preds = %15
  store i32 0, i32* %10, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.TYPE_21__* @InheritTTMLStyles(i32* %23, i32 %26)
  store %struct.TYPE_21__* %27, %struct.TYPE_21__** %11, align 8
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %29 = icmp ne %struct.TYPE_21__* %28, null
  br i1 %29, label %30, label %155

30:                                               ; preds = %22
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %32 = icmp ne %struct.TYPE_21__* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %36 = call i32 @ttml_style_Merge(%struct.TYPE_21__* %34, %struct.TYPE_21__* %35)
  br label %37

37:                                               ; preds = %33, %30
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 10
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %39, align 8
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %41, i32 0, i32 1
  store %struct.TYPE_20__* %40, %struct.TYPE_20__** %42, align 8
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 10
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %44, align 8
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %10, align 4
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 9
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %37
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 8
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @BIDIConvert(%struct.TYPE_24__* %53, i32 %56)
  br label %58

58:                                               ; preds = %52, %37
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @TTML_DISPLAY_NONE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %91

64:                                               ; preds = %58
  %65 = load i32, i32* @STYLE_BACKGROUND, align 4
  %66 = load i32, i32* @STYLE_OUTLINE, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @STYLE_STRIKEOUT, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @STYLE_SHADOW, align 4
  %71 = or i32 %69, %70
  %72 = xor i32 %71, -1
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, %72
  store i32 %78, i32* %76, align 4
  %79 = load i32, i32* @STYLE_ALPHA_TRANSPARENT, align 4
  %80 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 1
  store i32 %79, i32* %83, align 4
  %84 = load i32, i32* @STYLE_HAS_FONT_ALPHA, align 4
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %84
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %64, %58
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 7
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %114

96:                                               ; preds = %91
  %97 = load i32, i32* @SUBPICTURE_ALIGN_LEFT, align 4
  %98 = load i32, i32* @SUBPICTURE_ALIGN_RIGHT, align 4
  %99 = or i32 %97, %98
  %100 = xor i32 %99, -1
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = and i32 %104, %100
  store i32 %105, i32* %103, align 8
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %108
  store i32 %113, i32* %111, align 8
  br label %114

114:                                              ; preds = %96, %91
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 6
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @TTML_UNIT_UNKNOWN, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %133

121:                                              ; preds = %114
  %122 = load i32*, i32** %5, align 8
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 6
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @FillUpdaterCoords(i32* %122, i64 %131, i32 %127, i32 0, %struct.TYPE_19__* %129)
  br label %133

133:                                              ; preds = %121, %114
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @TTML_UNIT_UNKNOWN, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %152

140:                                              ; preds = %133
  %141 = load i32*, i32** %5, align 8
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 4
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @FillUpdaterCoords(i32* %141, i64 %150, i32 %146, i32 1, %struct.TYPE_19__* %148)
  br label %152

152:                                              ; preds = %140, %133
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %154 = call i32 @ttml_style_Delete(%struct.TYPE_21__* %153)
  br label %155

155:                                              ; preds = %152, %22
  %156 = load i32, i32* %10, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %155
  %159 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %160 = call i32 @StripSpacing(%struct.TYPE_24__* %159)
  br label %161

161:                                              ; preds = %158, %155
  br label %162

162:                                              ; preds = %161, %15
  %163 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %165, align 8
  store %struct.TYPE_24__* %163, %struct.TYPE_24__** %166, align 8
  %167 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i32 0, i32 0
  store %struct.TYPE_24__** %168, %struct.TYPE_24__*** %170, align 8
  br label %171

171:                                              ; preds = %162, %14
  ret void
}

declare dso_local %struct.TYPE_24__* @text_segment_New(i32) #1

declare dso_local %struct.TYPE_21__* @InheritTTMLStyles(i32*, i32) #1

declare dso_local i32 @ttml_style_Merge(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i32 @BIDIConvert(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @FillUpdaterCoords(i32*, i64, i32, i32, %struct.TYPE_19__*) #1

declare dso_local i32 @ttml_style_Delete(%struct.TYPE_21__*) #1

declare dso_local i32 @StripSpacing(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
