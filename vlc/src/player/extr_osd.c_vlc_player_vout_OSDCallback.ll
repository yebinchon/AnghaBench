; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_osd.c_vlc_player_vout_OSDCallback.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_osd.c_vlc_player_vout_OSDCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { float, i8*, float, i64 }

@.str = private unnamed_addr constant [13 x i8] c"aspect-ratio\00", align 1
@VLC_VAR_STRING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Aspect ratio: %s\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"autoscale\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Scaled to screen\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Original size\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"crop\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Crop: %s\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"crop-bottom\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"Bottom crop: %d px\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"crop-top\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"Top crop: %d px\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"crop-left\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"Left crop: %d px\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"crop-right\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"Right crop: %d px\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"deinterlace\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"deinterlace-mode\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"Deinterlace %s (%s)\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"On\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"Off\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"sub-margin\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"Subtitle position %d px\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"secondary-sub-margin\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"Secondary subtitle position %d px\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"sub-text-scale\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"Subtitle text scale %d%%\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"zoom\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"Zooming reset\00", align 1
@VLC_VAR_FLOAT = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [14 x i8] c"Zoom mode: %s\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"Zoom: x%f\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_player_vout_OSDCallback(i32* %0, i8* %1, %struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %2, %struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %4, i8** %8, align 8
  %14 = call i32 @VLC_UNUSED(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %2)
  %15 = load i32*, i32** %6, align 8
  store i32* %15, i32** %9, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i64 @strcmp(i8* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %5
  %20 = load i32*, i32** %9, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* @VLC_VAR_STRING, align 4
  %23 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 @vout_osd_PrintVariableText(i32* %20, i8* %21, i32 %22, %struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %3, i32 %23)
  br label %210

25:                                               ; preds = %5
  %26 = load i8*, i8** %7, align 8
  %27 = call i64 @strcmp(i8* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %37

35:                                               ; preds = %29
  %36 = call i32 @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  %39 = call i32 (i32**, i32, i32, ...) @vouts_osd_Message(i32** %9, i32 1, i32 %38)
  br label %209

40:                                               ; preds = %25
  %41 = load i8*, i8** %7, align 8
  %42 = call i64 @strcmp(i8* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load i32*, i32** %9, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load i32, i32* @VLC_VAR_STRING, align 4
  %48 = call i32 @_(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %49 = call i32 @vout_osd_PrintVariableText(i32* %45, i8* %46, i32 %47, %struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %3, i32 %48)
  br label %208

50:                                               ; preds = %40
  %51 = load i8*, i8** %7, align 8
  %52 = call i64 @strcmp(i8* %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %57 = load float, float* %56, align 8
  %58 = fpext float %57 to double
  %59 = call i32 (i32**, i32, i32, ...) @vouts_osd_Message(i32** %9, i32 1, i32 %55, double %58)
  br label %207

60:                                               ; preds = %50
  %61 = load i8*, i8** %7, align 8
  %62 = call i64 @strcmp(i8* %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = call i32 @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %67 = load float, float* %66, align 8
  %68 = fpext float %67 to double
  %69 = call i32 (i32**, i32, i32, ...) @vouts_osd_Message(i32** %9, i32 1, i32 %65, double %68)
  br label %206

70:                                               ; preds = %60
  %71 = load i8*, i8** %7, align 8
  %72 = call i64 @strcmp(i8* %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %77 = load float, float* %76, align 8
  %78 = fpext float %77 to double
  %79 = call i32 (i32**, i32, i32, ...) @vouts_osd_Message(i32** %9, i32 1, i32 %75, double %78)
  br label %205

80:                                               ; preds = %70
  %81 = load i8*, i8** %7, align 8
  %82 = call i64 @strcmp(i8* %81, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0))
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %87 = load float, float* %86, align 8
  %88 = fpext float %87 to double
  %89 = call i32 (i32**, i32, i32, ...) @vouts_osd_Message(i32** %9, i32 1, i32 %85, double %88)
  br label %204

90:                                               ; preds = %80
  %91 = load i8*, i8** %7, align 8
  %92 = call i64 @strcmp(i8* %91, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %90
  %95 = load i8*, i8** %7, align 8
  %96 = call i64 @strcmp(i8* %95, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0))
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %142

98:                                               ; preds = %94, %90
  %99 = load i8*, i8** %7, align 8
  %100 = call i64 @strcmp(i8* %99, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0))
  %101 = icmp eq i64 %100, 0
  %102 = zext i1 %101 to i32
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %98
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %107 = load float, float* %106, align 8
  br label %112

108:                                              ; preds = %98
  %109 = load i32*, i32** %9, align 8
  %110 = call i32 @var_GetInteger(i32* %109, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  %111 = sitofp i32 %110 to float
  br label %112

112:                                              ; preds = %108, %105
  %113 = phi float [ %107, %105 ], [ %111, %108 ]
  %114 = fptosi float %113 to i32
  store i32 %114, i32* %11, align 4
  %115 = load i32, i32* %10, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  br label %123

120:                                              ; preds = %112
  %121 = load i32*, i32** %9, align 8
  %122 = call i8* @var_GetString(i32* %121, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0))
  br label %123

123:                                              ; preds = %120, %117
  %124 = phi i8* [ %119, %117 ], [ %122, %120 ]
  store i8* %124, i8** %12, align 8
  %125 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0))
  %126 = load i32, i32* %11, align 4
  %127 = icmp eq i32 %126, 1
  br i1 %127, label %128, label %130

128:                                              ; preds = %123
  %129 = call i32 @_(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0))
  br label %132

130:                                              ; preds = %123
  %131 = call i32 @_(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0))
  br label %132

132:                                              ; preds = %130, %128
  %133 = phi i32 [ %129, %128 ], [ %131, %130 ]
  %134 = load i8*, i8** %12, align 8
  %135 = call i32 (i32**, i32, i32, ...) @vouts_osd_Message(i32** %9, i32 1, i32 %125, i32 %133, i8* %134)
  %136 = load i32, i32* %10, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %132
  %139 = load i8*, i8** %12, align 8
  %140 = call i32 @free(i8* %139)
  br label %141

141:                                              ; preds = %138, %132
  br label %203

142:                                              ; preds = %94
  %143 = load i8*, i8** %7, align 8
  %144 = call i64 @strcmp(i8* %143, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0))
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %142
  %147 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0))
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %149 = load float, float* %148, align 8
  %150 = fpext float %149 to double
  %151 = call i32 (i32**, i32, i32, ...) @vouts_osd_Message(i32** %9, i32 1, i32 %147, double %150)
  br label %202

152:                                              ; preds = %142
  %153 = load i8*, i8** %7, align 8
  %154 = call i64 @strcmp(i8* %153, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0))
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %152
  %157 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i64 0, i64 0))
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %159 = load float, float* %158, align 8
  %160 = fpext float %159 to double
  %161 = call i32 (i32**, i32, i32, ...) @vouts_osd_Message(i32** %9, i32 1, i32 %157, double %160)
  br label %201

162:                                              ; preds = %152
  %163 = load i8*, i8** %7, align 8
  %164 = call i64 @strcmp(i8* %163, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0))
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %162
  %167 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i64 0, i64 0))
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %169 = load float, float* %168, align 8
  %170 = fpext float %169 to double
  %171 = call i32 (i32**, i32, i32, ...) @vouts_osd_Message(i32** %9, i32 1, i32 %167, double %170)
  br label %200

172:                                              ; preds = %162
  %173 = load i8*, i8** %7, align 8
  %174 = call i64 @strcmp(i8* %173, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0))
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %199

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 2
  %178 = load float, float* %177, align 8
  %179 = fcmp oeq float %178, 1.000000e+00
  br i1 %179, label %180, label %183

180:                                              ; preds = %176
  %181 = call i32 @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0))
  %182 = call i32 (i32**, i32, i32, ...) @vouts_osd_Message(i32** %9, i32 1, i32 %181)
  br label %198

183:                                              ; preds = %176
  %184 = load i32*, i32** %9, align 8
  %185 = load i8*, i8** %7, align 8
  %186 = load i32, i32* @VLC_VAR_FLOAT, align 4
  %187 = call i32 @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0))
  %188 = call i32 @vout_osd_PrintVariableText(i32* %184, i8* %185, i32 %186, %struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %3, i32 %187)
  store i32 %188, i32* %13, align 4
  %189 = load i32, i32* %13, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %197, label %191

191:                                              ; preds = %183
  %192 = call i32 @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0))
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 2
  %194 = load float, float* %193, align 8
  %195 = fpext float %194 to double
  %196 = call i32 (i32**, i32, i32, ...) @vouts_osd_Message(i32** %9, i32 1, i32 %192, double %195)
  br label %197

197:                                              ; preds = %191, %183
  br label %198

198:                                              ; preds = %197, %180
  br label %199

199:                                              ; preds = %198, %172
  br label %200

200:                                              ; preds = %199, %166
  br label %201

201:                                              ; preds = %200, %156
  br label %202

202:                                              ; preds = %201, %146
  br label %203

203:                                              ; preds = %202, %141
  br label %204

204:                                              ; preds = %203, %84
  br label %205

205:                                              ; preds = %204, %74
  br label %206

206:                                              ; preds = %205, %64
  br label %207

207:                                              ; preds = %206, %54
  br label %208

208:                                              ; preds = %207, %44
  br label %209

209:                                              ; preds = %208, %37
  br label %210

210:                                              ; preds = %209, %19
  %211 = load i8*, i8** %8, align 8
  %212 = load i32, i32* @VLC_SUCCESS, align 4
  ret i32 %212
}

declare dso_local i32 @VLC_UNUSED(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @vout_osd_PrintVariableText(i32*, i8*, i32, %struct.TYPE_6__* byval(%struct.TYPE_6__) align 8, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @vouts_osd_Message(i32**, i32, i32, ...) #1

declare dso_local i32 @var_GetInteger(i32*, i8*) #1

declare dso_local i8* @var_GetString(i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
