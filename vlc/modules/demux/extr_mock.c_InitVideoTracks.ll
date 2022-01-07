; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_mock.c_InitVideoTracks.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_mock.c_InitVideoTracks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.demux_sys* }
%struct.demux_sys = type { i64, i64, i64, i64, i64, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i64, i64, i64, i64, i64, i64, i32 }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Invalid video frame rate\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Invalid video chroma\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Invalid video size\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VIDEO_ES = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32, i64)* @InitVideoTracks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @InitVideoTracks(%struct.TYPE_14__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.demux_sys*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_13__, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load %struct.demux_sys*, %struct.demux_sys** %16, align 8
  store %struct.demux_sys* %17, %struct.demux_sys** %8, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %21, i32* %4, align 4
  br label %179

22:                                               ; preds = %3
  %23 = load %struct.demux_sys*, %struct.demux_sys** %8, align 8
  %24 = getelementptr inbounds %struct.demux_sys, %struct.demux_sys* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call %struct.TYPE_12__* @vlc_fourcc_GetChromaDescription(i64 %25)
  store %struct.TYPE_12__* %26, %struct.TYPE_12__** %9, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %28 = icmp ne %struct.TYPE_12__* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29, %22
  %35 = load %struct.demux_sys*, %struct.demux_sys** %8, align 8
  %36 = getelementptr inbounds %struct.demux_sys, %struct.demux_sys* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %34, %29
  %38 = load %struct.demux_sys*, %struct.demux_sys** %8, align 8
  %39 = getelementptr inbounds %struct.demux_sys, %struct.demux_sys* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %37
  %43 = load %struct.demux_sys*, %struct.demux_sys** %8, align 8
  %44 = getelementptr inbounds %struct.demux_sys, %struct.demux_sys* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @UINT_MAX, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %42
  %49 = load %struct.demux_sys*, %struct.demux_sys** %8, align 8
  %50 = getelementptr inbounds %struct.demux_sys, %struct.demux_sys* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.demux_sys*, %struct.demux_sys** %8, align 8
  %55 = getelementptr inbounds %struct.demux_sys, %struct.demux_sys* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @UINT_MAX, align 8
  %58 = icmp ne i64 %56, %57
  br label %59

59:                                               ; preds = %53, %48, %42, %37
  %60 = phi i1 [ false, %48 ], [ false, %42 ], [ false, %37 ], [ %58, %53 ]
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %10, align 4
  %62 = load %struct.demux_sys*, %struct.demux_sys** %8, align 8
  %63 = getelementptr inbounds %struct.demux_sys, %struct.demux_sys* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %11, align 4
  %67 = load %struct.demux_sys*, %struct.demux_sys** %8, align 8
  %68 = getelementptr inbounds %struct.demux_sys, %struct.demux_sys* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @UINT_MAX, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %59
  %73 = load %struct.demux_sys*, %struct.demux_sys** %8, align 8
  %74 = getelementptr inbounds %struct.demux_sys, %struct.demux_sys* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @UINT_MAX, align 8
  %77 = icmp ne i64 %75, %76
  br label %78

78:                                               ; preds = %72, %59
  %79 = phi i1 [ false, %59 ], [ %77, %72 ]
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %12, align 4
  %81 = load %struct.demux_sys*, %struct.demux_sys** %8, align 8
  %82 = getelementptr inbounds %struct.demux_sys, %struct.demux_sys* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %95, label %85

85:                                               ; preds = %78
  %86 = load %struct.demux_sys*, %struct.demux_sys** %8, align 8
  %87 = getelementptr inbounds %struct.demux_sys, %struct.demux_sys* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %85
  %91 = load %struct.demux_sys*, %struct.demux_sys** %8, align 8
  %92 = getelementptr inbounds %struct.demux_sys, %struct.demux_sys* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %125

95:                                               ; preds = %90, %85, %78
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %95
  %99 = load i32, i32* %11, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %124, label %104

104:                                              ; preds = %101, %98, %95
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %104
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %109 = call i32 @msg_Err(%struct.TYPE_14__* %108, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %110

110:                                              ; preds = %107, %104
  %111 = load i32, i32* %11, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %110
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %115 = call i32 @msg_Err(%struct.TYPE_14__* %114, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %116

116:                                              ; preds = %113, %110
  %117 = load i32, i32* %12, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %116
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %121 = call i32 @msg_Err(%struct.TYPE_14__* %120, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %122

122:                                              ; preds = %119, %116
  %123 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %123, i32* %4, align 4
  br label %179

124:                                              ; preds = %101
  br label %125

125:                                              ; preds = %124, %90
  store i64 0, i64* %13, align 8
  br label %126

126:                                              ; preds = %174, %125
  %127 = load i64, i64* %13, align 8
  %128 = load i64, i64* %7, align 8
  %129 = icmp ult i64 %127, %128
  br i1 %129, label %130, label %177

130:                                              ; preds = %126
  %131 = load i32, i32* @VIDEO_ES, align 4
  %132 = load %struct.demux_sys*, %struct.demux_sys** %8, align 8
  %133 = getelementptr inbounds %struct.demux_sys, %struct.demux_sys* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @es_format_Init(%struct.TYPE_13__* %14, i32 %131, i64 %134)
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 6
  store i32 %137, i32* %139, align 8
  %140 = load %struct.demux_sys*, %struct.demux_sys** %8, align 8
  %141 = getelementptr inbounds %struct.demux_sys, %struct.demux_sys* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 1
  store i64 %142, i64* %144, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  store i64 %142, i64* %146, align 8
  %147 = load %struct.demux_sys*, %struct.demux_sys** %8, align 8
  %148 = getelementptr inbounds %struct.demux_sys, %struct.demux_sys* %147, i32 0, i32 4
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 3
  store i64 %149, i64* %151, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 2
  store i64 %149, i64* %153, align 8
  %154 = load %struct.demux_sys*, %struct.demux_sys** %8, align 8
  %155 = getelementptr inbounds %struct.demux_sys, %struct.demux_sys* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 4
  store i64 %156, i64* %158, align 8
  %159 = load %struct.demux_sys*, %struct.demux_sys** %8, align 8
  %160 = getelementptr inbounds %struct.demux_sys, %struct.demux_sys* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 5
  store i64 %161, i64* %163, align 8
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %165 = load i32, i32* %6, align 4
  %166 = load %struct.demux_sys*, %struct.demux_sys** %8, align 8
  %167 = getelementptr inbounds %struct.demux_sys, %struct.demux_sys* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 8
  %169 = call i64 @AppendMockTrack(%struct.TYPE_14__* %164, %struct.TYPE_13__* %14, i32 %165, i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %130
  %172 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %172, i32* %4, align 4
  br label %179

173:                                              ; preds = %130
  br label %174

174:                                              ; preds = %173
  %175 = load i64, i64* %13, align 8
  %176 = add i64 %175, 1
  store i64 %176, i64* %13, align 8
  br label %126

177:                                              ; preds = %126
  %178 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %178, i32* %4, align 4
  br label %179

179:                                              ; preds = %177, %171, %122, %20
  %180 = load i32, i32* %4, align 4
  ret i32 %180
}

declare dso_local %struct.TYPE_12__* @vlc_fourcc_GetChromaDescription(i64) #1

declare dso_local i32 @msg_Err(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @es_format_Init(%struct.TYPE_13__*, i32, i64) #1

declare dso_local i64 @AppendMockTrack(%struct.TYPE_14__*, %struct.TYPE_13__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
