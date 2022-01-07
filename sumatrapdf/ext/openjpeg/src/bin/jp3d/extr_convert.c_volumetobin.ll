; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp3d/extr_convert.c_volumetobin.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp3d/extr_convert.c_volumetobin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__*, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i64, i32* }

@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"[ERROR] Failed to open %s for writing\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"[INFO] Writing outfile %s (%s) \0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Bigendian\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Little-endian\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%s.img\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.7 = private unnamed_addr constant [65 x i8] c"Bpp\09%d\0AColor Map\092\0ADimensions\09%d\09%d\09%d\0AResolution(mm)\09%d\09%d\09%d\09\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @volumetobin(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca [256 x i8], align 16
  %25 = alloca i32, align 4
  %26 = alloca i8, align 1
  %27 = alloca i8, align 1
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* null, i32** %22, align 8
  store i32* null, i32** %23, align 8
  store i32 0, i32* %18, align 4
  br label %28

28:                                               ; preds = %452, %2
  %29 = load i32, i32* %18, align 4
  %30 = icmp slt i32 %29, 1
  br i1 %30, label %31, label %455

31:                                               ; preds = %28
  %32 = load i8*, i8** %5, align 8
  %33 = call i32* @fopen(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %33, i32** %22, align 8
  %34 = load i32*, i32** %22, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @stdout, align 4
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i32*
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 (i32*, i8*, ...) @fprintf(i32* %39, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  store i32 1, i32* %3, align 4
  br label %503

42:                                               ; preds = %31
  %43 = load i32, i32* @stdout, align 4
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i32*
  %46 = load i8*, i8** %5, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 11
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0)
  %56 = call i32 (i32*, i8*, ...) @fprintf(i32* %45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %46, i8* %55)
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 6
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %59, %62
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load i32, i32* %18, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @int_ceildiv(i64 %63, i32 %71)
  store i32 %72, i32* %6, align 4
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = load i32, i32* %18, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %7, align 4
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load i32, i32* %18, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = load i32, i32* %18, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 12
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = call i8* @int_ceildivpow2(i32 %88, i32 %98)
  %100 = ptrtoint i8* %99 to i32
  store i32 %100, i32* %8, align 4
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 5
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = sub nsw i64 %103, %106
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = load i32, i32* %18, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @int_ceildiv(i64 %107, i32 %115)
  store i32 %116, i32* %9, align 4
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = load i32, i32* %18, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %10, align 4
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = load i32, i32* %18, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = load i32, i32* %18, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 12
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 1
  %142 = load i32, i32* %141, align 4
  %143 = call i8* @int_ceildivpow2(i32 %132, i32 %142)
  %144 = ptrtoint i8* %143 to i32
  store i32 %144, i32* %11, align 4
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 4
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = sub nsw i64 %147, %150
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = load i32, i32* %18, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @int_ceildiv(i64 %151, i32 %159)
  store i32 %160, i32* %12, align 4
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %162, align 8
  %164 = load i32, i32* %18, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* %13, align 4
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %170, align 8
  %172 = load i32, i32* %18, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 5
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %178, align 8
  %180 = load i32, i32* %18, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 12
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 2
  %186 = load i32, i32* %185, align 4
  %187 = call i8* @int_ceildivpow2(i32 %176, i32 %186)
  %188 = ptrtoint i8* %187 to i32
  store i32 %188, i32* %14, align 4
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %190, align 8
  %192 = load i32, i32* %18, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 6
  %196 = load i32, i32* %195, align 8
  %197 = icmp sle i32 %196, 8
  br i1 %197, label %198, label %199

198:                                              ; preds = %42
  br label %210

199:                                              ; preds = %42
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 0
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %201, align 8
  %203 = load i32, i32* %18, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 6
  %207 = load i32, i32* %206, align 8
  %208 = shl i32 1, %207
  %209 = sub nsw i32 %208, 1
  br label %210

210:                                              ; preds = %199, %198
  %211 = phi i32 [ 255, %198 ], [ %209, %199 ]
  store i32 %211, i32* %15, align 4
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %213, align 8
  %215 = load i32, i32* %18, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 7
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 3
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 0
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %224, align 8
  %226 = load i32, i32* %18, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @int_ceildiv(i64 %222, i32 %230)
  %232 = sub nsw i32 %219, %231
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 0
  %235 = load %struct.TYPE_4__*, %struct.TYPE_4__** %234, align 8
  %236 = load i32, i32* %18, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 12
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 0
  %242 = load i32, i32* %241, align 4
  %243 = call i8* @int_ceildivpow2(i32 %232, i32 %242)
  %244 = ptrtoint i8* %243 to i32
  %245 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 0
  %247 = load %struct.TYPE_4__*, %struct.TYPE_4__** %246, align 8
  %248 = load i32, i32* %18, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 7
  store i32 %244, i32* %251, align 4
  %252 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 0
  %254 = load %struct.TYPE_4__*, %struct.TYPE_4__** %253, align 8
  %255 = load i32, i32* %18, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 8
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i32 0, i32 2
  %262 = load i64, i64* %261, align 8
  %263 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %263, i32 0, i32 0
  %265 = load %struct.TYPE_4__*, %struct.TYPE_4__** %264, align 8
  %266 = load i32, i32* %18, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = call i32 @int_ceildiv(i64 %262, i32 %270)
  %272 = sub nsw i32 %259, %271
  %273 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %273, i32 0, i32 0
  %275 = load %struct.TYPE_4__*, %struct.TYPE_4__** %274, align 8
  %276 = load i32, i32* %18, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %275, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i32 0, i32 12
  %280 = load i32*, i32** %279, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 1
  %282 = load i32, i32* %281, align 4
  %283 = call i8* @int_ceildivpow2(i32 %272, i32 %282)
  %284 = ptrtoint i8* %283 to i32
  %285 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %286 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %285, i32 0, i32 0
  %287 = load %struct.TYPE_4__*, %struct.TYPE_4__** %286, align 8
  %288 = load i32, i32* %18, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %287, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %290, i32 0, i32 8
  store i32 %284, i32* %291, align 8
  %292 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %293 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %292, i32 0, i32 0
  %294 = load %struct.TYPE_4__*, %struct.TYPE_4__** %293, align 8
  %295 = load i32, i32* %18, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %294, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %297, i32 0, i32 9
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %301 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %300, i32 0, i32 1
  %302 = load i64, i64* %301, align 8
  %303 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %303, i32 0, i32 0
  %305 = load %struct.TYPE_4__*, %struct.TYPE_4__** %304, align 8
  %306 = load i32, i32* %18, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %305, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %308, i32 0, i32 4
  %310 = load i32, i32* %309, align 8
  %311 = call i32 @int_ceildiv(i64 %302, i32 %310)
  %312 = sub nsw i32 %299, %311
  %313 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %314 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %313, i32 0, i32 0
  %315 = load %struct.TYPE_4__*, %struct.TYPE_4__** %314, align 8
  %316 = load i32, i32* %18, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %315, i64 %317
  %319 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %318, i32 0, i32 12
  %320 = load i32*, i32** %319, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 2
  %322 = load i32, i32* %321, align 4
  %323 = call i8* @int_ceildivpow2(i32 %312, i32 %322)
  %324 = ptrtoint i8* %323 to i32
  %325 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %326 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %325, i32 0, i32 0
  %327 = load %struct.TYPE_4__*, %struct.TYPE_4__** %326, align 8
  %328 = load i32, i32* %18, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %327, i64 %329
  %331 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %330, i32 0, i32 9
  store i32 %324, i32* %331, align 4
  %332 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %333 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %332, i32 0, i32 0
  %334 = load %struct.TYPE_4__*, %struct.TYPE_4__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %334, i64 0
  %336 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %335, i32 0, i32 6
  %337 = load i32, i32* %336, align 8
  %338 = icmp sle i32 %337, 8
  br i1 %338, label %339, label %340

339:                                              ; preds = %210
  store i32 1, i32* %19, align 4
  br label %351

340:                                              ; preds = %210
  %341 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %342 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %341, i32 0, i32 0
  %343 = load %struct.TYPE_4__*, %struct.TYPE_4__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %343, i64 0
  %345 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %344, i32 0, i32 6
  %346 = load i32, i32* %345, align 8
  %347 = icmp sle i32 %346, 16
  br i1 %347, label %348, label %349

348:                                              ; preds = %340
  store i32 2, i32* %19, align 4
  br label %350

349:                                              ; preds = %340
  store i32 4, i32* %19, align 4
  br label %350

350:                                              ; preds = %349, %348
  br label %351

351:                                              ; preds = %350, %339
  store i32 0, i32* %21, align 4
  br label %352

352:                                              ; preds = %448, %351
  %353 = load i32, i32* %21, align 4
  %354 = load i32, i32* %14, align 4
  %355 = icmp slt i32 %353, %354
  br i1 %355, label %356, label %451

356:                                              ; preds = %352
  %357 = load i32, i32* %21, align 4
  %358 = load i32, i32* %14, align 4
  %359 = sdiv i32 %357, %358
  %360 = load i32, i32* %12, align 4
  %361 = mul nsw i32 %359, %360
  %362 = load i32, i32* %21, align 4
  %363 = load i32, i32* %14, align 4
  %364 = srem i32 %362, %363
  %365 = add nsw i32 %361, %364
  store i32 %365, i32* %20, align 4
  %366 = load i32, i32* %8, align 4
  %367 = load i32, i32* %11, align 4
  %368 = mul nsw i32 %366, %367
  %369 = load i32, i32* %20, align 4
  %370 = mul nsw i32 %368, %369
  store i32 %370, i32* %20, align 4
  store i32 0, i32* %16, align 4
  br label %371

371:                                              ; preds = %444, %356
  %372 = load i32, i32* %16, align 4
  %373 = load i32, i32* %8, align 4
  %374 = load i32, i32* %11, align 4
  %375 = mul nsw i32 %373, %374
  %376 = icmp slt i32 %372, %375
  br i1 %376, label %377, label %447

377:                                              ; preds = %371
  %378 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %379 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %378, i32 0, i32 0
  %380 = load %struct.TYPE_4__*, %struct.TYPE_4__** %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %380, i64 0
  %382 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %381, i32 0, i32 10
  %383 = load i32*, i32** %382, align 8
  %384 = load i32, i32* %16, align 4
  %385 = load i32, i32* %8, align 4
  %386 = sdiv i32 %384, %385
  %387 = load i32, i32* %6, align 4
  %388 = mul nsw i32 %386, %387
  %389 = load i32, i32* %16, align 4
  %390 = load i32, i32* %8, align 4
  %391 = srem i32 %389, %390
  %392 = add nsw i32 %388, %391
  %393 = load i32, i32* %20, align 4
  %394 = add nsw i32 %392, %393
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds i32, i32* %383, i64 %395
  %397 = load i32, i32* %396, align 4
  store i32 %397, i32* %25, align 4
  %398 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %399 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %398, i32 0, i32 0
  %400 = load %struct.TYPE_4__*, %struct.TYPE_4__** %399, align 8
  %401 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %400, i64 0
  %402 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %401, i32 0, i32 11
  %403 = load i64, i64* %402, align 8
  %404 = icmp ne i64 %403, 0
  br i1 %404, label %405, label %424

405:                                              ; preds = %377
  %406 = load i32, i32* %19, align 4
  %407 = sub nsw i32 %406, 1
  store i32 %407, i32* %17, align 4
  br label %408

408:                                              ; preds = %420, %405
  %409 = load i32, i32* %17, align 4
  %410 = icmp sge i32 %409, 0
  br i1 %410, label %411, label %423

411:                                              ; preds = %408
  %412 = load i32, i32* %25, align 4
  %413 = load i32, i32* %17, align 4
  %414 = mul nsw i32 %413, 8
  %415 = ashr i32 %412, %414
  %416 = and i32 %415, 255
  %417 = trunc i32 %416 to i8
  store i8 %417, i8* %26, align 1
  %418 = load i32*, i32** %22, align 8
  %419 = call i32 @fwrite(i8* %26, i32 1, i32 1, i32* %418)
  br label %420

420:                                              ; preds = %411
  %421 = load i32, i32* %17, align 4
  %422 = add nsw i32 %421, -1
  store i32 %422, i32* %17, align 4
  br label %408

423:                                              ; preds = %408
  br label %443

424:                                              ; preds = %377
  store i32 0, i32* %17, align 4
  br label %425

425:                                              ; preds = %439, %424
  %426 = load i32, i32* %17, align 4
  %427 = load i32, i32* %19, align 4
  %428 = sub nsw i32 %427, 1
  %429 = icmp sle i32 %426, %428
  br i1 %429, label %430, label %442

430:                                              ; preds = %425
  %431 = load i32, i32* %25, align 4
  %432 = load i32, i32* %17, align 4
  %433 = mul nsw i32 %432, 8
  %434 = ashr i32 %431, %433
  %435 = and i32 %434, 255
  %436 = trunc i32 %435 to i8
  store i8 %436, i8* %27, align 1
  %437 = load i32*, i32** %22, align 8
  %438 = call i32 @fwrite(i8* %27, i32 1, i32 1, i32* %437)
  br label %439

439:                                              ; preds = %430
  %440 = load i32, i32* %17, align 4
  %441 = add nsw i32 %440, 1
  store i32 %441, i32* %17, align 4
  br label %425

442:                                              ; preds = %425
  br label %443

443:                                              ; preds = %442, %423
  br label %444

444:                                              ; preds = %443
  %445 = load i32, i32* %16, align 4
  %446 = add nsw i32 %445, 1
  store i32 %446, i32* %16, align 4
  br label %371

447:                                              ; preds = %371
  br label %448

448:                                              ; preds = %447
  %449 = load i32, i32* %21, align 4
  %450 = add nsw i32 %449, 1
  store i32 %450, i32* %21, align 4
  br label %352

451:                                              ; preds = %352
  br label %452

452:                                              ; preds = %451
  %453 = load i32, i32* %18, align 4
  %454 = add nsw i32 %453, 1
  store i32 %454, i32* %18, align 4
  br label %28

455:                                              ; preds = %28
  %456 = load i32*, i32** %22, align 8
  %457 = call i32 @fclose(i32* %456)
  %458 = getelementptr inbounds [256 x i8], [256 x i8]* %24, i64 0, i64 0
  %459 = load i8*, i8** %5, align 8
  %460 = call i32 @sprintf(i8* %458, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %459)
  %461 = getelementptr inbounds [256 x i8], [256 x i8]* %24, i64 0, i64 0
  %462 = call i32* @fopen(i8* %461, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i32* %462, i32** %23, align 8
  %463 = load i32*, i32** %23, align 8
  %464 = icmp ne i32* %463, null
  br i1 %464, label %471, label %465

465:                                              ; preds = %455
  %466 = load i32, i32* @stdout, align 4
  %467 = sext i32 %466 to i64
  %468 = inttoptr i64 %467 to i32*
  %469 = getelementptr inbounds [256 x i8], [256 x i8]* %24, i64 0, i64 0
  %470 = call i32 (i32*, i8*, ...) @fprintf(i32* %468, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %469)
  store i32 1, i32* %3, align 4
  br label %503

471:                                              ; preds = %455
  %472 = load i32*, i32** %23, align 8
  %473 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %474 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %473, i32 0, i32 0
  %475 = load %struct.TYPE_4__*, %struct.TYPE_4__** %474, align 8
  %476 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %475, i64 0
  %477 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %476, i32 0, i32 6
  %478 = load i32, i32* %477, align 8
  %479 = load i32, i32* %8, align 4
  %480 = load i32, i32* %11, align 4
  %481 = load i32, i32* %14, align 4
  %482 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %483 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %482, i32 0, i32 0
  %484 = load %struct.TYPE_4__*, %struct.TYPE_4__** %483, align 8
  %485 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %484, i64 0
  %486 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %485, i32 0, i32 0
  %487 = load i32, i32* %486, align 8
  %488 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %489 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %488, i32 0, i32 0
  %490 = load %struct.TYPE_4__*, %struct.TYPE_4__** %489, align 8
  %491 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %490, i64 0
  %492 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %491, i32 0, i32 2
  %493 = load i32, i32* %492, align 8
  %494 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %495 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %494, i32 0, i32 0
  %496 = load %struct.TYPE_4__*, %struct.TYPE_4__** %495, align 8
  %497 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %496, i64 0
  %498 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %497, i32 0, i32 4
  %499 = load i32, i32* %498, align 8
  %500 = call i32 (i32*, i8*, ...) @fprintf(i32* %472, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.7, i64 0, i64 0), i32 %478, i32 %479, i32 %480, i32 %481, i32 %487, i32 %493, i32 %499)
  %501 = load i32*, i32** %23, align 8
  %502 = call i32 @fclose(i32* %501)
  store i32 0, i32* %3, align 4
  br label %503

503:                                              ; preds = %471, %465, %36
  %504 = load i32, i32* %3, align 4
  ret i32 %504
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @int_ceildiv(i64, i32) #1

declare dso_local i8* @int_ceildivpow2(i32, i32) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
