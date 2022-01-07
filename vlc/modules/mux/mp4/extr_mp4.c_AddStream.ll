; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/mp4/extr_mp4.c_AddStream.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/mp4/extr_mp4.c_AddStream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32, i64, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_29__*, %struct.TYPE_23__* }
%struct.TYPE_29__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_30__ = type { %struct.TYPE_25__, %struct.TYPE_24__ }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32 }

@QUICKTIME = common dso_local global i32 0, align 4
@BRAND_qt__ = common dso_local global i32 0, align 4
@BRAND_isom = common dso_local global i32 0, align 4
@FRAGMENTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"unsupported codec %4.4s in mp4\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@CLOCK_FREQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"no audio rate given for stream %d, assuming 48KHz\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Missing frame rate for stream %d, assuming 25fps\00", align 1
@EXTRADATA_ISOBMFF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"adding input\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*, %struct.TYPE_28__*)* @AddStream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AddStream(%struct.TYPE_26__* %0, %struct.TYPE_28__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_29__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_30__, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %4, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %5, align 8
  %10 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  store %struct.TYPE_27__* %12, %struct.TYPE_27__** %6, align 8
  %13 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %14 = call i32 @VLC_OBJECT(%struct.TYPE_26__* %13)
  %15 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %18 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @QUICKTIME, align 4
  %22 = call i64 @mp4mux_Is(i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @BRAND_qt__, align 4
  br label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @BRAND_isom, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  %30 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @FRAGMENTED, align 4
  %34 = call i64 @mp4mux_Is(i32 %32, i32 %33)
  %35 = call i32 @mp4mux_CanMux(i32 %14, %struct.TYPE_23__* %17, i32 %29, i64 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %28
  %38 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %39 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 0
  %43 = bitcast i32* %42 to i8*
  %44 = call i32 @msg_Err(%struct.TYPE_26__* %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %43)
  %45 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %45, i32* %3, align 4
  br label %175

46:                                               ; preds = %28
  %47 = call %struct.TYPE_29__* (...) @mp4_stream_New()
  store %struct.TYPE_29__* %47, %struct.TYPE_29__** %7, align 8
  %48 = icmp ne %struct.TYPE_29__* %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %50, i32* %3, align 4
  br label %175

51:                                               ; preds = %46
  %52 = load i32, i32* @CLOCK_FREQ, align 4
  store i32 %52, i32* %8, align 4
  %53 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @es_format_Init(%struct.TYPE_30__* %9, i32 %57, i32 %62)
  %64 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %65, align 8
  %67 = call i32 @es_format_Copy(%struct.TYPE_30__* %9, %struct.TYPE_23__* %66)
  %68 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  switch i32 %72, label %129 [
    i32 129, label %73
    i32 128, label %90
  ]

73:                                               ; preds = %51
  %74 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %9, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %73
  %79 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %80 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @msg_Warn(%struct.TYPE_26__* %79, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i64 %82)
  %84 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %9, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %84, i32 0, i32 0
  store i32 48000, i32* %85, align 4
  br label %86

86:                                               ; preds = %78, %73
  %87 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %9, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %8, align 4
  br label %130

90:                                               ; preds = %51
  %91 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %9, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %9, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %110, label %100

100:                                              ; preds = %95, %90
  %101 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %102 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @msg_Warn(%struct.TYPE_26__* %101, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i64 %104)
  %106 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %9, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %106, i32 0, i32 0
  store i32 25, i32* %107, align 4
  %108 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %9, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %108, i32 0, i32 1
  store i32 1, i32* %109, align 4
  br label %110

110:                                              ; preds = %100, %95
  %111 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %9, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %9, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = mul nsw i32 %113, %116
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* @CLOCK_FREQ, align 4
  %120 = icmp sgt i32 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %110
  %122 = load i32, i32* @CLOCK_FREQ, align 4
  store i32 %122, i32* %8, align 4
  br label %128

123:                                              ; preds = %110
  %124 = load i32, i32* %8, align 4
  %125 = icmp slt i32 %124, 90000
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  store i32 90000, i32* %8, align 4
  br label %127

127:                                              ; preds = %126, %123
  br label %128

128:                                              ; preds = %127, %121
  br label %130

129:                                              ; preds = %51
  br label %130

130:                                              ; preds = %129, %128, %86
  %131 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %136, 1
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @mp4mux_track_Add(i32 %133, i64 %137, %struct.TYPE_30__* %9, i32 %138)
  %140 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 4
  %142 = call i32 @es_format_Clean(%struct.TYPE_30__* %9)
  %143 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %130
  %148 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %149 = call i32 @free(%struct.TYPE_29__* %148)
  %150 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %150, i32* %3, align 4
  br label %175

151:                                              ; preds = %130
  %152 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_23__*, %struct.TYPE_23__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @EXTRADATA_ISOBMFF, align 4
  %158 = call i32 @mux_extradata_builder_New(i32 %156, i32 %157)
  %159 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 4
  %161 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %162 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %162, i32 0, i32 0
  store %struct.TYPE_29__* %161, %struct.TYPE_29__** %163, align 8
  %164 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %165 = call i32 @msg_Dbg(%struct.TYPE_26__* %164, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %166 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %173 = call i32 @TAB_APPEND(i64 %168, i32 %171, %struct.TYPE_29__* %172)
  %174 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %174, i32* %3, align 4
  br label %175

175:                                              ; preds = %151, %147, %49, %37
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local i32 @mp4mux_CanMux(i32, %struct.TYPE_23__*, i32, i64) #1

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_26__*) #1

declare dso_local i64 @mp4mux_Is(i32, i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_26__*, i8*, i8*) #1

declare dso_local %struct.TYPE_29__* @mp4_stream_New(...) #1

declare dso_local i32 @es_format_Init(%struct.TYPE_30__*, i32, i32) #1

declare dso_local i32 @es_format_Copy(%struct.TYPE_30__*, %struct.TYPE_23__*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_26__*, i8*, i64) #1

declare dso_local i32 @mp4mux_track_Add(i32, i64, %struct.TYPE_30__*, i32) #1

declare dso_local i32 @es_format_Clean(%struct.TYPE_30__*) #1

declare dso_local i32 @free(%struct.TYPE_29__*) #1

declare dso_local i32 @mux_extradata_builder_New(i32, i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_26__*, i8*) #1

declare dso_local i32 @TAB_APPEND(i64, i32, %struct.TYPE_29__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
