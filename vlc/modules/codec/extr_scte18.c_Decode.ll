; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_scte18.c_Decode.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_scte18.c_Decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_29__ = type { i32, i64 }
%struct.TYPE_25__ = type { i32, i32, i64, i64, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_23__, %struct.TYPE_22__* }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_26__ = type { i32, i64 }

@VLCDEC_SUCCESS = common dso_local global i32 0, align 4
@BLOCK_FLAG_CORRUPTED = common dso_local global i32 0, align 4
@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@SUBPICTURE_ALIGN_TOP = common dso_local global i32 0, align 4
@STYLE_BOLD = common dso_local global i32 0, align 4
@STYLE_BACKGROUND = common dso_local global i32 0, align 4
@STYLE_HAS_FLAGS = common dso_local global i32 0, align 4
@STYLE_ALPHA_OPAQUE = common dso_local global i32 0, align 4
@STYLE_HAS_BACKGROUND_COLOR = common dso_local global i32 0, align 4
@STYLE_HAS_BACKGROUND_ALPHA = common dso_local global i32 0, align 4
@STYLE_HAS_FONT_COLOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Received %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_27__*, %struct.TYPE_29__*)* @Decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Decode(%struct.TYPE_27__* %0, %struct.TYPE_29__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %4, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %5, align 8
  %10 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %11 = icmp eq %struct.TYPE_29__* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %13, i32* %3, align 4
  br label %142

14:                                               ; preds = %2
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %6, align 8
  %15 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %138

22:                                               ; preds = %14
  %23 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_28__*, %struct.TYPE_28__** %24, align 8
  store %struct.TYPE_28__* %25, %struct.TYPE_28__** %7, align 8
  %26 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %30 = call %struct.TYPE_26__* @scte18_cea_Decode(i32 %28, %struct.TYPE_29__* %29)
  store %struct.TYPE_26__* %30, %struct.TYPE_26__** %8, align 8
  %31 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %32 = icmp ne %struct.TYPE_26__* %31, null
  br i1 %32, label %33, label %137

33:                                               ; preds = %22
  %34 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %35 = call %struct.TYPE_25__* @decoder_NewSubpictureText(%struct.TYPE_27__* %34)
  store %struct.TYPE_25__* %35, %struct.TYPE_25__** %6, align 8
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %37 = icmp ne %struct.TYPE_25__* %36, null
  br i1 %37, label %38, label %129

38:                                               ; preds = %33
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %41, align 8
  store %struct.TYPE_24__* %42, %struct.TYPE_24__** %9, align 8
  %43 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i32 0, i32 3
  store i64 %45, i64* %47, align 8
  %48 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %38
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @vlc_tick_from_sec(i64 %58)
  %60 = add nsw i64 %55, %59
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 2
  store i64 %60, i64* %62, align 8
  br label %67

63:                                               ; preds = %38
  %64 = load i64, i64* @VLC_TICK_INVALID, align 8
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 2
  store i64 %64, i64* %66, align 8
  br label %67

67:                                               ; preds = %63, %52
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %70, i32 0, i32 1
  store i32 0, i32* %71, align 4
  %72 = load i32, i32* @SUBPICTURE_ALIGN_TOP, align 4
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 1
  store i32 %72, i32* %75, align 4
  %76 = load i32, i32* @STYLE_BOLD, align 4
  %77 = load i32, i32* @STYLE_BACKGROUND, align 4
  %78 = or i32 %76, %77
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 0
  store i32 %78, i32* %82, align 4
  %83 = load i32, i32* @STYLE_HAS_FLAGS, align 4
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %83
  store i32 %89, i32* %87, align 4
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 2
  store i32 0, i32* %93, align 4
  %94 = load i32, i32* @STYLE_ALPHA_OPAQUE, align 4
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 4
  store i32 %94, i32* %98, align 4
  %99 = load i32, i32* @STYLE_HAS_BACKGROUND_COLOR, align 4
  %100 = load i32, i32* @STYLE_HAS_BACKGROUND_ALPHA, align 4
  %101 = or i32 %99, %100
  %102 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %101
  store i32 %107, i32* %105, align 4
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 3
  store i32 16711680, i32* %111, align 4
  %112 = load i32, i32* @STYLE_HAS_FONT_COLOR, align 4
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %112
  store i32 %118, i32* %116, align 4
  %119 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @text_segment_New(i32 %121)
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 0
  store i32 %122, i32* %125, align 8
  %126 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %127 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %128 = call i32 @decoder_QueueSub(%struct.TYPE_27__* %126, %struct.TYPE_25__* %127)
  br label %129

129:                                              ; preds = %67, %33
  %130 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %131 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @msg_Info(%struct.TYPE_27__* %130, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %133)
  %135 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %136 = call i32 @scte18_cea_Free(%struct.TYPE_26__* %135)
  br label %137

137:                                              ; preds = %129, %22
  br label %138

138:                                              ; preds = %137, %21
  %139 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %140 = call i32 @block_Release(%struct.TYPE_29__* %139)
  %141 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %141, i32* %3, align 4
  br label %142

142:                                              ; preds = %138, %12
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local %struct.TYPE_26__* @scte18_cea_Decode(i32, %struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_25__* @decoder_NewSubpictureText(%struct.TYPE_27__*) #1

declare dso_local i64 @vlc_tick_from_sec(i64) #1

declare dso_local i32 @text_segment_New(i32) #1

declare dso_local i32 @decoder_QueueSub(%struct.TYPE_27__*, %struct.TYPE_25__*) #1

declare dso_local i32 @msg_Info(%struct.TYPE_27__*, i8*, i32) #1

declare dso_local i32 @scte18_cea_Free(%struct.TYPE_26__*) #1

declare dso_local i32 @block_Release(%struct.TYPE_29__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
