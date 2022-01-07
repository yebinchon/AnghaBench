; ModuleID = '/home/carl/AnghaBench/vlc/modules/text_renderer/extr_svg.c_RenderText.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/text_renderer/extr_svg.c_RenderText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_16__*, %struct.TYPE_18__*, i64, i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_CODEC_BGRA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"<svg\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_15__*, %struct.TYPE_15__*, i64*)* @RenderText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @RenderText(%struct.TYPE_17__* %0, %struct.TYPE_15__* %1, %struct.TYPE_15__* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %8, align 8
  store i64* %3, i64** %9, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %18 = icmp ne %struct.TYPE_15__* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %4
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %21 = icmp ne %struct.TYPE_15__* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %26 = icmp ne %struct.TYPE_18__* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %22, %19, %4
  %28 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %28, i32* %5, align 4
  br label %180

29:                                               ; preds = %22
  store i64 0, i64* %10, align 8
  br label %30

30:                                               ; preds = %53, %29
  %31 = load i64*, i64** %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %30
  %37 = load i64*, i64** %9, align 8
  %38 = load i64, i64* %10, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @VLC_CODEC_BGRA, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %56

44:                                               ; preds = %36
  %45 = load i64*, i64** %9, align 8
  %46 = load i64, i64* %10, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %51, i32* %5, align 4
  br label %180

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %10, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %10, align 8
  br label %30

56:                                               ; preds = %43, %30
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 4
  store i64 %59, i64* %61, align 8
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 3
  store i64 %64, i64* %66, align 8
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %11, align 4
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i32
  %76 = load i32, i32* %11, align 4
  %77 = icmp ule i32 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %56
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* %11, align 4
  %83 = zext i32 %82 to i64
  %84 = sub nsw i64 %83, %81
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %11, align 4
  br label %86

86:                                               ; preds = %78, %56
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %12, align 4
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = trunc i64 %94 to i32
  %96 = load i32, i32* %12, align 4
  %97 = icmp ule i32 %95, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %86
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = load i32, i32* %12, align 4
  %103 = zext i32 %102 to i64
  %104 = sub nsw i64 %103, %101
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %12, align 4
  br label %106

106:                                              ; preds = %98, %86
  %107 = load i32, i32* %12, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* %11, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %109, %106
  %113 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %113, i32* %5, align 4
  br label %180

114:                                              ; preds = %109
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 2
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %116, align 8
  %118 = icmp ne %struct.TYPE_18__* %117, null
  br i1 %118, label %119, label %134

119:                                              ; preds = %114
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i64 @strstr(i32 %124, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %119
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 2
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i8* @strdup(i32 %132)
  store i8* %133, i8** %13, align 8
  br label %152

134:                                              ; preds = %119, %114
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 2
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %136, align 8
  %138 = load i32, i32* %12, align 4
  %139 = call i8* @SegmentsToSVG(%struct.TYPE_18__* %137, i32 %138, i32* %14)
  store i8* %139, i8** %13, align 8
  %140 = load i8*, i8** %13, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %151

142:                                              ; preds = %134
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* %14, align 4
  %146 = load i8*, i8** %13, align 8
  %147 = call i8* @svg_GetDocument(%struct.TYPE_17__* %143, i32 %144, i32 %145, i8* %146)
  store i8* %147, i8** %15, align 8
  %148 = load i8*, i8** %13, align 8
  %149 = call i32 @free(i8* %148)
  %150 = load i8*, i8** %15, align 8
  store i8* %150, i8** %13, align 8
  br label %151

151:                                              ; preds = %142, %134
  br label %152

152:                                              ; preds = %151, %127
  %153 = load i8*, i8** %13, align 8
  %154 = icmp ne i8* %153, null
  br i1 %154, label %157, label %155

155:                                              ; preds = %152
  %156 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %156, i32* %5, align 4
  br label %180

157:                                              ; preds = %152
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %159 = load i8*, i8** %13, align 8
  %160 = call %struct.TYPE_16__* @svg_RenderPicture(%struct.TYPE_17__* %158, i8* %159)
  store %struct.TYPE_16__* %160, %struct.TYPE_16__** %16, align 8
  %161 = load i8*, i8** %13, align 8
  %162 = call i32 @free(i8* %161)
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %164 = icmp ne %struct.TYPE_16__* %163, null
  br i1 %164, label %165, label %178

165:                                              ; preds = %157
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 1
  store %struct.TYPE_16__* %166, %struct.TYPE_16__** %168, align 8
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 0
  %171 = call i32 @video_format_Clean(i32* %170)
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 0
  %176 = call i32 @video_format_Copy(i32* %173, i32* %175)
  %177 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %177, i32* %5, align 4
  br label %180

178:                                              ; preds = %157
  %179 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %179, i32* %5, align 4
  br label %180

180:                                              ; preds = %178, %165, %155, %112, %50, %27
  %181 = load i32, i32* %5, align 4
  ret i32 %181
}

declare dso_local i64 @strstr(i32, i8*) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i8* @SegmentsToSVG(%struct.TYPE_18__*, i32, i32*) #1

declare dso_local i8* @svg_GetDocument(%struct.TYPE_17__*, i32, i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.TYPE_16__* @svg_RenderPicture(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @video_format_Clean(i32*) #1

declare dso_local i32 @video_format_Copy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
