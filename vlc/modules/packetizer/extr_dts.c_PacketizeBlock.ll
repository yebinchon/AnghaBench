; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_dts.c_PacketizeBlock.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_dts.c_PacketizeBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { i32, i64, i32, i32 }
%struct.TYPE_32__ = type { %struct.TYPE_30__, %struct.TYPE_33__* }
%struct.TYPE_30__ = type { i8* }
%struct.TYPE_33__ = type { i32, i64, i32, i32, i32, %struct.TYPE_28__, %struct.TYPE_31__, %struct.TYPE_31__, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i64 }
%struct.TYPE_31__ = type { i32, i32, i32, i32, i32 }

@VLC_DTS_HEADER_SIZE = common dso_local global i32 0, align 4
@BLOCK_FLAG_DISCONTINUITY = common dso_local global i32 0, align 4
@BLOCK_FLAG_CORRUPTED = common dso_local global i32 0, align 4
@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@VLC_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"emulated sync word\00", align 1
@DTS_SYNC_SUBSTREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"emulated substream sync word, can't find extension\00", align 1
@DTS_SYNC_SUBSTREAM_LBR = common dso_local global i32 0, align 4
@PROFILE_DTS_EXPRESS = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [50 x i8] c"substream without the paired core stream, skip it\00", align 1
@PROFILE_DTS = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [48 x i8] c"emulated sync word (no sync on following frame)\00", align 1
@PROFILE_DTS_HD = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_34__* (%struct.TYPE_32__*, %struct.TYPE_34__**)* @PacketizeBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_34__* @PacketizeBlock(%struct.TYPE_32__* %0, %struct.TYPE_34__** %1) #0 {
  %3 = alloca %struct.TYPE_34__*, align 8
  %4 = alloca %struct.TYPE_32__*, align 8
  %5 = alloca %struct.TYPE_34__**, align 8
  %6 = alloca %struct.TYPE_33__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_34__*, align 8
  %10 = alloca %struct.TYPE_34__*, align 8
  %11 = alloca %struct.TYPE_34__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_31__, align 4
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %4, align 8
  store %struct.TYPE_34__** %1, %struct.TYPE_34__*** %5, align 8
  %14 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  store %struct.TYPE_33__* %16, %struct.TYPE_33__** %6, align 8
  %17 = load i32, i32* @VLC_DTS_HEADER_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %7, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  %21 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %5, align 8
  %22 = icmp ne %struct.TYPE_34__** %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %5, align 8
  %25 = load %struct.TYPE_34__*, %struct.TYPE_34__** %24, align 8
  br label %27

26:                                               ; preds = %2
  br label %27

27:                                               ; preds = %26, %23
  %28 = phi %struct.TYPE_34__* [ %25, %23 ], [ null, %26 ]
  store %struct.TYPE_34__* %28, %struct.TYPE_34__** %10, align 8
  %29 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %30 = icmp ne %struct.TYPE_34__* %29, null
  br i1 %30, label %31, label %80

31:                                               ; preds = %27
  %32 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @BLOCK_FLAG_DISCONTINUITY, align 4
  %36 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %60

40:                                               ; preds = %31
  %41 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %42 = call %struct.TYPE_34__* @PacketizeBlock(%struct.TYPE_32__* %41, %struct.TYPE_34__** null)
  store %struct.TYPE_34__* %42, %struct.TYPE_34__** %11, align 8
  %43 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %44 = icmp ne %struct.TYPE_34__* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  store %struct.TYPE_34__* %46, %struct.TYPE_34__** %3, align 8
  store i32 1, i32* %12, align 4
  br label %481

47:                                               ; preds = %40
  %48 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %49 = call i32 @PacketizeFlush(%struct.TYPE_32__* %48)
  %50 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %58 = call i32 @block_Release(%struct.TYPE_34__* %57)
  store %struct.TYPE_34__* null, %struct.TYPE_34__** %3, align 8
  store i32 1, i32* %12, align 4
  br label %481

59:                                               ; preds = %47
  br label %60

60:                                               ; preds = %59, %31
  %61 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @VLC_TICK_INVALID, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %60
  %67 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %67, i32 0, i32 8
  %69 = call i64 @date_Get(i32* %68)
  %70 = load i64, i64* @VLC_TICK_INVALID, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %74 = call i32 @block_Release(%struct.TYPE_34__* %73)
  store %struct.TYPE_34__* null, %struct.TYPE_34__** %3, align 8
  store i32 1, i32* %12, align 4
  br label %481

75:                                               ; preds = %66, %60
  %76 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %76, i32 0, i32 5
  %78 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %79 = call i32 @block_BytestreamPush(%struct.TYPE_28__* %77, %struct.TYPE_34__* %78)
  br label %80

80:                                               ; preds = %75, %27
  br label %81

81:                                               ; preds = %480, %80
  br label %82

82:                                               ; preds = %81
  %83 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  switch i32 %85, label %480 [
    i32 131, label %86
    i32 129, label %113
    i32 134, label %145
    i32 128, label %190
    i32 133, label %257
    i32 132, label %372
    i32 135, label %408
    i32 130, label %421
  ]

86:                                               ; preds = %82
  br label %87

87:                                               ; preds = %99, %86
  %88 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %88, i32 0, i32 5
  %90 = call i32 @block_PeekBytes(%struct.TYPE_28__* %89, i32* %20, i32 6)
  %91 = load i32, i32* @VLC_SUCCESS, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %87
  %94 = call i32 @vlc_dts_header_IsSync(i32* %20, i32 6)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %97, i32 0, i32 0
  store i32 129, i32* %98, align 8
  br label %103

99:                                               ; preds = %93
  %100 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %100, i32 0, i32 5
  %102 = call i32 @block_SkipByte(%struct.TYPE_28__* %101)
  br label %87

103:                                              ; preds = %96, %87
  %104 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 129
  br i1 %107, label %108, label %112

108:                                              ; preds = %103
  %109 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %109, i32 0, i32 5
  %111 = call i32 @block_BytestreamFlush(%struct.TYPE_28__* %110)
  store %struct.TYPE_34__* null, %struct.TYPE_34__** %3, align 8
  store i32 1, i32* %12, align 4
  br label %481

112:                                              ; preds = %103
  br label %113

113:                                              ; preds = %82, %112
  %114 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %114, i32 0, i32 5
  %116 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_29__*, %struct.TYPE_29__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %120, i32 0, i32 1
  store i64 %119, i64* %121, align 8
  %122 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @VLC_TICK_INVALID, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %142

127:                                              ; preds = %113
  %128 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %131, i32 0, i32 8
  %133 = call i64 @date_Get(i32* %132)
  %134 = icmp ne i64 %130, %133
  br i1 %134, label %135, label %142

135:                                              ; preds = %127
  %136 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %136, i32 0, i32 8
  %138 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @date_Set(i32* %137, i64 %140)
  br label %142

142:                                              ; preds = %135, %127, %113
  %143 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %143, i32 0, i32 0
  store i32 134, i32* %144, align 8
  br label %145

145:                                              ; preds = %82, %142
  %146 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %146, i32 0, i32 5
  %148 = load i32, i32* @VLC_DTS_HEADER_SIZE, align 4
  %149 = call i32 @block_PeekBytes(%struct.TYPE_28__* %147, i32* %20, i32 %148)
  %150 = load i32, i32* @VLC_SUCCESS, align 4
  %151 = icmp ne i32 %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %145
  store %struct.TYPE_34__* null, %struct.TYPE_34__** %3, align 8
  store i32 1, i32* %12, align 4
  br label %481

153:                                              ; preds = %145
  %154 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %154, i32 0, i32 7
  %156 = load i32, i32* @VLC_DTS_HEADER_SIZE, align 4
  %157 = call i32 @vlc_dts_header_Parse(%struct.TYPE_31__* %155, i32* %20, i32 %156)
  %158 = load i32, i32* @VLC_SUCCESS, align 4
  %159 = icmp ne i32 %157, %158
  br i1 %159, label %160, label %168

160:                                              ; preds = %153
  %161 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %162 = call i32 @msg_Dbg(%struct.TYPE_32__* %161, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %163 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %163, i32 0, i32 5
  %165 = call i32 @block_SkipByte(%struct.TYPE_28__* %164)
  %166 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %166, i32 0, i32 0
  store i32 131, i32* %167, align 8
  br label %480

168:                                              ; preds = %153
  %169 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %169, i32 0, i32 7
  %171 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @DTS_SYNC_SUBSTREAM, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %168
  %176 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %176, i32 0, i32 0
  store i32 128, i32* %177, align 8
  br label %181

178:                                              ; preds = %168
  %179 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %179, i32 0, i32 0
  store i32 133, i32* %180, align 8
  br label %181

181:                                              ; preds = %178, %175
  %182 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %182, i32 0, i32 7
  %184 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %186, i32 0, i32 3
  store i32 %185, i32* %187, align 4
  %188 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %188, i32 0, i32 2
  store i32 %185, i32* %189, align 8
  br label %480

190:                                              ; preds = %82
  %191 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %191, i32 0, i32 5
  %193 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %193, i32 0, i32 7
  %195 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @VLC_DTS_HEADER_SIZE, align 4
  %198 = call i32 @block_PeekOffsetBytes(%struct.TYPE_28__* %192, i32 %196, i32* %20, i32 %197)
  %199 = load i32, i32* @VLC_SUCCESS, align 4
  %200 = icmp ne i32 %198, %199
  br i1 %200, label %201, label %202

201:                                              ; preds = %190
  store %struct.TYPE_34__* null, %struct.TYPE_34__** %3, align 8
  store i32 1, i32* %12, align 4
  br label %481

202:                                              ; preds = %190
  %203 = load i32, i32* @VLC_DTS_HEADER_SIZE, align 4
  %204 = call i32 @vlc_dts_header_Parse(%struct.TYPE_31__* %13, i32* %20, i32 %203)
  %205 = load i32, i32* @VLC_SUCCESS, align 4
  %206 = icmp ne i32 %204, %205
  br i1 %206, label %207, label %215

207:                                              ; preds = %202
  %208 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %209 = call i32 @msg_Dbg(%struct.TYPE_32__* %208, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %210 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %210, i32 0, i32 5
  %212 = call i32 @block_SkipByte(%struct.TYPE_28__* %211)
  %213 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %213, i32 0, i32 0
  store i32 131, i32* %214, align 8
  br label %480

215:                                              ; preds = %202
  %216 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %13, i32 0, i32 2
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @DTS_SYNC_SUBSTREAM_LBR, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %237

220:                                              ; preds = %215
  %221 = load i8*, i8** @PROFILE_DTS_EXPRESS, align 8
  %222 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %223, i32 0, i32 0
  store i8* %221, i8** %224, align 8
  %225 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %13, i32 0, i32 4
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %227, i32 0, i32 7
  %229 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %228, i32 0, i32 4
  store i32 %226, i32* %229, align 4
  %230 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %13, i32 0, i32 3
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %233 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %232, i32 0, i32 7
  %234 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %233, i32 0, i32 3
  store i32 %231, i32* %234, align 4
  %235 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %235, i32 0, i32 0
  store i32 133, i32* %236, align 8
  br label %480

237:                                              ; preds = %215
  %238 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %239 = call i32 @msg_Warn(%struct.TYPE_32__* %238, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %240 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %240, i32 0, i32 0
  store i32 131, i32* %241, align 8
  %242 = load i8*, i8** @PROFILE_DTS, align 8
  %243 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %244, i32 0, i32 0
  store i8* %242, i8** %245, align 8
  %246 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %246, i32 0, i32 5
  %248 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %248, i32 0, i32 7
  %250 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @block_SkipBytes(%struct.TYPE_28__* %247, i32 %251)
  %253 = load i32, i32* @VLC_SUCCESS, align 4
  %254 = icmp ne i32 %252, %253
  br i1 %254, label %255, label %256

255:                                              ; preds = %237
  store %struct.TYPE_34__* null, %struct.TYPE_34__** %3, align 8
  store i32 1, i32* %12, align 4
  br label %481

256:                                              ; preds = %237
  br label %480

257:                                              ; preds = %82
  br label %258

258:                                              ; preds = %370, %284, %257
  %259 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %260 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = icmp eq i32 %261, 133
  br i1 %262, label %263, label %371

263:                                              ; preds = %258
  %264 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %264, i32 0, i32 5
  %266 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* @VLC_DTS_HEADER_SIZE, align 4
  %270 = call i32 @block_PeekOffsetBytes(%struct.TYPE_28__* %265, i32 %268, i32* %20, i32 %269)
  %271 = load i32, i32* @VLC_SUCCESS, align 4
  %272 = icmp ne i32 %270, %271
  br i1 %272, label %273, label %280

273:                                              ; preds = %263
  %274 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %275 = icmp eq %struct.TYPE_34__* %274, null
  br i1 %275, label %276, label %279

276:                                              ; preds = %273
  %277 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %278 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %277, i32 0, i32 0
  store i32 135, i32* %278, align 8
  br label %371

279:                                              ; preds = %273
  store %struct.TYPE_34__* null, %struct.TYPE_34__** %3, align 8
  store i32 1, i32* %12, align 4
  br label %481

280:                                              ; preds = %263
  %281 = getelementptr inbounds i32, i32* %20, i64 0
  %282 = load i32, i32* %281, align 16
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %289

284:                                              ; preds = %280
  %285 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %285, i32 0, i32 3
  %287 = load i32, i32* %286, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %286, align 4
  br label %258

289:                                              ; preds = %280
  %290 = load i32, i32* @VLC_DTS_HEADER_SIZE, align 4
  %291 = call i32 @vlc_dts_header_IsSync(i32* %20, i32 %290)
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %337, label %293

293:                                              ; preds = %289
  %294 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %295 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %294, i32 0, i32 7
  %296 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = srem i32 %297, 2
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %329

300:                                              ; preds = %293
  %301 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %302 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %301, i32 0, i32 3
  %303 = load i32, i32* %302, align 4
  %304 = icmp sgt i32 %303, 0
  br i1 %304, label %305, label %329

305:                                              ; preds = %300
  %306 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %307 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %306, i32 0, i32 5
  %308 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %309 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %308, i32 0, i32 3
  %310 = load i32, i32* %309, align 4
  %311 = sub nsw i32 %310, 1
  %312 = load i32, i32* @VLC_DTS_HEADER_SIZE, align 4
  %313 = call i32 @block_PeekOffsetBytes(%struct.TYPE_28__* %307, i32 %311, i32* %20, i32 %312)
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %329

315:                                              ; preds = %305
  %316 = load i32, i32* @VLC_DTS_HEADER_SIZE, align 4
  %317 = call i32 @vlc_dts_header_IsSync(i32* %20, i32 %316)
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %329

319:                                              ; preds = %315
  %320 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %321 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %320, i32 0, i32 7
  %322 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 4
  %324 = sub nsw i32 %323, 1
  %325 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %326 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %325, i32 0, i32 3
  store i32 %324, i32* %326, align 4
  %327 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %328 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %327, i32 0, i32 2
  store i32 %324, i32* %328, align 8
  br label %371

329:                                              ; preds = %315, %305, %300, %293
  %330 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %331 = call i32 @msg_Dbg(%struct.TYPE_32__* %330, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %332 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %333 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %332, i32 0, i32 0
  store i32 131, i32* %333, align 8
  %334 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %335 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %334, i32 0, i32 5
  %336 = call i32 @block_SkipByte(%struct.TYPE_28__* %335)
  br label %371

337:                                              ; preds = %289
  %338 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %339 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %338, i32 0, i32 3
  %340 = load i32, i32* %339, align 4
  %341 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %342 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %341, i32 0, i32 7
  %343 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 4
  %345 = icmp eq i32 %340, %344
  br i1 %345, label %346, label %363

346:                                              ; preds = %337
  %347 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %348 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %347, i32 0, i32 6
  %349 = load i32, i32* @VLC_DTS_HEADER_SIZE, align 4
  %350 = call i32 @vlc_dts_header_Parse(%struct.TYPE_31__* %348, i32* %20, i32 %349)
  %351 = load i32, i32* @VLC_SUCCESS, align 4
  %352 = icmp eq i32 %350, %351
  br i1 %352, label %353, label %363

353:                                              ; preds = %346
  %354 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %355 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %354, i32 0, i32 6
  %356 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %355, i32 0, i32 2
  %357 = load i32, i32* %356, align 8
  %358 = load i32, i32* @DTS_SYNC_SUBSTREAM, align 4
  %359 = icmp eq i32 %357, %358
  br i1 %359, label %360, label %363

360:                                              ; preds = %353
  %361 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %362 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %361, i32 0, i32 0
  store i32 132, i32* %362, align 8
  br label %370

363:                                              ; preds = %353, %346, %337
  %364 = load i8*, i8** @PROFILE_DTS, align 8
  %365 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %366 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %366, i32 0, i32 0
  store i8* %364, i8** %367, align 8
  %368 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %369 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %368, i32 0, i32 0
  store i32 135, i32* %369, align 8
  br label %370

370:                                              ; preds = %363, %360
  br label %258

371:                                              ; preds = %329, %319, %276, %258
  br label %480

372:                                              ; preds = %82
  %373 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %374 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %373, i32 0, i32 6
  %375 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %374, i32 0, i32 2
  %376 = load i32, i32* %375, align 8
  %377 = load i32, i32* @DTS_SYNC_SUBSTREAM, align 4
  %378 = icmp eq i32 %376, %377
  %379 = zext i1 %378 to i32
  %380 = call i32 @assert(i32 %379)
  %381 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %382 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %381, i32 0, i32 7
  %383 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %382, i32 0, i32 2
  %384 = load i32, i32* %383, align 4
  %385 = load i32, i32* @DTS_SYNC_SUBSTREAM, align 4
  %386 = icmp eq i32 %384, %385
  br i1 %386, label %387, label %392

387:                                              ; preds = %372
  %388 = load i8*, i8** @PROFILE_DTS_EXPRESS, align 8
  %389 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %390 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %389, i32 0, i32 0
  %391 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %390, i32 0, i32 0
  store i8* %388, i8** %391, align 8
  br label %405

392:                                              ; preds = %372
  %393 = load i8*, i8** @PROFILE_DTS_HD, align 8
  %394 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %395 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %395, i32 0, i32 0
  store i8* %393, i8** %396, align 8
  %397 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %398 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %397, i32 0, i32 6
  %399 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %398, i32 0, i32 0
  %400 = load i32, i32* %399, align 8
  %401 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %402 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %401, i32 0, i32 2
  %403 = load i32, i32* %402, align 8
  %404 = add nsw i32 %403, %400
  store i32 %404, i32* %402, align 8
  br label %405

405:                                              ; preds = %392, %387
  %406 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %407 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %406, i32 0, i32 0
  store i32 135, i32* %407, align 8
  br label %480

408:                                              ; preds = %82
  %409 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %410 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %409, i32 0, i32 5
  %411 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %412 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %411, i32 0, i32 2
  %413 = load i32, i32* %412, align 8
  %414 = call i32 @block_WaitBytes(%struct.TYPE_28__* %410, i32 %413)
  %415 = load i32, i32* @VLC_SUCCESS, align 4
  %416 = icmp ne i32 %414, %415
  br i1 %416, label %417, label %418

417:                                              ; preds = %408
  store %struct.TYPE_34__* null, %struct.TYPE_34__** %3, align 8
  store i32 1, i32* %12, align 4
  br label %481

418:                                              ; preds = %408
  %419 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %420 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %419, i32 0, i32 0
  store i32 130, i32* %420, align 8
  br label %421

421:                                              ; preds = %82, %418
  %422 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %423 = call %struct.TYPE_34__* @GetOutBuffer(%struct.TYPE_32__* %422)
  store %struct.TYPE_34__* %423, %struct.TYPE_34__** %9, align 8
  %424 = icmp ne %struct.TYPE_34__* %423, null
  br i1 %424, label %426, label %425

425:                                              ; preds = %421
  store %struct.TYPE_34__* null, %struct.TYPE_34__** %3, align 8
  store i32 1, i32* %12, align 4
  br label %481

426:                                              ; preds = %421
  %427 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %428 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %427, i32 0, i32 5
  %429 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %430 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %429, i32 0, i32 3
  %431 = load i32, i32* %430, align 4
  %432 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %433 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %432, i32 0, i32 2
  %434 = load i32, i32* %433, align 8
  %435 = call i32 @block_GetBytes(%struct.TYPE_28__* %428, i32 %431, i32 %434)
  %436 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %437 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %436, i32 0, i32 1
  %438 = load i64, i64* %437, align 8
  %439 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %440 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %439, i32 0, i32 5
  %441 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %440, i32 0, i32 0
  %442 = load %struct.TYPE_29__*, %struct.TYPE_29__** %441, align 8
  %443 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %442, i32 0, i32 0
  %444 = load i64, i64* %443, align 8
  %445 = icmp eq i64 %438, %444
  br i1 %445, label %446, label %455

446:                                              ; preds = %426
  %447 = load i64, i64* @VLC_TICK_INVALID, align 8
  %448 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %449 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %448, i32 0, i32 5
  %450 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %449, i32 0, i32 0
  %451 = load %struct.TYPE_29__*, %struct.TYPE_29__** %450, align 8
  %452 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %451, i32 0, i32 0
  store i64 %447, i64* %452, align 8
  %453 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %454 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %453, i32 0, i32 1
  store i64 %447, i64* %454, align 8
  br label %455

455:                                              ; preds = %446, %426
  %456 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %457 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %456, i32 0, i32 4
  %458 = load i32, i32* %457, align 8
  %459 = icmp ne i32 %458, 0
  br i1 %459, label %460, label %468

460:                                              ; preds = %455
  %461 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %462 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %461, i32 0, i32 4
  store i32 0, i32* %462, align 8
  %463 = load i32, i32* @BLOCK_FLAG_DISCONTINUITY, align 4
  %464 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %465 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %464, i32 0, i32 0
  %466 = load i32, i32* %465, align 8
  %467 = or i32 %466, %463
  store i32 %467, i32* %465, align 8
  br label %468

468:                                              ; preds = %460, %455
  %469 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %5, align 8
  %470 = icmp ne %struct.TYPE_34__** %469, null
  br i1 %470, label %471, label %476

471:                                              ; preds = %468
  %472 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %473 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %472, i32 0, i32 5
  %474 = call %struct.TYPE_34__* @block_BytestreamPop(%struct.TYPE_28__* %473)
  %475 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %5, align 8
  store %struct.TYPE_34__* %474, %struct.TYPE_34__** %475, align 8
  br label %476

476:                                              ; preds = %471, %468
  %477 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %478 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %477, i32 0, i32 0
  store i32 131, i32* %478, align 8
  %479 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  store %struct.TYPE_34__* %479, %struct.TYPE_34__** %3, align 8
  store i32 1, i32* %12, align 4
  br label %481

480:                                              ; preds = %82, %405, %371, %256, %220, %207, %181, %160
  br label %81

481:                                              ; preds = %476, %425, %417, %279, %255, %201, %152, %108, %72, %56, %45
  %482 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %482)
  %483 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  ret %struct.TYPE_34__* %483
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @PacketizeFlush(%struct.TYPE_32__*) #2

declare dso_local i32 @block_Release(%struct.TYPE_34__*) #2

declare dso_local i64 @date_Get(i32*) #2

declare dso_local i32 @block_BytestreamPush(%struct.TYPE_28__*, %struct.TYPE_34__*) #2

declare dso_local i32 @block_PeekBytes(%struct.TYPE_28__*, i32*, i32) #2

declare dso_local i32 @vlc_dts_header_IsSync(i32*, i32) #2

declare dso_local i32 @block_SkipByte(%struct.TYPE_28__*) #2

declare dso_local i32 @block_BytestreamFlush(%struct.TYPE_28__*) #2

declare dso_local i32 @date_Set(i32*, i64) #2

declare dso_local i32 @vlc_dts_header_Parse(%struct.TYPE_31__*, i32*, i32) #2

declare dso_local i32 @msg_Dbg(%struct.TYPE_32__*, i8*) #2

declare dso_local i32 @block_PeekOffsetBytes(%struct.TYPE_28__*, i32, i32*, i32) #2

declare dso_local i32 @msg_Warn(%struct.TYPE_32__*, i8*) #2

declare dso_local i32 @block_SkipBytes(%struct.TYPE_28__*, i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @block_WaitBytes(%struct.TYPE_28__*, i32) #2

declare dso_local %struct.TYPE_34__* @GetOutBuffer(%struct.TYPE_32__*) #2

declare dso_local i32 @block_GetBytes(%struct.TYPE_28__*, i32, i32) #2

declare dso_local %struct.TYPE_34__* @block_BytestreamPop(%struct.TYPE_28__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
