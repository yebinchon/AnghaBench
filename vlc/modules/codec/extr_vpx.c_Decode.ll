; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_vpx.c_Decode.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_vpx.c_Decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_25__, %struct.TYPE_23__, %struct.TYPE_30__* }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i64, i32, i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_27__, i32 }
%struct.TYPE_27__ = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_30__ = type { %struct.vpx_codec_ctx }
%struct.vpx_codec_ctx = type { i32 }
%struct.TYPE_31__ = type { i32, i64, i64, i32, i32 }
%struct.vpx_image = type { i64*, i64, i64, i64, i64, i32*, i32**, i32 }
%struct.TYPE_28__ = type { i32, i32, i64, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32, i32, i32* }

@VLCDEC_SUCCESS = common dso_local global i32 0, align 4
@BLOCK_FLAG_CORRUPTED = common dso_local global i32 0, align 4
@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@VPX_CODEC_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Failed to decode frame\00", align 1
@VPX_CODEC_UNSUP_BITSTREAM = common dso_local global i64 0, align 8
@VLCDEC_ECRITICAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Unsupported output colorspace %d\00", align 1
@COLOR_PRIMARIES_UNDEF = common dso_local global i64 0, align 8
@vpx_color_mapping_table = common dso_local global %struct.TYPE_22__* null, align 8
@VPX_CR_FULL_RANGE = common dso_local global i64 0, align 8
@COLOR_RANGE_FULL = common dso_local global i32 0, align 4
@COLOR_RANGE_LIMITED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_29__*, %struct.TYPE_31__*)* @Decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Decode(%struct.TYPE_29__* %0, %struct.TYPE_31__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca %struct.TYPE_30__*, align 8
  %7 = alloca %struct.vpx_codec_ctx*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.vpx_image*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_27__*, align 8
  %14 = alloca %struct.TYPE_28__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %4, align 8
  store %struct.TYPE_31__* %1, %struct.TYPE_31__** %5, align 8
  %22 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_30__*, %struct.TYPE_30__** %23, align 8
  store %struct.TYPE_30__* %24, %struct.TYPE_30__** %6, align 8
  %25 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %25, i32 0, i32 0
  store %struct.vpx_codec_ctx* %26, %struct.vpx_codec_ctx** %7, align 8
  %27 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %28 = icmp eq %struct.TYPE_31__* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %30, i32* %3, align 4
  br label %372

31:                                               ; preds = %2
  %32 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %40 = call i32 @block_Release(%struct.TYPE_31__* %39)
  %41 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %41, i32* %3, align 4
  br label %372

42:                                               ; preds = %31
  %43 = call i64* @malloc(i32 8)
  store i64* %43, i64** %8, align 8
  %44 = load i64*, i64** %8, align 8
  %45 = icmp ne i64* %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %48 = call i32 @block_Release(%struct.TYPE_31__* %47)
  %49 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %49, i32* %3, align 4
  br label %372

50:                                               ; preds = %42
  %51 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @VLC_TICK_INVALID, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  br label %64

60:                                               ; preds = %50
  %61 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  br label %64

64:                                               ; preds = %60, %56
  %65 = phi i64 [ %59, %56 ], [ %63, %60 ]
  %66 = load i64*, i64** %8, align 8
  store i64 %65, i64* %66, align 8
  %67 = load %struct.vpx_codec_ctx*, %struct.vpx_codec_ctx** %7, align 8
  %68 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = load i64*, i64** %8, align 8
  %75 = call i64 @vpx_codec_decode(%struct.vpx_codec_ctx* %67, i32 %70, i32 %73, i64* %74, i32 0)
  store i64 %75, i64* %9, align 8
  %76 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %77 = call i32 @block_Release(%struct.TYPE_31__* %76)
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* @VPX_CODEC_OK, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %64
  %82 = load i64*, i64** %8, align 8
  %83 = call i32 @free(i64* %82)
  %84 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %85 = load %struct.vpx_codec_ctx*, %struct.vpx_codec_ctx** %7, align 8
  %86 = call i32 @VPX_ERR(%struct.TYPE_29__* %84, %struct.vpx_codec_ctx* %85, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %87 = load i64, i64* %9, align 8
  %88 = load i64, i64* @VPX_CODEC_UNSUP_BITSTREAM, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %81
  %91 = load i32, i32* @VLCDEC_ECRITICAL, align 4
  store i32 %91, i32* %3, align 4
  br label %372

92:                                               ; preds = %81
  %93 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %93, i32* %3, align 4
  br label %372

94:                                               ; preds = %64
  store i8* null, i8** %10, align 8
  %95 = load %struct.vpx_codec_ctx*, %struct.vpx_codec_ctx** %7, align 8
  %96 = call %struct.vpx_image* @vpx_codec_get_frame(%struct.vpx_codec_ctx* %95, i8** %10)
  store %struct.vpx_image* %96, %struct.vpx_image** %11, align 8
  %97 = load %struct.vpx_image*, %struct.vpx_image** %11, align 8
  %98 = icmp ne %struct.vpx_image* %97, null
  br i1 %98, label %103, label %99

99:                                               ; preds = %94
  %100 = load i64*, i64** %8, align 8
  %101 = call i32 @free(i64* %100)
  %102 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %102, i32* %3, align 4
  br label %372

103:                                              ; preds = %94
  %104 = load %struct.vpx_image*, %struct.vpx_image** %11, align 8
  %105 = getelementptr inbounds %struct.vpx_image, %struct.vpx_image* %104, i32 0, i32 0
  %106 = load i64*, i64** %105, align 8
  store i64* %106, i64** %8, align 8
  %107 = load i64*, i64** %8, align 8
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %12, align 8
  %109 = load i64*, i64** %8, align 8
  %110 = call i32 @free(i64* %109)
  %111 = load %struct.vpx_image*, %struct.vpx_image** %11, align 8
  %112 = call i32 @FindVlcChroma(%struct.vpx_image* %111)
  %113 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 1
  store i32 %112, i32* %115, align 8
  %116 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %103
  %122 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %123 = load %struct.vpx_image*, %struct.vpx_image** %11, align 8
  %124 = getelementptr inbounds %struct.vpx_image, %struct.vpx_image* %123, i32 0, i32 7
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @msg_Err(%struct.TYPE_29__* %122, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %127, i32* %3, align 4
  br label %372

128:                                              ; preds = %103
  %129 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %130, i32 0, i32 0
  store %struct.TYPE_27__* %131, %struct.TYPE_27__** %13, align 8
  %132 = load %struct.vpx_image*, %struct.vpx_image** %11, align 8
  %133 = getelementptr inbounds %struct.vpx_image, %struct.vpx_image* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %134, %137
  br i1 %138, label %147, label %139

139:                                              ; preds = %128
  %140 = load %struct.vpx_image*, %struct.vpx_image** %11, align 8
  %141 = getelementptr inbounds %struct.vpx_image, %struct.vpx_image* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %144 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %142, %145
  br i1 %146, label %147, label %166

147:                                              ; preds = %139, %128
  %148 = load %struct.vpx_image*, %struct.vpx_image** %11, align 8
  %149 = getelementptr inbounds %struct.vpx_image, %struct.vpx_image* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %153, i32 0, i32 2
  store i64 %150, i64* %154, align 8
  %155 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %155, i32 0, i32 0
  store i64 %150, i64* %156, align 8
  %157 = load %struct.vpx_image*, %struct.vpx_image** %11, align 8
  %158 = getelementptr inbounds %struct.vpx_image, %struct.vpx_image* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %162, i32 0, i32 3
  store i64 %159, i64* %163, align 8
  %164 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %165 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %164, i32 0, i32 1
  store i64 %159, i64* %165, align 8
  br label %166

166:                                              ; preds = %147, %139
  %167 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 8
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %166
  %174 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %176, i32 0, i32 5
  %178 = load i32, i32* %177, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %189, label %180

180:                                              ; preds = %173, %166
  %181 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %183, i32 0, i32 4
  store i32 1, i32* %184, align 8
  %185 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %187, i32 0, i32 5
  store i32 1, i32* %188, align 4
  br label %189

189:                                              ; preds = %180, %173
  %190 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @COLOR_PRIMARIES_UNDEF, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %250

197:                                              ; preds = %189
  %198 = load %struct.vpx_image*, %struct.vpx_image** %11, align 8
  %199 = getelementptr inbounds %struct.vpx_image, %struct.vpx_image* %198, i32 0, i32 3
  %200 = load i64, i64* %199, align 8
  %201 = icmp uge i64 %200, 0
  br i1 %201, label %202, label %250

202:                                              ; preds = %197
  %203 = load %struct.vpx_image*, %struct.vpx_image** %11, align 8
  %204 = getelementptr inbounds %struct.vpx_image, %struct.vpx_image* %203, i32 0, i32 3
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.TYPE_22__*, %struct.TYPE_22__** @vpx_color_mapping_table, align 8
  %207 = call i64 @ARRAY_SIZE(%struct.TYPE_22__* %206)
  %208 = icmp ult i64 %205, %207
  br i1 %208, label %209, label %250

209:                                              ; preds = %202
  %210 = load %struct.TYPE_22__*, %struct.TYPE_22__** @vpx_color_mapping_table, align 8
  %211 = load %struct.vpx_image*, %struct.vpx_image** %11, align 8
  %212 = getelementptr inbounds %struct.vpx_image, %struct.vpx_image* %211, i32 0, i32 3
  %213 = load i64, i64* %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %210, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %218 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %217, i32 0, i32 12
  store i32 %216, i32* %218, align 8
  %219 = load %struct.TYPE_22__*, %struct.TYPE_22__** @vpx_color_mapping_table, align 8
  %220 = load %struct.vpx_image*, %struct.vpx_image** %11, align 8
  %221 = getelementptr inbounds %struct.vpx_image, %struct.vpx_image* %220, i32 0, i32 3
  %222 = load i64, i64* %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %219, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %227 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %226, i32 0, i32 11
  store i32 %225, i32* %227, align 4
  %228 = load %struct.TYPE_22__*, %struct.TYPE_22__** @vpx_color_mapping_table, align 8
  %229 = load %struct.vpx_image*, %struct.vpx_image** %11, align 8
  %230 = getelementptr inbounds %struct.vpx_image, %struct.vpx_image* %229, i32 0, i32 3
  %231 = load i64, i64* %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %228, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %236 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %235, i32 0, i32 10
  store i32 %234, i32* %236, align 8
  %237 = load %struct.vpx_image*, %struct.vpx_image** %11, align 8
  %238 = getelementptr inbounds %struct.vpx_image, %struct.vpx_image* %237, i32 0, i32 4
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @VPX_CR_FULL_RANGE, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %244

242:                                              ; preds = %209
  %243 = load i32, i32* @COLOR_RANGE_FULL, align 4
  br label %246

244:                                              ; preds = %209
  %245 = load i32, i32* @COLOR_RANGE_LIMITED, align 4
  br label %246

246:                                              ; preds = %244, %242
  %247 = phi i32 [ %243, %242 ], [ %245, %244 ]
  %248 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %249 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %248, i32 0, i32 9
  store i32 %247, i32* %249, align 4
  br label %250

250:                                              ; preds = %246, %202, %197, %189
  %251 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %253, i32 0, i32 3
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %258, i32 0, i32 8
  store i32 %255, i32* %259, align 8
  %260 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %267, i32 0, i32 7
  store i32 %264, i32* %268, align 4
  %269 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %276, i32 0, i32 6
  store i32 %273, i32* %277, align 8
  %278 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %279 = call i64 @decoder_UpdateVideoFormat(%struct.TYPE_29__* %278)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %283

281:                                              ; preds = %250
  %282 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %282, i32* %3, align 4
  br label %372

283:                                              ; preds = %250
  %284 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %285 = call %struct.TYPE_28__* @decoder_NewPicture(%struct.TYPE_29__* %284)
  store %struct.TYPE_28__* %285, %struct.TYPE_28__** %14, align 8
  %286 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %287 = icmp ne %struct.TYPE_28__* %286, null
  br i1 %287, label %290, label %288

288:                                              ; preds = %283
  %289 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %289, i32* %3, align 4
  br label %372

290:                                              ; preds = %283
  store i32 0, i32* %15, align 4
  br label %291

291:                                              ; preds = %359, %290
  %292 = load i32, i32* %15, align 4
  %293 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %294 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = icmp slt i32 %292, %295
  br i1 %296, label %297, label %362

297:                                              ; preds = %291
  %298 = load %struct.vpx_image*, %struct.vpx_image** %11, align 8
  %299 = getelementptr inbounds %struct.vpx_image, %struct.vpx_image* %298, i32 0, i32 6
  %300 = load i32**, i32*** %299, align 8
  %301 = load i32, i32* %15, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32*, i32** %300, i64 %302
  %304 = load i32*, i32** %303, align 8
  store i32* %304, i32** %16, align 8
  %305 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %306 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %305, i32 0, i32 3
  %307 = load %struct.TYPE_26__*, %struct.TYPE_26__** %306, align 8
  %308 = load i32, i32* %15, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %307, i64 %309
  %311 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %310, i32 0, i32 2
  %312 = load i32*, i32** %311, align 8
  store i32* %312, i32** %17, align 8
  %313 = load %struct.vpx_image*, %struct.vpx_image** %11, align 8
  %314 = getelementptr inbounds %struct.vpx_image, %struct.vpx_image* %313, i32 0, i32 5
  %315 = load i32*, i32** %314, align 8
  %316 = load i32, i32* %15, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %315, i64 %317
  %319 = load i32, i32* %318, align 4
  store i32 %319, i32* %18, align 4
  %320 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %321 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %320, i32 0, i32 3
  %322 = load %struct.TYPE_26__*, %struct.TYPE_26__** %321, align 8
  %323 = load i32, i32* %15, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %322, i64 %324
  %326 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  store i32 %327, i32* %19, align 4
  %328 = load i32, i32* %18, align 4
  %329 = load i32, i32* %19, align 4
  %330 = call i32 @__MIN(i32 %328, i32 %329)
  store i32 %330, i32* %20, align 4
  store i32 0, i32* %21, align 4
  br label %331

331:                                              ; preds = %355, %297
  %332 = load i32, i32* %21, align 4
  %333 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %334 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %333, i32 0, i32 3
  %335 = load %struct.TYPE_26__*, %struct.TYPE_26__** %334, align 8
  %336 = load i32, i32* %15, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %335, i64 %337
  %339 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = icmp slt i32 %332, %340
  br i1 %341, label %342, label %358

342:                                              ; preds = %331
  %343 = load i32*, i32** %17, align 8
  %344 = load i32*, i32** %16, align 8
  %345 = load i32, i32* %20, align 4
  %346 = call i32 @memcpy(i32* %343, i32* %344, i32 %345)
  %347 = load i32, i32* %18, align 4
  %348 = load i32*, i32** %16, align 8
  %349 = sext i32 %347 to i64
  %350 = getelementptr inbounds i32, i32* %348, i64 %349
  store i32* %350, i32** %16, align 8
  %351 = load i32, i32* %19, align 4
  %352 = load i32*, i32** %17, align 8
  %353 = sext i32 %351 to i64
  %354 = getelementptr inbounds i32, i32* %352, i64 %353
  store i32* %354, i32** %17, align 8
  br label %355

355:                                              ; preds = %342
  %356 = load i32, i32* %21, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %21, align 4
  br label %331

358:                                              ; preds = %331
  br label %359

359:                                              ; preds = %358
  %360 = load i32, i32* %15, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %15, align 4
  br label %291

362:                                              ; preds = %291
  %363 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %364 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %363, i32 0, i32 1
  store i32 1, i32* %364, align 4
  %365 = load i64, i64* %12, align 8
  %366 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %367 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %366, i32 0, i32 2
  store i64 %365, i64* %367, align 8
  %368 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %369 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %370 = call i32 @decoder_QueueVideo(%struct.TYPE_29__* %368, %struct.TYPE_28__* %369)
  %371 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %371, i32* %3, align 4
  br label %372

372:                                              ; preds = %362, %288, %281, %121, %99, %92, %90, %46, %38, %29
  %373 = load i32, i32* %3, align 4
  ret i32 %373
}

declare dso_local i32 @block_Release(%struct.TYPE_31__*) #1

declare dso_local i64* @malloc(i32) #1

declare dso_local i64 @vpx_codec_decode(%struct.vpx_codec_ctx*, i32, i32, i64*, i32) #1

declare dso_local i32 @free(i64*) #1

declare dso_local i32 @VPX_ERR(%struct.TYPE_29__*, %struct.vpx_codec_ctx*, i8*) #1

declare dso_local %struct.vpx_image* @vpx_codec_get_frame(%struct.vpx_codec_ctx*, i8**) #1

declare dso_local i32 @FindVlcChroma(%struct.vpx_image*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_29__*, i8*, i32) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_22__*) #1

declare dso_local i64 @decoder_UpdateVideoFormat(%struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_28__* @decoder_NewPicture(%struct.TYPE_29__*) #1

declare dso_local i32 @__MIN(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @decoder_QueueVideo(%struct.TYPE_29__*, %struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
