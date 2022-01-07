; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/webvtt/extr_encvtt.c_Encode.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/webvtt/extr_encvtt.c_Encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i64, i64, i64 }
%struct.TYPE_24__ = type { float, i64, i64, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32, i32, float, %struct.TYPE_22__*, %struct.TYPE_20__, %struct.TYPE_25__* }
%struct.TYPE_22__ = type { i32*, %struct.TYPE_21__*, %struct.TYPE_23__*, %struct.TYPE_22__* }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32*, i32*, %struct.TYPE_23__* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_26__ = type { %struct.TYPE_27__* }

@VLC_CODEC_TEXT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"vttc\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"payl\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"<ruby>\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"<rt>\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"</rt>\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"</ruby>\00", align 1
@STYLE_HAS_FLAGS = common dso_local global i32 0, align 4
@STYLE_BOLD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"<b>\00", align 1
@STYLE_UNDERLINE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"<u>\00", align 1
@STYLE_ITALIC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"<i>\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"</b>\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"</u>\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"</i>\00", align 1
@SUBPICTURE_ALIGN_LEFT = common dso_local global i32 0, align 4
@SUBPICTURE_ALIGN_RIGHT = common dso_local global i32 0, align 4
@SUBPICTURE_ALIGN_TOP = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"sttg\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"align:left\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"align:right\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"line:%2.2f%%\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"vtte\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_27__* (i32*, %struct.TYPE_24__*)* @Encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_27__* @Encode(i32* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca %struct.TYPE_27__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_26__, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca float, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_27__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %5, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @VLC_UNUSED(i32* %18)
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %21 = icmp eq %struct.TYPE_24__* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %3, align 8
  br label %349

23:                                               ; preds = %2
  %24 = call i32 @bo_init(%struct.TYPE_26__* %6, i32 8)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %3, align 8
  br label %349

27:                                               ; preds = %23
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %29, align 8
  store %struct.TYPE_25__* %30, %struct.TYPE_25__** %7, align 8
  br label %31

31:                                               ; preds = %304, %27
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %33 = icmp ne %struct.TYPE_25__* %32, null
  br i1 %33, label %34, label %308

34:                                               ; preds = %31
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @VLC_CODEC_TEXT, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %53, label %41

41:                                               ; preds = %34
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %43, align 8
  %45 = icmp eq %struct.TYPE_22__* %44, null
  br i1 %45, label %53, label %46

46:                                               ; preds = %41
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %46, %41, %34
  br label %304

54:                                               ; preds = %46
  %55 = call i64 @bo_size(%struct.TYPE_26__* %6)
  store i64 %55, i64* %8, align 8
  %56 = call i32 @bo_add_32be(%struct.TYPE_26__* %6, i32 0)
  %57 = call i32 @bo_add_fourcc(%struct.TYPE_26__* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %58 = call i32 @bo_add_32be(%struct.TYPE_26__* %6, i32 0)
  %59 = call i32 @bo_add_fourcc(%struct.TYPE_26__* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8 0, i8* %9, align 1
  %60 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %60, i32 0, i32 3
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %61, align 8
  store %struct.TYPE_22__* %62, %struct.TYPE_22__** %10, align 8
  br label %63

63:                                               ; preds = %198, %54
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %65 = icmp ne %struct.TYPE_22__* %64, null
  br i1 %65, label %66, label %202

66:                                               ; preds = %63
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %198

72:                                               ; preds = %66
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %74, align 8
  %76 = icmp ne %struct.TYPE_23__* %75, null
  br i1 %76, label %77, label %102

77:                                               ; preds = %72
  %78 = call i32 @bo_add_mem(%struct.TYPE_26__* %6, i32 6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %80, align 8
  store %struct.TYPE_23__* %81, %struct.TYPE_23__** %11, align 8
  br label %82

82:                                               ; preds = %96, %77
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %84 = icmp ne %struct.TYPE_23__* %83, null
  br i1 %84, label %85, label %100

85:                                               ; preds = %82
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @WriteText(i32* %88, %struct.TYPE_26__* %6, i8* %9)
  %90 = call i32 @bo_add_mem(%struct.TYPE_26__* %6, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @WriteText(i32* %93, %struct.TYPE_26__* %6, i8* %9)
  %95 = call i32 @bo_add_mem(%struct.TYPE_26__* %6, i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %96

96:                                               ; preds = %85
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %98, align 8
  store %struct.TYPE_23__* %99, %struct.TYPE_23__** %11, align 8
  br label %82

100:                                              ; preds = %82
  %101 = call i32 @bo_add_mem(%struct.TYPE_26__* %6, i32 7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %198

102:                                              ; preds = %72
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %104, align 8
  store %struct.TYPE_21__* %105, %struct.TYPE_21__** %12, align 8
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %107 = icmp ne %struct.TYPE_21__* %106, null
  br i1 %107, label %108, label %149

108:                                              ; preds = %102
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %149

113:                                              ; preds = %108
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @STYLE_HAS_FLAGS, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %148

120:                                              ; preds = %113
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @STYLE_BOLD, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %120
  %128 = call i32 @bo_add_mem(%struct.TYPE_26__* %6, i32 3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  br label %129

129:                                              ; preds = %127, %120
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @STYLE_UNDERLINE, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %129
  %137 = call i32 @bo_add_mem(%struct.TYPE_26__* %6, i32 3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  br label %138

138:                                              ; preds = %136, %129
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @STYLE_ITALIC, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %138
  %146 = call i32 @bo_add_mem(%struct.TYPE_26__* %6, i32 3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  br label %147

147:                                              ; preds = %145, %138
  br label %148

148:                                              ; preds = %147, %113
  br label %149

149:                                              ; preds = %148, %108, %102
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = call i32 @WriteText(i32* %152, %struct.TYPE_26__* %6, i8* %9)
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %155 = icmp ne %struct.TYPE_21__* %154, null
  br i1 %155, label %156, label %197

156:                                              ; preds = %149
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %197

161:                                              ; preds = %156
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @STYLE_HAS_FLAGS, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %196

168:                                              ; preds = %161
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @STYLE_BOLD, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %168
  %176 = call i32 @bo_add_mem(%struct.TYPE_26__* %6, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  br label %177

177:                                              ; preds = %175, %168
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @STYLE_UNDERLINE, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %177
  %185 = call i32 @bo_add_mem(%struct.TYPE_26__* %6, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  br label %186

186:                                              ; preds = %184, %177
  %187 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @STYLE_ITALIC, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %186
  %194 = call i32 @bo_add_mem(%struct.TYPE_26__* %6, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  br label %195

195:                                              ; preds = %193, %186
  br label %196

196:                                              ; preds = %195, %161
  br label %197

197:                                              ; preds = %196, %156, %149
  br label %198

198:                                              ; preds = %197, %100, %71
  %199 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %200 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %199, i32 0, i32 3
  %201 = load %struct.TYPE_22__*, %struct.TYPE_22__** %200, align 8
  store %struct.TYPE_22__* %201, %struct.TYPE_22__** %10, align 8
  br label %63

202:                                              ; preds = %63
  %203 = load i64, i64* %8, align 8
  %204 = add i64 %203, 8
  %205 = call i64 @bo_size(%struct.TYPE_26__* %6)
  %206 = load i64, i64* %8, align 8
  %207 = sub i64 %205, %206
  %208 = sub i64 %207, 8
  %209 = call i32 @bo_set_32be(%struct.TYPE_26__* %6, i64 %204, i64 %208)
  %210 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %211 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @SUBPICTURE_ALIGN_LEFT, align 4
  %214 = load i32, i32* @SUBPICTURE_ALIGN_RIGHT, align 4
  %215 = or i32 %213, %214
  %216 = and i32 %212, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %225, label %218

218:                                              ; preds = %202
  %219 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @SUBPICTURE_ALIGN_TOP, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %298

225:                                              ; preds = %218, %202
  %226 = call i64 @bo_size(%struct.TYPE_26__* %6)
  store i64 %226, i64* %13, align 8
  %227 = call i32 @bo_add_32be(%struct.TYPE_26__* %6, i32 0)
  %228 = call i32 @bo_add_fourcc(%struct.TYPE_26__* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %229 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* @SUBPICTURE_ALIGN_LEFT, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %225
  %236 = call i32 @bo_add_mem(%struct.TYPE_26__* %6, i32 10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  br label %247

237:                                              ; preds = %225
  %238 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @SUBPICTURE_ALIGN_RIGHT, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %237
  %245 = call i32 @bo_add_mem(%struct.TYPE_26__* %6, i32 11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  br label %246

246:                                              ; preds = %244, %237
  br label %247

247:                                              ; preds = %246, %235
  %248 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* @SUBPICTURE_ALIGN_TOP, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %292

254:                                              ; preds = %247
  store float 1.000000e+02, float* %14, align 4
  %255 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %255, i32 0, i32 0
  %257 = load float, float* %256, align 8
  %258 = fcmp ogt float %257, 0.000000e+00
  br i1 %258, label %259, label %269

259:                                              ; preds = %254
  %260 = load float, float* %14, align 4
  %261 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %262 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %261, i32 0, i32 2
  %263 = load float, float* %262, align 8
  %264 = fmul float %260, %263
  %265 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %265, i32 0, i32 0
  %267 = load float, float* %266, align 8
  %268 = fdiv float %264, %267
  store float %268, float* %14, align 4
  br label %269

269:                                              ; preds = %259, %254
  %270 = call i64 @bo_size(%struct.TYPE_26__* %6)
  %271 = load i64, i64* %13, align 8
  %272 = add i64 %271, 8
  %273 = icmp ne i64 %270, %272
  br i1 %273, label %274, label %276

274:                                              ; preds = %269
  %275 = call i32 @bo_add_8(%struct.TYPE_26__* %6, i8 signext 32)
  br label %276

276:                                              ; preds = %274, %269
  %277 = load float, float* %14, align 4
  %278 = call i32 @us_asprintf(i8** %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), float %277)
  store i32 %278, i32* %16, align 4
  %279 = load i32, i32* %16, align 4
  %280 = icmp sge i32 %279, 0
  br i1 %280, label %281, label %291

281:                                              ; preds = %276
  %282 = load i32, i32* %16, align 4
  %283 = icmp sgt i32 %282, 0
  br i1 %283, label %284, label %288

284:                                              ; preds = %281
  %285 = load i32, i32* %16, align 4
  %286 = load i8*, i8** %15, align 8
  %287 = call i32 @bo_add_mem(%struct.TYPE_26__* %6, i32 %285, i8* %286)
  br label %288

288:                                              ; preds = %284, %281
  %289 = load i8*, i8** %15, align 8
  %290 = call i32 @free(i8* %289)
  br label %291

291:                                              ; preds = %288, %276
  br label %292

292:                                              ; preds = %291, %247
  %293 = load i64, i64* %13, align 8
  %294 = call i64 @bo_size(%struct.TYPE_26__* %6)
  %295 = load i64, i64* %13, align 8
  %296 = sub i64 %294, %295
  %297 = call i32 @bo_set_32be(%struct.TYPE_26__* %6, i64 %293, i64 %296)
  br label %298

298:                                              ; preds = %292, %218
  %299 = load i64, i64* %8, align 8
  %300 = call i64 @bo_size(%struct.TYPE_26__* %6)
  %301 = load i64, i64* %8, align 8
  %302 = sub i64 %300, %301
  %303 = call i32 @bo_set_32be(%struct.TYPE_26__* %6, i64 %299, i64 %302)
  br label %304

304:                                              ; preds = %298, %53
  %305 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %306 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %305, i32 0, i32 5
  %307 = load %struct.TYPE_25__*, %struct.TYPE_25__** %306, align 8
  store %struct.TYPE_25__* %307, %struct.TYPE_25__** %7, align 8
  br label %31

308:                                              ; preds = %31
  %309 = call i64 @bo_size(%struct.TYPE_26__* %6)
  %310 = icmp eq i64 %309, 0
  br i1 %310, label %311, label %314

311:                                              ; preds = %308
  %312 = call i32 @bo_add_32be(%struct.TYPE_26__* %6, i32 8)
  %313 = call i32 @bo_add_fourcc(%struct.TYPE_26__* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  br label %314

314:                                              ; preds = %311, %308
  %315 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %6, i32 0, i32 0
  %316 = load %struct.TYPE_27__*, %struct.TYPE_27__** %315, align 8
  store %struct.TYPE_27__* %316, %struct.TYPE_27__** %17, align 8
  %317 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %6, i32 0, i32 0
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %317, align 8
  %318 = call i32 @bo_deinit(%struct.TYPE_26__* %6)
  %319 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %320 = icmp ne %struct.TYPE_27__* %319, null
  br i1 %320, label %321, label %347

321:                                              ; preds = %314
  %322 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %323 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %322, i32 0, i32 1
  %324 = load i64, i64* %323, align 8
  %325 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %326 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %325, i32 0, i32 1
  store i64 %324, i64* %326, align 8
  %327 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %328 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %327, i32 0, i32 0
  store i64 %324, i64* %328, align 8
  %329 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %330 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %329, i32 0, i32 2
  %331 = load i64, i64* %330, align 8
  %332 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %333 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %332, i32 0, i32 1
  %334 = load i64, i64* %333, align 8
  %335 = icmp sgt i64 %331, %334
  br i1 %335, label %336, label %346

336:                                              ; preds = %321
  %337 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %338 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %337, i32 0, i32 2
  %339 = load i64, i64* %338, align 8
  %340 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %341 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %340, i32 0, i32 1
  %342 = load i64, i64* %341, align 8
  %343 = sub nsw i64 %339, %342
  %344 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %345 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %344, i32 0, i32 2
  store i64 %343, i64* %345, align 8
  br label %346

346:                                              ; preds = %336, %321
  br label %347

347:                                              ; preds = %346, %314
  %348 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  store %struct.TYPE_27__* %348, %struct.TYPE_27__** %3, align 8
  br label %349

349:                                              ; preds = %347, %26, %22
  %350 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  ret %struct.TYPE_27__* %350
}

declare dso_local i32 @VLC_UNUSED(i32*) #1

declare dso_local i32 @bo_init(%struct.TYPE_26__*, i32) #1

declare dso_local i64 @bo_size(%struct.TYPE_26__*) #1

declare dso_local i32 @bo_add_32be(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @bo_add_fourcc(%struct.TYPE_26__*, i8*) #1

declare dso_local i32 @bo_add_mem(%struct.TYPE_26__*, i32, i8*) #1

declare dso_local i32 @WriteText(i32*, %struct.TYPE_26__*, i8*) #1

declare dso_local i32 @bo_set_32be(%struct.TYPE_26__*, i64, i64) #1

declare dso_local i32 @bo_add_8(%struct.TYPE_26__*, i8 signext) #1

declare dso_local i32 @us_asprintf(i8**, i8*, float) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @bo_deinit(%struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
