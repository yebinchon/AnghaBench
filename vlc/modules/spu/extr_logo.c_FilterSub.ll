; ModuleID = '/home/carl/AnghaBench/vlc/modules/spu/extr_logo.c_FilterSub.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/spu/extr_logo.c_FilterSub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, i32, i32, %struct.TYPE_28__*, i64, i64 }
%struct.TYPE_28__ = type { i32, i64, i64, i32 }
%struct.TYPE_32__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, i32, i32, i64, i64, i32, %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i64, i32, i64, i32 }
%struct.TYPE_26__ = type { i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_25__, %struct.TYPE_24__* }
%struct.TYPE_25__ = type { i32, i32, i32, i32 }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_30__ = type { i32, %struct.TYPE_29__* }

@VLC_CODEC_YUVA = common dso_local global i32 0, align 4
@Y_PLANE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"cannot allocate SPU region\00", align 1
@SUBPICTURE_ALIGN_RIGHT = common dso_local global i32 0, align 4
@SUBPICTURE_ALIGN_TOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_27__* (%struct.TYPE_32__*, i64)* @FilterSub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_27__* @FilterSub(%struct.TYPE_32__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_27__*, align 8
  %4 = alloca %struct.TYPE_32__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_31__*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca %struct.TYPE_28__*, align 8
  %10 = alloca %struct.TYPE_26__, align 8
  %11 = alloca %struct.TYPE_29__*, align 8
  %12 = alloca %struct.TYPE_30__*, align 8
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  store %struct.TYPE_23__* %15, %struct.TYPE_23__** %6, align 8
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 6
  store %struct.TYPE_31__* %17, %struct.TYPE_31__** %7, align 8
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 5
  %20 = call i32 @vlc_mutex_lock(i32* %19)
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %2
  %26 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %36, label %31

31:                                               ; preds = %25, %2
  %32 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %31, %25
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %37, i32 0, i32 5
  %39 = call i32 @vlc_mutex_unlock(i32* %38)
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %3, align 8
  br label %236

40:                                               ; preds = %31
  %41 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %42 = load i64, i64* %5, align 8
  %43 = call %struct.TYPE_30__* @LogoListNext(%struct.TYPE_31__* %41, i64 %42)
  store %struct.TYPE_30__* %43, %struct.TYPE_30__** %12, align 8
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  %46 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_29__*, %struct.TYPE_29__** %47, align 8
  store %struct.TYPE_29__* %48, %struct.TYPE_29__** %11, align 8
  %49 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %50 = call %struct.TYPE_27__* @filter_NewSubpicture(%struct.TYPE_32__* %49)
  store %struct.TYPE_27__* %50, %struct.TYPE_27__** %8, align 8
  %51 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %52 = icmp ne %struct.TYPE_27__* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %40
  br label %231

54:                                               ; preds = %40
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load i64, i64* %5, align 8
  %61 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %61, i32 0, i32 5
  store i64 %60, i64* %62, align 8
  %63 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %63, i32 0, i32 4
  store i64 0, i64* %64, align 8
  %65 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %65, i32 0, i32 1
  store i32 1, i32* %66, align 4
  %67 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, -1
  br i1 %70, label %71, label %87

71:                                               ; preds = %54
  %72 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %71
  %77 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %78, align 8
  %81 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %76
  br label %231

86:                                               ; preds = %76
  br label %87

87:                                               ; preds = %86, %71, %54
  %88 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %89 = icmp ne %struct.TYPE_29__* %88, null
  br i1 %89, label %90, label %105

90:                                               ; preds = %87
  %91 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %90
  %96 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp eq i32 %98, -1
  br i1 %99, label %100, label %106

100:                                              ; preds = %95
  %101 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %100, %90, %87
  br label %231

106:                                              ; preds = %100, %95
  %107 = load i32, i32* @VLC_CODEC_YUVA, align 4
  %108 = call i32 @video_format_Init(%struct.TYPE_26__* %10, i32 %107)
  %109 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 1
  store i32 1, i32* %109, align 4
  %110 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 0
  store i32 1, i32* %110, align 8
  %111 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %112, align 8
  %114 = load i64, i64* @Y_PLANE, align 8
  %115 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 10
  store i32 %117, i32* %118, align 8
  %119 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 11
  store i32 %117, i32* %119, align 4
  %120 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %121, align 8
  %123 = load i64, i64* @Y_PLANE, align 8
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %122, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 8
  store i32 %126, i32* %127, align 8
  %128 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 9
  store i32 %126, i32* %128, align 4
  %129 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 6
  store i64 0, i64* %129, align 8
  %130 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 7
  store i64 0, i64* %130, align 8
  %131 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 5
  store i32 %134, i32* %135, align 4
  %136 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 4
  store i32 %139, i32* %140, align 8
  %141 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 3
  store i32 %144, i32* %145, align 4
  %146 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 2
  store i32 %149, i32* %150, align 8
  %151 = call %struct.TYPE_28__* @subpicture_region_New(%struct.TYPE_26__* %10)
  store %struct.TYPE_28__* %151, %struct.TYPE_28__** %9, align 8
  %152 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %153 = icmp ne %struct.TYPE_28__* %152, null
  br i1 %153, label %159, label %154

154:                                              ; preds = %106
  %155 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %156 = call i32 @msg_Err(%struct.TYPE_32__* %155, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %157 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %158 = call i32 @subpicture_Delete(%struct.TYPE_27__* %157)
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %8, align 8
  br label %231

159:                                              ; preds = %106
  %160 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %164 = call i32 @picture_Copy(i32 %162, %struct.TYPE_29__* %163)
  %165 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %177

169:                                              ; preds = %159
  %170 = load i32, i32* @SUBPICTURE_ALIGN_RIGHT, align 4
  %171 = load i32, i32* @SUBPICTURE_ALIGN_TOP, align 4
  %172 = or i32 %170, %171
  %173 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %173, i32 0, i32 0
  store i32 %172, i32* %174, align 8
  %175 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %175, i32 0, i32 0
  store i32 1, i32* %176, align 8
  br label %185

177:                                              ; preds = %159
  %178 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %181, i32 0, i32 0
  store i32 %180, i32* %182, align 8
  %183 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %183, i32 0, i32 0
  store i32 0, i32* %184, align 8
  br label %185

185:                                              ; preds = %177, %169
  %186 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = icmp sgt i64 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %185
  %191 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %191, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  br label %195

194:                                              ; preds = %185
  br label %195

195:                                              ; preds = %194, %190
  %196 = phi i64 [ %193, %190 ], [ 0, %194 ]
  %197 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %198 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %197, i32 0, i32 1
  store i64 %196, i64* %198, align 8
  %199 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %199, i32 0, i32 4
  %201 = load i64, i64* %200, align 8
  %202 = icmp sgt i64 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %195
  %204 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %204, i32 0, i32 4
  %206 = load i64, i64* %205, align 8
  br label %208

207:                                              ; preds = %195
  br label %208

208:                                              ; preds = %207, %203
  %209 = phi i64 [ %206, %203 ], [ 0, %207 ]
  %210 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %210, i32 0, i32 2
  store i64 %209, i64* %211, align 8
  %212 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %213 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %213, i32 0, i32 3
  store %struct.TYPE_28__* %212, %struct.TYPE_28__** %214, align 8
  %215 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %216 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = icmp ne i32 %217, -1
  br i1 %218, label %219, label %223

219:                                              ; preds = %208
  %220 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %221 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  br label %227

223:                                              ; preds = %208
  %224 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 8
  br label %227

227:                                              ; preds = %223, %219
  %228 = phi i32 [ %222, %219 ], [ %226, %223 ]
  %229 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %230 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %229, i32 0, i32 2
  store i32 %228, i32* %230, align 8
  br label %231

231:                                              ; preds = %227, %154, %105, %85, %53
  %232 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %233 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %232, i32 0, i32 5
  %234 = call i32 @vlc_mutex_unlock(i32* %233)
  %235 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  store %struct.TYPE_27__* %235, %struct.TYPE_27__** %3, align 8
  br label %236

236:                                              ; preds = %231, %36
  %237 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  ret %struct.TYPE_27__* %237
}

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local %struct.TYPE_30__* @LogoListNext(%struct.TYPE_31__*, i64) #1

declare dso_local %struct.TYPE_27__* @filter_NewSubpicture(%struct.TYPE_32__*) #1

declare dso_local i32 @video_format_Init(%struct.TYPE_26__*, i32) #1

declare dso_local %struct.TYPE_28__* @subpicture_region_New(%struct.TYPE_26__*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_32__*, i8*) #1

declare dso_local i32 @subpicture_Delete(%struct.TYPE_27__*) #1

declare dso_local i32 @picture_Copy(i32, %struct.TYPE_29__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
