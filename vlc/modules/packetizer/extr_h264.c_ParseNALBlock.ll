; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_h264.c_ParseNALBlock.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_h264.c_ParseNALBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { %struct.TYPE_31__* }
%struct.TYPE_31__ = type { i32, i32, i32, i32, i64, i64, i32, %struct.TYPE_28__, i32, %struct.TYPE_27__, i32*, %struct.TYPE_29__, i8*, i8*, i32, i32 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_27__ = type { i32, %struct.TYPE_32__* }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_32__ = type { i32*, i64, i64, i32, i32, %struct.TYPE_32__* }

@BLOCK_FLAG_AU_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"waiting for SPS/PPS\00", align 1
@UINT_MAX = common dso_local global i8* null, align 8
@BLOCK_FLAG_PRIVATE_SEI = common dso_local global i32 0, align 4
@ParseSeiCallback = common dso_local global i32 0, align 4
@BLOCK_FLAG_PRIVATE_AUD = common dso_local global i32 0, align 4
@BLOCK_FLAG_END_OF_SEQUENCE = common dso_local global i32 0, align 4
@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@BLOCK_FLAG_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_32__* (%struct.TYPE_30__*, i32*, %struct.TYPE_32__*)* @ParseNALBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_32__* @ParseNALBlock(%struct.TYPE_30__* %0, i32* %1, %struct.TYPE_32__* %2) #0 {
  %4 = alloca %struct.TYPE_30__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_32__*, align 8
  %7 = alloca %struct.TYPE_31__*, align 8
  %8 = alloca %struct.TYPE_32__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_29__, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_32__*, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_32__* %2, %struct.TYPE_32__** %6, align 8
  %16 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  store %struct.TYPE_31__* %18, %struct.TYPE_31__** %7, align 8
  store %struct.TYPE_32__* null, %struct.TYPE_32__** %8, align 8
  %19 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 4
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 31
  store i32 %24, i32* %9, align 4
  %25 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %10, align 8
  %28 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %11, align 8
  %31 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @BLOCK_FLAG_AU_END, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* @BLOCK_FLAG_AU_END, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %67

46:                                               ; preds = %3
  %47 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %47, i32 0, i32 10
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %52, i32 0, i32 15
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %67, label %56

56:                                               ; preds = %51, %46
  %57 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %58 = call i32 @msg_Warn(%struct.TYPE_30__* %57, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %59 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %60 = call i32 @DropStoredNAL(%struct.TYPE_31__* %59)
  %61 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %62 = call i32 @ResetOutputVariables(%struct.TYPE_31__* %61)
  %63 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %63, i32 0, i32 14
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @cc_storage_reset(i32 %65)
  br label %67

67:                                               ; preds = %56, %51, %3
  %68 = load i32, i32* %9, align 4
  switch i32 %68, label %255 [
    i32 139, label %69
    i32 137, label %69
    i32 136, label %69
    i32 135, label %69
    i32 133, label %69
    i32 151, label %157
    i32 131, label %178
    i32 146, label %178
    i32 140, label %202
    i32 130, label %221
    i32 145, label %221
    i32 129, label %221
    i32 150, label %221
    i32 144, label %221
    i32 143, label %221
    i32 149, label %235
    i32 148, label %235
    i32 132, label %254
    i32 128, label %254
    i32 147, label %254
    i32 134, label %254
    i32 138, label %254
    i32 142, label %254
    i32 141, label %254
  ]

69:                                               ; preds = %67, %67, %67, %67, %67
  %70 = load i32, i32* %9, align 4
  %71 = icmp eq i32 %70, 133
  br i1 %71, label %72, label %81

72:                                               ; preds = %69
  %73 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %73, i32 0, i32 1
  store i32 1, i32* %74, align 4
  %75 = load i8*, i8** @UINT_MAX, align 8
  %76 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %76, i32 0, i32 13
  store i8* %75, i8** %77, align 8
  %78 = load i8*, i8** @UINT_MAX, align 8
  %79 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %79, i32 0, i32 12
  store i8* %78, i8** %80, align 8
  br label %81

81:                                               ; preds = %72, %69
  %82 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %83 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %84 = call i32 @ParseSliceHeader(%struct.TYPE_30__* %82, %struct.TYPE_32__* %83, %struct.TYPE_29__* %13)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %146

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %91, i32 0, i32 11
  %93 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 0
  store i32 %94, i32* %95, align 4
  br label %96

96:                                               ; preds = %90, %86
  %97 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %97, i32 0, i32 11
  %99 = call i32 @IsFirstVCLNALUnit(%struct.TYPE_29__* %98, %struct.TYPE_29__* %13)
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %14, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %141

102:                                              ; preds = %96
  %103 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %103, i32 0, i32 9
  %105 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_32__*, %struct.TYPE_32__** %105, align 8
  store %struct.TYPE_32__* %106, %struct.TYPE_32__** %15, align 8
  br label %107

107:                                              ; preds = %128, %102
  %108 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %109 = icmp ne %struct.TYPE_32__* %108, null
  br i1 %109, label %110, label %132

110:                                              ; preds = %107
  %111 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %112 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @BLOCK_FLAG_PRIVATE_SEI, align 4
  %115 = and i32 %113, %114
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %110
  br label %128

118:                                              ; preds = %110
  %119 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %120 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %123 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @ParseSeiCallback, align 4
  %126 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %127 = call i32 @HxxxParse_AnnexB_SEI(i32* %121, i32 %124, i32 1, i32 %125, %struct.TYPE_30__* %126)
  br label %128

128:                                              ; preds = %118, %117
  %129 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %130 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %129, i32 0, i32 5
  %131 = load %struct.TYPE_32__*, %struct.TYPE_32__** %130, align 8
  store %struct.TYPE_32__* %131, %struct.TYPE_32__** %15, align 8
  br label %107

132:                                              ; preds = %107
  %133 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %139 = call %struct.TYPE_32__* @OutputPicture(%struct.TYPE_30__* %138)
  store %struct.TYPE_32__* %139, %struct.TYPE_32__** %8, align 8
  br label %140

140:                                              ; preds = %137, %132
  br label %141

141:                                              ; preds = %140, %96
  %142 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %142, i32 0, i32 11
  %144 = bitcast %struct.TYPE_29__* %143 to i8*
  %145 = bitcast %struct.TYPE_29__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %144, i8* align 4 %145, i64 4, i1 false)
  br label %149

146:                                              ; preds = %81
  %147 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %147, i32 0, i32 10
  store i32* null, i32** %148, align 8
  br label %149

149:                                              ; preds = %146, %141
  %150 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %150, i32 0, i32 0
  store i32 1, i32* %151, align 8
  %152 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %152, i32 0, i32 7
  %154 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %156 = call i32 @block_ChainLastAppend(i32* %154, %struct.TYPE_32__* %155)
  br label %261

157:                                              ; preds = %67
  %158 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %157
  %163 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %164 = call %struct.TYPE_32__* @OutputPicture(%struct.TYPE_30__* %163)
  store %struct.TYPE_32__* %164, %struct.TYPE_32__** %8, align 8
  br label %165

165:                                              ; preds = %162, %157
  %166 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %167 = call i32 @DropStoredNAL(%struct.TYPE_31__* %166)
  %168 = load i32, i32* @BLOCK_FLAG_PRIVATE_AUD, align 4
  %169 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 8
  %172 = or i32 %171, %168
  store i32 %172, i32* %170, align 8
  %173 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %173, i32 0, i32 9
  %175 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %177 = call i32 @block_ChainLastAppend(i32* %175, %struct.TYPE_32__* %176)
  br label %261

178:                                              ; preds = %67, %67
  %179 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %178
  %184 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %185 = call %struct.TYPE_32__* @OutputPicture(%struct.TYPE_30__* %184)
  store %struct.TYPE_32__* %185, %struct.TYPE_32__** %8, align 8
  br label %186

186:                                              ; preds = %183, %178
  %187 = load i32, i32* %9, align 4
  %188 = icmp eq i32 %187, 131
  br i1 %188, label %189, label %195

189:                                              ; preds = %186
  %190 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %191 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %192 = call i32 @PutSPS(%struct.TYPE_30__* %190, %struct.TYPE_32__* %191)
  %193 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %193, i32 0, i32 2
  store i32 1, i32* %194, align 8
  br label %201

195:                                              ; preds = %186
  %196 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %197 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %198 = call i32 @PutPPS(%struct.TYPE_30__* %196, %struct.TYPE_32__* %197)
  %199 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %199, i32 0, i32 3
  store i32 1, i32* %200, align 4
  br label %201

201:                                              ; preds = %195, %189
  br label %261

202:                                              ; preds = %67
  %203 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %202
  %208 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %209 = call %struct.TYPE_32__* @OutputPicture(%struct.TYPE_30__* %208)
  store %struct.TYPE_32__* %209, %struct.TYPE_32__** %8, align 8
  br label %210

210:                                              ; preds = %207, %202
  %211 = load i32, i32* @BLOCK_FLAG_PRIVATE_SEI, align 4
  %212 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 8
  %215 = or i32 %214, %211
  store i32 %215, i32* %213, align 8
  %216 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %216, i32 0, i32 9
  %218 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %217, i32 0, i32 0
  %219 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %220 = call i32 @block_ChainLastAppend(i32* %218, %struct.TYPE_32__* %219)
  br label %261

221:                                              ; preds = %67, %67, %67, %67, %67, %67
  %222 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %221
  %227 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %228 = call %struct.TYPE_32__* @OutputPicture(%struct.TYPE_30__* %227)
  store %struct.TYPE_32__* %228, %struct.TYPE_32__** %8, align 8
  br label %229

229:                                              ; preds = %226, %221
  %230 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %230, i32 0, i32 9
  %232 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %231, i32 0, i32 0
  %233 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %234 = call i32 @block_ChainLastAppend(i32* %232, %struct.TYPE_32__* %233)
  br label %261

235:                                              ; preds = %67, %67
  %236 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %236, i32 0, i32 7
  %238 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %237, i32 0, i32 0
  %239 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %240 = call i32 @block_ChainLastAppend(i32* %238, %struct.TYPE_32__* %239)
  %241 = load i32, i32* @BLOCK_FLAG_END_OF_SEQUENCE, align 4
  %242 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %243 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %242, i32 0, i32 8
  %244 = load i32, i32* %243, align 8
  %245 = or i32 %244, %241
  store i32 %245, i32* %243, align 8
  %246 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %235
  %251 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %252 = call %struct.TYPE_32__* @OutputPicture(%struct.TYPE_30__* %251)
  store %struct.TYPE_32__* %252, %struct.TYPE_32__** %8, align 8
  br label %253

253:                                              ; preds = %250, %235
  br label %261

254:                                              ; preds = %67, %67, %67, %67, %67, %67, %67
  br label %255

255:                                              ; preds = %67, %254
  %256 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %257 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %256, i32 0, i32 7
  %258 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %257, i32 0, i32 0
  %259 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %260 = call i32 @block_ChainLastAppend(i32* %258, %struct.TYPE_32__* %259)
  br label %261

261:                                              ; preds = %255, %253, %229, %210, %201, %165, %149
  %262 = load i32*, i32** %5, align 8
  store i32 0, i32* %262, align 4
  %263 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %264 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %263, i32 0, i32 4
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* @VLC_TICK_INVALID, align 8
  %267 = icmp eq i64 %265, %266
  br i1 %267, label %268, label %291

268:                                              ; preds = %261
  %269 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %270 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %269, i32 0, i32 5
  %271 = load i64, i64* %270, align 8
  %272 = load i64, i64* @VLC_TICK_INVALID, align 8
  %273 = icmp eq i64 %271, %272
  br i1 %273, label %274, label %291

274:                                              ; preds = %268
  %275 = load i64, i64* %10, align 8
  %276 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %277 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %276, i32 0, i32 4
  store i64 %275, i64* %277, align 8
  %278 = load i64, i64* %11, align 8
  %279 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %280 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %279, i32 0, i32 5
  store i64 %278, i64* %280, align 8
  %281 = load i32*, i32** %5, align 8
  store i32 1, i32* %281, align 4
  %282 = load i64, i64* %10, align 8
  %283 = load i64, i64* @VLC_TICK_INVALID, align 8
  %284 = icmp ne i64 %282, %283
  br i1 %284, label %285, label %290

285:                                              ; preds = %274
  %286 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %287 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %286, i32 0, i32 6
  %288 = load i64, i64* %10, align 8
  %289 = call i32 @date_Set(i32* %287, i64 %288)
  br label %290

290:                                              ; preds = %285, %274
  br label %291

291:                                              ; preds = %290, %268, %261
  %292 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %293 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %305

296:                                              ; preds = %291
  %297 = load i32, i32* %12, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %305

299:                                              ; preds = %296
  %300 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %301 = icmp ne %struct.TYPE_32__* %300, null
  br i1 %301, label %305, label %302

302:                                              ; preds = %299
  %303 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %304 = call %struct.TYPE_32__* @OutputPicture(%struct.TYPE_30__* %303)
  store %struct.TYPE_32__* %304, %struct.TYPE_32__** %8, align 8
  br label %305

305:                                              ; preds = %302, %299, %296, %291
  %306 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %307 = icmp ne %struct.TYPE_32__* %306, null
  br i1 %307, label %308, label %318

308:                                              ; preds = %305
  %309 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %310 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %309, i32 0, i32 3
  %311 = load i32, i32* %310, align 8
  %312 = load i32, i32* @BLOCK_FLAG_DROP, align 4
  %313 = and i32 %311, %312
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %318

315:                                              ; preds = %308
  %316 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %317 = call i32 @block_Release(%struct.TYPE_32__* %316)
  store %struct.TYPE_32__* null, %struct.TYPE_32__** %8, align 8
  br label %318

318:                                              ; preds = %315, %308, %305
  %319 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  ret %struct.TYPE_32__* %319
}

declare dso_local i32 @msg_Warn(%struct.TYPE_30__*, i8*) #1

declare dso_local i32 @DropStoredNAL(%struct.TYPE_31__*) #1

declare dso_local i32 @ResetOutputVariables(%struct.TYPE_31__*) #1

declare dso_local i32 @cc_storage_reset(i32) #1

declare dso_local i32 @ParseSliceHeader(%struct.TYPE_30__*, %struct.TYPE_32__*, %struct.TYPE_29__*) #1

declare dso_local i32 @IsFirstVCLNALUnit(%struct.TYPE_29__*, %struct.TYPE_29__*) #1

declare dso_local i32 @HxxxParse_AnnexB_SEI(i32*, i32, i32, i32, %struct.TYPE_30__*) #1

declare dso_local %struct.TYPE_32__* @OutputPicture(%struct.TYPE_30__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @block_ChainLastAppend(i32*, %struct.TYPE_32__*) #1

declare dso_local i32 @PutSPS(%struct.TYPE_30__*, %struct.TYPE_32__*) #1

declare dso_local i32 @PutPPS(%struct.TYPE_30__*, %struct.TYPE_32__*) #1

declare dso_local i32 @date_Set(i32*, i64) #1

declare dso_local i32 @block_Release(%struct.TYPE_32__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
