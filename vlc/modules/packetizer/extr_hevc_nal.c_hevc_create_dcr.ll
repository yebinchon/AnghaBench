; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_hevc_nal.c_hevc_create_dcr.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_hevc_nal.c_hevc_create_dcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hevc_dcr_values = type { i32, i32, i32, i32, i32, i32 }
%struct.hevc_dcr_params = type { i64, i64, i64, i64, i64, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.hevc_dcr_values* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@__const.hevc_create_dcr.values = private unnamed_addr constant %struct.hevc_dcr_values { i32 0, i32 1, i32 0, i32 0, i32 0, i32 0 }, align 4
@HEVC_NAL_VPS = common dso_local global i32 0, align 4
@HEVC_NAL_SPS = common dso_local global i32 0, align 4
@HEVC_NAL_PPS = common dso_local global i32 0, align 4
@HEVC_NAL_PREF_SEI = common dso_local global i32 0, align 4
@HEVC_NAL_SUFF_SEI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @hevc_create_dcr(%struct.hevc_dcr_params* %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.hevc_dcr_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.hevc_dcr_values, align 4
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store %struct.hevc_dcr_params* %0, %struct.hevc_dcr_params** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %15 = load i64*, i64** %9, align 8
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %25

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 2
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 4
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32* null, i32** %5, align 8
  br label %280

25:                                               ; preds = %21, %18, %4
  %26 = bitcast %struct.hevc_dcr_values* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 bitcast (%struct.hevc_dcr_values* @__const.hevc_create_dcr.values to i8*), i64 24, i1 false)
  %27 = load %struct.hevc_dcr_params*, %struct.hevc_dcr_params** %6, align 8
  %28 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %27, i32 0, i32 15
  %29 = load %struct.hevc_dcr_values*, %struct.hevc_dcr_values** %28, align 8
  %30 = icmp ne %struct.hevc_dcr_values* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load %struct.hevc_dcr_params*, %struct.hevc_dcr_params** %6, align 8
  %33 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %32, i32 0, i32 15
  %34 = load %struct.hevc_dcr_values*, %struct.hevc_dcr_values** %33, align 8
  %35 = bitcast %struct.hevc_dcr_values* %10 to i8*
  %36 = bitcast %struct.hevc_dcr_values* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 %36, i64 24, i1 false)
  br label %89

37:                                               ; preds = %25
  %38 = load %struct.hevc_dcr_params*, %struct.hevc_dcr_params** %6, align 8
  %39 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load %struct.hevc_dcr_params*, %struct.hevc_dcr_params** %6, align 8
  %44 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42, %37
  store i32* null, i32** %5, align 8
  br label %280

48:                                               ; preds = %42
  %49 = load %struct.hevc_dcr_params*, %struct.hevc_dcr_params** %6, align 8
  %50 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %49, i32 0, i32 14
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.hevc_dcr_params*, %struct.hevc_dcr_params** %6, align 8
  %55 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %54, i32 0, i32 13
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @hevc_dcr_params_from_vps(i32 %53, i32 %58, %struct.hevc_dcr_values* %10)
  %60 = load %struct.hevc_dcr_params*, %struct.hevc_dcr_params** %6, align 8
  %61 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %60, i32 0, i32 12
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.hevc_dcr_params*, %struct.hevc_dcr_params** %6, align 8
  %66 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %65, i32 0, i32 11
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = call %struct.TYPE_4__* @hevc_decode_sps(i32 %64, i32 %69, i32 1)
  store %struct.TYPE_4__* %70, %struct.TYPE_4__** %11, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %72 = icmp ne %struct.TYPE_4__* %71, null
  br i1 %72, label %73, label %88

73:                                               ; preds = %48
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.hevc_dcr_values, %struct.hevc_dcr_values* %10, i32 0, i32 1
  store i32 %76, i32* %77, align 4
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.hevc_dcr_values, %struct.hevc_dcr_values* %10, i32 0, i32 3
  store i32 %80, i32* %81, align 4
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.hevc_dcr_values, %struct.hevc_dcr_values* %10, i32 0, i32 2
  store i32 %84, i32* %85, align 4
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %87 = call i32 @hevc_rbsp_release_sps(%struct.TYPE_4__* %86)
  br label %88

88:                                               ; preds = %73, %48
  br label %89

89:                                               ; preds = %88, %31
  store i64 23, i64* %12, align 8
  %90 = load %struct.hevc_dcr_params*, %struct.hevc_dcr_params** %6, align 8
  %91 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.hevc_dcr_params*, %struct.hevc_dcr_params** %6, align 8
  %94 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %93, i32 0, i32 13
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @HEVC_DCR_ADD_SIZES(i64 %92, i32* %95)
  %97 = load %struct.hevc_dcr_params*, %struct.hevc_dcr_params** %6, align 8
  %98 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.hevc_dcr_params*, %struct.hevc_dcr_params** %6, align 8
  %101 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %100, i32 0, i32 11
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @HEVC_DCR_ADD_SIZES(i64 %99, i32* %102)
  %104 = load %struct.hevc_dcr_params*, %struct.hevc_dcr_params** %6, align 8
  %105 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.hevc_dcr_params*, %struct.hevc_dcr_params** %6, align 8
  %108 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %107, i32 0, i32 9
  %109 = load i32*, i32** %108, align 8
  %110 = call i32 @HEVC_DCR_ADD_SIZES(i64 %106, i32* %109)
  %111 = load %struct.hevc_dcr_params*, %struct.hevc_dcr_params** %6, align 8
  %112 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.hevc_dcr_params*, %struct.hevc_dcr_params** %6, align 8
  %115 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %114, i32 0, i32 7
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @HEVC_DCR_ADD_SIZES(i64 %113, i32* %116)
  %118 = load %struct.hevc_dcr_params*, %struct.hevc_dcr_params** %6, align 8
  %119 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %118, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.hevc_dcr_params*, %struct.hevc_dcr_params** %6, align 8
  %122 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %121, i32 0, i32 5
  %123 = load i32*, i32** %122, align 8
  %124 = call i32 @HEVC_DCR_ADD_SIZES(i64 %120, i32* %123)
  %125 = load i64, i64* %12, align 8
  %126 = call i32* @malloc(i64 %125)
  store i32* %126, i32** %13, align 8
  %127 = load i32*, i32** %13, align 8
  %128 = icmp eq i32* %127, null
  br i1 %128, label %129, label %130

129:                                              ; preds = %89
  store i32* null, i32** %5, align 8
  br label %280

130:                                              ; preds = %89
  %131 = load i64, i64* %12, align 8
  %132 = load i64*, i64** %9, align 8
  store i64 %131, i64* %132, align 8
  %133 = load i32*, i32** %13, align 8
  store i32* %133, i32** %14, align 8
  %134 = load i32*, i32** %14, align 8
  %135 = getelementptr inbounds i32, i32* %134, i32 1
  store i32* %135, i32** %14, align 8
  store i32 1, i32* %134, align 4
  %136 = load i32*, i32** %14, align 8
  %137 = getelementptr inbounds %struct.hevc_dcr_values, %struct.hevc_dcr_values* %10, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @memcpy(i32* %136, i32 %138, i32 12)
  %140 = load i32*, i32** %14, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 12
  store i32* %141, i32** %14, align 8
  %142 = load i32*, i32** %14, align 8
  %143 = call i32 @SetWBE(i32* %142, i32 61440)
  %144 = load i32*, i32** %14, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 2
  store i32* %145, i32** %14, align 8
  %146 = load i32*, i32** %14, align 8
  %147 = getelementptr inbounds i32, i32* %146, i32 1
  store i32* %147, i32** %14, align 8
  store i32 252, i32* %146, align 4
  %148 = getelementptr inbounds %struct.hevc_dcr_values, %struct.hevc_dcr_values* %10, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = and i32 %149, 3
  %151 = or i32 252, %150
  %152 = load i32*, i32** %14, align 8
  %153 = getelementptr inbounds i32, i32* %152, i32 1
  store i32* %153, i32** %14, align 8
  store i32 %151, i32* %152, align 4
  %154 = getelementptr inbounds %struct.hevc_dcr_values, %struct.hevc_dcr_values* %10, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = and i32 %155, 7
  %157 = or i32 248, %156
  %158 = load i32*, i32** %14, align 8
  %159 = getelementptr inbounds i32, i32* %158, i32 1
  store i32* %159, i32** %14, align 8
  store i32 %157, i32* %158, align 4
  %160 = getelementptr inbounds %struct.hevc_dcr_values, %struct.hevc_dcr_values* %10, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = and i32 %161, 7
  %163 = or i32 248, %162
  %164 = load i32*, i32** %14, align 8
  %165 = getelementptr inbounds i32, i32* %164, i32 1
  store i32* %165, i32** %14, align 8
  store i32 %163, i32* %164, align 4
  %166 = load i32*, i32** %14, align 8
  %167 = call i32 @SetWBE(i32* %166, i32 0)
  %168 = load i32*, i32** %14, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 2
  store i32* %169, i32** %14, align 8
  %170 = getelementptr inbounds %struct.hevc_dcr_values, %struct.hevc_dcr_values* %10, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = and i32 %171, 7
  %173 = shl i32 %172, 3
  %174 = getelementptr inbounds %struct.hevc_dcr_values, %struct.hevc_dcr_values* %10, i32 0, i32 4
  %175 = load i32, i32* %174, align 4
  %176 = shl i32 %175, 2
  %177 = or i32 %173, %176
  %178 = load i32, i32* %7, align 4
  %179 = sub nsw i32 %178, 1
  %180 = or i32 %177, %179
  %181 = load i32*, i32** %14, align 8
  %182 = getelementptr inbounds i32, i32* %181, i32 1
  store i32* %182, i32** %14, align 8
  store i32 %180, i32* %181, align 4
  %183 = load %struct.hevc_dcr_params*, %struct.hevc_dcr_params** %6, align 8
  %184 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  %187 = xor i1 %186, true
  %188 = xor i1 %187, true
  %189 = zext i1 %188 to i32
  %190 = load %struct.hevc_dcr_params*, %struct.hevc_dcr_params** %6, align 8
  %191 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  %194 = xor i1 %193, true
  %195 = xor i1 %194, true
  %196 = zext i1 %195 to i32
  %197 = add nsw i32 %189, %196
  %198 = load %struct.hevc_dcr_params*, %struct.hevc_dcr_params** %6, align 8
  %199 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  %202 = xor i1 %201, true
  %203 = xor i1 %202, true
  %204 = zext i1 %203 to i32
  %205 = add nsw i32 %197, %204
  %206 = load %struct.hevc_dcr_params*, %struct.hevc_dcr_params** %6, align 8
  %207 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %206, i32 0, i32 3
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  %210 = xor i1 %209, true
  %211 = xor i1 %210, true
  %212 = zext i1 %211 to i32
  %213 = add nsw i32 %205, %212
  %214 = load %struct.hevc_dcr_params*, %struct.hevc_dcr_params** %6, align 8
  %215 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %214, i32 0, i32 4
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  %218 = xor i1 %217, true
  %219 = xor i1 %218, true
  %220 = zext i1 %219 to i32
  %221 = add nsw i32 %213, %220
  %222 = load i32*, i32** %14, align 8
  %223 = getelementptr inbounds i32, i32* %222, i32 1
  store i32* %223, i32** %14, align 8
  store i32 %221, i32* %222, align 4
  %224 = load i32, i32* @HEVC_NAL_VPS, align 4
  %225 = load %struct.hevc_dcr_params*, %struct.hevc_dcr_params** %6, align 8
  %226 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.hevc_dcr_params*, %struct.hevc_dcr_params** %6, align 8
  %229 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %228, i32 0, i32 14
  %230 = load i32*, i32** %229, align 8
  %231 = load %struct.hevc_dcr_params*, %struct.hevc_dcr_params** %6, align 8
  %232 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %231, i32 0, i32 13
  %233 = load i32*, i32** %232, align 8
  %234 = call i32 @HEVC_DCR_ADD_NALS(i32 %224, i64 %227, i32* %230, i32* %233)
  %235 = load i32, i32* @HEVC_NAL_SPS, align 4
  %236 = load %struct.hevc_dcr_params*, %struct.hevc_dcr_params** %6, align 8
  %237 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = load %struct.hevc_dcr_params*, %struct.hevc_dcr_params** %6, align 8
  %240 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %239, i32 0, i32 12
  %241 = load i32*, i32** %240, align 8
  %242 = load %struct.hevc_dcr_params*, %struct.hevc_dcr_params** %6, align 8
  %243 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %242, i32 0, i32 11
  %244 = load i32*, i32** %243, align 8
  %245 = call i32 @HEVC_DCR_ADD_NALS(i32 %235, i64 %238, i32* %241, i32* %244)
  %246 = load i32, i32* @HEVC_NAL_PPS, align 4
  %247 = load %struct.hevc_dcr_params*, %struct.hevc_dcr_params** %6, align 8
  %248 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %247, i32 0, i32 2
  %249 = load i64, i64* %248, align 8
  %250 = load %struct.hevc_dcr_params*, %struct.hevc_dcr_params** %6, align 8
  %251 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %250, i32 0, i32 10
  %252 = load i32*, i32** %251, align 8
  %253 = load %struct.hevc_dcr_params*, %struct.hevc_dcr_params** %6, align 8
  %254 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %253, i32 0, i32 9
  %255 = load i32*, i32** %254, align 8
  %256 = call i32 @HEVC_DCR_ADD_NALS(i32 %246, i64 %249, i32* %252, i32* %255)
  %257 = load i32, i32* @HEVC_NAL_PREF_SEI, align 4
  %258 = load %struct.hevc_dcr_params*, %struct.hevc_dcr_params** %6, align 8
  %259 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %258, i32 0, i32 3
  %260 = load i64, i64* %259, align 8
  %261 = load %struct.hevc_dcr_params*, %struct.hevc_dcr_params** %6, align 8
  %262 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %261, i32 0, i32 8
  %263 = load i32*, i32** %262, align 8
  %264 = load %struct.hevc_dcr_params*, %struct.hevc_dcr_params** %6, align 8
  %265 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %264, i32 0, i32 7
  %266 = load i32*, i32** %265, align 8
  %267 = call i32 @HEVC_DCR_ADD_NALS(i32 %257, i64 %260, i32* %263, i32* %266)
  %268 = load i32, i32* @HEVC_NAL_SUFF_SEI, align 4
  %269 = load %struct.hevc_dcr_params*, %struct.hevc_dcr_params** %6, align 8
  %270 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %269, i32 0, i32 4
  %271 = load i64, i64* %270, align 8
  %272 = load %struct.hevc_dcr_params*, %struct.hevc_dcr_params** %6, align 8
  %273 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %272, i32 0, i32 6
  %274 = load i32*, i32** %273, align 8
  %275 = load %struct.hevc_dcr_params*, %struct.hevc_dcr_params** %6, align 8
  %276 = getelementptr inbounds %struct.hevc_dcr_params, %struct.hevc_dcr_params* %275, i32 0, i32 5
  %277 = load i32*, i32** %276, align 8
  %278 = call i32 @HEVC_DCR_ADD_NALS(i32 %268, i64 %271, i32* %274, i32* %277)
  %279 = load i32*, i32** %13, align 8
  store i32* %279, i32** %5, align 8
  br label %280

280:                                              ; preds = %130, %129, %47, %24
  %281 = load i32*, i32** %5, align 8
  ret i32* %281
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @hevc_dcr_params_from_vps(i32, i32, %struct.hevc_dcr_values*) #2

declare dso_local %struct.TYPE_4__* @hevc_decode_sps(i32, i32, i32) #2

declare dso_local i32 @hevc_rbsp_release_sps(%struct.TYPE_4__*) #2

declare dso_local i32 @HEVC_DCR_ADD_SIZES(i64, i32*) #2

declare dso_local i32* @malloc(i64) #2

declare dso_local i32 @memcpy(i32*, i32, i32) #2

declare dso_local i32 @SetWBE(i32*, i32) #2

declare dso_local i32 @HEVC_DCR_ADD_NALS(i32, i64, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
