; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_lpcm.c_Packetize.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_lpcm.c_Packetize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32, i64, i64, i64, i32, i8* }
%struct.TYPE_28__ = type { %struct.TYPE_27__, %struct.TYPE_29__* }
%struct.TYPE_27__ = type { i32, %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_29__ = type { i64, i32, i32, i32, i32, i64 }
%struct.TYPE_31__ = type { i32, i32 }

@BLOCK_FLAG_CORRUPTED = common dso_local global i32 0, align 4
@BLOCK_FLAG_DISCONTINUITY = common dso_local global i32 0, align 4
@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"frame is too short\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"no frame sync or too small frame\00", align 1
@VLC_CODEC_S16N = common dso_local global i32 0, align 4
@VLC_CODEC_S32N = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_30__* (%struct.TYPE_28__*, %struct.TYPE_30__**)* @Packetize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_30__* @Packetize(%struct.TYPE_28__* %0, %struct.TYPE_30__** %1) #0 {
  %3 = alloca %struct.TYPE_30__*, align 8
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca %struct.TYPE_30__**, align 8
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca %struct.TYPE_30__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [2 x %struct.TYPE_31__], align 16
  %17 = alloca %struct.TYPE_30__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %4, align 8
  store %struct.TYPE_30__** %1, %struct.TYPE_30__*** %5, align 8
  %18 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  store %struct.TYPE_29__* %20, %struct.TYPE_29__** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %21 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %5, align 8
  %22 = icmp ne %struct.TYPE_30__** %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %5, align 8
  %25 = load %struct.TYPE_30__*, %struct.TYPE_30__** %24, align 8
  %26 = icmp ne %struct.TYPE_30__* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23, %2
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %3, align 8
  br label %397

28:                                               ; preds = %23
  %29 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %5, align 8
  %30 = load %struct.TYPE_30__*, %struct.TYPE_30__** %29, align 8
  store %struct.TYPE_30__* %30, %struct.TYPE_30__** %7, align 8
  %31 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %5, align 8
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %31, align 8
  %32 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %36 = load i32, i32* @BLOCK_FLAG_DISCONTINUITY, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %28
  %41 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %42 = call i32 @Flush(%struct.TYPE_28__* %41)
  %43 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %40
  %50 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %51 = call i32 @block_Release(%struct.TYPE_30__* %50)
  %52 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %5, align 8
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %52, align 8
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %3, align 8
  br label %397

53:                                               ; preds = %40
  br label %54

54:                                               ; preds = %53, %28
  %55 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @VLC_TICK_INVALID, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %54
  %61 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %64, i32 0, i32 4
  %66 = call i64 @date_Get(i32* %65)
  %67 = icmp ne i64 %63, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %60
  %69 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %69, i32 0, i32 4
  %71 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @date_Set(i32* %70, i64 %73)
  br label %75

75:                                               ; preds = %68, %60, %54
  %76 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %76, i32 0, i32 4
  %78 = call i64 @date_Get(i32* %77)
  %79 = load i64, i64* @VLC_TICK_INVALID, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %83 = call i32 @block_Release(%struct.TYPE_30__* %82)
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %3, align 8
  br label %397

84:                                               ; preds = %75
  %85 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp sle i64 %87, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %84
  %93 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %94 = call i32 @msg_Err(%struct.TYPE_28__* %93, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %95 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %96 = call i32 @block_Release(%struct.TYPE_30__* %95)
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %3, align 8
  br label %397

97:                                               ; preds = %84
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %98 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  switch i32 %100, label %123 [
    i32 129, label %101
    i32 131, label %106
    i32 130, label %112
    i32 128, label %118
  ]

101:                                              ; preds = %97
  %102 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @VobHeader(i32* %8, i32* %10, i32* %9, i32* %11, i32 %104)
  store i32 %105, i32* %13, align 4
  br label %125

106:                                              ; preds = %97
  %107 = getelementptr inbounds [2 x %struct.TYPE_31__], [2 x %struct.TYPE_31__]* %16, i64 0, i64 0
  %108 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @AobHeader(i32* %8, i32* %10, i32* %9, i32* %11, i32* %15, %struct.TYPE_31__* %107, i32 %110)
  store i32 %111, i32* %13, align 4
  br label %125

112:                                              ; preds = %97
  %113 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %114 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @BdHeader(%struct.TYPE_29__* %113, i32* %8, i32* %10, i32* %14, i32* %9, i32* %11, i32 %116)
  store i32 %117, i32* %13, align 4
  br label %125

118:                                              ; preds = %97
  %119 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @WidiHeader(i32* %8, i32* %10, i32* %9, i32* %11, i32 %121)
  store i32 %122, i32* %13, align 4
  br label %125

123:                                              ; preds = %97
  %124 = call i32 (...) @abort() #3
  unreachable

125:                                              ; preds = %118, %112, %106, %101
  %126 = load i32, i32* %13, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %139, label %128

128:                                              ; preds = %125
  %129 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i32, i32* %15, align 4
  %136 = zext i32 %135 to i64
  %137 = add nsw i64 %134, %136
  %138 = icmp sle i64 %131, %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %128, %125
  %140 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %141 = call i32 @msg_Warn(%struct.TYPE_28__* %140, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %142 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %143 = call i32 @block_Release(%struct.TYPE_30__* %142)
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %3, align 8
  br label %397

144:                                              ; preds = %128
  %145 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %8, align 4
  %151 = icmp ne i32 %149, %150
  br i1 %151, label %152, label %163

152:                                              ; preds = %144
  %153 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %153, i32 0, i32 4
  %155 = load i32, i32* %8, align 4
  %156 = call i32 @date_Init(i32* %154, i32 %155, i32 1)
  %157 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %157, i32 0, i32 4
  %159 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @date_Set(i32* %158, i64 %161)
  br label %163

163:                                              ; preds = %152, %144
  %164 = load i32, i32* %8, align 4
  %165 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %167, i32 0, i32 0
  store i32 %164, i32* %168, align 4
  %169 = load i32, i32* %10, align 4
  %170 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %172, i32 0, i32 1
  store i32 %169, i32* %173, align 4
  %174 = load i32, i32* %9, align 4
  %175 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %177, i32 0, i32 2
  store i32 %174, i32* %178, align 4
  %179 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = icmp eq i32 %181, 131
  br i1 %182, label %183, label %214

183:                                              ; preds = %163
  %184 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = sub nsw i64 %186, %189
  %191 = load i32, i32* %15, align 4
  %192 = zext i32 %191 to i64
  %193 = sub nsw i64 %190, %192
  %194 = getelementptr inbounds [2 x %struct.TYPE_31__], [2 x %struct.TYPE_31__]* %16, i64 0, i64 0
  %195 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 16
  %197 = sdiv i32 %196, 8
  %198 = getelementptr inbounds [2 x %struct.TYPE_31__], [2 x %struct.TYPE_31__]* %16, i64 0, i64 0
  %199 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = mul nsw i32 %197, %200
  %202 = getelementptr inbounds [2 x %struct.TYPE_31__], [2 x %struct.TYPE_31__]* %16, i64 0, i64 1
  %203 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = sdiv i32 %204, 8
  %206 = getelementptr inbounds [2 x %struct.TYPE_31__], [2 x %struct.TYPE_31__]* %16, i64 0, i64 1
  %207 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = mul nsw i32 %205, %208
  %210 = add nsw i32 %201, %209
  %211 = sext i32 %210 to i64
  %212 = sdiv i64 %193, %211
  %213 = trunc i64 %212 to i32
  store i32 %213, i32* %12, align 4
  br label %235

214:                                              ; preds = %163
  %215 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %215, i32 0, i32 2
  %217 = load i64, i64* %216, align 8
  %218 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = sub nsw i64 %217, %220
  %222 = load i32, i32* %15, align 4
  %223 = zext i32 %222 to i64
  %224 = sub nsw i64 %221, %223
  %225 = load i32, i32* %10, align 4
  %226 = load i32, i32* %14, align 4
  %227 = add i32 %225, %226
  %228 = zext i32 %227 to i64
  %229 = sdiv i64 %224, %228
  %230 = mul nsw i64 %229, 8
  %231 = load i32, i32* %11, align 4
  %232 = zext i32 %231 to i64
  %233 = sdiv i64 %230, %232
  %234 = trunc i64 %233 to i32
  store i32 %234, i32* %12, align 4
  br label %235

235:                                              ; preds = %214, %183
  %236 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %236, i32 0, i32 5
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %260

240:                                              ; preds = %235
  %241 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %241, i32 0, i32 4
  %243 = call i64 @date_Get(i32* %242)
  %244 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %245 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %244, i32 0, i32 3
  store i64 %243, i64* %245, align 8
  %246 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %246, i32 0, i32 1
  store i64 %243, i64* %247, align 8
  %248 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %248, i32 0, i32 4
  %250 = load i32, i32* %12, align 4
  %251 = call i8* @date_Increment(i32* %249, i32 %250)
  %252 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %253 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = sub i64 0, %254
  %256 = getelementptr i8, i8* %251, i64 %255
  %257 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %258 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %257, i32 0, i32 5
  store i8* %256, i8** %258, align 8
  %259 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  store %struct.TYPE_30__* %259, %struct.TYPE_30__** %3, align 8
  br label %397

260:                                              ; preds = %235
  %261 = load i32, i32* %11, align 4
  %262 = icmp eq i32 %261, 16
  br i1 %262, label %263, label %276

263:                                              ; preds = %260
  %264 = load i32, i32* @VLC_CODEC_S16N, align 4
  %265 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %266, i32 0, i32 0
  store i32 %264, i32* %267, align 8
  %268 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %270, i32 0, i32 4
  store i32 %264, i32* %271, align 4
  %272 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %274, i32 0, i32 3
  store i32 16, i32* %275, align 4
  br label %289

276:                                              ; preds = %260
  %277 = load i32, i32* @VLC_CODEC_S32N, align 4
  %278 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %279, i32 0, i32 0
  store i32 %277, i32* %280, align 8
  %281 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %283, i32 0, i32 4
  store i32 %277, i32* %284, align 4
  %285 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %286 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %286, i32 0, i32 1
  %288 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %287, i32 0, i32 3
  store i32 32, i32* %288, align 4
  br label %289

289:                                              ; preds = %276, %263
  %290 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %291 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %291, i32 0, i32 1
  %293 = call i32 @aout_FormatPrepare(%struct.TYPE_26__* %292)
  %294 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %295 = call i64 @decoder_UpdateAudioFormat(%struct.TYPE_28__* %294)
  %296 = load i64, i64* @VLC_SUCCESS, align 8
  %297 = icmp ne i64 %295, %296
  br i1 %297, label %303, label %298

298:                                              ; preds = %289
  %299 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %300 = load i32, i32* %12, align 4
  %301 = call %struct.TYPE_30__* @decoder_NewAudioBuffer(%struct.TYPE_28__* %299, i32 %300)
  store %struct.TYPE_30__* %301, %struct.TYPE_30__** %17, align 8
  %302 = icmp ne %struct.TYPE_30__* %301, null
  br i1 %302, label %306, label %303

303:                                              ; preds = %298, %289
  %304 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %305 = call i32 @block_Release(%struct.TYPE_30__* %304)
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %3, align 8
  br label %397

306:                                              ; preds = %298
  %307 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %308 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %307, i32 0, i32 4
  %309 = call i64 @date_Get(i32* %308)
  %310 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %311 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %310, i32 0, i32 1
  store i64 %309, i64* %311, align 8
  %312 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %313 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %312, i32 0, i32 4
  %314 = load i32, i32* %12, align 4
  %315 = call i8* @date_Increment(i32* %313, i32 %314)
  %316 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %317 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %316, i32 0, i32 1
  %318 = load i64, i64* %317, align 8
  %319 = sub i64 0, %318
  %320 = getelementptr i8, i8* %315, i64 %319
  %321 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %322 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %321, i32 0, i32 5
  store i8* %320, i8** %322, align 8
  %323 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %324 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %323, i32 0, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = load i32, i32* %15, align 4
  %327 = zext i32 %326 to i64
  %328 = add nsw i64 %325, %327
  %329 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %330 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %329, i32 0, i32 4
  %331 = load i32, i32* %330, align 8
  %332 = sext i32 %331 to i64
  %333 = add nsw i64 %332, %328
  %334 = trunc i64 %333 to i32
  store i32 %334, i32* %330, align 8
  %335 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %336 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %335, i32 0, i32 0
  %337 = load i64, i64* %336, align 8
  %338 = load i32, i32* %15, align 4
  %339 = zext i32 %338 to i64
  %340 = add nsw i64 %337, %339
  %341 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %342 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %341, i32 0, i32 2
  %343 = load i64, i64* %342, align 8
  %344 = sub nsw i64 %343, %340
  store i64 %344, i64* %342, align 8
  %345 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %346 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 8
  switch i32 %347, label %359 [
    i32 128, label %348
    i32 129, label %348
    i32 131, label %353
    i32 130, label %361
  ]

348:                                              ; preds = %306, %306
  %349 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %350 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %351 = load i32, i32* %11, align 4
  %352 = call i32 @VobExtract(%struct.TYPE_30__* %349, %struct.TYPE_30__* %350, i32 %351)
  br label %369

353:                                              ; preds = %306
  %354 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %355 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %356 = load i32, i32* %11, align 4
  %357 = getelementptr inbounds [2 x %struct.TYPE_31__], [2 x %struct.TYPE_31__]* %16, i64 0, i64 0
  %358 = call i32 @AobExtract(%struct.TYPE_30__* %354, %struct.TYPE_30__* %355, i32 %356, %struct.TYPE_31__* %357)
  br label %369

359:                                              ; preds = %306
  %360 = call i32 (...) @vlc_assert_unreachable()
  br label %361

361:                                              ; preds = %306, %359
  %362 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %363 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %364 = load i32, i32* %12, align 4
  %365 = load i32, i32* %10, align 4
  %366 = load i32, i32* %14, align 4
  %367 = load i32, i32* %11, align 4
  %368 = call i32 @BdExtract(%struct.TYPE_30__* %362, %struct.TYPE_30__* %363, i32 %364, i32 %365, i32 %366, i32 %367)
  br label %369

369:                                              ; preds = %361, %353, %348
  %370 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %371 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %370, i32 0, i32 3
  %372 = load i32, i32* %371, align 8
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %393

374:                                              ; preds = %369
  %375 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %376 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %375, i32 0, i32 4
  %377 = load i32, i32* %376, align 8
  %378 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %379 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %378, i32 0, i32 2
  %380 = load i64, i64* %379, align 8
  %381 = trunc i64 %380 to i32
  %382 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %383 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %382, i32 0, i32 3
  %384 = load i32, i32* %383, align 8
  %385 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %386 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %385, i32 0, i32 2
  %387 = load i32, i32* %386, align 4
  %388 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %389 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 8
  %392 = call i32 @aout_ChannelReorder(i32 %377, i32 %381, i32 %384, i32 %387, i32 %391)
  br label %393

393:                                              ; preds = %374, %369
  %394 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %395 = call i32 @block_Release(%struct.TYPE_30__* %394)
  %396 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  store %struct.TYPE_30__* %396, %struct.TYPE_30__** %3, align 8
  br label %397

397:                                              ; preds = %393, %303, %240, %139, %92, %81, %49, %27
  %398 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  ret %struct.TYPE_30__* %398
}

declare dso_local i32 @Flush(%struct.TYPE_28__*) #1

declare dso_local i32 @block_Release(%struct.TYPE_30__*) #1

declare dso_local i64 @date_Get(i32*) #1

declare dso_local i32 @date_Set(i32*, i64) #1

declare dso_local i32 @msg_Err(%struct.TYPE_28__*, i8*) #1

declare dso_local i32 @VobHeader(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @AobHeader(i32*, i32*, i32*, i32*, i32*, %struct.TYPE_31__*, i32) #1

declare dso_local i32 @BdHeader(%struct.TYPE_29__*, i32*, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @WidiHeader(i32*, i32*, i32*, i32*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @msg_Warn(%struct.TYPE_28__*, i8*) #1

declare dso_local i32 @date_Init(i32*, i32, i32) #1

declare dso_local i8* @date_Increment(i32*, i32) #1

declare dso_local i32 @aout_FormatPrepare(%struct.TYPE_26__*) #1

declare dso_local i64 @decoder_UpdateAudioFormat(%struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_30__* @decoder_NewAudioBuffer(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @VobExtract(%struct.TYPE_30__*, %struct.TYPE_30__*, i32) #1

declare dso_local i32 @AobExtract(%struct.TYPE_30__*, %struct.TYPE_30__*, i32, %struct.TYPE_31__*) #1

declare dso_local i32 @vlc_assert_unreachable(...) #1

declare dso_local i32 @BdExtract(%struct.TYPE_30__*, %struct.TYPE_30__*, i32, i32, i32, i32) #1

declare dso_local i32 @aout_ChannelReorder(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
