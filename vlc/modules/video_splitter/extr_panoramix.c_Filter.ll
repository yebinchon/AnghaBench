; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_splitter/extr_panoramix.c_Filter.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_splitter/extr_panoramix.c_Filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i32, i32, i32*, i32*, i32*, %struct.TYPE_30__*, %struct.TYPE_23__** }
%struct.TYPE_30__ = type { i32*, i32*, i32*, i32 }
%struct.TYPE_23__ = type { i64, i32, i32, i32, i32, %struct.TYPE_29__, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_28__, %struct.TYPE_26__ }
%struct.TYPE_28__ = type { i32, i32, i32, i32 }
%struct.TYPE_26__ = type { i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_33__* }
%struct.TYPE_33__ = type { i32, i32, i32* }
%struct.TYPE_24__ = type { %struct.TYPE_27__, %struct.TYPE_25__ }
%struct.TYPE_27__ = type { i32, i32, i32, i32 }
%struct.TYPE_25__ = type { i32, i32, i32, i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_31__*, %struct.TYPE_22__**, %struct.TYPE_22__*)* @Filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Filter(%struct.TYPE_31__* %0, %struct.TYPE_22__** %1, %struct.TYPE_22__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca %struct.TYPE_22__**, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_32__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_33__*, align 8
  %17 = alloca %struct.TYPE_33__*, align 8
  %18 = alloca %struct.TYPE_24__, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %5, align 8
  store %struct.TYPE_22__** %1, %struct.TYPE_22__*** %6, align 8
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %7, align 8
  %21 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_32__*, %struct.TYPE_32__** %22, align 8
  store %struct.TYPE_32__* %23, %struct.TYPE_32__** %8, align 8
  %24 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %25 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %6, align 8
  %26 = call i64 @video_splitter_NewPicture(%struct.TYPE_31__* %24, %struct.TYPE_22__** %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %3
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %30 = call i32 @picture_Release(%struct.TYPE_22__* %29)
  %31 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %31, i32* %4, align 4
  br label %285

32:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %278, %32
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %281

39:                                               ; preds = %33
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %274, %39
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %277

46:                                               ; preds = %40
  %47 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %47, i32 0, i32 6
  %49 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %49, i64 %51
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i64 %55
  store %struct.TYPE_23__* %56, %struct.TYPE_23__** %11, align 8
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %46
  br label %274

62:                                               ; preds = %46
  %63 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %6, align 8
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %63, i64 %66
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %67, align 8
  store %struct.TYPE_22__* %68, %struct.TYPE_22__** %12, align 8
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %71 = call i32 @picture_CopyProperties(%struct.TYPE_22__* %69, %struct.TYPE_22__* %70)
  store i32 0, i32* %13, align 4
  br label %72

72:                                               ; preds = %270, %62
  %73 = load i32, i32* %13, align 4
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %273

78:                                               ; preds = %72
  %79 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %79, i32 0, i32 5
  %81 = load %struct.TYPE_30__*, %struct.TYPE_30__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %14, align 4
  %88 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %88, i32 0, i32 5
  %90 = load %struct.TYPE_30__*, %struct.TYPE_30__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %13, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %15, align 4
  %97 = load i32, i32* %14, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %78
  %100 = load i32, i32* %15, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %99, %78
  br label %270

103:                                              ; preds = %99
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_33__*, %struct.TYPE_33__** %105, align 8
  %107 = load i32, i32* %13, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %106, i64 %108
  store %struct.TYPE_33__* %109, %struct.TYPE_33__** %16, align 8
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_33__*, %struct.TYPE_33__** %111, align 8
  %113 = load i32, i32* %13, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %112, i64 %114
  store %struct.TYPE_33__* %115, %struct.TYPE_33__** %17, align 8
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %116, i32 0, i32 5
  %118 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %14, align 4
  %122 = sdiv i32 %120, %121
  %123 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 4
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 5
  %127 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %14, align 4
  %131 = sdiv i32 %129, %130
  %132 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 5
  %136 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %15, align 4
  %140 = sdiv i32 %138, %139
  %141 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 4
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %143, i32 0, i32 5
  %145 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %15, align 4
  %149 = sdiv i32 %147, %148
  %150 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %150, i32 0, i32 3
  store i32 %149, i32* %151, align 4
  %152 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %153 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %152, i32 0, i32 5
  %154 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* %14, align 4
  %158 = sdiv i32 %156, %157
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 4
  %161 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %161, i32 0, i32 5
  %163 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %14, align 4
  %167 = sdiv i32 %165, %166
  %168 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %168, i32 0, i32 1
  store i32 %167, i32* %169, align 4
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %171 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %170, i32 0, i32 5
  %172 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* %15, align 4
  %176 = sdiv i32 %174, %175
  %177 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %177, i32 0, i32 2
  store i32 %176, i32* %178, align 4
  %179 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %180 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %179, i32 0, i32 5
  %181 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %15, align 4
  %185 = sdiv i32 %183, %184
  %186 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %186, i32 0, i32 3
  store i32 %185, i32* %187, align 4
  %188 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %189 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* %14, align 4
  %192 = sdiv i32 %190, %191
  store i32 %192, i32* %19, align 4
  %193 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %194 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* %15, align 4
  %197 = sdiv i32 %195, %196
  store i32 %197, i32* %20, align 4
  %198 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %198, i32 0, i32 5
  %200 = load %struct.TYPE_30__*, %struct.TYPE_30__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @assert(i32 %202)
  %204 = load %struct.TYPE_33__*, %struct.TYPE_33__** %17, align 8
  %205 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %204, i32 0, i32 2
  %206 = load i32*, i32** %205, align 8
  %207 = load %struct.TYPE_33__*, %struct.TYPE_33__** %17, align 8
  %208 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %211 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %210, i32 0, i32 2
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* %20, align 4
  %214 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %215 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = mul nsw i32 %213, %216
  %218 = load i32, i32* %19, align 4
  %219 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %220 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = mul nsw i32 %218, %221
  %223 = add nsw i32 %217, %222
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %212, i64 %224
  %226 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %227 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %230 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* %14, align 4
  %233 = sdiv i32 %231, %232
  %234 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %235 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %234, i32 0, i32 4
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* %15, align 4
  %238 = sdiv i32 %236, %237
  %239 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %239, i32 0, i32 5
  %241 = load %struct.TYPE_30__*, %struct.TYPE_30__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %241, i32 0, i32 2
  %243 = load i32*, i32** %242, align 8
  %244 = load i32, i32* %13, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %249 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %248, i32 0, i32 4
  %250 = load i32*, i32** %249, align 8
  %251 = load i32, i32* %13, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %256 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %255, i32 0, i32 3
  %257 = load i32*, i32** %256, align 8
  %258 = load i32, i32* %13, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %263 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %262, i32 0, i32 2
  %264 = load i32*, i32** %263, align 8
  %265 = load i32, i32* %13, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %264, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @FilterPlanar(i32* %206, i32 %209, i32* %225, i32 %228, i32 %233, i32 %238, i32 %247, %struct.TYPE_24__* %18, i32 %254, i32 %261, i32 %268)
  br label %270

270:                                              ; preds = %103, %102
  %271 = load i32, i32* %13, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %13, align 4
  br label %72

273:                                              ; preds = %72
  br label %274

274:                                              ; preds = %273, %61
  %275 = load i32, i32* %10, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %10, align 4
  br label %40

277:                                              ; preds = %40
  br label %278

278:                                              ; preds = %277
  %279 = load i32, i32* %9, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %9, align 4
  br label %33

281:                                              ; preds = %33
  %282 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %283 = call i32 @picture_Release(%struct.TYPE_22__* %282)
  %284 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %284, i32* %4, align 4
  br label %285

285:                                              ; preds = %281, %28
  %286 = load i32, i32* %4, align 4
  ret i32 %286
}

declare dso_local i64 @video_splitter_NewPicture(%struct.TYPE_31__*, %struct.TYPE_22__**) #1

declare dso_local i32 @picture_Release(%struct.TYPE_22__*) #1

declare dso_local i32 @picture_CopyProperties(%struct.TYPE_22__*, %struct.TYPE_22__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @FilterPlanar(i32*, i32, i32*, i32, i32, i32, i32, %struct.TYPE_24__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
