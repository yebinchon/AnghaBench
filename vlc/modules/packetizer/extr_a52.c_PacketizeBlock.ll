; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_a52.c_PacketizeBlock.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_a52.c_PacketizeBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, i32, i32, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_22__, %struct.TYPE_25__* }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32, i32, i32, i32, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, %struct.TYPE_21__, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }

@VLC_A52_MIN_HEADER_SIZE = common dso_local global i32 0, align 4
@BLOCK_FLAG_DISCONTINUITY = common dso_local global i32 0, align 4
@BLOCK_FLAG_CORRUPTED = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"emulated sync word\00", align 1
@EAC3_STRMTYP_DEPENDENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"starting with dependent stream, skip it\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"emulated sync word (no sync on following frame)\00", align 1
@VLC_CODEC_A52 = common dso_local global i32 0, align 4
@VLC_A52_PROFILE_EAC3_DEPENDENT = common dso_local global i32 0, align 4
@VLC_TICK_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_26__* (%struct.TYPE_24__*, %struct.TYPE_26__**)* @PacketizeBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_26__* @PacketizeBlock(%struct.TYPE_24__* %0, %struct.TYPE_26__** %1) #0 {
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_26__**, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_23__, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store %struct.TYPE_26__** %1, %struct.TYPE_26__*** %5, align 8
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  store %struct.TYPE_25__* %16, %struct.TYPE_25__** %6, align 8
  %17 = load i32, i32* @VLC_A52_MIN_HEADER_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %7, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  %21 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %5, align 8
  %22 = icmp ne %struct.TYPE_26__** %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %5, align 8
  %25 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  br label %27

26:                                               ; preds = %2
  br label %27

27:                                               ; preds = %26, %23
  %28 = phi %struct.TYPE_26__* [ %25, %23 ], [ null, %26 ]
  store %struct.TYPE_26__* %28, %struct.TYPE_26__** %10, align 8
  %29 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %30 = icmp ne %struct.TYPE_26__* %29, null
  br i1 %30, label %31, label %65

31:                                               ; preds = %27
  %32 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @BLOCK_FLAG_DISCONTINUITY, align 4
  %36 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %60

40:                                               ; preds = %31
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %42 = call %struct.TYPE_26__* @PacketizeBlock(%struct.TYPE_24__* %41, %struct.TYPE_26__** null)
  store %struct.TYPE_26__* %42, %struct.TYPE_26__** %11, align 8
  %43 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %44 = icmp ne %struct.TYPE_26__* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  store %struct.TYPE_26__* %46, %struct.TYPE_26__** %3, align 8
  store i32 1, i32* %12, align 4
  br label %308

47:                                               ; preds = %40
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %49 = call i32 @PacketizeFlush(%struct.TYPE_24__* %48)
  %50 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %58 = call i32 @block_Release(%struct.TYPE_26__* %57)
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %3, align 8
  store i32 1, i32* %12, align 4
  br label %308

59:                                               ; preds = %47
  br label %60

60:                                               ; preds = %59, %31
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %64 = call i32 @block_BytestreamPush(i32* %62, %struct.TYPE_26__* %63)
  br label %65

65:                                               ; preds = %60, %27
  br label %66

66:                                               ; preds = %307, %65
  br label %67

67:                                               ; preds = %66
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  switch i32 %70, label %307 [
    i32 130, label %71
    i32 128, label %103
    i32 132, label %106
    i32 131, label %169
    i32 133, label %246
    i32 129, label %259
  ]

71:                                               ; preds = %67
  br label %72

72:                                               ; preds = %89, %71
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %73, i32 0, i32 2
  %75 = call i32 @block_PeekBytes(i32* %74, i32* %20, i32 2)
  %76 = load i32, i32* @VLC_SUCCESS, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %93

78:                                               ; preds = %72
  %79 = getelementptr inbounds i32, i32* %20, i64 0
  %80 = load i32, i32* %79, align 16
  %81 = icmp eq i32 %80, 11
  br i1 %81, label %82, label %89

82:                                               ; preds = %78
  %83 = getelementptr inbounds i32, i32* %20, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 119
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %87, i32 0, i32 0
  store i32 128, i32* %88, align 4
  br label %93

89:                                               ; preds = %82, %78
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %90, i32 0, i32 2
  %92 = call i32 @block_SkipByte(i32* %91)
  br label %72

93:                                               ; preds = %86, %72
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 128
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %99, i32 0, i32 2
  %101 = call i32 @block_BytestreamFlush(i32* %100)
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %3, align 8
  store i32 1, i32* %12, align 4
  br label %308

102:                                              ; preds = %93
  br label %103

103:                                              ; preds = %67, %102
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 0
  store i32 132, i32* %105, align 4
  br label %106

106:                                              ; preds = %67, %103
  %107 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %107, i32 0, i32 2
  %109 = load i32, i32* @VLC_A52_MIN_HEADER_SIZE, align 4
  %110 = call i32 @block_PeekBytes(i32* %108, i32* %20, i32 %109)
  %111 = load i32, i32* @VLC_SUCCESS, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %3, align 8
  store i32 1, i32* %12, align 4
  br label %308

114:                                              ; preds = %106
  %115 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %115, i32 0, i32 4
  %117 = load i32, i32* @VLC_A52_MIN_HEADER_SIZE, align 4
  %118 = call i32 @vlc_a52_header_Parse(%struct.TYPE_23__* %116, i32* %20, i32 %117)
  %119 = load i32, i32* @VLC_SUCCESS, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %129

121:                                              ; preds = %114
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %123 = call i32 @msg_Dbg(%struct.TYPE_24__* %122, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %124 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %124, i32 0, i32 2
  %126 = call i32 @block_SkipByte(i32* %125)
  %127 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %127, i32 0, i32 0
  store i32 130, i32* %128, align 4
  br label %307

129:                                              ; preds = %114
  %130 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %160

135:                                              ; preds = %129
  %136 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %136, i32 0, i32 4
  %138 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @EAC3_STRMTYP_DEPENDENT, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %160

144:                                              ; preds = %135
  %145 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %146 = call i32 @msg_Warn(%struct.TYPE_24__* %145, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %147 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %147, i32 0, i32 0
  store i32 130, i32* %148, align 4
  %149 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %149, i32 0, i32 2
  %151 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %151, i32 0, i32 4
  %153 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @block_SkipBytes(i32* %150, i32 %154)
  %156 = load i32, i32* @VLC_SUCCESS, align 4
  %157 = icmp ne i32 %155, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %144
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %3, align 8
  store i32 1, i32* %12, align 4
  br label %308

159:                                              ; preds = %144
  br label %307

160:                                              ; preds = %135, %129
  %161 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %161, i32 0, i32 4
  %163 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %165, i32 0, i32 3
  store i32 %164, i32* %166, align 4
  %167 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %167, i32 0, i32 0
  store i32 131, i32* %168, align 4
  br label %169

169:                                              ; preds = %67, %160
  %170 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %170, i32 0, i32 2
  %172 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @VLC_A52_MIN_HEADER_SIZE, align 4
  %176 = call i32 @block_PeekOffsetBytes(i32* %171, i32 %174, i32* %20, i32 %175)
  %177 = load i32, i32* @VLC_SUCCESS, align 4
  %178 = icmp ne i32 %176, %177
  br i1 %178, label %179, label %186

179:                                              ; preds = %169
  %180 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %181 = icmp eq %struct.TYPE_26__* %180, null
  br i1 %181, label %182, label %185

182:                                              ; preds = %179
  %183 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %183, i32 0, i32 0
  store i32 133, i32* %184, align 4
  br label %307

185:                                              ; preds = %179
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %3, align 8
  store i32 1, i32* %12, align 4
  br label %308

186:                                              ; preds = %169
  %187 = getelementptr inbounds i32, i32* %20, i64 0
  %188 = load i32, i32* %187, align 16
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %194, label %190

190:                                              ; preds = %186
  %191 = getelementptr inbounds i32, i32* %20, i64 1
  %192 = load i32, i32* %191, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %190, %186
  %195 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %195, i32 0, i32 0
  store i32 133, i32* %196, align 4
  br label %307

197:                                              ; preds = %190
  %198 = getelementptr inbounds i32, i32* %20, i64 0
  %199 = load i32, i32* %198, align 16
  %200 = icmp ne i32 %199, 11
  br i1 %200, label %205, label %201

201:                                              ; preds = %197
  %202 = getelementptr inbounds i32, i32* %20, i64 1
  %203 = load i32, i32* %202, align 4
  %204 = icmp ne i32 %203, 119
  br i1 %204, label %205, label %213

205:                                              ; preds = %201, %197
  %206 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %207 = call i32 @msg_Dbg(%struct.TYPE_24__* %206, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %208 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %208, i32 0, i32 0
  store i32 130, i32* %209, align 4
  %210 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %210, i32 0, i32 2
  %212 = call i32 @block_SkipByte(i32* %211)
  br label %307

213:                                              ; preds = %201
  %214 = load i32, i32* @VLC_A52_MIN_HEADER_SIZE, align 4
  %215 = call i32 @vlc_a52_header_Parse(%struct.TYPE_23__* %13, i32* %20, i32 %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %243, label %217

217:                                              ; preds = %213
  %218 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %243

221:                                              ; preds = %217
  %222 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* @EAC3_STRMTYP_DEPENDENT, align 4
  %227 = icmp eq i32 %225, %226
  br i1 %227, label %228, label %243

228:                                              ; preds = %221
  %229 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 4
  %234 = add nsw i32 %233, %230
  store i32 %234, i32* %232, align 4
  %235 = load i32, i32* @VLC_CODEC_A52, align 4
  %236 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %237, i32 0, i32 1
  store i32 %235, i32* %238, align 4
  %239 = load i32, i32* @VLC_A52_PROFILE_EAC3_DEPENDENT, align 4
  %240 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %241, i32 0, i32 0
  store i32 %239, i32* %242, align 8
  br label %243

243:                                              ; preds = %228, %221, %217, %213
  %244 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %244, i32 0, i32 0
  store i32 133, i32* %245, align 4
  br label %307

246:                                              ; preds = %67
  %247 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %248 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %247, i32 0, i32 2
  %249 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %249, i32 0, i32 3
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @block_WaitBytes(i32* %248, i32 %251)
  %253 = load i32, i32* @VLC_SUCCESS, align 4
  %254 = icmp ne i32 %252, %253
  br i1 %254, label %255, label %256

255:                                              ; preds = %246
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %3, align 8
  store i32 1, i32* %12, align 4
  br label %308

256:                                              ; preds = %246
  %257 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %257, i32 0, i32 0
  store i32 129, i32* %258, align 4
  br label %259

259:                                              ; preds = %67, %256
  %260 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %261 = call %struct.TYPE_26__* @GetOutBuffer(%struct.TYPE_24__* %260)
  store %struct.TYPE_26__* %261, %struct.TYPE_26__** %9, align 8
  %262 = icmp ne %struct.TYPE_26__* %261, null
  br i1 %262, label %264, label %263

263:                                              ; preds = %259
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %3, align 8
  store i32 1, i32* %12, align 4
  br label %308

264:                                              ; preds = %259
  %265 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %265, i32 0, i32 2
  %267 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %268 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %267, i32 0, i32 3
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %271 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @block_GetBytes(i32* %266, i32 %269, i32 %272)
  %274 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %275 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %274, i32 0, i32 0
  store i32 130, i32* %275, align 4
  %276 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %277 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* @VLC_TICK_INVALID, align 4
  %280 = icmp eq i32 %278, %279
  br i1 %280, label %281, label %284

281:                                              ; preds = %264
  %282 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %283 = call i32 @block_Release(%struct.TYPE_26__* %282)
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %3, align 8
  store i32 1, i32* %12, align 4
  br label %308

284:                                              ; preds = %264
  %285 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %297

289:                                              ; preds = %284
  %290 = load i32, i32* @BLOCK_FLAG_DISCONTINUITY, align 4
  %291 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %292 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = or i32 %293, %290
  store i32 %294, i32* %292, align 4
  %295 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %296 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %295, i32 0, i32 1
  store i32 0, i32* %296, align 4
  br label %297

297:                                              ; preds = %289, %284
  %298 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %5, align 8
  %299 = icmp ne %struct.TYPE_26__** %298, null
  br i1 %299, label %300, label %305

300:                                              ; preds = %297
  %301 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %302 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %301, i32 0, i32 2
  %303 = call %struct.TYPE_26__* @block_BytestreamPop(i32* %302)
  %304 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %5, align 8
  store %struct.TYPE_26__* %303, %struct.TYPE_26__** %304, align 8
  br label %305

305:                                              ; preds = %300, %297
  %306 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  store %struct.TYPE_26__* %306, %struct.TYPE_26__** %3, align 8
  store i32 1, i32* %12, align 4
  br label %308

307:                                              ; preds = %67, %243, %205, %194, %182, %159, %121
  br label %66

308:                                              ; preds = %305, %281, %263, %255, %185, %158, %113, %98, %56, %45
  %309 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %309)
  %310 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  ret %struct.TYPE_26__* %310
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @PacketizeFlush(%struct.TYPE_24__*) #2

declare dso_local i32 @block_Release(%struct.TYPE_26__*) #2

declare dso_local i32 @block_BytestreamPush(i32*, %struct.TYPE_26__*) #2

declare dso_local i32 @block_PeekBytes(i32*, i32*, i32) #2

declare dso_local i32 @block_SkipByte(i32*) #2

declare dso_local i32 @block_BytestreamFlush(i32*) #2

declare dso_local i32 @vlc_a52_header_Parse(%struct.TYPE_23__*, i32*, i32) #2

declare dso_local i32 @msg_Dbg(%struct.TYPE_24__*, i8*) #2

declare dso_local i32 @msg_Warn(%struct.TYPE_24__*, i8*) #2

declare dso_local i32 @block_SkipBytes(i32*, i32) #2

declare dso_local i32 @block_PeekOffsetBytes(i32*, i32, i32*, i32) #2

declare dso_local i32 @block_WaitBytes(i32*, i32) #2

declare dso_local %struct.TYPE_26__* @GetOutBuffer(%struct.TYPE_24__*) #2

declare dso_local i32 @block_GetBytes(i32*, i32, i32) #2

declare dso_local %struct.TYPE_26__* @block_BytestreamPop(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
