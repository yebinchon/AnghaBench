; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_direct3d11.c_SetupOutputFormat.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_direct3d11.c_SetupOutputFormat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { %struct.TYPE_28__, %struct.TYPE_27__ }
%struct.TYPE_28__ = type { i8* }
%struct.TYPE_27__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, i64, i32 }
%struct.TYPE_32__ = type { i64 }
%struct.TYPE_31__ = type { i32, i32, i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.TYPE_25__, %struct.TYPE_24__ }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"Could not get a suitable texture pixel format\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Using pixel format %s for chroma %4.4s\00", align 1
@VLC_CODEC_RGBA = common dso_local global i32 0, align 4
@VLC_CODEC_BGRA = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_29__*, %struct.TYPE_32__*)* @SetupOutputFormat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SetupOutputFormat(%struct.TYPE_29__* %0, %struct.TYPE_32__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca %struct.TYPE_32__*, align 8
  %6 = alloca %struct.TYPE_30__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_31__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %4, align 8
  store %struct.TYPE_32__* %1, %struct.TYPE_32__** %5, align 8
  %14 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  store %struct.TYPE_30__* %16, %struct.TYPE_30__** %6, align 8
  %17 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %18 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call %struct.TYPE_23__* @GetDirectRenderingFormat(%struct.TYPE_29__* %17, i64 %20)
  %22 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %23, i32 0, i32 0
  store %struct.TYPE_23__* %21, %struct.TYPE_23__** %24, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %7, align 8
  %25 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %29 = icmp ne %struct.TYPE_23__* %28, null
  br i1 %29, label %182, label %30

30:                                               ; preds = %2
  %31 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  switch i64 %33, label %38 [
    i64 134, label %34
    i64 130, label %34
    i64 131, label %35
    i64 132, label %35
    i64 133, label %36
    i64 129, label %36
    i64 128, label %37
  ]

34:                                               ; preds = %30, %30
  store i32 8, i32* %8, align 4
  store i32 2, i32* %10, align 4
  store i32 2, i32* %9, align 4
  br label %122

35:                                               ; preds = %30, %30
  store i32 8, i32* %8, align 4
  store i32 1, i32* %10, align 4
  store i32 1, i32* %9, align 4
  br label %122

36:                                               ; preds = %30, %30
  store i32 10, i32* %8, align 4
  store i32 2, i32* %10, align 4
  store i32 2, i32* %9, align 4
  br label %122

37:                                               ; preds = %30
  store i32 16, i32* %8, align 4
  store i32 2, i32* %10, align 4
  store i32 2, i32* %9, align 4
  br label %122

38:                                               ; preds = %30
  %39 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call %struct.TYPE_31__* @vlc_fourcc_GetChromaDescription(i64 %41)
  store %struct.TYPE_31__* %42, %struct.TYPE_31__** %11, align 8
  %43 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %44 = icmp eq %struct.TYPE_31__* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i32 8, i32* %8, align 4
  store i32 2, i32* %10, align 4
  store i32 2, i32* %9, align 4
  br label %121

46:                                               ; preds = %38
  %47 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %68

52:                                               ; preds = %46
  %53 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  br label %65

64:                                               ; preds = %52
  br label %65

65:                                               ; preds = %64, %60
  %66 = phi i32 [ %63, %60 ], [ 1, %64 ]
  %67 = sdiv i32 %55, %66
  br label %68

68:                                               ; preds = %65, %51
  %69 = phi i32 [ 8, %51 ], [ %67, %65 ]
  store i32 %69, i32* %8, align 4
  store i32 1, i32* %10, align 4
  store i32 1, i32* %9, align 4
  store i64 0, i64* %12, align 8
  br label %70

70:                                               ; preds = %117, %68
  %71 = load i64, i64* %12, align 8
  %72 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = icmp ult i64 %71, %75
  br i1 %76, label %77, label %120

77:                                               ; preds = %70
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %79, i32 0, i32 3
  %81 = load %struct.TYPE_26__*, %struct.TYPE_26__** %80, align 8
  %82 = load i64, i64* %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp slt i32 %78, %86
  br i1 %87, label %88, label %97

88:                                               ; preds = %77
  %89 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %89, i32 0, i32 3
  %91 = load %struct.TYPE_26__*, %struct.TYPE_26__** %90, align 8
  %92 = load i64, i64* %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %88, %77
  %98 = load i32, i32* %10, align 4
  %99 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %99, i32 0, i32 3
  %101 = load %struct.TYPE_26__*, %struct.TYPE_26__** %100, align 8
  %102 = load i64, i64* %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp slt i32 %98, %106
  br i1 %107, label %108, label %116

108:                                              ; preds = %97
  %109 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %109, i32 0, i32 3
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %111, i64 1
  %113 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %10, align 4
  br label %116

116:                                              ; preds = %108, %97
  br label %117

117:                                              ; preds = %116
  %118 = load i64, i64* %12, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %12, align 8
  br label %70

120:                                              ; preds = %70
  br label %121

121:                                              ; preds = %120, %45
  br label %122

122:                                              ; preds = %121, %37, %36, %35, %34
  %123 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = call i64 @is_d3d11_opaque(i64 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %122
  %129 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %130 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = call %struct.TYPE_23__* @GetDirectDecoderFormat(%struct.TYPE_29__* %129, i64 %132)
  store %struct.TYPE_23__* %133, %struct.TYPE_23__** %7, align 8
  br label %139

134:                                              ; preds = %122
  %135 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %137, align 8
  store %struct.TYPE_23__* %138, %struct.TYPE_23__** %7, align 8
  br label %139

139:                                              ; preds = %134, %128
  %140 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @vlc_fourcc_IsYUV(i64 %142)
  %144 = icmp ne i32 %143, 0
  %145 = xor i1 %144, true
  %146 = zext i1 %145 to i32
  store i32 %146, i32* %13, align 4
  %147 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* %10, align 4
  %151 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %152 = icmp ne %struct.TYPE_23__* %151, null
  %153 = zext i1 %152 to i32
  %154 = load i32, i32* %13, align 4
  %155 = call i8* @GetDisplayFormatByDepth(%struct.TYPE_29__* %147, i32 %148, i32 %149, i32 %150, i32 %153, i32 %154)
  %156 = bitcast i8* %155 to %struct.TYPE_23__*
  %157 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %158, i32 0, i32 0
  store %struct.TYPE_23__* %156, %struct.TYPE_23__** %159, align 8
  %160 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_23__*, %struct.TYPE_23__** %162, align 8
  %164 = icmp ne %struct.TYPE_23__* %163, null
  br i1 %164, label %181, label %165

165:                                              ; preds = %139
  %166 = load i32, i32* %13, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %181

168:                                              ; preds = %165
  %169 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %170 = load i32, i32* %8, align 4
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* %10, align 4
  %173 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %174 = icmp ne %struct.TYPE_23__* %173, null
  %175 = zext i1 %174 to i32
  %176 = call i8* @GetDisplayFormatByDepth(%struct.TYPE_29__* %169, i32 %170, i32 %171, i32 %172, i32 %175, i32 0)
  %177 = bitcast i8* %176 to %struct.TYPE_23__*
  %178 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %179, i32 0, i32 0
  store %struct.TYPE_23__* %177, %struct.TYPE_23__** %180, align 8
  br label %181

181:                                              ; preds = %168, %165, %139
  br label %182

182:                                              ; preds = %181, %2
  %183 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_23__*, %struct.TYPE_23__** %185, align 8
  %187 = icmp ne %struct.TYPE_23__* %186, null
  br i1 %187, label %195, label %188

188:                                              ; preds = %182
  %189 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %190 = call i8* @GetDisplayFormatByDepth(%struct.TYPE_29__* %189, i32 0, i32 0, i32 0, i32 0, i32 0)
  %191 = bitcast i8* %190 to %struct.TYPE_23__*
  %192 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %193, i32 0, i32 0
  store %struct.TYPE_23__* %191, %struct.TYPE_23__** %194, align 8
  br label %195

195:                                              ; preds = %188, %182
  %196 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %197, i32 0, i32 0
  %199 = load %struct.TYPE_23__*, %struct.TYPE_23__** %198, align 8
  %200 = icmp ne %struct.TYPE_23__* %199, null
  br i1 %200, label %205, label %201

201:                                              ; preds = %195
  %202 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %203 = call i32 @msg_Err(%struct.TYPE_29__* %202, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %204 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %204, i32* %3, align 4
  br label %262

205:                                              ; preds = %195
  %206 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %207 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %208, i32 0, i32 0
  %210 = load %struct.TYPE_23__*, %struct.TYPE_23__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %213, i32 0, i32 0
  %215 = bitcast i64* %214 to i8*
  %216 = call i32 @msg_Dbg(%struct.TYPE_29__* %206, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %212, i8* %215)
  %217 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %218 = icmp ne %struct.TYPE_23__* %217, null
  br i1 %218, label %219, label %223

219:                                              ; preds = %205
  %220 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  br label %230

223:                                              ; preds = %205
  %224 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %225, i32 0, i32 0
  %227 = load %struct.TYPE_23__*, %struct.TYPE_23__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  br label %230

230:                                              ; preds = %223, %219
  %231 = phi i64 [ %222, %219 ], [ %229, %223 ]
  %232 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %232, i32 0, i32 0
  store i64 %231, i64* %233, align 8
  %234 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %235, i32 0, i32 0
  %237 = load %struct.TYPE_23__*, %struct.TYPE_23__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %241 = call i32 @DxgiFormatMask(i32 %239, %struct.TYPE_32__* %240)
  %242 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %243 = load i32, i32* @VLC_CODEC_RGBA, align 4
  %244 = call i8* @GetBlendableFormat(%struct.TYPE_29__* %242, i32 %243)
  %245 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %246, i32 0, i32 0
  store i8* %244, i8** %247, align 8
  %248 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %249, i32 0, i32 0
  %251 = load i8*, i8** %250, align 8
  %252 = icmp ne i8* %251, null
  br i1 %252, label %260, label %253

253:                                              ; preds = %230
  %254 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %255 = load i32, i32* @VLC_CODEC_BGRA, align 4
  %256 = call i8* @GetBlendableFormat(%struct.TYPE_29__* %254, i32 %255)
  %257 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %258, i32 0, i32 0
  store i8* %256, i8** %259, align 8
  br label %260

260:                                              ; preds = %253, %230
  %261 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %261, i32* %3, align 4
  br label %262

262:                                              ; preds = %260, %201
  %263 = load i32, i32* %3, align 4
  ret i32 %263
}

declare dso_local %struct.TYPE_23__* @GetDirectRenderingFormat(%struct.TYPE_29__*, i64) #1

declare dso_local %struct.TYPE_31__* @vlc_fourcc_GetChromaDescription(i64) #1

declare dso_local i64 @is_d3d11_opaque(i64) #1

declare dso_local %struct.TYPE_23__* @GetDirectDecoderFormat(%struct.TYPE_29__*, i64) #1

declare dso_local i32 @vlc_fourcc_IsYUV(i64) #1

declare dso_local i8* @GetDisplayFormatByDepth(%struct.TYPE_29__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_29__*, i8*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_29__*, i8*, i32, i8*) #1

declare dso_local i32 @DxgiFormatMask(i32, %struct.TYPE_32__*) #1

declare dso_local i8* @GetBlendableFormat(%struct.TYPE_29__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
