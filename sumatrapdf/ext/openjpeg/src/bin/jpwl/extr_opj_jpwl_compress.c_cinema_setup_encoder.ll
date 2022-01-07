; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jpwl/extr_opj_jpwl_compress.c_cinema_setup_encoder.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jpwl/extr_opj_jpwl_compress.c_cinema_setup_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, float*, i32, i32, i32, i32, i8* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32* }

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [162 x i8] c"Image coordinates %d x %d is not 2K compliant.\0AJPEG Digital Cinema Profile-3 (2K profile) compliance requires that at least one of coordinates match 2048 x 1080\0A\00", align 1
@STD_RSIZ = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [161 x i8] c"Image coordinates %d x %d is not 4K compliant.\0AJPEG Digital Cinema Profile-4(4K profile) compliance requires that at least one of coordinates match 4096 x 2160\0A\00", align 1
@CINEMA_24_CS = common dso_local global i32 0, align 4
@COMP_24_CS = common dso_local global i32 0, align 4
@CINEMA_48_CS = common dso_local global i32 0, align 4
@COMP_48_CS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_11__*)* @cinema_setup_encoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cinema_setup_encoder(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %6, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %122 [
    i32 130, label %12
    i32 129, label %12
    i32 128, label %58
  ]

12:                                               ; preds = %3, %3
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp sgt i32 %15, 6
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  store i32 6, i32* %19, align 4
  br label %20

20:                                               ; preds = %17, %12
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 2048
  %28 = zext i1 %27 to i32
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 1080
  %36 = zext i1 %35 to i32
  %37 = or i32 %28, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %57, label %39

39:                                               ; preds = %20
  %40 = load i32, i32* @stdout, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @fprintf(i32 %40, i8* getelementptr inbounds ([162 x i8], [162 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %52)
  %54 = load i8*, i8** @STD_RSIZ, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 8
  store i8* %54, i8** %56, align 8
  br label %57

57:                                               ; preds = %39, %20
  br label %123

58:                                               ; preds = %3
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %61, 1
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  store i32 1, i32* %65, align 4
  br label %75

66:                                               ; preds = %58
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp sgt i32 %69, 7
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  store i32 7, i32* %73, align 4
  br label %74

74:                                               ; preds = %71, %66
  br label %75

75:                                               ; preds = %74, %63
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i64 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 4096
  %83 = zext i1 %82 to i32
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i64 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 2160
  %91 = zext i1 %90 to i32
  %92 = or i32 %83, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %112, label %94

94:                                               ; preds = %75
  %95 = load i32, i32* @stdout, align 4
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i64 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i64 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @fprintf(i32 %95, i8* getelementptr inbounds ([161 x i8], [161 x i8]* @.str.1, i64 0, i64 0), i32 %101, i32 %107)
  %109 = load i8*, i8** @STD_RSIZ, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 8
  store i8* %109, i8** %111, align 8
  br label %112

112:                                              ; preds = %94, %75
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @initialise_4K_poc(i32 %115, i32 %118)
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 7
  store i32 %119, i32* %121, align 4
  br label %123

122:                                              ; preds = %3
  br label %123

123:                                              ; preds = %122, %112, %57
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  switch i32 %126, label %509 [
    i32 130, label %127
    i32 128, label %127
    i32 129, label %319
  ]

127:                                              ; preds = %123, %123
  store i32 0, i32* %7, align 4
  br label %128

128:                                              ; preds = %312, %127
  %129 = load i32, i32* %7, align 4
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = icmp slt i32 %129, %132
  br i1 %133, label %134, label %315

134:                                              ; preds = %128
  store float 0.000000e+00, float* %8, align 4
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %7, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %191

143:                                              ; preds = %134
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i64 0
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = mul nsw i32 %146, %152
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i64 0
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = mul nsw i32 %153, %159
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i64 0
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = mul nsw i32 %160, %166
  %168 = sitofp i32 %167 to float
  %169 = load i32, i32* @CINEMA_24_CS, align 4
  %170 = mul nsw i32 %169, 8
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 1
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i64 0
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = mul nsw i32 %170, %176
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i64 0
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 4
  %184 = mul nsw i32 %177, %183
  %185 = sitofp i32 %184 to float
  %186 = fdiv float %168, %185
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 3
  %189 = load float*, float** %188, align 8
  %190 = getelementptr inbounds float, float* %189, i64 0
  store float %186, float* %190, align 4
  br label %311

191:                                              ; preds = %134
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i64 0
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = mul nsw i32 %194, %200
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 1
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i64 0
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = mul nsw i32 %201, %207
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 1
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i64 0
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = mul nsw i32 %208, %214
  %216 = sitofp i32 %215 to float
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %7, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = mul nsw i32 %223, 8
  %225 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 1
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i64 0
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 4
  %231 = mul nsw i32 %224, %230
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 1
  %234 = load %struct.TYPE_8__*, %struct.TYPE_8__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i64 0
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 4
  %237 = load i32, i32* %236, align 4
  %238 = mul nsw i32 %231, %237
  %239 = sitofp i32 %238 to float
  %240 = fdiv float %216, %239
  store float %240, float* %8, align 4
  %241 = load float, float* %8, align 4
  %242 = load i32, i32* @CINEMA_24_CS, align 4
  %243 = sitofp i32 %242 to float
  %244 = fcmp ogt float %241, %243
  br i1 %244, label %245, label %295

245:                                              ; preds = %191
  %246 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 1
  %251 = load %struct.TYPE_8__*, %struct.TYPE_8__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i64 0
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = mul nsw i32 %248, %254
  %256 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i32 0, i32 1
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i64 0
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = mul nsw i32 %255, %261
  %263 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %263, i32 0, i32 1
  %265 = load %struct.TYPE_8__*, %struct.TYPE_8__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %265, i64 0
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 4
  %269 = mul nsw i32 %262, %268
  %270 = sitofp i32 %269 to float
  %271 = load i32, i32* @CINEMA_24_CS, align 4
  %272 = mul nsw i32 %271, 8
  %273 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %274 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %273, i32 0, i32 1
  %275 = load %struct.TYPE_8__*, %struct.TYPE_8__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %275, i64 0
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %276, i32 0, i32 3
  %278 = load i32, i32* %277, align 4
  %279 = mul nsw i32 %272, %278
  %280 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %281 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %280, i32 0, i32 1
  %282 = load %struct.TYPE_8__*, %struct.TYPE_8__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %282, i64 0
  %284 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %283, i32 0, i32 4
  %285 = load i32, i32* %284, align 4
  %286 = mul nsw i32 %279, %285
  %287 = sitofp i32 %286 to float
  %288 = fdiv float %270, %287
  %289 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %289, i32 0, i32 3
  %291 = load float*, float** %290, align 8
  %292 = load i32, i32* %7, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds float, float* %291, i64 %293
  store float %288, float* %294, align 4
  br label %310

295:                                              ; preds = %191
  %296 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %297 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %296, i32 0, i32 0
  %298 = load i32*, i32** %297, align 8
  %299 = load i32, i32* %7, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %298, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = sitofp i32 %302 to float
  %304 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %305 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %304, i32 0, i32 3
  %306 = load float*, float** %305, align 8
  %307 = load i32, i32* %7, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds float, float* %306, i64 %308
  store float %303, float* %309, align 4
  br label %310

310:                                              ; preds = %295, %245
  br label %311

311:                                              ; preds = %310, %143
  br label %312

312:                                              ; preds = %311
  %313 = load i32, i32* %7, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %7, align 4
  br label %128

315:                                              ; preds = %128
  %316 = load i32, i32* @COMP_24_CS, align 4
  %317 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %318 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %317, i32 0, i32 5
  store i32 %316, i32* %318, align 4
  br label %510

319:                                              ; preds = %123
  store i32 0, i32* %7, align 4
  br label %320

320:                                              ; preds = %502, %319
  %321 = load i32, i32* %7, align 4
  %322 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %323 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %322, i32 0, i32 2
  %324 = load i32, i32* %323, align 8
  %325 = icmp slt i32 %321, %324
  br i1 %325, label %326, label %505

326:                                              ; preds = %320
  store float 0.000000e+00, float* %8, align 4
  %327 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %328 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %327, i32 0, i32 0
  %329 = load i32*, i32** %328, align 8
  %330 = load i32, i32* %7, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32, i32* %329, i64 %331
  %333 = load i32, i32* %332, align 4
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %335, label %383

335:                                              ; preds = %326
  %336 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %337 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 8
  %339 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %340 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %339, i32 0, i32 1
  %341 = load %struct.TYPE_8__*, %struct.TYPE_8__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %341, i64 0
  %343 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 4
  %345 = mul nsw i32 %338, %344
  %346 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %347 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %346, i32 0, i32 1
  %348 = load %struct.TYPE_8__*, %struct.TYPE_8__** %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %348, i64 0
  %350 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  %352 = mul nsw i32 %345, %351
  %353 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %354 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %353, i32 0, i32 1
  %355 = load %struct.TYPE_8__*, %struct.TYPE_8__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %355, i64 0
  %357 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %356, i32 0, i32 2
  %358 = load i32, i32* %357, align 4
  %359 = mul nsw i32 %352, %358
  %360 = sitofp i32 %359 to float
  %361 = load i32, i32* @CINEMA_48_CS, align 4
  %362 = mul nsw i32 %361, 8
  %363 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %364 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %363, i32 0, i32 1
  %365 = load %struct.TYPE_8__*, %struct.TYPE_8__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %365, i64 0
  %367 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %366, i32 0, i32 3
  %368 = load i32, i32* %367, align 4
  %369 = mul nsw i32 %362, %368
  %370 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %371 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %370, i32 0, i32 1
  %372 = load %struct.TYPE_8__*, %struct.TYPE_8__** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %372, i64 0
  %374 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %373, i32 0, i32 4
  %375 = load i32, i32* %374, align 4
  %376 = mul nsw i32 %369, %375
  %377 = sitofp i32 %376 to float
  %378 = fdiv float %360, %377
  %379 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %380 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %379, i32 0, i32 3
  %381 = load float*, float** %380, align 8
  %382 = getelementptr inbounds float, float* %381, i64 0
  store float %378, float* %382, align 4
  br label %501

383:                                              ; preds = %326
  %384 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %385 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 8
  %387 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %388 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %387, i32 0, i32 1
  %389 = load %struct.TYPE_8__*, %struct.TYPE_8__** %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %389, i64 0
  %391 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 4
  %393 = mul nsw i32 %386, %392
  %394 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %395 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %394, i32 0, i32 1
  %396 = load %struct.TYPE_8__*, %struct.TYPE_8__** %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %396, i64 0
  %398 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %397, i32 0, i32 1
  %399 = load i32, i32* %398, align 4
  %400 = mul nsw i32 %393, %399
  %401 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %402 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %401, i32 0, i32 1
  %403 = load %struct.TYPE_8__*, %struct.TYPE_8__** %402, align 8
  %404 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %403, i64 0
  %405 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %404, i32 0, i32 2
  %406 = load i32, i32* %405, align 4
  %407 = mul nsw i32 %400, %406
  %408 = sitofp i32 %407 to float
  %409 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %410 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %409, i32 0, i32 0
  %411 = load i32*, i32** %410, align 8
  %412 = load i32, i32* %7, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i32, i32* %411, i64 %413
  %415 = load i32, i32* %414, align 4
  %416 = mul nsw i32 %415, 8
  %417 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %418 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %417, i32 0, i32 1
  %419 = load %struct.TYPE_8__*, %struct.TYPE_8__** %418, align 8
  %420 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %419, i64 0
  %421 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %420, i32 0, i32 3
  %422 = load i32, i32* %421, align 4
  %423 = mul nsw i32 %416, %422
  %424 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %425 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %424, i32 0, i32 1
  %426 = load %struct.TYPE_8__*, %struct.TYPE_8__** %425, align 8
  %427 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %426, i64 0
  %428 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %427, i32 0, i32 4
  %429 = load i32, i32* %428, align 4
  %430 = mul nsw i32 %423, %429
  %431 = sitofp i32 %430 to float
  %432 = fdiv float %408, %431
  store float %432, float* %8, align 4
  %433 = load float, float* %8, align 4
  %434 = load i32, i32* @CINEMA_48_CS, align 4
  %435 = sitofp i32 %434 to float
  %436 = fcmp ogt float %433, %435
  br i1 %436, label %437, label %485

437:                                              ; preds = %383
  %438 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %439 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %438, i32 0, i32 0
  %440 = load i32, i32* %439, align 8
  %441 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %442 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %441, i32 0, i32 1
  %443 = load %struct.TYPE_8__*, %struct.TYPE_8__** %442, align 8
  %444 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %443, i64 0
  %445 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %444, i32 0, i32 0
  %446 = load i32, i32* %445, align 4
  %447 = mul nsw i32 %440, %446
  %448 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %449 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %448, i32 0, i32 1
  %450 = load %struct.TYPE_8__*, %struct.TYPE_8__** %449, align 8
  %451 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %450, i64 0
  %452 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %451, i32 0, i32 1
  %453 = load i32, i32* %452, align 4
  %454 = mul nsw i32 %447, %453
  %455 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %456 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %455, i32 0, i32 1
  %457 = load %struct.TYPE_8__*, %struct.TYPE_8__** %456, align 8
  %458 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %457, i64 0
  %459 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %458, i32 0, i32 2
  %460 = load i32, i32* %459, align 4
  %461 = mul nsw i32 %454, %460
  %462 = sitofp i32 %461 to float
  %463 = load i32, i32* @CINEMA_48_CS, align 4
  %464 = mul nsw i32 %463, 8
  %465 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %466 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %465, i32 0, i32 1
  %467 = load %struct.TYPE_8__*, %struct.TYPE_8__** %466, align 8
  %468 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %467, i64 0
  %469 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %468, i32 0, i32 3
  %470 = load i32, i32* %469, align 4
  %471 = mul nsw i32 %464, %470
  %472 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %473 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %472, i32 0, i32 1
  %474 = load %struct.TYPE_8__*, %struct.TYPE_8__** %473, align 8
  %475 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %474, i64 0
  %476 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %475, i32 0, i32 4
  %477 = load i32, i32* %476, align 4
  %478 = mul nsw i32 %471, %477
  %479 = sitofp i32 %478 to float
  %480 = fdiv float %462, %479
  %481 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %482 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %481, i32 0, i32 3
  %483 = load float*, float** %482, align 8
  %484 = getelementptr inbounds float, float* %483, i64 0
  store float %480, float* %484, align 4
  br label %500

485:                                              ; preds = %383
  %486 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %487 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %486, i32 0, i32 0
  %488 = load i32*, i32** %487, align 8
  %489 = load i32, i32* %7, align 4
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds i32, i32* %488, i64 %490
  %492 = load i32, i32* %491, align 4
  %493 = sitofp i32 %492 to float
  %494 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %495 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %494, i32 0, i32 3
  %496 = load float*, float** %495, align 8
  %497 = load i32, i32* %7, align 4
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds float, float* %496, i64 %498
  store float %493, float* %499, align 4
  br label %500

500:                                              ; preds = %485, %437
  br label %501

501:                                              ; preds = %500, %335
  br label %502

502:                                              ; preds = %501
  %503 = load i32, i32* %7, align 4
  %504 = add nsw i32 %503, 1
  store i32 %504, i32* %7, align 4
  br label %320

505:                                              ; preds = %320
  %506 = load i32, i32* @COMP_48_CS, align 4
  %507 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %508 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %507, i32 0, i32 5
  store i32 %506, i32* %508, align 4
  br label %510

509:                                              ; preds = %123
  br label %510

510:                                              ; preds = %509, %505, %315
  %511 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %512 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %511, i32 0, i32 4
  store i32 1, i32* %512, align 8
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @initialise_4K_poc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
