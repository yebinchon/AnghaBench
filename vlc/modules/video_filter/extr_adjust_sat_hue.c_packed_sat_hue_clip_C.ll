; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_adjust_sat_hue.c_packed_sat_hue_clip_C.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_adjust_sat_hue.c_packed_sat_hue_clip_C.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32* }
%struct.TYPE_6__ = type { i32 }

@VLC_SUCCESS = common dso_local global i64 0, align 8
@VLC_EGENERIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @packed_sat_hue_clip_C(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @GetPackedYuvOffsets(i32 %33, i32* %22, i32* %23, i32* %24)
  %35 = load i64, i64* @VLC_SUCCESS, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %7
  %38 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %38, i32* %8, align 4
  br label %148

39:                                               ; preds = %7
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %25, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %26, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %27, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %23, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32* %62, i32** %16, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %24, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32* %70, i32** %17, align 8
  %71 = load i32*, i32** %16, align 8
  %72 = load i32, i32* %25, align 4
  %73 = load i32, i32* %26, align 4
  %74 = mul nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %71, i64 %75
  %77 = getelementptr inbounds i32, i32* %76, i64 -32
  store i32* %77, i32** %18, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %23, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32* %85, i32** %20, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %24, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32* %93, i32** %21, align 8
  br label %94

94:                                               ; preds = %120, %39
  %95 = load i32*, i32** %16, align 8
  %96 = load i32*, i32** %18, align 8
  %97 = icmp ult i32* %95, %96
  br i1 %97, label %98, label %145

98:                                               ; preds = %94
  %99 = load i32*, i32** %16, align 8
  %100 = load i32, i32* %27, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = getelementptr inbounds i32, i32* %102, i64 -32
  store i32* %103, i32** %19, align 8
  br label %104

104:                                              ; preds = %108, %98
  %105 = load i32*, i32** %16, align 8
  %106 = load i32*, i32** %19, align 8
  %107 = icmp ult i32* %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = call i32 (...) @PACKED_WRITE_UV_CLIP()
  %110 = call i32 @ADJUST_8_TIMES(i32 %109)
  br label %104

111:                                              ; preds = %104
  %112 = load i32*, i32** %19, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 32
  store i32* %113, i32** %19, align 8
  br label %114

114:                                              ; preds = %118, %111
  %115 = load i32*, i32** %16, align 8
  %116 = load i32*, i32** %19, align 8
  %117 = icmp ult i32* %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = call i32 (...) @PACKED_WRITE_UV_CLIP()
  br label %114

120:                                              ; preds = %114
  %121 = load i32, i32* %26, align 4
  %122 = load i32, i32* %27, align 4
  %123 = sub nsw i32 %121, %122
  %124 = load i32*, i32** %16, align 8
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  store i32* %126, i32** %16, align 8
  %127 = load i32, i32* %26, align 4
  %128 = load i32, i32* %27, align 4
  %129 = sub nsw i32 %127, %128
  %130 = load i32*, i32** %17, align 8
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  store i32* %132, i32** %17, align 8
  %133 = load i32, i32* %26, align 4
  %134 = load i32, i32* %27, align 4
  %135 = sub nsw i32 %133, %134
  %136 = load i32*, i32** %20, align 8
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  store i32* %138, i32** %20, align 8
  %139 = load i32, i32* %26, align 4
  %140 = load i32, i32* %27, align 4
  %141 = sub nsw i32 %139, %140
  %142 = load i32*, i32** %21, align 8
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  store i32* %144, i32** %21, align 8
  br label %94

145:                                              ; preds = %94
  %146 = load i64, i64* @VLC_SUCCESS, align 8
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %8, align 4
  br label %148

148:                                              ; preds = %145, %37
  %149 = load i32, i32* %8, align 4
  ret i32 %149
}

declare dso_local i64 @GetPackedYuvOffsets(i32, i32*, i32*, i32*) #1

declare dso_local i32 @ADJUST_8_TIMES(i32) #1

declare dso_local i32 @PACKED_WRITE_UV_CLIP(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
