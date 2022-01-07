; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_filter-fax.c_dec2d.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_filter-fax.c_dec2d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, i32 }

@STATE_H1 = common dso_local global i64 0, align 8
@STATE_H2 = common dso_local global i64 0, align 8
@cf_black_decode = common dso_local global i32 0, align 4
@cfd_black_initial_bits = common dso_local global i32 0, align 4
@cf_white_decode = common dso_local global i32 0, align 4
@cfd_white_initial_bits = common dso_local global i32 0, align 4
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"uncompressed data in faxd\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"negative code in 2d faxd\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"overflow in 2d faxd\00", align 1
@STATE_NORMAL = common dso_local global i64 0, align 8
@cf_2d_decode = common dso_local global i32 0, align 4
@cfd_2d_initial_bits = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"invalid code in 2d faxd\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"invalid code in 2d faxd (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*)* @dec2d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dec2d(i32* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @STATE_H1, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @STATE_H2, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %129

19:                                               ; preds = %13, %2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  store i32 0, i32* %26, align 8
  br label %27

27:                                               ; preds = %24, %19
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load i32*, i32** %3, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %35 = load i32, i32* @cf_black_decode, align 4
  %36 = load i32, i32* @cfd_black_initial_bits, align 4
  %37 = call i32 @get_code(i32* %33, %struct.TYPE_4__* %34, i32 %35, i32 %36)
  store i32 %37, i32* %5, align 4
  br label %44

38:                                               ; preds = %27
  %39 = load i32*, i32** %3, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %41 = load i32, i32* @cf_white_decode, align 4
  %42 = load i32, i32* @cfd_white_initial_bits, align 4
  %43 = call i32 @get_code(i32* %39, %struct.TYPE_4__* %40, i32 %41, i32 %42)
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %38, %32
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %45, 135
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i32*, i32** %3, align 8
  %49 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %50 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %48, i32 %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %47, %44
  %52 = load i32, i32* %5, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i32*, i32** %3, align 8
  %56 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %57 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %55, i32 %56, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %54, %51
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %61, %62
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = icmp sgt i32 %63, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %58
  %69 = load i32*, i32** %3, align 8
  %70 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %71 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %69, i32 %70, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %72

72:                                               ; preds = %68, %58
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %72
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %86, %87
  %89 = call i32 @setbits(i32 %80, i32 %83, i32 %88)
  br label %90

90:                                               ; preds = %77, %72
  %91 = load i32, i32* %5, align 4
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, %91
  store i32 %95, i32* %93, align 8
  %96 = load i32, i32* %5, align 4
  %97 = icmp slt i32 %96, 64
  br i1 %97, label %98, label %128

98:                                               ; preds = %90
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  %104 = zext i1 %103 to i32
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 4
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @STATE_H1, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %98
  %113 = load i64, i64* @STATE_H2, align 8
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  br label %127

116:                                              ; preds = %98
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @STATE_H2, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = load i64, i64* @STATE_NORMAL, align 8
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  store i64 %123, i64* %125, align 8
  br label %126

126:                                              ; preds = %122, %116
  br label %127

127:                                              ; preds = %126, %112
  br label %128

128:                                              ; preds = %127, %90
  br label %548

129:                                              ; preds = %13
  %130 = load i32*, i32** %3, align 8
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %132 = load i32, i32* @cf_2d_decode, align 4
  %133 = load i32, i32* @cfd_2d_initial_bits, align 4
  %134 = call i32 @get_code(i32* %130, %struct.TYPE_4__* %131, i32 %132, i32 %133)
  store i32 %134, i32* %5, align 4
  %135 = load i32, i32* %5, align 4
  switch i32 %135, label %543 [
    i32 137, label %136
    i32 136, label %140
    i32 134, label %193
    i32 130, label %235
    i32 129, label %288
    i32 128, label %341
    i32 133, label %394
    i32 132, label %441
    i32 131, label %488
    i32 135, label %535
    i32 138, label %539
  ]

136:                                              ; preds = %129
  %137 = load i64, i64* @STATE_H1, align 8
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  store i64 %137, i64* %139, align 8
  br label %548

140:                                              ; preds = %129
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 0
  %154 = xor i1 %153, true
  %155 = zext i1 %154 to i32
  %156 = call i32 @find_changing_color(i32 %143, i32 %146, i32 %149, i32 %155)
  store i32 %156, i32* %6, align 4
  %157 = load i32, i32* %6, align 4
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 8
  %161 = icmp sge i32 %157, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %140
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 8
  store i32 %165, i32* %7, align 4
  br label %175

166:                                              ; preds = %140
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 5
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* %6, align 4
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @find_changing(i32 %169, i32 %170, i32 %173)
  store i32 %174, i32* %7, align 4
  br label %175

175:                                              ; preds = %166, %162
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %189

180:                                              ; preds = %175
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* %7, align 4
  %188 = call i32 @setbits(i32 %183, i32 %186, i32 %187)
  br label %189

189:                                              ; preds = %180, %175
  %190 = load i32, i32* %7, align 4
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 1
  store i32 %190, i32* %192, align 8
  br label %548

193:                                              ; preds = %129
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 5
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = icmp ne i32 %205, 0
  %207 = xor i1 %206, true
  %208 = zext i1 %207 to i32
  %209 = call i32 @find_changing_color(i32 %196, i32 %199, i32 %202, i32 %208)
  store i32 %209, i32* %6, align 4
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %223

214:                                              ; preds = %193
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 4
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* %6, align 4
  %222 = call i32 @setbits(i32 %217, i32 %220, i32 %221)
  br label %223

223:                                              ; preds = %214, %193
  %224 = load i32, i32* %6, align 4
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 1
  store i32 %224, i32* %226, align 8
  %227 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 4
  %230 = icmp ne i32 %229, 0
  %231 = xor i1 %230, true
  %232 = zext i1 %231 to i32
  %233 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 2
  store i32 %232, i32* %234, align 4
  br label %548

235:                                              ; preds = %129
  %236 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 5
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 4
  %248 = icmp ne i32 %247, 0
  %249 = xor i1 %248, true
  %250 = zext i1 %249 to i32
  %251 = call i32 @find_changing_color(i32 %238, i32 %241, i32 %244, i32 %250)
  %252 = add nsw i32 1, %251
  store i32 %252, i32* %6, align 4
  %253 = load i32, i32* %6, align 4
  %254 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 8
  %257 = icmp sge i32 %253, %256
  br i1 %257, label %258, label %262

258:                                              ; preds = %235
  %259 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 8
  store i32 %261, i32* %6, align 4
  br label %262

262:                                              ; preds = %258, %235
  %263 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %276

267:                                              ; preds = %262
  %268 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %268, i32 0, i32 4
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* %6, align 4
  %275 = call i32 @setbits(i32 %270, i32 %273, i32 %274)
  br label %276

276:                                              ; preds = %267, %262
  %277 = load i32, i32* %6, align 4
  %278 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i32 0, i32 1
  store i32 %277, i32* %279, align 8
  %280 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 4
  %283 = icmp ne i32 %282, 0
  %284 = xor i1 %283, true
  %285 = zext i1 %284 to i32
  %286 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i32 0, i32 2
  store i32 %285, i32* %287, align 4
  br label %548

288:                                              ; preds = %129
  %289 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %290 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %289, i32 0, i32 5
  %291 = load i32, i32* %290, align 8
  %292 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %293 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 8
  %295 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %296 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %295, i32 0, i32 3
  %297 = load i32, i32* %296, align 8
  %298 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %299 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 4
  %301 = icmp ne i32 %300, 0
  %302 = xor i1 %301, true
  %303 = zext i1 %302 to i32
  %304 = call i32 @find_changing_color(i32 %291, i32 %294, i32 %297, i32 %303)
  %305 = add nsw i32 2, %304
  store i32 %305, i32* %6, align 4
  %306 = load i32, i32* %6, align 4
  %307 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %308 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %307, i32 0, i32 3
  %309 = load i32, i32* %308, align 8
  %310 = icmp sge i32 %306, %309
  br i1 %310, label %311, label %315

311:                                              ; preds = %288
  %312 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %313 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %312, i32 0, i32 3
  %314 = load i32, i32* %313, align 8
  store i32 %314, i32* %6, align 4
  br label %315

315:                                              ; preds = %311, %288
  %316 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %317 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %316, i32 0, i32 2
  %318 = load i32, i32* %317, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %329

320:                                              ; preds = %315
  %321 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %322 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %321, i32 0, i32 4
  %323 = load i32, i32* %322, align 4
  %324 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %325 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 8
  %327 = load i32, i32* %6, align 4
  %328 = call i32 @setbits(i32 %323, i32 %326, i32 %327)
  br label %329

329:                                              ; preds = %320, %315
  %330 = load i32, i32* %6, align 4
  %331 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %332 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %331, i32 0, i32 1
  store i32 %330, i32* %332, align 8
  %333 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %334 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %333, i32 0, i32 2
  %335 = load i32, i32* %334, align 4
  %336 = icmp ne i32 %335, 0
  %337 = xor i1 %336, true
  %338 = zext i1 %337 to i32
  %339 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %340 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %339, i32 0, i32 2
  store i32 %338, i32* %340, align 4
  br label %548

341:                                              ; preds = %129
  %342 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %343 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %342, i32 0, i32 5
  %344 = load i32, i32* %343, align 8
  %345 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %346 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 8
  %348 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %349 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %348, i32 0, i32 3
  %350 = load i32, i32* %349, align 8
  %351 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %352 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %351, i32 0, i32 2
  %353 = load i32, i32* %352, align 4
  %354 = icmp ne i32 %353, 0
  %355 = xor i1 %354, true
  %356 = zext i1 %355 to i32
  %357 = call i32 @find_changing_color(i32 %344, i32 %347, i32 %350, i32 %356)
  %358 = add nsw i32 3, %357
  store i32 %358, i32* %6, align 4
  %359 = load i32, i32* %6, align 4
  %360 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %361 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %360, i32 0, i32 3
  %362 = load i32, i32* %361, align 8
  %363 = icmp sge i32 %359, %362
  br i1 %363, label %364, label %368

364:                                              ; preds = %341
  %365 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %366 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %365, i32 0, i32 3
  %367 = load i32, i32* %366, align 8
  store i32 %367, i32* %6, align 4
  br label %368

368:                                              ; preds = %364, %341
  %369 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %370 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %369, i32 0, i32 2
  %371 = load i32, i32* %370, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %382

373:                                              ; preds = %368
  %374 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %375 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %374, i32 0, i32 4
  %376 = load i32, i32* %375, align 4
  %377 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %378 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %377, i32 0, i32 1
  %379 = load i32, i32* %378, align 8
  %380 = load i32, i32* %6, align 4
  %381 = call i32 @setbits(i32 %376, i32 %379, i32 %380)
  br label %382

382:                                              ; preds = %373, %368
  %383 = load i32, i32* %6, align 4
  %384 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %385 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %384, i32 0, i32 1
  store i32 %383, i32* %385, align 8
  %386 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %387 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %386, i32 0, i32 2
  %388 = load i32, i32* %387, align 4
  %389 = icmp ne i32 %388, 0
  %390 = xor i1 %389, true
  %391 = zext i1 %390 to i32
  %392 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %393 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %392, i32 0, i32 2
  store i32 %391, i32* %393, align 4
  br label %548

394:                                              ; preds = %129
  %395 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %396 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %395, i32 0, i32 5
  %397 = load i32, i32* %396, align 8
  %398 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %399 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %398, i32 0, i32 1
  %400 = load i32, i32* %399, align 8
  %401 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %402 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %401, i32 0, i32 3
  %403 = load i32, i32* %402, align 8
  %404 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %405 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %404, i32 0, i32 2
  %406 = load i32, i32* %405, align 4
  %407 = icmp ne i32 %406, 0
  %408 = xor i1 %407, true
  %409 = zext i1 %408 to i32
  %410 = call i32 @find_changing_color(i32 %397, i32 %400, i32 %403, i32 %409)
  %411 = add nsw i32 -1, %410
  store i32 %411, i32* %6, align 4
  %412 = load i32, i32* %6, align 4
  %413 = icmp slt i32 %412, 0
  br i1 %413, label %414, label %415

414:                                              ; preds = %394
  store i32 0, i32* %6, align 4
  br label %415

415:                                              ; preds = %414, %394
  %416 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %417 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %416, i32 0, i32 2
  %418 = load i32, i32* %417, align 4
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %429

420:                                              ; preds = %415
  %421 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %422 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %421, i32 0, i32 4
  %423 = load i32, i32* %422, align 4
  %424 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %425 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %424, i32 0, i32 1
  %426 = load i32, i32* %425, align 8
  %427 = load i32, i32* %6, align 4
  %428 = call i32 @setbits(i32 %423, i32 %426, i32 %427)
  br label %429

429:                                              ; preds = %420, %415
  %430 = load i32, i32* %6, align 4
  %431 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %432 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %431, i32 0, i32 1
  store i32 %430, i32* %432, align 8
  %433 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %434 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %433, i32 0, i32 2
  %435 = load i32, i32* %434, align 4
  %436 = icmp ne i32 %435, 0
  %437 = xor i1 %436, true
  %438 = zext i1 %437 to i32
  %439 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %440 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %439, i32 0, i32 2
  store i32 %438, i32* %440, align 4
  br label %548

441:                                              ; preds = %129
  %442 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %443 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %442, i32 0, i32 5
  %444 = load i32, i32* %443, align 8
  %445 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %446 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %445, i32 0, i32 1
  %447 = load i32, i32* %446, align 8
  %448 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %449 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %448, i32 0, i32 3
  %450 = load i32, i32* %449, align 8
  %451 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %452 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %451, i32 0, i32 2
  %453 = load i32, i32* %452, align 4
  %454 = icmp ne i32 %453, 0
  %455 = xor i1 %454, true
  %456 = zext i1 %455 to i32
  %457 = call i32 @find_changing_color(i32 %444, i32 %447, i32 %450, i32 %456)
  %458 = add nsw i32 -2, %457
  store i32 %458, i32* %6, align 4
  %459 = load i32, i32* %6, align 4
  %460 = icmp slt i32 %459, 0
  br i1 %460, label %461, label %462

461:                                              ; preds = %441
  store i32 0, i32* %6, align 4
  br label %462

462:                                              ; preds = %461, %441
  %463 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %464 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %463, i32 0, i32 2
  %465 = load i32, i32* %464, align 4
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %467, label %476

467:                                              ; preds = %462
  %468 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %469 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %468, i32 0, i32 4
  %470 = load i32, i32* %469, align 4
  %471 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %472 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %471, i32 0, i32 1
  %473 = load i32, i32* %472, align 8
  %474 = load i32, i32* %6, align 4
  %475 = call i32 @setbits(i32 %470, i32 %473, i32 %474)
  br label %476

476:                                              ; preds = %467, %462
  %477 = load i32, i32* %6, align 4
  %478 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %479 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %478, i32 0, i32 1
  store i32 %477, i32* %479, align 8
  %480 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %481 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %480, i32 0, i32 2
  %482 = load i32, i32* %481, align 4
  %483 = icmp ne i32 %482, 0
  %484 = xor i1 %483, true
  %485 = zext i1 %484 to i32
  %486 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %487 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %486, i32 0, i32 2
  store i32 %485, i32* %487, align 4
  br label %548

488:                                              ; preds = %129
  %489 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %490 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %489, i32 0, i32 5
  %491 = load i32, i32* %490, align 8
  %492 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %493 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %492, i32 0, i32 1
  %494 = load i32, i32* %493, align 8
  %495 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %496 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %495, i32 0, i32 3
  %497 = load i32, i32* %496, align 8
  %498 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %499 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %498, i32 0, i32 2
  %500 = load i32, i32* %499, align 4
  %501 = icmp ne i32 %500, 0
  %502 = xor i1 %501, true
  %503 = zext i1 %502 to i32
  %504 = call i32 @find_changing_color(i32 %491, i32 %494, i32 %497, i32 %503)
  %505 = add nsw i32 -3, %504
  store i32 %505, i32* %6, align 4
  %506 = load i32, i32* %6, align 4
  %507 = icmp slt i32 %506, 0
  br i1 %507, label %508, label %509

508:                                              ; preds = %488
  store i32 0, i32* %6, align 4
  br label %509

509:                                              ; preds = %508, %488
  %510 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %511 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %510, i32 0, i32 2
  %512 = load i32, i32* %511, align 4
  %513 = icmp ne i32 %512, 0
  br i1 %513, label %514, label %523

514:                                              ; preds = %509
  %515 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %516 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %515, i32 0, i32 4
  %517 = load i32, i32* %516, align 4
  %518 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %519 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %518, i32 0, i32 1
  %520 = load i32, i32* %519, align 8
  %521 = load i32, i32* %6, align 4
  %522 = call i32 @setbits(i32 %517, i32 %520, i32 %521)
  br label %523

523:                                              ; preds = %514, %509
  %524 = load i32, i32* %6, align 4
  %525 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %526 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %525, i32 0, i32 1
  store i32 %524, i32* %526, align 8
  %527 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %528 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %527, i32 0, i32 2
  %529 = load i32, i32* %528, align 4
  %530 = icmp ne i32 %529, 0
  %531 = xor i1 %530, true
  %532 = zext i1 %531 to i32
  %533 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %534 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %533, i32 0, i32 2
  store i32 %532, i32* %534, align 4
  br label %548

535:                                              ; preds = %129
  %536 = load i32*, i32** %3, align 8
  %537 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %538 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %536, i32 %537, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %539

539:                                              ; preds = %129, %535
  %540 = load i32*, i32** %3, align 8
  %541 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %542 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %540, i32 %541, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %543

543:                                              ; preds = %129, %539
  %544 = load i32*, i32** %3, align 8
  %545 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %546 = load i32, i32* %5, align 4
  %547 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %544, i32 %545, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %546)
  br label %548

548:                                              ; preds = %128, %543, %523, %476, %429, %382, %329, %276, %223, %189, %136
  ret void
}

declare dso_local i32 @get_code(i32*, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*, ...) #1

declare dso_local i32 @setbits(i32, i32, i32) #1

declare dso_local i32 @find_changing_color(i32, i32, i32, i32) #1

declare dso_local i32 @find_changing(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
