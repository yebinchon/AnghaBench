; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_heif.c_SetPictureProperties.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_heif.c_SetPictureProperties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i64 }
%struct.TYPE_31__ = type { i32, %struct.TYPE_27__, i32, i8* }
%struct.TYPE_27__ = type { i32, i32, %struct.TYPE_39__, %struct.TYPE_37__, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_39__ = type { i32, i32, i8*, i8* }
%struct.TYPE_37__ = type { i32, i32 }
%struct.TYPE_33__ = type { i32, %struct.TYPE_30__ }
%struct.TYPE_30__ = type { %struct.TYPE_40__*, %struct.TYPE_38__*, %struct.TYPE_36__*, %struct.TYPE_29__*, %struct.TYPE_28__*, %struct.TYPE_26__*, %struct.TYPE_25__*, %struct.TYPE_43__* }
%struct.TYPE_40__ = type { i32, i32, i32, i32 }
%struct.TYPE_38__ = type { i32, i32 }
%struct.TYPE_36__ = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { i32, i32, i32, i32 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_28__ = type { i32, i32 }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_43__ = type { i32, i32 }
%struct.heif_private_t = type { i32, i32 }
%struct.TYPE_35__ = type { i64, %struct.TYPE_42__* }
%struct.TYPE_42__ = type { i64, i64, %struct.TYPE_41__* }
%struct.TYPE_41__ = type { i64 }

@.str = private unnamed_addr constant [15 x i8] c"meta/iprp/ipma\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"meta/iprp/ipco/[%u]\00", align 1
@VLC_CODEC_HEVC = common dso_local global i32 0, align 4
@VLC_CODEC_H264 = common dso_local global i32 0, align 4
@VLC_CODEC_AV1 = common dso_local global i32 0, align 4
@VLC_CODEC_JPEG = common dso_local global i32 0, align 4
@ORIENT_NORMAL = common dso_local global i32 0, align 4
@ORIENT_ROTATED_90 = common dso_local global i32 0, align 4
@ORIENT_ROTATED_180 = common dso_local global i32 0, align 4
@ORIENT_ROTATED_270 = common dso_local global i32 0, align 4
@COLOR_RANGE_FULL = common dso_local global i32 0, align 4
@COLOR_RANGE_LIMITED = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_32__*, i64, %struct.TYPE_31__*, %struct.TYPE_33__**)* @SetPictureProperties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SetPictureProperties(%struct.TYPE_32__* %0, i64 %1, %struct.TYPE_31__* %2, %struct.TYPE_33__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_32__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_31__*, align 8
  %9 = alloca %struct.TYPE_33__**, align 8
  %10 = alloca %struct.heif_private_t*, align 8
  %11 = alloca %struct.TYPE_33__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_33__*, align 8
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_31__* %2, %struct.TYPE_31__** %8, align 8
  store %struct.TYPE_33__** %3, %struct.TYPE_33__*** %9, align 8
  %15 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = bitcast i8* %18 to %struct.heif_private_t*
  store %struct.heif_private_t* %19, %struct.heif_private_t** %10, align 8
  %20 = load %struct.heif_private_t*, %struct.heif_private_t** %10, align 8
  %21 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.TYPE_33__* (i32, i8*, ...) @MP4_BoxGet(i32 %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_33__* %23, %struct.TYPE_33__** %11, align 8
  %24 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %25 = icmp ne %struct.TYPE_33__* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %27, i32* %5, align 4
  br label %460

28:                                               ; preds = %4
  store i64 0, i64* %12, align 8
  br label %29

29:                                               ; preds = %445, %28
  %30 = load i64, i64* %12, align 8
  %31 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %32 = call %struct.TYPE_35__* @BOXDATA(%struct.TYPE_33__* %31)
  %33 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ult i64 %30, %34
  br i1 %35, label %36, label %448

36:                                               ; preds = %29
  %37 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %38 = call %struct.TYPE_35__* @BOXDATA(%struct.TYPE_33__* %37)
  %39 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_42__*, %struct.TYPE_42__** %39, align 8
  %41 = load i64, i64* %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %7, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  br label %445

48:                                               ; preds = %36
  store i64 0, i64* %13, align 8
  br label %49

49:                                               ; preds = %441, %48
  %50 = load i64, i64* %13, align 8
  %51 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %52 = call %struct.TYPE_35__* @BOXDATA(%struct.TYPE_33__* %51)
  %53 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_42__*, %struct.TYPE_42__** %53, align 8
  %55 = load i64, i64* %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ult i64 %50, %58
  br i1 %59, label %60, label %444

60:                                               ; preds = %49
  %61 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %62 = call %struct.TYPE_35__* @BOXDATA(%struct.TYPE_33__* %61)
  %63 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_42__*, %struct.TYPE_42__** %63, align 8
  %65 = load i64, i64* %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_41__*, %struct.TYPE_41__** %67, align 8
  %69 = load i64, i64* %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %60
  br label %441

75:                                               ; preds = %60
  %76 = load %struct.heif_private_t*, %struct.heif_private_t** %10, align 8
  %77 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %80 = call %struct.TYPE_35__* @BOXDATA(%struct.TYPE_33__* %79)
  %81 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_42__*, %struct.TYPE_42__** %81, align 8
  %83 = load i64, i64* %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_41__*, %struct.TYPE_41__** %85, align 8
  %87 = load i64, i64* %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = sub nsw i64 %90, 1
  %92 = call %struct.TYPE_33__* (i32, i8*, ...) @MP4_BoxGet(i32 %78, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %91)
  store %struct.TYPE_33__* %92, %struct.TYPE_33__** %14, align 8
  %93 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %94 = icmp ne %struct.TYPE_33__* %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %75
  br label %441

96:                                               ; preds = %75
  %97 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  switch i32 %99, label %440 [
    i32 133, label %100
    i32 136, label %100
    i32 137, label %171
    i32 130, label %228
    i32 131, label %238
    i32 128, label %257
    i32 132, label %293
    i32 134, label %323
    i32 135, label %374
    i32 129, label %395
  ]

100:                                              ; preds = %96, %96
  %101 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %101, i32 0, i32 3
  %103 = load i8*, i8** %102, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %170, label %105

105:                                              ; preds = %100
  %106 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %107, i32 0, i32 7
  %109 = load %struct.TYPE_43__*, %struct.TYPE_43__** %108, align 8
  %110 = icmp ne %struct.TYPE_43__* %109, null
  br i1 %110, label %111, label %170

111:                                              ; preds = %105
  %112 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @VLC_CODEC_HEVC, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %111
  %118 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %119 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp eq i32 %120, 133
  br i1 %121, label %133, label %122

122:                                              ; preds = %117, %111
  %123 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @VLC_CODEC_H264, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %170

128:                                              ; preds = %122
  %129 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp eq i32 %131, 136
  br i1 %132, label %133, label %170

133:                                              ; preds = %128, %117
  %134 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %135 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %135, i32 0, i32 7
  %137 = load %struct.TYPE_43__*, %struct.TYPE_43__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i8* @malloc(i32 %139)
  %141 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %141, i32 0, i32 3
  store i8* %140, i8** %142, align 8
  %143 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %143, i32 0, i32 3
  %145 = load i8*, i8** %144, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %147, label %169

147:                                              ; preds = %133
  %148 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %149 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %149, i32 0, i32 7
  %151 = load %struct.TYPE_43__*, %struct.TYPE_43__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 8
  %156 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %156, i32 0, i32 3
  %158 = load i8*, i8** %157, align 8
  %159 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %160 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %160, i32 0, i32 7
  %162 = load %struct.TYPE_43__*, %struct.TYPE_43__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @memcpy(i8* %158, i32 %164, i32 %167)
  br label %169

169:                                              ; preds = %147, %133
  br label %170

170:                                              ; preds = %169, %128, %122, %105, %100
  br label %440

171:                                              ; preds = %96
  %172 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @VLC_CODEC_AV1, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %227

177:                                              ; preds = %171
  %178 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %227, label %182

182:                                              ; preds = %177
  %183 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %184 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %184, i32 0, i32 6
  %186 = load %struct.TYPE_25__*, %struct.TYPE_25__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = icmp sge i32 %188, 4
  br i1 %189, label %190, label %227

190:                                              ; preds = %182
  %191 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %192 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %192, i32 0, i32 6
  %194 = load %struct.TYPE_25__*, %struct.TYPE_25__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call i8* @malloc(i32 %196)
  %198 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %198, i32 0, i32 3
  store i8* %197, i8** %199, align 8
  %200 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %200, i32 0, i32 3
  %202 = load i8*, i8** %201, align 8
  %203 = icmp ne i8* %202, null
  br i1 %203, label %204, label %226

204:                                              ; preds = %190
  %205 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %206 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %206, i32 0, i32 6
  %208 = load %struct.TYPE_25__*, %struct.TYPE_25__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %211, i32 0, i32 0
  store i32 %210, i32* %212, align 8
  %213 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %213, i32 0, i32 3
  %215 = load i8*, i8** %214, align 8
  %216 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %217 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %217, i32 0, i32 6
  %219 = load %struct.TYPE_25__*, %struct.TYPE_25__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @memcpy(i8* %215, i32 %221, i32 %224)
  br label %226

226:                                              ; preds = %204, %190
  br label %227

227:                                              ; preds = %226, %182, %177, %171
  br label %440

228:                                              ; preds = %96
  %229 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %230 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* @VLC_CODEC_JPEG, align 4
  %233 = icmp eq i32 %231, %232
  br i1 %233, label %234, label %237

234:                                              ; preds = %228
  %235 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %236 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %9, align 8
  store %struct.TYPE_33__* %235, %struct.TYPE_33__** %236, align 8
  br label %237

237:                                              ; preds = %234, %228
  br label %440

238:                                              ; preds = %96
  %239 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %240 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %240, i32 0, i32 5
  %242 = load %struct.TYPE_26__*, %struct.TYPE_26__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %246 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %246, i32 0, i32 12
  store i32 %244, i32* %247, align 8
  %248 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %249 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %249, i32 0, i32 5
  %251 = load %struct.TYPE_26__*, %struct.TYPE_26__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %255 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %255, i32 0, i32 11
  store i32 %253, i32* %256, align 4
  br label %440

257:                                              ; preds = %96
  %258 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %259 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %259, i32 0, i32 4
  %261 = load %struct.TYPE_28__*, %struct.TYPE_28__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %292

265:                                              ; preds = %257
  %266 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %267 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %267, i32 0, i32 4
  %269 = load %struct.TYPE_28__*, %struct.TYPE_28__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %292

273:                                              ; preds = %265
  %274 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %275 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %275, i32 0, i32 4
  %277 = load %struct.TYPE_28__*, %struct.TYPE_28__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %281 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %280, i32 0, i32 1
  %282 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %281, i32 0, i32 10
  store i32 %279, i32* %282, align 8
  %283 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %284 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %284, i32 0, i32 4
  %286 = load %struct.TYPE_28__*, %struct.TYPE_28__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %290 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %289, i32 0, i32 1
  %291 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %290, i32 0, i32 9
  store i32 %288, i32* %291, align 4
  br label %292

292:                                              ; preds = %273, %265, %257
  br label %440

293:                                              ; preds = %96
  %294 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %295 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %295, i32 0, i32 3
  %297 = load %struct.TYPE_29__*, %struct.TYPE_29__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = srem i32 %299, 360
  switch i32 %300, label %301 [
    i32 0, label %302
    i32 90, label %307
    i32 180, label %312
    i32 270, label %317
  ]

301:                                              ; preds = %293
  br label %302

302:                                              ; preds = %293, %301
  %303 = load i32, i32* @ORIENT_NORMAL, align 4
  %304 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %305 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %304, i32 0, i32 1
  %306 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %305, i32 0, i32 8
  store i32 %303, i32* %306, align 8
  br label %322

307:                                              ; preds = %293
  %308 = load i32, i32* @ORIENT_ROTATED_90, align 4
  %309 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %310 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %309, i32 0, i32 1
  %311 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %310, i32 0, i32 8
  store i32 %308, i32* %311, align 8
  br label %322

312:                                              ; preds = %293
  %313 = load i32, i32* @ORIENT_ROTATED_180, align 4
  %314 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %315 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %314, i32 0, i32 1
  %316 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %315, i32 0, i32 8
  store i32 %313, i32* %316, align 8
  br label %322

317:                                              ; preds = %293
  %318 = load i32, i32* @ORIENT_ROTATED_270, align 4
  %319 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %320 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %319, i32 0, i32 1
  %321 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %320, i32 0, i32 8
  store i32 %318, i32* %321, align 8
  br label %322

322:                                              ; preds = %317, %312, %307, %302
  br label %440

323:                                              ; preds = %96
  %324 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %325 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %324, i32 0, i32 1
  %326 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %325, i32 0, i32 2
  %327 = load %struct.TYPE_36__*, %struct.TYPE_36__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %328, i32 0, i32 3
  %330 = load i32, i32* %329, align 4
  %331 = call i32 @iso_23001_8_cp_to_vlc_primaries(i32 %330)
  %332 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %333 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %332, i32 0, i32 1
  %334 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %333, i32 0, i32 7
  store i32 %331, i32* %334, align 4
  %335 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %336 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %335, i32 0, i32 1
  %337 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %336, i32 0, i32 2
  %338 = load %struct.TYPE_36__*, %struct.TYPE_36__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %339, i32 0, i32 2
  %341 = load i32, i32* %340, align 4
  %342 = call i32 @iso_23001_8_tc_to_vlc_xfer(i32 %341)
  %343 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %344 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %343, i32 0, i32 1
  %345 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %344, i32 0, i32 6
  store i32 %342, i32* %345, align 8
  %346 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %347 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %346, i32 0, i32 1
  %348 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %347, i32 0, i32 2
  %349 = load %struct.TYPE_36__*, %struct.TYPE_36__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 4
  %353 = call i32 @iso_23001_8_mc_to_vlc_coeffs(i32 %352)
  %354 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %355 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %354, i32 0, i32 1
  %356 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %355, i32 0, i32 5
  store i32 %353, i32* %356, align 4
  %357 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %358 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %357, i32 0, i32 1
  %359 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %358, i32 0, i32 2
  %360 = load %struct.TYPE_36__*, %struct.TYPE_36__** %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %367

365:                                              ; preds = %323
  %366 = load i32, i32* @COLOR_RANGE_FULL, align 4
  br label %369

367:                                              ; preds = %323
  %368 = load i32, i32* @COLOR_RANGE_LIMITED, align 4
  br label %369

369:                                              ; preds = %367, %365
  %370 = phi i32 [ %366, %365 ], [ %368, %367 ]
  %371 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %372 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %371, i32 0, i32 1
  %373 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %372, i32 0, i32 4
  store i32 %370, i32* %373, align 8
  br label %440

374:                                              ; preds = %96
  %375 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %376 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %375, i32 0, i32 1
  %377 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %376, i32 0, i32 1
  %378 = load %struct.TYPE_38__*, %struct.TYPE_38__** %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %378, i32 0, i32 1
  %380 = load i32, i32* %379, align 4
  %381 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %382 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %381, i32 0, i32 1
  %383 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %382, i32 0, i32 3
  %384 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %383, i32 0, i32 1
  store i32 %380, i32* %384, align 4
  %385 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %386 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %385, i32 0, i32 1
  %387 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %386, i32 0, i32 1
  %388 = load %struct.TYPE_38__*, %struct.TYPE_38__** %387, align 8
  %389 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 4
  %391 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %392 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %391, i32 0, i32 1
  %393 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %392, i32 0, i32 3
  %394 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %393, i32 0, i32 0
  store i32 %390, i32* %394, align 8
  br label %440

395:                                              ; preds = %96
  %396 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %397 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %396, i32 0, i32 1
  %398 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %397, i32 0, i32 2
  %399 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %398, i32 0, i32 3
  %400 = load i8*, i8** %399, align 8
  %401 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %402 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %401, i32 0, i32 1
  %403 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %402, i32 0, i32 0
  %404 = load %struct.TYPE_40__*, %struct.TYPE_40__** %403, align 8
  %405 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %404, i32 0, i32 3
  %406 = load i32, i32* %405, align 4
  %407 = call i32 @memcpy(i8* %400, i32 %406, i32 24)
  %408 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %409 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %408, i32 0, i32 1
  %410 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %409, i32 0, i32 2
  %411 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %410, i32 0, i32 2
  %412 = load i8*, i8** %411, align 8
  %413 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %414 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %413, i32 0, i32 1
  %415 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %414, i32 0, i32 0
  %416 = load %struct.TYPE_40__*, %struct.TYPE_40__** %415, align 8
  %417 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %416, i32 0, i32 2
  %418 = load i32, i32* %417, align 4
  %419 = call i32 @memcpy(i8* %412, i32 %418, i32 8)
  %420 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %421 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %420, i32 0, i32 1
  %422 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %421, i32 0, i32 0
  %423 = load %struct.TYPE_40__*, %struct.TYPE_40__** %422, align 8
  %424 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %423, i32 0, i32 1
  %425 = load i32, i32* %424, align 4
  %426 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %427 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %426, i32 0, i32 1
  %428 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %427, i32 0, i32 2
  %429 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %428, i32 0, i32 1
  store i32 %425, i32* %429, align 4
  %430 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %431 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %430, i32 0, i32 1
  %432 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %431, i32 0, i32 0
  %433 = load %struct.TYPE_40__*, %struct.TYPE_40__** %432, align 8
  %434 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %433, i32 0, i32 0
  %435 = load i32, i32* %434, align 4
  %436 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %437 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %436, i32 0, i32 1
  %438 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %437, i32 0, i32 2
  %439 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %438, i32 0, i32 0
  store i32 %435, i32* %439, align 8
  br label %440

440:                                              ; preds = %96, %395, %374, %369, %322, %292, %238, %237, %227, %170
  br label %441

441:                                              ; preds = %440, %95, %74
  %442 = load i64, i64* %13, align 8
  %443 = add i64 %442, 1
  store i64 %443, i64* %13, align 8
  br label %49

444:                                              ; preds = %49
  br label %445

445:                                              ; preds = %444, %47
  %446 = load i64, i64* %12, align 8
  %447 = add i64 %446, 1
  store i64 %447, i64* %12, align 8
  br label %29

448:                                              ; preds = %29
  %449 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %450 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %449, i32 0, i32 1
  %451 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %450, i32 0, i32 0
  store i32 1000, i32* %451, align 8
  %452 = load %struct.heif_private_t*, %struct.heif_private_t** %10, align 8
  %453 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %452, i32 0, i32 0
  %454 = load i32, i32* %453, align 4
  %455 = sdiv i32 %454, 1000
  %456 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %457 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %456, i32 0, i32 1
  %458 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %457, i32 0, i32 1
  store i32 %455, i32* %458, align 4
  %459 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %459, i32* %5, align 4
  br label %460

460:                                              ; preds = %448, %26
  %461 = load i32, i32* %5, align 4
  ret i32 %461
}

declare dso_local %struct.TYPE_33__* @MP4_BoxGet(i32, i8*, ...) #1

declare dso_local %struct.TYPE_35__* @BOXDATA(%struct.TYPE_33__*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @iso_23001_8_cp_to_vlc_primaries(i32) #1

declare dso_local i32 @iso_23001_8_tc_to_vlc_xfer(i32) #1

declare dso_local i32 @iso_23001_8_mc_to_vlc_coeffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
