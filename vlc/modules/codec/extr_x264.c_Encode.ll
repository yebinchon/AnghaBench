; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_x264.c_Encode.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_x264.c_Encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_31__ = type { %struct.TYPE_27__, %struct.TYPE_21__* }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_25__, i32*, i32, i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_30__ = type { i32, %struct.TYPE_24__*, i32 }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_28__ = type { i64, i32, i32, i64, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, i32*, i32*, i32 }
%struct.TYPE_29__ = type { i32*, i64 }

@BLOCK_FLAG_TYPE_I = common dso_local global i32 0, align 4
@X264_TYPE_P = common dso_local global i64 0, align 8
@X264_TYPE_I = common dso_local global i64 0, align 8
@BLOCK_FLAG_TYPE_P = common dso_local global i32 0, align 4
@BLOCK_FLAG_TYPE_B = common dso_local global i32 0, align 4
@BLOCK_FLAG_TYPE_PB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_22__* (%struct.TYPE_31__*, %struct.TYPE_30__*)* @Encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_22__* @Encode(%struct.TYPE_31__* %0, %struct.TYPE_30__* %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_31__*, align 8
  %5 = alloca %struct.TYPE_30__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_28__, align 8
  %8 = alloca %struct.TYPE_29__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %4, align 8
  store %struct.TYPE_30__* %1, %struct.TYPE_30__** %5, align 8
  %14 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  store %struct.TYPE_21__* %16, %struct.TYPE_21__** %6, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %17 = call i32 @x264_picture_init(%struct.TYPE_28__* %7)
  %18 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %19 = call i64 @likely(%struct.TYPE_30__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %79

21:                                               ; preds = %2
  %22 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %7, i32 0, i32 2
  store i32 %24, i32* %25, align 4
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %7, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %7, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  store i32 0, i32* %12, align 4
  br label %36

36:                                               ; preds = %71, %21
  %37 = load i32, i32* %12, align 4
  %38 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %74

42:                                               ; preds = %36
  %43 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %44, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %7, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %50, i32* %56, align 4
  %57 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %58, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %7, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %64, i32* %70, align 4
  br label %71

71:                                               ; preds = %42
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %12, align 4
  br label %36

74:                                               ; preds = %36
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @x264_encoder_encode(i32 %77, %struct.TYPE_29__** %8, i32* %10, %struct.TYPE_28__* %7, %struct.TYPE_28__* %7)
  br label %97

79:                                               ; preds = %2
  br label %80

80:                                               ; preds = %91, %79
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @x264_encoder_delayed_frames(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load i32, i32* %10, align 4
  %88 = icmp eq i32 %87, 0
  br label %89

89:                                               ; preds = %86, %80
  %90 = phi i1 [ false, %80 ], [ %88, %86 ]
  br i1 %90, label %91, label %96

91:                                               ; preds = %89
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @x264_encoder_encode(i32 %94, %struct.TYPE_29__** %8, i32* %10, %struct.TYPE_28__* null, %struct.TYPE_28__* %7)
  br label %80

96:                                               ; preds = %89
  br label %97

97:                                               ; preds = %96, %74
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %97
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %245

101:                                              ; preds = %97
  store i32 0, i32* %12, align 4
  br label %102

102:                                              ; preds = %117, %101
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %120

106:                                              ; preds = %102
  %107 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %108 = load i32, i32* %12, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 %114, %112
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %11, align 4
  br label %117

117:                                              ; preds = %106
  %118 = load i32, i32* %12, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %12, align 4
  br label %102

120:                                              ; preds = %102
  %121 = load i32, i32* %11, align 4
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %121, %124
  %126 = call %struct.TYPE_22__* @block_Alloc(i32 %125)
  store %struct.TYPE_22__* %126, %struct.TYPE_22__** %9, align 8
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %128 = icmp ne %struct.TYPE_22__* %127, null
  br i1 %128, label %130, label %129

129:                                              ; preds = %120
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %245

130:                                              ; preds = %120
  store i32 0, i32* %13, align 4
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i64 @unlikely(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %158

136:                                              ; preds = %130
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %137, i32 0, i32 4
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 2
  %142 = load i32*, i32** %141, align 8
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @memcpy(i64 %139, i32* %142, i32 %145)
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  store i32 %149, i32* %13, align 4
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i32 0, i32 0
  store i32 0, i32* %151, align 8
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = call i32 @free(i32* %154)
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 2
  store i32* null, i32** %157, align 8
  br label %158

158:                                              ; preds = %136, %130
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %159, i32 0, i32 4
  %161 = load i64, i64* %160, align 8
  %162 = load i32, i32* %13, align 4
  %163 = zext i32 %162 to i64
  %164 = add nsw i64 %161, %163
  %165 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %165, i64 0
  %167 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %11, align 4
  %170 = call i32 @memcpy(i64 %164, i32* %168, i32 %169)
  %171 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %7, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %158
  %175 = load i32, i32* @BLOCK_FLAG_TYPE_I, align 4
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %177 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = or i32 %178, %175
  store i32 %179, i32* %177, align 4
  br label %215

180:                                              ; preds = %158
  %181 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %7, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @X264_TYPE_P, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %190, label %185

185:                                              ; preds = %180
  %186 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %7, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @X264_TYPE_I, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %196

190:                                              ; preds = %185, %180
  %191 = load i32, i32* @BLOCK_FLAG_TYPE_P, align 4
  %192 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %193 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = or i32 %194, %191
  store i32 %195, i32* %193, align 4
  br label %214

196:                                              ; preds = %185
  %197 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %7, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = call i64 @IS_X264_TYPE_B(i64 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %196
  %202 = load i32, i32* @BLOCK_FLAG_TYPE_B, align 4
  %203 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %204 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  %206 = or i32 %205, %202
  store i32 %206, i32* %204, align 4
  br label %213

207:                                              ; preds = %196
  %208 = load i32, i32* @BLOCK_FLAG_TYPE_PB, align 4
  %209 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %210 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = or i32 %211, %208
  store i32 %212, i32* %210, align 4
  br label %213

213:                                              ; preds = %207, %201
  br label %214

214:                                              ; preds = %213, %190
  br label %215

215:                                              ; preds = %214, %174
  %216 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %235, label %221

221:                                              ; preds = %215
  %222 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @vlc_tick_from_samples(i32 %226, i32 %231)
  %233 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %234 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %233, i32 0, i32 2
  store i32 %232, i32* %234, align 8
  br label %235

235:                                              ; preds = %221, %215
  %236 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %7, i32 0, i32 2
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %239 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %238, i32 0, i32 1
  store i32 %237, i32* %239, align 4
  %240 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %7, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %243 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %242, i32 0, i32 0
  store i32 %241, i32* %243, align 8
  %244 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  store %struct.TYPE_22__* %244, %struct.TYPE_22__** %3, align 8
  br label %245

245:                                              ; preds = %235, %129, %100
  %246 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  ret %struct.TYPE_22__* %246
}

declare dso_local i32 @x264_picture_init(%struct.TYPE_28__*) #1

declare dso_local i64 @likely(%struct.TYPE_30__*) #1

declare dso_local i32 @x264_encoder_encode(i32, %struct.TYPE_29__**, i32*, %struct.TYPE_28__*, %struct.TYPE_28__*) #1

declare dso_local i64 @x264_encoder_delayed_frames(i32) #1

declare dso_local %struct.TYPE_22__* @block_Alloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @IS_X264_TYPE_B(i64) #1

declare dso_local i32 @vlc_tick_from_samples(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
