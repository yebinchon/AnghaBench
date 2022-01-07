; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/mpeg/extr_tables.c_GetPMTmpeg4.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/mpeg/extr_tables.c_GetPMTmpeg4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i64, i64, i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }

@VLC_CODEC_SUBT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Unsupported stream_type => broken IOD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, %struct.TYPE_14__*)* @GetPMTmpeg4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GetPMTmpeg4(i32* %0, i32* %1, i32 %2, %struct.TYPE_14__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca [4096 x i32], align 16
  %10 = alloca %struct.TYPE_15__, align 4
  %11 = alloca %struct.TYPE_15__, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca %struct.TYPE_15__, align 4
  %15 = alloca %struct.TYPE_15__, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %8, align 8
  %17 = getelementptr inbounds [4096 x i32], [4096 x i32]* %9, i64 0, i64 0
  %18 = call i32 @memset(i32* %17, i32 0, i32 4096)
  %19 = getelementptr inbounds [4096 x i32], [4096 x i32]* %9, i64 0, i64 0
  %20 = call i32 @bits_initwrite(%struct.TYPE_15__* %10, i32 4096, i32* %19)
  %21 = call i32 @bits_write(%struct.TYPE_15__* %10, i32 8, i32 17)
  %22 = call i32 @bits_write(%struct.TYPE_15__* %10, i32 8, i32 1)
  %23 = call i32 @bits_align(%struct.TYPE_15__* %10)
  %24 = call i32 @bits_write(%struct.TYPE_15__* %10, i32 8, i32 2)
  %25 = bitcast %struct.TYPE_15__* %11 to i8*
  %26 = bitcast %struct.TYPE_15__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 8, i1 false)
  %27 = call i32 @GetDescriptorLength24b(i32 0)
  %28 = call i32 @bits_write(%struct.TYPE_15__* %10, i32 24, i32 %27)
  %29 = call i32 @bits_write(%struct.TYPE_15__* %10, i32 10, i32 1)
  %30 = call i32 @bits_write(%struct.TYPE_15__* %10, i32 1, i32 0)
  %31 = call i32 @bits_write(%struct.TYPE_15__* %10, i32 1, i32 0)
  %32 = call i32 @bits_write(%struct.TYPE_15__* %10, i32 4, i32 15)
  %33 = call i32 @bits_write(%struct.TYPE_15__* %10, i32 8, i32 255)
  %34 = call i32 @bits_write(%struct.TYPE_15__* %10, i32 8, i32 255)
  %35 = call i32 @bits_write(%struct.TYPE_15__* %10, i32 8, i32 254)
  %36 = call i32 @bits_write(%struct.TYPE_15__* %10, i32 8, i32 254)
  %37 = call i32 @bits_write(%struct.TYPE_15__* %10, i32 8, i32 255)
  store i32 0, i32* %12, align 4
  br label %38

38:                                               ; preds = %242, %4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %245

42:                                               ; preds = %38
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %44 = load i32, i32* %12, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i64 %45
  store %struct.TYPE_14__* %46, %struct.TYPE_14__** %13, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 250
  br i1 %52, label %53, label %68

53:                                               ; preds = %42
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 251
  br i1 %59, label %60, label %68

60:                                               ; preds = %53
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 254
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %242

68:                                               ; preds = %60, %53, %42
  %69 = call i32 @bits_align(%struct.TYPE_15__* %10)
  %70 = call i32 @bits_write(%struct.TYPE_15__* %10, i32 8, i32 3)
  %71 = bitcast %struct.TYPE_15__* %14 to i8*
  %72 = bitcast %struct.TYPE_15__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %71, i8* align 4 %72, i64 8, i1 false)
  %73 = call i32 @GetDescriptorLength24b(i32 0)
  %74 = call i32 @bits_write(%struct.TYPE_15__* %10, i32 24, i32 %73)
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @bits_write(%struct.TYPE_15__* %10, i32 16, i32 %79)
  %81 = call i32 @bits_write(%struct.TYPE_15__* %10, i32 1, i32 0)
  %82 = call i32 @bits_write(%struct.TYPE_15__* %10, i32 1, i32 0)
  %83 = call i32 @bits_write(%struct.TYPE_15__* %10, i32 1, i32 0)
  %84 = call i32 @bits_write(%struct.TYPE_15__* %10, i32 5, i32 31)
  %85 = call i32 @bits_align(%struct.TYPE_15__* %10)
  %86 = call i32 @bits_write(%struct.TYPE_15__* %10, i32 8, i32 4)
  %87 = bitcast %struct.TYPE_15__* %15 to i8*
  %88 = bitcast %struct.TYPE_15__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %87, i8* align 4 %88, i64 8, i1 false)
  %89 = call i32 @GetDescriptorLength24b(i32 0)
  %90 = call i32 @bits_write(%struct.TYPE_15__* %10, i32 24, i32 %89)
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 16
  br i1 %96, label %97, label %100

97:                                               ; preds = %68
  %98 = call i32 @bits_write(%struct.TYPE_15__* %10, i32 8, i32 32)
  %99 = call i32 @bits_write(%struct.TYPE_15__* %10, i32 6, i32 4)
  br label %153

100:                                              ; preds = %68
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 27
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = call i32 @bits_write(%struct.TYPE_15__* %10, i32 8, i32 33)
  %109 = call i32 @bits_write(%struct.TYPE_15__* %10, i32 6, i32 4)
  br label %152

110:                                              ; preds = %100
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 17
  br i1 %116, label %124, label %117

117:                                              ; preds = %110
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 15
  br i1 %123, label %124, label %127

124:                                              ; preds = %117, %110
  %125 = call i32 @bits_write(%struct.TYPE_15__* %10, i32 8, i32 64)
  %126 = call i32 @bits_write(%struct.TYPE_15__* %10, i32 6, i32 5)
  br label %151

127:                                              ; preds = %117
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 %132, 18
  br i1 %133, label %134, label %145

134:                                              ; preds = %127
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @VLC_CODEC_SUBT, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %134
  %143 = call i32 @bits_write(%struct.TYPE_15__* %10, i32 8, i32 11)
  %144 = call i32 @bits_write(%struct.TYPE_15__* %10, i32 6, i32 4)
  br label %150

145:                                              ; preds = %134, %127
  %146 = call i32 @bits_write(%struct.TYPE_15__* %10, i32 8, i32 0)
  %147 = call i32 @bits_write(%struct.TYPE_15__* %10, i32 6, i32 0)
  %148 = load i32*, i32** %5, align 8
  %149 = call i32 @msg_Err(i32* %148, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %150

150:                                              ; preds = %145, %142
  br label %151

151:                                              ; preds = %150, %124
  br label %152

152:                                              ; preds = %151, %107
  br label %153

153:                                              ; preds = %152, %97
  %154 = call i32 @bits_write(%struct.TYPE_15__* %10, i32 1, i32 0)
  %155 = call i32 @bits_write(%struct.TYPE_15__* %10, i32 1, i32 1)
  %156 = call i32 @bits_write(%struct.TYPE_15__* %10, i32 24, i32 1048576)
  %157 = call i32 @bits_write(%struct.TYPE_15__* %10, i32 32, i32 2147483647)
  %158 = call i32 @bits_write(%struct.TYPE_15__* %10, i32 32, i32 0)
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @VLC_CODEC_SUBT, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %171

166:                                              ; preds = %153
  %167 = call i32 @bits_align(%struct.TYPE_15__* %10)
  %168 = call i32 @bits_write(%struct.TYPE_15__* %10, i32 8, i32 5)
  %169 = call i32 @bits_write(%struct.TYPE_15__* %10, i32 24, i32 55)
  %170 = call i32 @Mpeg4SUBTDecoderSpecific_55(%struct.TYPE_15__* %10)
  br label %215

171:                                              ; preds = %153
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = icmp sgt i64 %176, 0
  br i1 %177, label %178, label %214

178:                                              ; preds = %171
  %179 = call i32 @bits_align(%struct.TYPE_15__* %10)
  %180 = call i32 @bits_write(%struct.TYPE_15__* %10, i32 8, i32 5)
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = trunc i64 %185 to i32
  %187 = call i32 @GetDescriptorLength24b(i32 %186)
  %188 = call i32 @bits_write(%struct.TYPE_15__* %10, i32 24, i32 %187)
  store i32 0, i32* %16, align 4
  br label %189

189:                                              ; preds = %210, %178
  %190 = load i32, i32* %16, align 4
  %191 = sext i32 %190 to i64
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = icmp slt i64 %191, %196
  br i1 %197, label %198, label %213

198:                                              ; preds = %189
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = inttoptr i64 %203 to i32*
  %205 = load i32, i32* %16, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @bits_write(%struct.TYPE_15__* %10, i32 8, i32 %208)
  br label %210

210:                                              ; preds = %198
  %211 = load i32, i32* %16, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %16, align 4
  br label %189

213:                                              ; preds = %189
  br label %214

214:                                              ; preds = %213, %171
  br label %215

215:                                              ; preds = %214, %166
  %216 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = sub nsw i32 %217, %219
  %221 = sub nsw i32 %220, 3
  %222 = call i32 @GetDescriptorLength24b(i32 %221)
  %223 = call i32 @bits_write(%struct.TYPE_15__* %15, i32 24, i32 %222)
  %224 = call i32 @bits_align(%struct.TYPE_15__* %10)
  %225 = call i32 @bits_write(%struct.TYPE_15__* %10, i32 8, i32 6)
  %226 = call i32 @GetDescriptorLength24b(i32 8)
  %227 = call i32 @bits_write(%struct.TYPE_15__* %10, i32 24, i32 %226)
  %228 = call i32 @bits_write(%struct.TYPE_15__* %10, i32 8, i32 1)
  %229 = call i32 @bits_write(%struct.TYPE_15__* %10, i32 1, i32 0)
  %230 = call i32 @bits_write(%struct.TYPE_15__* %10, i32 32, i32 0)
  %231 = call i32 @bits_write(%struct.TYPE_15__* %10, i32 8, i32 0)
  %232 = call i32 @bits_write(%struct.TYPE_15__* %10, i32 8, i32 0)
  %233 = call i32 @bits_align(%struct.TYPE_15__* %10)
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = sub nsw i32 %235, %237
  %239 = sub nsw i32 %238, 3
  %240 = call i32 @GetDescriptorLength24b(i32 %239)
  %241 = call i32 @bits_write(%struct.TYPE_15__* %14, i32 24, i32 %240)
  br label %242

242:                                              ; preds = %215, %67
  %243 = load i32, i32* %12, align 4
  %244 = add i32 %243, 1
  store i32 %244, i32* %12, align 4
  br label %38

245:                                              ; preds = %38
  %246 = call i32 @bits_align(%struct.TYPE_15__* %10)
  %247 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = sub nsw i32 %248, %250
  %252 = sub nsw i32 %251, 3
  %253 = call i32 @GetDescriptorLength24b(i32 %252)
  %254 = call i32 @bits_write(%struct.TYPE_15__* %11, i32 24, i32 %253)
  %255 = load i32*, i32** %6, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 0
  %257 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @dvbpsi_pmt_descriptor_add(i32* %256, i32 29, i32 %258, i32 %260)
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @bits_initwrite(%struct.TYPE_15__*, i32, i32*) #1

declare dso_local i32 @bits_write(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @bits_align(%struct.TYPE_15__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @GetDescriptorLength24b(i32) #1

declare dso_local i32 @msg_Err(i32*, i8*) #1

declare dso_local i32 @Mpeg4SUBTDecoderSpecific_55(%struct.TYPE_15__*) #1

declare dso_local i32 @dvbpsi_pmt_descriptor_add(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
