; ModuleID = '/home/carl/AnghaBench/vlc/modules/spu/extr_marq.c_Filter.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/spu/extr_marq.c_Filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_20__*, i64, i64 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_19__*, i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, i64, i8*, i8*, i64, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_15__ = type { i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@VLC_CODEC_TEXT = common dso_local global i32 0, align 4
@SUBPICTURE_ALIGN_LEFT = common dso_local global i32 0, align 4
@SUBPICTURE_ALIGN_TOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_16__* (%struct.TYPE_17__*, i64)* @Filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_16__* @Filter(%struct.TYPE_17__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_15__, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  store %struct.TYPE_18__* %12, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %6, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 6
  %15 = call i32 @vlc_mutex_lock(i32* %14)
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %18, %21
  %23 = load i64, i64* %4, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %189

26:                                               ; preds = %2
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 10
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %48

31:                                               ; preds = %26
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 10
  %35 = load i32*, i32** %34, align 8
  %36 = call i8* @MarqueeReadFile(%struct.TYPE_17__* %32, i32* %35)
  store i8* %36, i8** %7, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %31
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 2
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @free(i8* %42)
  %44 = load i8*, i8** %7, align 8
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  br label %47

47:                                               ; preds = %39, %31
  br label %48

48:                                               ; preds = %47, %26
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  br label %58

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57, %53
  %59 = phi i8* [ %56, %53 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %57 ]
  %60 = call i8* @vlc_strftime(i8* %59)
  store i8* %60, i8** %8, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = icmp eq i8* %61, null
  %63 = zext i1 %62 to i32
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  br label %189

67:                                               ; preds = %58
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 3
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %82

72:                                               ; preds = %67
  %73 = load i8*, i8** %8, align 8
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 3
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @strcmp(i8* %73, i8* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %72
  %80 = load i8*, i8** %8, align 8
  %81 = call i32 @free(i8* %80)
  br label %189

82:                                               ; preds = %72, %67
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 3
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @free(i8* %85)
  %87 = load i8*, i8** %8, align 8
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 3
  store i8* %87, i8** %89, align 8
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %91 = call %struct.TYPE_16__* @filter_NewSubpicture(%struct.TYPE_17__* %90)
  store %struct.TYPE_16__* %91, %struct.TYPE_16__** %6, align 8
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %93 = icmp ne %struct.TYPE_16__* %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %82
  br label %189

95:                                               ; preds = %82
  %96 = load i32, i32* @VLC_CODEC_TEXT, align 4
  %97 = call i32 @video_format_Init(%struct.TYPE_15__* %9, i32 %96)
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  store i32 1, i32* %98, align 4
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  store i32 1, i32* %99, align 4
  %100 = call %struct.TYPE_20__* @subpicture_region_New(%struct.TYPE_15__* %9)
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 2
  store %struct.TYPE_20__* %100, %struct.TYPE_20__** %102, align 8
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %104, align 8
  %106 = icmp ne %struct.TYPE_20__* %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %95
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %109 = call i32 @subpicture_Delete(%struct.TYPE_16__* %108)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %6, align 8
  br label %189

110:                                              ; preds = %95
  %111 = load i64, i64* %4, align 8
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  %114 = load i8*, i8** %8, align 8
  %115 = call %struct.TYPE_19__* @text_segment_New(i8* %114)
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 1
  store %struct.TYPE_19__* %115, %struct.TYPE_19__** %119, align 8
  %120 = load i64, i64* %4, align 8
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 4
  store i64 %120, i64* %122, align 8
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %110
  br label %134

128:                                              ; preds = %110
  %129 = load i64, i64* %4, align 8
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 4
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %129, %132
  br label %134

134:                                              ; preds = %128, %127
  %135 = phi i64 [ 0, %127 ], [ %133, %128 ]
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 3
  store i64 %135, i64* %137, align 8
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 0
  store i32 1, i32* %139, align 8
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 8
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %154

144:                                              ; preds = %134
  %145 = load i32, i32* @SUBPICTURE_ALIGN_LEFT, align 4
  %146 = load i32, i32* @SUBPICTURE_ALIGN_TOP, align 4
  %147 = or i32 %145, %146
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 2
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 0
  store i32 %147, i32* %151, align 8
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 1
  store i32 1, i32* %153, align 4
  br label %164

154:                                              ; preds = %134
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 2
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 0
  store i32 %157, i32* %161, align 8
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 1
  store i32 0, i32* %163, align 4
  br label %164

164:                                              ; preds = %154, %144
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 9
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 2
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 3
  store i32 %167, i32* %171, align 4
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 8
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 2
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 2
  store i32 %174, i32* %178, align 8
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 7
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @text_style_Duplicate(i32 %181)
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 2
  %185 = load %struct.TYPE_20__*, %struct.TYPE_20__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %185, i32 0, i32 1
  %187 = load %struct.TYPE_19__*, %struct.TYPE_19__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %187, i32 0, i32 0
  store i32 %182, i32* %188, align 4
  br label %189

189:                                              ; preds = %164, %107, %94, %79, %66, %25
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 6
  %192 = call i32 @vlc_mutex_unlock(i32* %191)
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  ret %struct.TYPE_16__* %193
}

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i8* @MarqueeReadFile(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @vlc_strftime(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_16__* @filter_NewSubpicture(%struct.TYPE_17__*) #1

declare dso_local i32 @video_format_Init(%struct.TYPE_15__*, i32) #1

declare dso_local %struct.TYPE_20__* @subpicture_region_New(%struct.TYPE_15__*) #1

declare dso_local i32 @subpicture_Delete(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_19__* @text_segment_New(i8*) #1

declare dso_local i32 @text_style_Duplicate(i32) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
