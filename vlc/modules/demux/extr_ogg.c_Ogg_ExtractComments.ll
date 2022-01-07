; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_ogg.c_Ogg_ExtractComments.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_ogg.c_Ogg_ExtractComments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32, i32*, %struct.TYPE_14__**, i32 }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32*, float*, i32*, float* }

@AUDIO_REPLAY_GAIN_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"attachment://%s\00", align 1
@vlc_meta_ArtworkURL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"setting replay gain %d to %f\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"setting replay peak %d to %f\00", align 1
@INPUT_UPDATE_TITLE_LIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_11__*, i8*, i32)* @Ogg_ExtractComments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Ogg_ExtractComments(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca [128 x i8], align 16
  %17 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  store %struct.TYPE_13__* %20, %struct.TYPE_13__** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %21 = load i32, i32* @AUDIO_REPLAY_GAIN_MAX, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %12, align 8
  %24 = alloca float, i64 %22, align 16
  store i64 %22, i64* %13, align 8
  %25 = load i32, i32* @AUDIO_REPLAY_GAIN_MAX, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca float, i64 %26, align 16
  store i64 %26, i64* %14, align 8
  store i32 0, i32* %15, align 4
  br label %28

28:                                               ; preds = %39, %4
  %29 = load i32, i32* %15, align 4
  %30 = load i32, i32* @AUDIO_REPLAY_GAIN_MAX, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %28
  %33 = load i32, i32* %15, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds float, float* %24, i64 %34
  store float 0.000000e+00, float* %35, align 4
  %36 = load i32, i32* %15, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds float, float* %27, i64 %37
  store float 0.000000e+00, float* %38, align 4
  br label %39

39:                                               ; preds = %32
  %40 = load i32, i32* %15, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %15, align 4
  br label %28

42:                                               ; preds = %28
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 3
  %46 = load i8*, i8** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 4
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 5
  %56 = bitcast float* %24 to float**
  %57 = bitcast float* %27 to float**
  %58 = call i32 @vorbis_ParseComment(%struct.TYPE_11__* %43, i32** %45, i8* %46, i32 %47, i32* %49, %struct.TYPE_14__*** %51, i32* %10, i32* %11, i32* %53, i32* %55, float** %56, float** %57)
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %87

63:                                               ; preds = %42
  %64 = load i32, i32* %11, align 4
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %87

69:                                               ; preds = %63
  %70 = getelementptr inbounds [128 x i8], [128 x i8]* %16, i64 0, i64 0
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 4
  %73 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %72, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %73, i64 %75
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @snprintf(i8* %70, i32 128, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %79)
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 3
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* @vlc_meta_ArtworkURL, align 4
  %85 = getelementptr inbounds [128 x i8], [128 x i8]* %16, i64 0, i64 0
  %86 = call i32 @vlc_meta_Set(i32* %83, i32 %84, i8* %85)
  br label %87

87:                                               ; preds = %69, %63, %42
  store i32 0, i32* %17, align 4
  br label %88

88:                                               ; preds = %157, %87
  %89 = load i32, i32* %17, align 4
  %90 = load i32, i32* @AUDIO_REPLAY_GAIN_MAX, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %160

92:                                               ; preds = %88
  %93 = load i32, i32* %17, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds float, float* %24, i64 %94
  %96 = load float, float* %95, align 4
  %97 = fcmp une float %96, 0.000000e+00
  br i1 %97, label %98, label %124

98:                                               ; preds = %92
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %17, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 1, i32* %105, align 4
  %106 = load i32, i32* %17, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds float, float* %24, i64 %107
  %109 = load float, float* %108, align 4
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  %113 = load float*, float** %112, align 8
  %114 = load i32, i32* %17, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds float, float* %113, i64 %115
  store float %109, float* %116, align 4
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %118 = load i32, i32* %17, align 4
  %119 = load i32, i32* %17, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds float, float* %24, i64 %120
  %122 = load float, float* %121, align 4
  %123 = call i32 @msg_Dbg(%struct.TYPE_12__* %117, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %118, float %122)
  br label %124

124:                                              ; preds = %98, %92
  %125 = load i32, i32* %17, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds float, float* %27, i64 %126
  %128 = load float, float* %127, align 4
  %129 = fcmp une float %128, 0.000000e+00
  br i1 %129, label %130, label %156

130:                                              ; preds = %124
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 2
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %17, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  store i32 1, i32* %137, align 4
  %138 = load i32, i32* %17, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds float, float* %27, i64 %139
  %141 = load float, float* %140, align 4
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 3
  %145 = load float*, float** %144, align 8
  %146 = load i32, i32* %17, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds float, float* %145, i64 %147
  store float %141, float* %148, align 4
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %150 = load i32, i32* %17, align 4
  %151 = load i32, i32* %17, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds float, float* %24, i64 %152
  %154 = load float, float* %153, align 4
  %155 = call i32 @msg_Dbg(%struct.TYPE_12__* %149, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %150, float %154)
  br label %156

156:                                              ; preds = %130, %124
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %17, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %17, align 4
  br label %88

160:                                              ; preds = %88
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = icmp sgt i32 %163, 1
  br i1 %164, label %165, label %171

165:                                              ; preds = %160
  %166 = load i32, i32* @INPUT_UPDATE_TITLE_LIST, align 4
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 8
  br label %171

171:                                              ; preds = %165, %160
  %172 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %172)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @vorbis_ParseComment(%struct.TYPE_11__*, i32**, i8*, i32, i32*, %struct.TYPE_14__***, i32*, i32*, i32*, i32*, float**, float**) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @vlc_meta_Set(i32*, i32, i8*) #2

declare dso_local i32 @msg_Dbg(%struct.TYPE_12__*, i8*, i32, float) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
