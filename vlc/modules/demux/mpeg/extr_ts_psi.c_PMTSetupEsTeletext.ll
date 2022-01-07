; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_psi.c_PMTSetupEsTeletext.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_psi.c_PMTSetupEsTeletext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { %struct.TYPE_31__* }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_35__ = type { %struct.TYPE_36__* }
%struct.TYPE_36__ = type { %struct.TYPE_37__, i32 }
%struct.TYPE_37__ = type { i32, i32*, i32*, %struct.TYPE_33__, i32, i64 }
%struct.TYPE_33__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i32, i32 }
%struct.TYPE_34__ = type { i32, i32, i32, i64 }
%struct.TYPE_29__ = type { i32, i32 }
%struct.TYPE_39__ = type { i32, %struct.TYPE_38__* }
%struct.TYPE_38__ = type { i32, i32, i32, i32 }
%struct.TYPE_40__ = type { i32, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32, i32, i32 }

@SPU_ES = common dso_local global i32 0, align 4
@VLC_CODEC_TELETEXT = common dso_local global i32 0, align 4
@ppsz_teletext_type = common dso_local global i32* null, align 8
@ES_PRIORITY_SELECTABLE_MIN = common dso_local global i32 0, align 4
@ES_PRIORITY_NOT_DEFAULTABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"    * ttxt type=%s lan=%s page=%d%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_30__*, %struct.TYPE_35__*, i32*)* @PMTSetupEsTeletext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PMTSetupEsTeletext(%struct.TYPE_30__* %0, %struct.TYPE_35__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_30__*, align 8
  %5 = alloca %struct.TYPE_35__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_31__*, align 8
  %8 = alloca %struct.TYPE_37__*, align 8
  %9 = alloca [148 x %struct.TYPE_34__], align 16
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_29__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_39__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_38__*, align 8
  %16 = alloca %struct.TYPE_34__*, align 8
  %17 = alloca %struct.TYPE_40__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_28__*, align 8
  %20 = alloca %struct.TYPE_34__*, align 8
  %21 = alloca %struct.TYPE_36__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_34__*, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %4, align 8
  store %struct.TYPE_35__* %1, %struct.TYPE_35__** %5, align 8
  store i32* %2, i32** %6, align 8
  %25 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_31__*, %struct.TYPE_31__** %26, align 8
  store %struct.TYPE_31__* %27, %struct.TYPE_31__** %7, align 8
  %28 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_36__*, %struct.TYPE_36__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %30, i32 0, i32 0
  store %struct.TYPE_37__* %31, %struct.TYPE_37__** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %32

32:                                               ; preds = %114, %3
  %33 = load i32, i32* %12, align 4
  %34 = icmp ult i32 %33, 2
  br i1 %34, label %35, label %117

35:                                               ; preds = %32
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %12, align 4
  %38 = icmp eq i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 70, i32 86
  %41 = call %struct.TYPE_29__* @PMTEsFindDescriptor(i32* %36, i32 %40)
  store %struct.TYPE_29__* %41, %struct.TYPE_29__** %11, align 8
  %42 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %43 = icmp ne %struct.TYPE_29__* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %35
  br label %114

45:                                               ; preds = %35
  %46 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %47 = call %struct.TYPE_39__* @dvbpsi_DecodeTeletextDr(%struct.TYPE_29__* %46)
  store %struct.TYPE_39__* %47, %struct.TYPE_39__** %13, align 8
  %48 = load %struct.TYPE_39__*, %struct.TYPE_39__** %13, align 8
  %49 = icmp ne %struct.TYPE_39__* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  br label %114

51:                                               ; preds = %45
  store i32 0, i32* %14, align 4
  br label %52

52:                                               ; preds = %110, %51
  %53 = load i32, i32* %14, align 4
  %54 = load %struct.TYPE_39__*, %struct.TYPE_39__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %113

58:                                               ; preds = %52
  %59 = load %struct.TYPE_39__*, %struct.TYPE_39__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_38__*, %struct.TYPE_38__** %60, align 8
  %62 = load i32, i32* %14, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %61, i64 %63
  store %struct.TYPE_38__* %64, %struct.TYPE_38__** %15, align 8
  %65 = load %struct.TYPE_38__*, %struct.TYPE_38__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp sge i32 %67, 6
  br i1 %68, label %69, label %70

69:                                               ; preds = %58
  br label %110

70:                                               ; preds = %58
  %71 = load i32, i32* %10, align 4
  %72 = zext i32 %71 to i64
  %73 = icmp ult i64 %72, 148
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert(i32 %74)
  %76 = load i32, i32* %10, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %10, align 4
  %78 = zext i32 %76 to i64
  %79 = getelementptr inbounds [148 x %struct.TYPE_34__], [148 x %struct.TYPE_34__]* %9, i64 0, i64 %78
  store %struct.TYPE_34__* %79, %struct.TYPE_34__** %16, align 8
  %80 = load %struct.TYPE_38__*, %struct.TYPE_38__** %15, align 8
  %81 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %84 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load %struct.TYPE_38__*, %struct.TYPE_38__** %15, align 8
  %86 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %70
  %90 = load %struct.TYPE_38__*, %struct.TYPE_38__** %15, align 8
  %91 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  br label %94

93:                                               ; preds = %70
  br label %94

94:                                               ; preds = %93, %89
  %95 = phi i32 [ %92, %89 ], [ 8, %93 ]
  %96 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %97 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.TYPE_38__*, %struct.TYPE_38__** %15, align 8
  %99 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %102 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  %103 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %104 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.TYPE_38__*, %struct.TYPE_38__** %15, align 8
  %107 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @memcpy(i64 %105, i32 %108, i32 3)
  br label %110

110:                                              ; preds = %94, %69
  %111 = load i32, i32* %14, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %14, align 4
  br label %52

113:                                              ; preds = %52
  br label %114

114:                                              ; preds = %113, %50, %44
  %115 = load i32, i32* %12, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %12, align 4
  br label %32

117:                                              ; preds = %32
  %118 = load i32*, i32** %6, align 8
  %119 = call %struct.TYPE_29__* @PMTEsFindDescriptor(i32* %118, i32 89)
  store %struct.TYPE_29__* %119, %struct.TYPE_29__** %11, align 8
  %120 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %121 = icmp ne %struct.TYPE_29__* %120, null
  br i1 %121, label %122, label %205

122:                                              ; preds = %117
  %123 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %124 = call %struct.TYPE_40__* @dvbpsi_DecodeSubtitlingDr(%struct.TYPE_29__* %123)
  store %struct.TYPE_40__* %124, %struct.TYPE_40__** %17, align 8
  store i32 0, i32* %18, align 4
  br label %125

125:                                              ; preds = %201, %122
  %126 = load %struct.TYPE_40__*, %struct.TYPE_40__** %17, align 8
  %127 = icmp ne %struct.TYPE_40__* %126, null
  br i1 %127, label %128, label %134

128:                                              ; preds = %125
  %129 = load i32, i32* %18, align 4
  %130 = load %struct.TYPE_40__*, %struct.TYPE_40__** %17, align 8
  %131 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp slt i32 %129, %132
  br label %134

134:                                              ; preds = %128, %125
  %135 = phi i1 [ false, %125 ], [ %133, %128 ]
  br i1 %135, label %136, label %204

136:                                              ; preds = %134
  %137 = load %struct.TYPE_40__*, %struct.TYPE_40__** %17, align 8
  %138 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_28__*, %struct.TYPE_28__** %138, align 8
  %140 = load i32, i32* %18, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %139, i64 %141
  store %struct.TYPE_28__* %142, %struct.TYPE_28__** %19, align 8
  %143 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %144 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = icmp slt i32 %145, 1
  br i1 %146, label %152, label %147

147:                                              ; preds = %136
  %148 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %149 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = icmp sgt i32 %150, 3
  br i1 %151, label %152, label %153

152:                                              ; preds = %147, %136
  br label %201

153:                                              ; preds = %147
  %154 = load i32, i32* %10, align 4
  %155 = zext i32 %154 to i64
  %156 = icmp ult i64 %155, 148
  %157 = zext i1 %156 to i32
  %158 = call i32 @assert(i32 %157)
  %159 = load i32, i32* %10, align 4
  %160 = add i32 %159, 1
  store i32 %160, i32* %10, align 4
  %161 = zext i32 %159 to i64
  %162 = getelementptr inbounds [148 x %struct.TYPE_34__], [148 x %struct.TYPE_34__]* %9, i64 0, i64 %161
  store %struct.TYPE_34__* %162, %struct.TYPE_34__** %20, align 8
  %163 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %164 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  switch i32 %165, label %169 [
    i32 1, label %166
  ]

166:                                              ; preds = %153
  %167 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %168 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %167, i32 0, i32 0
  store i32 2, i32* %168, align 8
  br label %172

169:                                              ; preds = %153
  %170 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %171 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %170, i32 0, i32 0
  store i32 3, i32* %171, align 8
  br label %172

172:                                              ; preds = %169, %166
  %173 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %174 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = ashr i32 %175, 8
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %172
  %179 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %180 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = ashr i32 %181, 8
  br label %184

183:                                              ; preds = %172
  br label %184

184:                                              ; preds = %183, %178
  %185 = phi i32 [ %182, %178 ], [ 8, %183 ]
  %186 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %187 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %186, i32 0, i32 1
  store i32 %185, i32* %187, align 4
  %188 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %189 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = and i32 %190, 255
  %192 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %193 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %192, i32 0, i32 2
  store i32 %191, i32* %193, align 8
  %194 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %195 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %194, i32 0, i32 3
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %198 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @memcpy(i64 %196, i32 %199, i32 3)
  br label %201

201:                                              ; preds = %184, %152
  %202 = load i32, i32* %18, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %18, align 4
  br label %125

204:                                              ; preds = %134
  br label %205

205:                                              ; preds = %204, %117
  %206 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %207 = load i32, i32* @SPU_ES, align 4
  %208 = load i32, i32* @VLC_CODEC_TELETEXT, align 4
  %209 = call i32 @es_format_Change(%struct.TYPE_37__* %206, i32 %207, i32 %208)
  %210 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %211 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %205
  %215 = load i32, i32* %10, align 4
  %216 = icmp ule i32 %215, 0
  br i1 %216, label %217, label %283

217:                                              ; preds = %214, %205
  %218 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %218, i32 0, i32 3
  %220 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %220, i32 0, i32 0
  store i32 255, i32* %221, align 8
  %222 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %222, i32 0, i32 3
  %224 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %224, i32 0, i32 1
  store i32 0, i32* %225, align 4
  %226 = load i32*, i32** @ppsz_teletext_type, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 1
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @vlc_gettext(i32 %228)
  %230 = call i8* @strdup(i32 %229)
  %231 = bitcast i8* %230 to i32*
  %232 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %232, i32 0, i32 2
  store i32* %231, i32** %233, align 8
  %234 = load i32*, i32** %6, align 8
  %235 = call %struct.TYPE_29__* @PMTEsFindDescriptor(i32* %234, i32 70)
  store %struct.TYPE_29__* %235, %struct.TYPE_29__** %11, align 8
  %236 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %237 = icmp ne %struct.TYPE_29__* %236, null
  br i1 %237, label %241, label %238

238:                                              ; preds = %217
  %239 = load i32*, i32** %6, align 8
  %240 = call %struct.TYPE_29__* @PMTEsFindDescriptor(i32* %239, i32 86)
  store %struct.TYPE_29__* %240, %struct.TYPE_29__** %11, align 8
  br label %241

241:                                              ; preds = %238, %217
  %242 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %243 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %282, label %246

246:                                              ; preds = %241
  %247 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %248 = icmp ne %struct.TYPE_29__* %247, null
  br i1 %248, label %249, label %282

249:                                              ; preds = %246
  %250 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %251 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = icmp sgt i32 %252, 0
  br i1 %253, label %254, label %282

254:                                              ; preds = %249
  %255 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %256 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = call i64 @malloc(i32 %257)
  %259 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %260 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %259, i32 0, i32 5
  store i64 %258, i64* %260, align 8
  %261 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %261, i32 0, i32 5
  %263 = load i64, i64* %262, align 8
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %281

265:                                              ; preds = %254
  %266 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %267 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %270 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %269, i32 0, i32 0
  store i32 %268, i32* %270, align 8
  %271 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %272 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %271, i32 0, i32 5
  %273 = load i64, i64* %272, align 8
  %274 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %275 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %278 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = call i32 @memcpy(i64 %273, i32 %276, i32 %279)
  br label %281

281:                                              ; preds = %265, %254
  br label %282

282:                                              ; preds = %281, %249, %246, %241
  br label %430

283:                                              ; preds = %214
  %284 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %284, i32 0, i32 0
  %286 = load %struct.TYPE_36__*, %struct.TYPE_36__** %285, align 8
  store %struct.TYPE_36__* %286, %struct.TYPE_36__** %21, align 8
  store i32 0, i32* %22, align 4
  br label %287

287:                                              ; preds = %426, %283
  %288 = load i32, i32* %22, align 4
  %289 = icmp ule i32 %288, 2
  br i1 %289, label %290, label %429

290:                                              ; preds = %287
  store i32 0, i32* %23, align 4
  br label %291

291:                                              ; preds = %422, %290
  %292 = load i32, i32* %23, align 4
  %293 = load i32, i32* %10, align 4
  %294 = icmp ult i32 %292, %293
  br i1 %294, label %295, label %425

295:                                              ; preds = %291
  %296 = load i32, i32* %23, align 4
  %297 = zext i32 %296 to i64
  %298 = getelementptr inbounds [148 x %struct.TYPE_34__], [148 x %struct.TYPE_34__]* %9, i64 0, i64 %297
  store %struct.TYPE_34__* %298, %struct.TYPE_34__** %24, align 8
  %299 = load %struct.TYPE_34__*, %struct.TYPE_34__** %24, align 8
  %300 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = icmp eq i32 %301, 1
  br i1 %302, label %303, label %307

303:                                              ; preds = %295
  %304 = load i32, i32* %22, align 4
  %305 = icmp ne i32 %304, 1
  br i1 %305, label %306, label %307

306:                                              ; preds = %303
  br label %422

307:                                              ; preds = %303, %295
  %308 = load %struct.TYPE_34__*, %struct.TYPE_34__** %24, align 8
  %309 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = icmp eq i32 %310, 2
  br i1 %311, label %317, label %312

312:                                              ; preds = %307
  %313 = load %struct.TYPE_34__*, %struct.TYPE_34__** %24, align 8
  %314 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = icmp eq i32 %315, 5
  br i1 %316, label %317, label %321

317:                                              ; preds = %312, %307
  %318 = load i32, i32* %22, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %321

320:                                              ; preds = %317
  br label %422

321:                                              ; preds = %317, %312
  %322 = load %struct.TYPE_36__*, %struct.TYPE_36__** %21, align 8
  %323 = icmp ne %struct.TYPE_36__* %322, null
  br i1 %323, label %358, label %324

324:                                              ; preds = %321
  %325 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %326 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %325, i32 0, i32 0
  %327 = load %struct.TYPE_36__*, %struct.TYPE_36__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %327, i32 0, i32 1
  %329 = load i32, i32* %328, align 8
  %330 = call %struct.TYPE_36__* @ts_es_New(i32 %329)
  store %struct.TYPE_36__* %330, %struct.TYPE_36__** %21, align 8
  %331 = load %struct.TYPE_36__*, %struct.TYPE_36__** %21, align 8
  %332 = icmp ne %struct.TYPE_36__* %331, null
  br i1 %332, label %334, label %333

333:                                              ; preds = %324
  br label %425

334:                                              ; preds = %324
  %335 = load %struct.TYPE_36__*, %struct.TYPE_36__** %21, align 8
  %336 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %335, i32 0, i32 0
  %337 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %338 = call i32 @es_format_Copy(%struct.TYPE_37__* %336, %struct.TYPE_37__* %337)
  %339 = load %struct.TYPE_36__*, %struct.TYPE_36__** %21, align 8
  %340 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %340, i32 0, i32 1
  %342 = load i32*, i32** %341, align 8
  %343 = call i32 @free(i32* %342)
  %344 = load %struct.TYPE_36__*, %struct.TYPE_36__** %21, align 8
  %345 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %344, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %345, i32 0, i32 2
  %347 = load i32*, i32** %346, align 8
  %348 = call i32 @free(i32* %347)
  %349 = load %struct.TYPE_36__*, %struct.TYPE_36__** %21, align 8
  %350 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %350, i32 0, i32 1
  store i32* null, i32** %351, align 8
  %352 = load %struct.TYPE_36__*, %struct.TYPE_36__** %21, align 8
  %353 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %353, i32 0, i32 2
  store i32* null, i32** %354, align 8
  %355 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %356 = load %struct.TYPE_36__*, %struct.TYPE_36__** %21, align 8
  %357 = call i32 @ts_stream_Add_es(%struct.TYPE_35__* %355, %struct.TYPE_36__* %356, i32 1)
  br label %358

358:                                              ; preds = %334, %321
  %359 = load i32, i32* %22, align 4
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %363

361:                                              ; preds = %358
  %362 = load i32, i32* @ES_PRIORITY_SELECTABLE_MIN, align 4
  br label %365

363:                                              ; preds = %358
  %364 = load i32, i32* @ES_PRIORITY_NOT_DEFAULTABLE, align 4
  br label %365

365:                                              ; preds = %363, %361
  %366 = phi i32 [ %362, %361 ], [ %364, %363 ]
  %367 = load %struct.TYPE_36__*, %struct.TYPE_36__** %21, align 8
  %368 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %367, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %368, i32 0, i32 4
  store i32 %366, i32* %369, align 8
  %370 = load %struct.TYPE_34__*, %struct.TYPE_34__** %24, align 8
  %371 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %370, i32 0, i32 3
  %372 = load i64, i64* %371, align 8
  %373 = call i32* @strndup(i64 %372, i32 3)
  %374 = load %struct.TYPE_36__*, %struct.TYPE_36__** %21, align 8
  %375 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %374, i32 0, i32 0
  %376 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %375, i32 0, i32 1
  store i32* %373, i32** %376, align 8
  %377 = load i32*, i32** @ppsz_teletext_type, align 8
  %378 = load %struct.TYPE_34__*, %struct.TYPE_34__** %24, align 8
  %379 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 8
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i32, i32* %377, i64 %381
  %383 = load i32, i32* %382, align 4
  %384 = call i32 @vlc_gettext(i32 %383)
  %385 = call i8* @strdup(i32 %384)
  %386 = bitcast i8* %385 to i32*
  %387 = load %struct.TYPE_36__*, %struct.TYPE_36__** %21, align 8
  %388 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %387, i32 0, i32 0
  %389 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %388, i32 0, i32 2
  store i32* %386, i32** %389, align 8
  %390 = load %struct.TYPE_34__*, %struct.TYPE_34__** %24, align 8
  %391 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %390, i32 0, i32 1
  %392 = load i32, i32* %391, align 4
  %393 = load %struct.TYPE_36__*, %struct.TYPE_36__** %21, align 8
  %394 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %393, i32 0, i32 0
  %395 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %394, i32 0, i32 3
  %396 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %395, i32 0, i32 0
  %397 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %396, i32 0, i32 0
  store i32 %392, i32* %397, align 8
  %398 = load %struct.TYPE_34__*, %struct.TYPE_34__** %24, align 8
  %399 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %398, i32 0, i32 2
  %400 = load i32, i32* %399, align 8
  %401 = load %struct.TYPE_36__*, %struct.TYPE_36__** %21, align 8
  %402 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %401, i32 0, i32 0
  %403 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %402, i32 0, i32 3
  %404 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %403, i32 0, i32 0
  %405 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %404, i32 0, i32 1
  store i32 %400, i32* %405, align 4
  %406 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %407 = load %struct.TYPE_36__*, %struct.TYPE_36__** %21, align 8
  %408 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %407, i32 0, i32 0
  %409 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %408, i32 0, i32 2
  %410 = load i32*, i32** %409, align 8
  %411 = load %struct.TYPE_36__*, %struct.TYPE_36__** %21, align 8
  %412 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %411, i32 0, i32 0
  %413 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %412, i32 0, i32 1
  %414 = load i32*, i32** %413, align 8
  %415 = load %struct.TYPE_34__*, %struct.TYPE_34__** %24, align 8
  %416 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %415, i32 0, i32 1
  %417 = load i32, i32* %416, align 4
  %418 = load %struct.TYPE_34__*, %struct.TYPE_34__** %24, align 8
  %419 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %418, i32 0, i32 2
  %420 = load i32, i32* %419, align 8
  %421 = call i32 @msg_Dbg(%struct.TYPE_30__* %406, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32* %410, i32* %414, i32 %417, i32 %420)
  store %struct.TYPE_36__* null, %struct.TYPE_36__** %21, align 8
  br label %422

422:                                              ; preds = %365, %320, %306
  %423 = load i32, i32* %23, align 4
  %424 = add i32 %423, 1
  store i32 %424, i32* %23, align 4
  br label %291

425:                                              ; preds = %333, %291
  br label %426

426:                                              ; preds = %425
  %427 = load i32, i32* %22, align 4
  %428 = add i32 %427, 1
  store i32 %428, i32* %22, align 4
  br label %287

429:                                              ; preds = %287
  br label %430

430:                                              ; preds = %429, %282
  ret void
}

declare dso_local %struct.TYPE_29__* @PMTEsFindDescriptor(i32*, i32) #1

declare dso_local %struct.TYPE_39__* @dvbpsi_DecodeTeletextDr(%struct.TYPE_29__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i64, i32, i32) #1

declare dso_local %struct.TYPE_40__* @dvbpsi_DecodeSubtitlingDr(%struct.TYPE_29__*) #1

declare dso_local i32 @es_format_Change(%struct.TYPE_37__*, i32, i32) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @vlc_gettext(i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local %struct.TYPE_36__* @ts_es_New(i32) #1

declare dso_local i32 @es_format_Copy(%struct.TYPE_37__*, %struct.TYPE_37__*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @ts_stream_Add_es(%struct.TYPE_35__*, %struct.TYPE_36__*, i32) #1

declare dso_local i32* @strndup(i64, i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_30__*, i8*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
