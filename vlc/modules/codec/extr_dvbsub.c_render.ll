; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_dvbsub.c_render.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_dvbsub.c_render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_35__ = type { i32, i32, %struct.TYPE_36__*, i32, i32, i32, i32 }
%struct.TYPE_36__ = type { %struct.TYPE_36__*, i32, i64, i64, i32, %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i32, i32* }
%struct.TYPE_28__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32, i32, i32, %struct.TYPE_27__*, %struct.TYPE_38__*, %struct.TYPE_32__*, %struct.TYPE_31__, i32, i32 }
%struct.TYPE_27__ = type { i32, %struct.TYPE_26__*, %struct.TYPE_26__*, %struct.TYPE_26__*, %struct.TYPE_27__* }
%struct.TYPE_26__ = type { i64, i64, i64, i64 }
%struct.TYPE_38__ = type { i32, i32, i32, i32, i32, i64, %struct.TYPE_25__*, i32*, %struct.TYPE_38__* }
%struct.TYPE_25__ = type { i32, i64, i64, i32 }
%struct.TYPE_32__ = type { i32, %struct.TYPE_37__* }
%struct.TYPE_37__ = type { i32, i64, i64 }
%struct.TYPE_31__ = type { i64, i64, i64, i32, i32 }
%struct.TYPE_34__ = type { i32, i32, i32, i32, i64, i64, i64, i64, %struct.TYPE_33__* }
%struct.TYPE_33__ = type { i32, i64** }

@.str = private unnamed_addr constant [20 x i8] c"region %i not found\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"clut %i not found\00", align 1
@VLC_CODEC_YUVP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"cannot allocate SPU region\00", align 1
@VLC_CODEC_TEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_35__* (%struct.TYPE_28__*)* @render to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_35__* @render(%struct.TYPE_28__* %0) #0 {
  %2 = alloca %struct.TYPE_35__*, align 8
  %3 = alloca %struct.TYPE_28__*, align 8
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca %struct.TYPE_35__*, align 8
  %6 = alloca %struct.TYPE_36__**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_38__*, align 8
  %12 = alloca %struct.TYPE_37__*, align 8
  %13 = alloca %struct.TYPE_27__*, align 8
  %14 = alloca %struct.TYPE_26__*, align 8
  %15 = alloca %struct.TYPE_36__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_34__, align 8
  %19 = alloca %struct.TYPE_33__, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %3, align 8
  %22 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_29__*, %struct.TYPE_29__** %23, align 8
  store %struct.TYPE_29__* %24, %struct.TYPE_29__** %4, align 8
  %25 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %26 = call %struct.TYPE_35__* @decoder_NewSubpicture(%struct.TYPE_28__* %25, i32* null)
  store %struct.TYPE_35__* %26, %struct.TYPE_35__** %5, align 8
  %27 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %28 = icmp ne %struct.TYPE_35__* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %1
  store %struct.TYPE_35__* null, %struct.TYPE_35__** %2, align 8
  br label %467

30:                                               ; preds = %1
  %31 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 8
  %41 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %43, i32 0, i32 1
  store i32 1, i32* %44, align 4
  %45 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %9, align 4
  %48 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %10, align 4
  %51 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %51, i32 0, i32 6
  %53 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 4
  %57 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %57, i32 0, i32 6
  %59 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  %63 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %63, i32 0, i32 6
  %65 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %85

68:                                               ; preds = %30
  %69 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %69, i32 0, i32 6
  %71 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %74, %72
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %9, align 4
  %77 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %77, i32 0, i32 6
  %79 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %82, %80
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %10, align 4
  br label %85

85:                                               ; preds = %68, %30
  %86 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %86, i32 0, i32 2
  store %struct.TYPE_36__** %87, %struct.TYPE_36__*** %6, align 8
  store i32 0, i32* %7, align 4
  br label %88

88:                                               ; preds = %462, %85
  %89 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %89, i32 0, i32 5
  %91 = load %struct.TYPE_32__*, %struct.TYPE_32__** %90, align 8
  %92 = icmp ne %struct.TYPE_32__* %91, null
  br i1 %92, label %93, label %101

93:                                               ; preds = %88
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %95, i32 0, i32 5
  %97 = load %struct.TYPE_32__*, %struct.TYPE_32__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %94, %99
  br label %101

101:                                              ; preds = %93, %88
  %102 = phi i1 [ false, %88 ], [ %100, %93 ]
  br i1 %102, label %103, label %465

103:                                              ; preds = %101
  %104 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %104, i32 0, i32 5
  %106 = load %struct.TYPE_32__*, %struct.TYPE_32__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_37__*, %struct.TYPE_37__** %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %108, i64 %110
  store %struct.TYPE_37__* %111, %struct.TYPE_37__** %12, align 8
  %112 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %112, i32 0, i32 4
  %114 = load %struct.TYPE_38__*, %struct.TYPE_38__** %113, align 8
  store %struct.TYPE_38__* %114, %struct.TYPE_38__** %11, align 8
  br label %115

115:                                              ; preds = %128, %103
  %116 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %117 = icmp ne %struct.TYPE_38__* %116, null
  br i1 %117, label %118, label %132

118:                                              ; preds = %115
  %119 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp eq i32 %121, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %118
  br label %132

127:                                              ; preds = %118
  br label %128

128:                                              ; preds = %127
  %129 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %129, i32 0, i32 8
  %131 = load %struct.TYPE_38__*, %struct.TYPE_38__** %130, align 8
  store %struct.TYPE_38__* %131, %struct.TYPE_38__** %11, align 8
  br label %115

132:                                              ; preds = %126, %115
  %133 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %134 = icmp ne %struct.TYPE_38__* %133, null
  br i1 %134, label %141, label %135

135:                                              ; preds = %132
  %136 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %137 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 (%struct.TYPE_28__*, i8*, i32, ...) @msg_Dbg(%struct.TYPE_28__* %136, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %139)
  br label %462

141:                                              ; preds = %132
  %142 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %142, i32 0, i32 3
  %144 = load %struct.TYPE_27__*, %struct.TYPE_27__** %143, align 8
  store %struct.TYPE_27__* %144, %struct.TYPE_27__** %13, align 8
  br label %145

145:                                              ; preds = %158, %141
  %146 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %147 = icmp ne %struct.TYPE_27__* %146, null
  br i1 %147, label %148, label %162

148:                                              ; preds = %145
  %149 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %153 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp eq i32 %151, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %148
  br label %162

157:                                              ; preds = %148
  br label %158

158:                                              ; preds = %157
  %159 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %160 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %159, i32 0, i32 4
  %161 = load %struct.TYPE_27__*, %struct.TYPE_27__** %160, align 8
  store %struct.TYPE_27__* %161, %struct.TYPE_27__** %13, align 8
  br label %145

162:                                              ; preds = %156, %145
  %163 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %164 = icmp ne %struct.TYPE_27__* %163, null
  br i1 %164, label %171, label %165

165:                                              ; preds = %162
  %166 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %167 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %168 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = call i32 (%struct.TYPE_28__*, i8*, i32, ...) @msg_Dbg(%struct.TYPE_28__* %166, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %169)
  br label %462

171:                                              ; preds = %162
  %172 = load i32, i32* @VLC_CODEC_YUVP, align 4
  %173 = call i32 @video_format_Init(%struct.TYPE_34__* %18, i32 %172)
  %174 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %18, i32 0, i32 0
  store i32 0, i32* %174, align 8
  %175 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %18, i32 0, i32 1
  store i32 1, i32* %175, align 4
  %176 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %177 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %176, i32 0, i32 5
  %178 = load i64, i64* %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %18, i32 0, i32 6
  store i64 %178, i64* %179, align 8
  %180 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %18, i32 0, i32 7
  store i64 %178, i64* %180, align 8
  %181 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %182 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %18, i32 0, i32 3
  store i32 %183, i32* %184, align 4
  %185 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %18, i32 0, i32 2
  store i32 %183, i32* %185, align 8
  %186 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %18, i32 0, i32 4
  store i64 0, i64* %186, align 8
  %187 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %18, i32 0, i32 5
  store i64 0, i64* %187, align 8
  %188 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %18, i32 0, i32 8
  store %struct.TYPE_33__* %19, %struct.TYPE_33__** %188, align 8
  %189 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %190 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = icmp eq i32 %191, 1
  br i1 %192, label %193, label %194

193:                                              ; preds = %171
  br label %201

194:                                              ; preds = %171
  %195 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %196 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = icmp eq i32 %197, 2
  %199 = zext i1 %198 to i64
  %200 = select i1 %198, i32 16, i32 256
  br label %201

201:                                              ; preds = %194, %193
  %202 = phi i32 [ 4, %193 ], [ %200, %194 ]
  %203 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %18, i32 0, i32 8
  %204 = load %struct.TYPE_33__*, %struct.TYPE_33__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %204, i32 0, i32 0
  store i32 %202, i32* %205, align 8
  %206 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %207 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = icmp eq i32 %208, 1
  br i1 %209, label %210, label %214

210:                                              ; preds = %201
  %211 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %212 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %211, i32 0, i32 3
  %213 = load %struct.TYPE_26__*, %struct.TYPE_26__** %212, align 8
  br label %229

214:                                              ; preds = %201
  %215 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %216 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 4
  %218 = icmp eq i32 %217, 2
  br i1 %218, label %219, label %223

219:                                              ; preds = %214
  %220 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %221 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %220, i32 0, i32 2
  %222 = load %struct.TYPE_26__*, %struct.TYPE_26__** %221, align 8
  br label %227

223:                                              ; preds = %214
  %224 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %225 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %224, i32 0, i32 1
  %226 = load %struct.TYPE_26__*, %struct.TYPE_26__** %225, align 8
  br label %227

227:                                              ; preds = %223, %219
  %228 = phi %struct.TYPE_26__* [ %222, %219 ], [ %226, %223 ]
  br label %229

229:                                              ; preds = %227, %210
  %230 = phi %struct.TYPE_26__* [ %213, %210 ], [ %228, %227 ]
  store %struct.TYPE_26__* %230, %struct.TYPE_26__** %14, align 8
  store i32 0, i32* %8, align 4
  br label %231

231:                                              ; preds = %300, %229
  %232 = load i32, i32* %8, align 4
  %233 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %18, i32 0, i32 8
  %234 = load %struct.TYPE_33__*, %struct.TYPE_33__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = icmp slt i32 %232, %236
  br i1 %237, label %238, label %303

238:                                              ; preds = %231
  %239 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %240 = load i32, i32* %8, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %242, i32 0, i32 3
  %244 = load i64, i64* %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %18, i32 0, i32 8
  %246 = load %struct.TYPE_33__*, %struct.TYPE_33__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %246, i32 0, i32 1
  %248 = load i64**, i64*** %247, align 8
  %249 = load i32, i32* %8, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i64*, i64** %248, i64 %250
  %252 = load i64*, i64** %251, align 8
  %253 = getelementptr inbounds i64, i64* %252, i64 0
  store i64 %244, i64* %253, align 8
  %254 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %255 = load i32, i32* %8, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %254, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %257, i32 0, i32 2
  %259 = load i64, i64* %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %18, i32 0, i32 8
  %261 = load %struct.TYPE_33__*, %struct.TYPE_33__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %261, i32 0, i32 1
  %263 = load i64**, i64*** %262, align 8
  %264 = load i32, i32* %8, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i64*, i64** %263, i64 %265
  %267 = load i64*, i64** %266, align 8
  %268 = getelementptr inbounds i64, i64* %267, i64 1
  store i64 %259, i64* %268, align 8
  %269 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %270 = load i32, i32* %8, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %269, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %272, i32 0, i32 1
  %274 = load i64, i64* %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %18, i32 0, i32 8
  %276 = load %struct.TYPE_33__*, %struct.TYPE_33__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %276, i32 0, i32 1
  %278 = load i64**, i64*** %277, align 8
  %279 = load i32, i32* %8, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i64*, i64** %278, i64 %280
  %282 = load i64*, i64** %281, align 8
  %283 = getelementptr inbounds i64, i64* %282, i64 2
  store i64 %274, i64* %283, align 8
  %284 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %285 = load i32, i32* %8, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %284, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = sub nsw i64 255, %289
  %291 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %18, i32 0, i32 8
  %292 = load %struct.TYPE_33__*, %struct.TYPE_33__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %292, i32 0, i32 1
  %294 = load i64**, i64*** %293, align 8
  %295 = load i32, i32* %8, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i64*, i64** %294, i64 %296
  %298 = load i64*, i64** %297, align 8
  %299 = getelementptr inbounds i64, i64* %298, i64 3
  store i64 %290, i64* %299, align 8
  br label %300

300:                                              ; preds = %238
  %301 = load i32, i32* %8, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %8, align 4
  br label %231

303:                                              ; preds = %231
  %304 = call %struct.TYPE_36__* @subpicture_region_New(%struct.TYPE_34__* %18)
  store %struct.TYPE_36__* %304, %struct.TYPE_36__** %15, align 8
  %305 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %18, i32 0, i32 8
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %305, align 8
  %306 = call i32 @video_format_Clean(%struct.TYPE_34__* %18)
  %307 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %308 = icmp ne %struct.TYPE_36__* %307, null
  br i1 %308, label %312, label %309

309:                                              ; preds = %303
  %310 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %311 = call i32 @msg_Err(%struct.TYPE_28__* %310, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %462

312:                                              ; preds = %303
  %313 = load i32, i32* %9, align 4
  %314 = sext i32 %313 to i64
  %315 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %316 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %315, i32 0, i32 2
  %317 = load i64, i64* %316, align 8
  %318 = add nsw i64 %314, %317
  %319 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %320 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %319, i32 0, i32 3
  store i64 %318, i64* %320, align 8
  %321 = load i32, i32* %10, align 4
  %322 = sext i32 %321 to i64
  %323 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %324 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %323, i32 0, i32 1
  %325 = load i64, i64* %324, align 8
  %326 = add nsw i64 %322, %325
  %327 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %328 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %327, i32 0, i32 2
  store i64 %326, i64* %328, align 8
  %329 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %330 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %329, i32 0, i32 2
  %331 = load i32, i32* %330, align 8
  %332 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %333 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %332, i32 0, i32 1
  store i32 %331, i32* %333, align 8
  %334 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %335 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %6, align 8
  store %struct.TYPE_36__* %334, %struct.TYPE_36__** %335, align 8
  %336 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %337 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %336, i32 0, i32 0
  store %struct.TYPE_36__** %337, %struct.TYPE_36__*** %6, align 8
  %338 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %339 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %338, i32 0, i32 7
  %340 = load i32*, i32** %339, align 8
  store i32* %340, i32** %16, align 8
  %341 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %342 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %341, i32 0, i32 5
  %343 = load %struct.TYPE_30__*, %struct.TYPE_30__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %343, i32 0, i32 1
  %345 = load i32*, i32** %344, align 8
  store i32* %345, i32** %17, align 8
  %346 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %347 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %346, i32 0, i32 5
  %348 = load %struct.TYPE_30__*, %struct.TYPE_30__** %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  store i32 %350, i32* %20, align 4
  store i32 0, i32* %8, align 4
  br label %351

351:                                              ; preds = %373, %312
  %352 = load i32, i32* %8, align 4
  %353 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %354 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 4
  %356 = icmp slt i32 %352, %355
  br i1 %356, label %357, label %376

357:                                              ; preds = %351
  %358 = load i32*, i32** %17, align 8
  %359 = load i32*, i32** %16, align 8
  %360 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %361 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %360, i32 0, i32 5
  %362 = load i64, i64* %361, align 8
  %363 = call i32 @memcpy(i32* %358, i32* %359, i64 %362)
  %364 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %365 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %364, i32 0, i32 5
  %366 = load i64, i64* %365, align 8
  %367 = load i32*, i32** %16, align 8
  %368 = getelementptr inbounds i32, i32* %367, i64 %366
  store i32* %368, i32** %16, align 8
  %369 = load i32, i32* %20, align 4
  %370 = load i32*, i32** %17, align 8
  %371 = sext i32 %369 to i64
  %372 = getelementptr inbounds i32, i32* %370, i64 %371
  store i32* %372, i32** %17, align 8
  br label %373

373:                                              ; preds = %357
  %374 = load i32, i32* %8, align 4
  %375 = add nsw i32 %374, 1
  store i32 %375, i32* %8, align 4
  br label %351

376:                                              ; preds = %351
  store i32 0, i32* %8, align 4
  br label %377

377:                                              ; preds = %458, %376
  %378 = load i32, i32* %8, align 4
  %379 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %380 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %379, i32 0, i32 4
  %381 = load i32, i32* %380, align 8
  %382 = icmp slt i32 %378, %381
  br i1 %382, label %383, label %461

383:                                              ; preds = %377
  %384 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %385 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %384, i32 0, i32 6
  %386 = load %struct.TYPE_25__*, %struct.TYPE_25__** %385, align 8
  %387 = load i32, i32* %8, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %386, i64 %388
  store %struct.TYPE_25__* %389, %struct.TYPE_25__** %21, align 8
  %390 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %391 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 8
  %393 = icmp ne i32 %392, 1
  br i1 %393, label %399, label %394

394:                                              ; preds = %383
  %395 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %396 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %395, i32 0, i32 3
  %397 = load i32, i32* %396, align 8
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %400, label %399

399:                                              ; preds = %394, %383
  br label %458

400:                                              ; preds = %394
  %401 = load i32, i32* @VLC_CODEC_TEXT, align 4
  %402 = call i32 @video_format_Init(%struct.TYPE_34__* %18, i32 %401)
  %403 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %18, i32 0, i32 0
  store i32 1, i32* %403, align 8
  %404 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %18, i32 0, i32 1
  store i32 1, i32* %404, align 4
  %405 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %406 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %405, i32 0, i32 5
  %407 = load i64, i64* %406, align 8
  %408 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %18, i32 0, i32 6
  store i64 %407, i64* %408, align 8
  %409 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %18, i32 0, i32 7
  store i64 %407, i64* %409, align 8
  %410 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %411 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %410, i32 0, i32 1
  %412 = load i32, i32* %411, align 4
  %413 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %18, i32 0, i32 3
  store i32 %412, i32* %413, align 4
  %414 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %18, i32 0, i32 2
  store i32 %412, i32* %414, align 8
  %415 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %18, i32 0, i32 4
  store i64 0, i64* %415, align 8
  %416 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %18, i32 0, i32 5
  store i64 0, i64* %416, align 8
  %417 = call %struct.TYPE_36__* @subpicture_region_New(%struct.TYPE_34__* %18)
  store %struct.TYPE_36__* %417, %struct.TYPE_36__** %15, align 8
  %418 = call i32 @video_format_Clean(%struct.TYPE_34__* %18)
  %419 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %420 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %419, i32 0, i32 3
  %421 = load i32, i32* %420, align 8
  %422 = call i32 @text_segment_New(i32 %421)
  %423 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %424 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %423, i32 0, i32 4
  store i32 %422, i32* %424, align 8
  %425 = load i32, i32* %9, align 4
  %426 = sext i32 %425 to i64
  %427 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %428 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %427, i32 0, i32 2
  %429 = load i64, i64* %428, align 8
  %430 = add nsw i64 %426, %429
  %431 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %432 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %431, i32 0, i32 2
  %433 = load i64, i64* %432, align 8
  %434 = add nsw i64 %430, %433
  %435 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %436 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %435, i32 0, i32 3
  store i64 %434, i64* %436, align 8
  %437 = load i32, i32* %10, align 4
  %438 = sext i32 %437 to i64
  %439 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %440 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %439, i32 0, i32 1
  %441 = load i64, i64* %440, align 8
  %442 = add nsw i64 %438, %441
  %443 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %444 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %443, i32 0, i32 1
  %445 = load i64, i64* %444, align 8
  %446 = add nsw i64 %442, %445
  %447 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %448 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %447, i32 0, i32 2
  store i64 %446, i64* %448, align 8
  %449 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %450 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %449, i32 0, i32 2
  %451 = load i32, i32* %450, align 8
  %452 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %453 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %452, i32 0, i32 1
  store i32 %451, i32* %453, align 8
  %454 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %455 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %6, align 8
  store %struct.TYPE_36__* %454, %struct.TYPE_36__** %455, align 8
  %456 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %457 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %456, i32 0, i32 0
  store %struct.TYPE_36__** %457, %struct.TYPE_36__*** %6, align 8
  br label %458

458:                                              ; preds = %400, %399
  %459 = load i32, i32* %8, align 4
  %460 = add nsw i32 %459, 1
  store i32 %460, i32* %8, align 4
  br label %377

461:                                              ; preds = %377
  br label %462

462:                                              ; preds = %461, %309, %165, %135
  %463 = load i32, i32* %7, align 4
  %464 = add nsw i32 %463, 1
  store i32 %464, i32* %7, align 4
  br label %88

465:                                              ; preds = %101
  %466 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  store %struct.TYPE_35__* %466, %struct.TYPE_35__** %2, align 8
  br label %467

467:                                              ; preds = %465, %29
  %468 = load %struct.TYPE_35__*, %struct.TYPE_35__** %2, align 8
  ret %struct.TYPE_35__* %468
}

declare dso_local %struct.TYPE_35__* @decoder_NewSubpicture(%struct.TYPE_28__*, i32*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_28__*, i8*, i32, ...) #1

declare dso_local i32 @video_format_Init(%struct.TYPE_34__*, i32) #1

declare dso_local %struct.TYPE_36__* @subpicture_region_New(%struct.TYPE_34__*) #1

declare dso_local i32 @video_format_Clean(%struct.TYPE_34__*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_28__*, i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @text_segment_New(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
