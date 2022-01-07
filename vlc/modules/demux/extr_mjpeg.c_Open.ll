; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_mjpeg.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_mjpeg.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, %struct.TYPE_11__*, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32, i32*, i32, i32*, i32, i8*, i8*, i64, i32*, i32 }
%struct.TYPE_9__ = type { i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_TICK_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"boundary=\00", align 1
@MimeDemux = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"JPEG SOI marker detected\00", align 1
@MjpgDemux = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"mjpeg-fps\00", align 1
@VLC_TICK_INVALID = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c".jpeg\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c".jpg\00", align 1
@VIDEO_ES = common dso_local global i32 0, align 4
@VLC_CODEC_MJPG = common dso_local global i32 0, align 4
@Control = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca float, align 4
  store i32* %0, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = bitcast i32* %12 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %4, align 8
  store i32 0, i32* %6, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @IsMxpeg(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %26, i32* %2, align 4
  br label %224

27:                                               ; preds = %19, %1
  %28 = load i32*, i32** %3, align 8
  %29 = call %struct.TYPE_11__* @vlc_obj_malloc(i32* %28, i32 80)
  store %struct.TYPE_11__* %29, %struct.TYPE_11__** %7, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %31 = icmp eq %struct.TYPE_11__* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %36, i32* %2, align 4
  br label %224

37:                                               ; preds = %27
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 4
  store %struct.TYPE_11__* %38, %struct.TYPE_11__** %40, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 3
  store i32* null, i32** %42, align 8
  %43 = load i32, i32* @VLC_TICK_0, align 4
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 9
  store i32 %43, i32* %45, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 7
  store i64 0, i64* %47, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 8
  store i32* null, i32** %49, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  store i32 15360, i32* %51, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @stream_ContentType(i32 %54)
  store i8* %55, i8** %8, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %110

58:                                               ; preds = %37
  %59 = load i8*, i8** %8, align 8
  %60 = call i8* @strstr(i8* %59, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i8* %60, i8** %9, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %107

63:                                               ; preds = %58
  %64 = call i64 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %65 = load i8*, i8** %9, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 %64
  store i8* %66, i8** %9, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = call i64 @strlen(i8* %67)
  store i64 %68, i64* %10, align 8
  %69 = load i64, i64* %10, align 8
  %70 = icmp ugt i64 %69, 2
  br i1 %70, label %71, label %92

71:                                               ; preds = %63
  %72 = load i8*, i8** %9, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 34
  br i1 %76, label %77, label %92

77:                                               ; preds = %71
  %78 = load i8*, i8** %9, align 8
  %79 = load i64, i64* %10, align 8
  %80 = sub i64 %79, 1
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 34
  br i1 %84, label %85, label %92

85:                                               ; preds = %77
  %86 = load i8*, i8** %9, align 8
  %87 = load i64, i64* %10, align 8
  %88 = sub i64 %87, 1
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  store i8 0, i8* %89, align 1
  %90 = load i8*, i8** %9, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %9, align 8
  br label %92

92:                                               ; preds = %85, %77, %71, %63
  %93 = load i32*, i32** %3, align 8
  %94 = load i8*, i8** %9, align 8
  %95 = call i32* @vlc_obj_strdup(i32* %93, i8* %94)
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 8
  store i32* %95, i32** %97, align 8
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 8
  %100 = load i32*, i32** %99, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %106, label %102

102:                                              ; preds = %92
  %103 = load i8*, i8** %8, align 8
  %104 = call i32 @free(i8* %103)
  %105 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %105, i32* %2, align 4
  br label %224

106:                                              ; preds = %92
  br label %107

107:                                              ; preds = %106, %58
  %108 = load i8*, i8** %8, align 8
  %109 = call i32 @free(i8* %108)
  br label %110

110:                                              ; preds = %107, %37
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %112 = call i32 @CheckMimeHeader(%struct.TYPE_10__* %111, i32* %5)
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %129

115:                                              ; preds = %110
  %116 = load i32, i32* @MimeDemux, align 4
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 8
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %5, align 4
  %123 = call i32 @vlc_stream_Read(i32 %121, i32* null, i32 %122)
  %124 = load i32, i32* %5, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %115
  %127 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %127, i32* %2, align 4
  br label %224

128:                                              ; preds = %115
  br label %162

129:                                              ; preds = %110
  %130 = load i32, i32* %5, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %159

132:                                              ; preds = %129
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  %137 = load i32, i32* %136, align 4
  %138 = icmp eq i32 %137, 255
  br i1 %138, label %139, label %156

139:                                              ; preds = %132
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp eq i32 %144, 216
  br i1 %145, label %146, label %156

146:                                              ; preds = %139
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %148 = call i32 @msg_Dbg(%struct.TYPE_10__* %147, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %149 = load i32, i32* @MjpgDemux, align 4
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 2
  store i32 %149, i32* %151, align 8
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 7
  %154 = load i64, i64* %153, align 8
  %155 = add nsw i64 %154, 1
  store i64 %155, i64* %153, align 8
  br label %158

156:                                              ; preds = %139, %132
  %157 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %157, i32* %2, align 4
  br label %224

158:                                              ; preds = %146
  br label %161

159:                                              ; preds = %129
  %160 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %160, i32* %2, align 4
  br label %224

161:                                              ; preds = %158
  br label %162

162:                                              ; preds = %161, %128
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %164 = call float @var_InheritFloat(%struct.TYPE_10__* %163, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store float %164, float* %11, align 4
  %165 = load i8*, i8** @VLC_TICK_INVALID, align 8
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 6
  store i8* %165, i8** %167, align 8
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %169 = call i64 @demux_IsPathExtension(%struct.TYPE_10__* %168, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %175, label %171

171:                                              ; preds = %162
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %173 = call i64 @demux_IsPathExtension(%struct.TYPE_10__* %172, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %182

175:                                              ; preds = %171, %162
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 2
  store i32 1, i32* %177, align 8
  %178 = load float, float* %11, align 4
  %179 = fcmp oeq float %178, 0.000000e+00
  br i1 %179, label %180, label %181

180:                                              ; preds = %175
  store float 1.000000e+00, float* %11, align 4
  br label %181

181:                                              ; preds = %180, %175
  br label %185

182:                                              ; preds = %171
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 2
  store i32 0, i32* %184, align 8
  br label %185

185:                                              ; preds = %182, %181
  %186 = load float, float* %11, align 4
  %187 = fcmp une float %186, 0.000000e+00
  br i1 %187, label %188, label %191

188:                                              ; preds = %185
  %189 = load float, float* %11, align 4
  %190 = call i8* @vlc_tick_rate_duration(float %189)
  br label %193

191:                                              ; preds = %185
  %192 = load i8*, i8** @VLC_TICK_INVALID, align 8
  br label %193

193:                                              ; preds = %191, %188
  %194 = phi i8* [ %190, %188 ], [ %192, %191 ]
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 5
  store i8* %194, i8** %196, align 8
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 4
  %199 = load i32, i32* @VIDEO_ES, align 4
  %200 = load i32, i32* @VLC_CODEC_MJPG, align 4
  %201 = call i32 @es_format_Init(i32* %198, i32 %199, i32 %200)
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 4
  %207 = call i32* @es_out_Add(i32 %204, i32* %206)
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 3
  store i32* %207, i32** %209, align 8
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 3
  %212 = load i32*, i32** %211, align 8
  %213 = icmp eq i32* %212, null
  %214 = zext i1 %213 to i32
  %215 = call i64 @unlikely(i32 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %193
  %218 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %218, i32* %2, align 4
  br label %224

219:                                              ; preds = %193
  %220 = load i32, i32* @Control, align 4
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 0
  store i32 %220, i32* %222, align 8
  %223 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %223, i32* %2, align 4
  br label %224

224:                                              ; preds = %219, %217, %159, %156, %126, %102, %35, %25
  %225 = load i32, i32* %2, align 4
  ret i32 %225
}

declare dso_local i64 @IsMxpeg(i32) #1

declare dso_local %struct.TYPE_11__* @vlc_obj_malloc(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @stream_ContentType(i32) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32* @vlc_obj_strdup(i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @CheckMimeHeader(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @vlc_stream_Read(i32, i32*, i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_10__*, i8*) #1

declare dso_local float @var_InheritFloat(%struct.TYPE_10__*, i8*) #1

declare dso_local i64 @demux_IsPathExtension(%struct.TYPE_10__*, i8*) #1

declare dso_local i8* @vlc_tick_rate_duration(float) #1

declare dso_local i32 @es_format_Init(i32*, i32, i32) #1

declare dso_local i32* @es_out_Add(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
