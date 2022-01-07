; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_decoder_helpers.c_decoder_UpdateVideoOutput.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_decoder_helpers.c_decoder_UpdateVideoOutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_26__*, %struct.TYPE_24__, %struct.TYPE_23__ }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { {}* }
%struct.TYPE_24__ = type { %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32, i64, i64, i32 }
%struct.TYPE_23__ = type { i64, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32, i64, i64 }
%struct.TYPE_27__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_20__, %struct.TYPE_19__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32 }

@VIDEO_ES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"hdtv-fix\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Fixing broken HDTV stream (display_height=1088)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @decoder_UpdateVideoOutput(%struct.TYPE_17__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @VIDEO_ES, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %18 = icmp ne %struct.TYPE_26__* %17, null
  br label %19

19:                                               ; preds = %14, %2
  %20 = phi i1 [ false, %2 ], [ %18, %14 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @vlc_assert(i32 %21)
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @VIDEO_ES, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %34, label %29

29:                                               ; preds = %19
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_26__*, %struct.TYPE_26__** %31, align 8
  %33 = icmp eq %struct.TYPE_26__* %32, null
  br label %34

34:                                               ; preds = %29, %19
  %35 = phi i1 [ true, %19 ], [ %33, %29 ]
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 -1, i32* %3, align 4
  br label %328

40:                                               ; preds = %34
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 8
  store i32 %44, i32* %48, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 1088
  br i1 %54, label %55, label %87

55:                                               ; preds = %40
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %57 = call i64 @var_CreateGetBool(%struct.TYPE_17__* %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %87

59:                                               ; preds = %55
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 0
  store i32 1080, i32* %63, align 8
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = srem i32 %68, 136
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %84, label %71

71:                                               ; preds = %59
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = mul nsw i32 %76, 135
  store i32 %77, i32* %75, align 4
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = mul nsw i32 %82, 136
  store i32 %83, i32* %81, align 8
  br label %84

84:                                               ; preds = %71, %59
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %86 = call i32 @msg_Warn(%struct.TYPE_17__* %85, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %87

87:                                               ; preds = %84, %55, %40
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %87
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %110, label %101

101:                                              ; preds = %94, %87
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 1
  store i32 1, i32* %105, align 4
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 2
  store i32 1, i32* %109, align 8
  br label %110

110:                                              ; preds = %101, %94
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @vlc_ureduce(i32* %114, i32* %118, i32 %123, i32 %128, i32 50000)
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 8
  %134 = load i32, i32* %133, align 8
  %135 = call i64 @vlc_fourcc_IsYUV(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %210

137:                                              ; preds = %110
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 8
  %142 = load i32, i32* %141, align 8
  %143 = call %struct.TYPE_27__* @vlc_fourcc_GetChromaDescription(i32 %142)
  store %struct.TYPE_27__* %143, %struct.TYPE_27__** %6, align 8
  store i32 0, i32* %7, align 4
  br label %144

144:                                              ; preds = %206, %137
  %145 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %146 = icmp ne %struct.TYPE_27__* %145, null
  br i1 %146, label %147, label %153

147:                                              ; preds = %144
  %148 = load i32, i32* %7, align 4
  %149 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp ult i32 %148, %151
  br label %153

153:                                              ; preds = %147, %144
  %154 = phi i1 [ false, %144 ], [ %152, %147 ]
  br i1 %154, label %155, label %209

155:                                              ; preds = %153
  br label %156

156:                                              ; preds = %173, %155
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %163, align 8
  %165 = load i32, i32* %7, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = srem i32 %161, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %156
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %177, align 4
  br label %156

180:                                              ; preds = %156
  br label %181

181:                                              ; preds = %198, %180
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %188, align 8
  %190 = load i32, i32* %7, align 4
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = srem i32 %186, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %205

198:                                              ; preds = %181
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 4
  %203 = load i32, i32* %202, align 8
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %202, align 8
  br label %181

205:                                              ; preds = %181
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %7, align 4
  %208 = add i32 %207, 1
  store i32 %208, i32* %7, align 4
  br label %144

209:                                              ; preds = %153
  br label %210

210:                                              ; preds = %209, %110
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %213, i32 0, i32 5
  %215 = load i32, i32* %214, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %224

217:                                              ; preds = %210
  %218 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %303, label %224

224:                                              ; preds = %217, %210
  %225 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %275

231:                                              ; preds = %224
  %232 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %232, i32 0, i32 2
  %234 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %275

238:                                              ; preds = %231
  %239 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %239, i32 0, i32 2
  %241 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %246, i32 0, i32 5
  store i32 %243, i32* %247, align 4
  %248 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %248, i32 0, i32 2
  %250 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %255, i32 0, i32 0
  store i32 %252, i32* %256, align 8
  %257 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %257, i32 0, i32 2
  %259 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %259, i32 0, i32 3
  %261 = load i64, i64* %260, align 8
  %262 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %264, i32 0, i32 7
  store i64 %261, i64* %265, align 8
  %266 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %266, i32 0, i32 2
  %268 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %268, i32 0, i32 2
  %270 = load i64, i64* %269, align 8
  %271 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %273, i32 0, i32 6
  store i64 %270, i64* %274, align 8
  br label %302

275:                                              ; preds = %231, %224
  %276 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %278, i32 0, i32 3
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %283, i32 0, i32 5
  store i32 %280, i32* %284, align 4
  %285 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %286 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %287, i32 0, i32 4
  %289 = load i32, i32* %288, align 8
  %290 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %291 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %290, i32 0, i32 1
  %292 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %292, i32 0, i32 0
  store i32 %289, i32* %293, align 8
  %294 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %295 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %296, i32 0, i32 7
  store i64 0, i64* %297, align 8
  %298 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %299 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %298, i32 0, i32 1
  %300 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %300, i32 0, i32 6
  store i64 0, i64* %301, align 8
  br label %302

302:                                              ; preds = %275, %238
  br label %303

303:                                              ; preds = %302, %217
  %304 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %305 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %304, i32 0, i32 1
  %306 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %305, i32 0, i32 0
  %307 = call i32 @video_format_AdjustColorSpace(%struct.TYPE_18__* %306)
  %308 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %308, i32 0, i32 0
  %310 = load %struct.TYPE_26__*, %struct.TYPE_26__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %311, i32 0, i32 0
  %313 = bitcast {}** %312 to i32 (%struct.TYPE_17__*, i32*)**
  %314 = load i32 (%struct.TYPE_17__*, i32*)*, i32 (%struct.TYPE_17__*, i32*)** %313, align 8
  %315 = icmp eq i32 (%struct.TYPE_17__*, i32*)* %314, null
  br i1 %315, label %316, label %317

316:                                              ; preds = %303
  store i32 0, i32* %3, align 4
  br label %328

317:                                              ; preds = %303
  %318 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %319 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %318, i32 0, i32 0
  %320 = load %struct.TYPE_26__*, %struct.TYPE_26__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %321, i32 0, i32 0
  %323 = bitcast {}** %322 to i32 (%struct.TYPE_17__*, i32*)**
  %324 = load i32 (%struct.TYPE_17__*, i32*)*, i32 (%struct.TYPE_17__*, i32*)** %323, align 8
  %325 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %326 = load i32*, i32** %5, align 8
  %327 = call i32 %324(%struct.TYPE_17__* %325, i32* %326)
  store i32 %327, i32* %3, align 4
  br label %328

328:                                              ; preds = %317, %316, %39
  %329 = load i32, i32* %3, align 4
  ret i32 %329
}

declare dso_local i32 @vlc_assert(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @var_CreateGetBool(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @vlc_ureduce(i32*, i32*, i32, i32, i32) #1

declare dso_local i64 @vlc_fourcc_IsYUV(i32) #1

declare dso_local %struct.TYPE_27__* @vlc_fourcc_GetChromaDescription(i32) #1

declare dso_local i32 @video_format_AdjustColorSpace(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
