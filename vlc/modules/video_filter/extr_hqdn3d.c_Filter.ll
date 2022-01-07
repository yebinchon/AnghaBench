; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_hqdn3d.c_Filter.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_hqdn3d.c_Filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32*, i32*, i32, i32, i32, i32, i32, %struct.vf_priv_s }
%struct.vf_priv_s = type { i32*, i32*, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"Changing coefs to %.2f %.2f %.2f %.2f\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_16__* (%struct.TYPE_17__*, %struct.TYPE_16__*)* @Filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_16__* @Filter(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.vf_priv_s*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  store %struct.TYPE_18__* %12, %struct.TYPE_18__** %7, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 8
  store %struct.vf_priv_s* %14, %struct.vf_priv_s** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %16 = icmp ne %struct.TYPE_16__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %3, align 8
  br label %303

18:                                               ; preds = %2
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %20 = call %struct.TYPE_16__* @filter_NewPicture(%struct.TYPE_17__* %19)
  store %struct.TYPE_16__* %20, %struct.TYPE_16__** %6, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %22 = icmp ne %struct.TYPE_16__* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %29 = call i32 @picture_Release(%struct.TYPE_16__* %28)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %3, align 8
  br label %303

30:                                               ; preds = %18
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 3
  %33 = call i32 @vlc_mutex_lock(i32* %32)
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %9, align 4
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %93

42:                                               ; preds = %30
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @msg_Dbg(%struct.TYPE_17__* %43, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %49, i32 %52, i32 %55)
  %57 = load %struct.vf_priv_s*, %struct.vf_priv_s** %8, align 8
  %58 = getelementptr inbounds %struct.vf_priv_s, %struct.vf_priv_s* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 7
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @PrecalcCoefs(i32 %61, i32 %64)
  %66 = load %struct.vf_priv_s*, %struct.vf_priv_s** %8, align 8
  %67 = getelementptr inbounds %struct.vf_priv_s, %struct.vf_priv_s* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @PrecalcCoefs(i32 %70, i32 %73)
  %75 = load %struct.vf_priv_s*, %struct.vf_priv_s** %8, align 8
  %76 = getelementptr inbounds %struct.vf_priv_s, %struct.vf_priv_s* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @PrecalcCoefs(i32 %79, i32 %82)
  %84 = load %struct.vf_priv_s*, %struct.vf_priv_s** %8, align 8
  %85 = getelementptr inbounds %struct.vf_priv_s, %struct.vf_priv_s* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @PrecalcCoefs(i32 %88, i32 %91)
  br label %93

93:                                               ; preds = %42, %30
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 3
  %96 = call i32 @vlc_mutex_unlock(i32* %95)
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i64 0
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i64 0
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.vf_priv_s*, %struct.vf_priv_s** %8, align 8
  %110 = getelementptr inbounds %struct.vf_priv_s, %struct.vf_priv_s* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.vf_priv_s*, %struct.vf_priv_s** %8, align 8
  %113 = getelementptr inbounds %struct.vf_priv_s, %struct.vf_priv_s* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i64 0
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i64 0
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.vf_priv_s*, %struct.vf_priv_s** %8, align 8
  %139 = getelementptr inbounds %struct.vf_priv_s, %struct.vf_priv_s* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.vf_priv_s*, %struct.vf_priv_s** %8, align 8
  %144 = getelementptr inbounds %struct.vf_priv_s, %struct.vf_priv_s* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.vf_priv_s*, %struct.vf_priv_s** %8, align 8
  %149 = getelementptr inbounds %struct.vf_priv_s, %struct.vf_priv_s* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @deNoise(i32 %102, i32 %108, i32 %111, i32* %115, i32 %120, i32 %125, i32 %131, i32 %137, i32 %142, i32 %147, i32 %152)
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i64 1
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i64 1
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.vf_priv_s*, %struct.vf_priv_s** %8, align 8
  %167 = getelementptr inbounds %struct.vf_priv_s, %struct.vf_priv_s* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.vf_priv_s*, %struct.vf_priv_s** %8, align 8
  %170 = getelementptr inbounds %struct.vf_priv_s, %struct.vf_priv_s* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 1
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 2
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 1
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 1
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 1
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i64 1
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i64 1
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.vf_priv_s*, %struct.vf_priv_s** %8, align 8
  %196 = getelementptr inbounds %struct.vf_priv_s, %struct.vf_priv_s* %195, i32 0, i32 1
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 2
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.vf_priv_s*, %struct.vf_priv_s** %8, align 8
  %201 = getelementptr inbounds %struct.vf_priv_s, %struct.vf_priv_s* %200, i32 0, i32 1
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 2
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.vf_priv_s*, %struct.vf_priv_s** %8, align 8
  %206 = getelementptr inbounds %struct.vf_priv_s, %struct.vf_priv_s* %205, i32 0, i32 1
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 3
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @deNoise(i32 %159, i32 %165, i32 %168, i32* %172, i32 %177, i32 %182, i32 %188, i32 %194, i32 %199, i32 %204, i32 %209)
  %211 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i32 0, i32 0
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i64 2
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 0
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i64 2
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.vf_priv_s*, %struct.vf_priv_s** %8, align 8
  %224 = getelementptr inbounds %struct.vf_priv_s, %struct.vf_priv_s* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.vf_priv_s*, %struct.vf_priv_s** %8, align 8
  %227 = getelementptr inbounds %struct.vf_priv_s, %struct.vf_priv_s* %226, i32 0, i32 0
  %228 = load i32*, i32** %227, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 2
  %230 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %230, i32 0, i32 2
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 2
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %235, i32 0, i32 1
  %237 = load i32*, i32** %236, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 2
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %240, i32 0, i32 0
  %242 = load %struct.TYPE_15__*, %struct.TYPE_15__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %242, i64 2
  %244 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %246, i32 0, i32 0
  %248 = load %struct.TYPE_15__*, %struct.TYPE_15__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %248, i64 2
  %250 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.vf_priv_s*, %struct.vf_priv_s** %8, align 8
  %253 = getelementptr inbounds %struct.vf_priv_s, %struct.vf_priv_s* %252, i32 0, i32 1
  %254 = load i32*, i32** %253, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 2
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.vf_priv_s*, %struct.vf_priv_s** %8, align 8
  %258 = getelementptr inbounds %struct.vf_priv_s, %struct.vf_priv_s* %257, i32 0, i32 1
  %259 = load i32*, i32** %258, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 2
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.vf_priv_s*, %struct.vf_priv_s** %8, align 8
  %263 = getelementptr inbounds %struct.vf_priv_s, %struct.vf_priv_s* %262, i32 0, i32 1
  %264 = load i32*, i32** %263, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 3
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @deNoise(i32 %216, i32 %222, i32 %225, i32* %229, i32 %234, i32 %239, i32 %245, i32 %251, i32 %256, i32 %261, i32 %266)
  %268 = load %struct.vf_priv_s*, %struct.vf_priv_s** %8, align 8
  %269 = getelementptr inbounds %struct.vf_priv_s, %struct.vf_priv_s* %268, i32 0, i32 0
  %270 = load i32*, i32** %269, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 0
  %272 = load i32, i32* %271, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %289

274:                                              ; preds = %93
  %275 = load %struct.vf_priv_s*, %struct.vf_priv_s** %8, align 8
  %276 = getelementptr inbounds %struct.vf_priv_s, %struct.vf_priv_s* %275, i32 0, i32 0
  %277 = load i32*, i32** %276, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 1
  %279 = load i32, i32* %278, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %289

281:                                              ; preds = %274
  %282 = load %struct.vf_priv_s*, %struct.vf_priv_s** %8, align 8
  %283 = getelementptr inbounds %struct.vf_priv_s, %struct.vf_priv_s* %282, i32 0, i32 0
  %284 = load i32*, i32** %283, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 2
  %286 = load i32, i32* %285, align 4
  %287 = icmp ne i32 %286, 0
  %288 = xor i1 %287, true
  br label %289

289:                                              ; preds = %281, %274, %93
  %290 = phi i1 [ true, %274 ], [ true, %93 ], [ %288, %281 ]
  %291 = zext i1 %290 to i32
  %292 = call i64 @unlikely(i32 %291)
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %299

294:                                              ; preds = %289
  %295 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %296 = call i32 @picture_Release(%struct.TYPE_16__* %295)
  %297 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %298 = call i32 @picture_Release(%struct.TYPE_16__* %297)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %3, align 8
  br label %303

299:                                              ; preds = %289
  %300 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %301 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %302 = call %struct.TYPE_16__* @CopyInfoAndRelease(%struct.TYPE_16__* %300, %struct.TYPE_16__* %301)
  store %struct.TYPE_16__* %302, %struct.TYPE_16__** %3, align 8
  br label %303

303:                                              ; preds = %299, %294, %27, %17
  %304 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  ret %struct.TYPE_16__* %304
}

declare dso_local %struct.TYPE_16__* @filter_NewPicture(%struct.TYPE_17__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @picture_Release(%struct.TYPE_16__*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_17__*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @PrecalcCoefs(i32, i32) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @deNoise(i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_16__* @CopyInfoAndRelease(%struct.TYPE_16__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
