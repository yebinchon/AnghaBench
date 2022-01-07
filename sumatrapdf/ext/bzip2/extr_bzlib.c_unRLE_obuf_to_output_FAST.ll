; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/bzip2/extr_bzlib.c_unRLE_obuf_to_output_FAST.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/bzip2/extr_bzlib.c_unRLE_obuf_to_output_FAST.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32, i64, i64, i64, i32*, i32, i64, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32, i8*, i32, i32 }

@True = common dso_local global i64 0, align 8
@False = common dso_local global i64 0, align 8
@BZ_RAND_UPD_MASK = common dso_local global i32 0, align 4
@BZ_RAND_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*)* @unRLE_obuf_to_output_FAST to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @unRLE_obuf_to_output_FAST(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 10
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %251

22:                                               ; preds = %1
  br label %23

23:                                               ; preds = %221, %217, %210, %185, %178, %153, %146, %22
  %24 = load i64, i64* @True, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %250

26:                                               ; preds = %23
  br label %27

27:                                               ; preds = %97, %26
  %28 = load i64, i64* @True, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %98

30:                                               ; preds = %27
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 9
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i64, i64* @False, align 8
  store i64 %38, i64* %2, align 8
  br label %470

39:                                               ; preds = %30
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %98

45:                                               ; preds = %39
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 9
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = bitcast i8* %53 to i64*
  store i64 %48, i64* %54, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @BZ_UPDATE_CRC(i32 %57, i64 %60)
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, -1
  store i64 %65, i64* %63, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 9
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %69, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 9
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = add i32 %76, -1
  store i32 %77, i32* %75, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 9
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = add i32 %82, 1
  store i32 %83, i32* %81, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 9
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %45
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 9
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %90, %45
  br label %27

98:                                               ; preds = %44, %27
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %104, 1
  %106 = icmp eq i64 %101, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %98
  %108 = load i64, i64* @False, align 8
  store i64 %108, i64* %2, align 8
  br label %470

109:                                              ; preds = %98
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %115, 1
  %117 = icmp sgt i64 %112, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %109
  %119 = load i64, i64* @True, align 8
  store i64 %119, i64* %2, align 8
  br label %470

120:                                              ; preds = %109
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  store i64 1, i64* %122, align 8
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 5
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  store i64 %125, i64* %127, align 8
  %128 = load i64, i64* %4, align 8
  %129 = call i32 @BZ_GET_FAST(i64 %128)
  %130 = load i32, i32* @BZ_RAND_UPD_MASK, align 4
  %131 = load i64, i64* @BZ_RAND_MASK, align 8
  %132 = load i64, i64* %4, align 8
  %133 = xor i64 %132, %131
  store i64 %133, i64* %4, align 8
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %136, 1
  store i64 %137, i64* %135, align 8
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = add nsw i64 %143, 1
  %145 = icmp eq i64 %140, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %120
  br label %23

147:                                              ; preds = %120
  %148 = load i64, i64* %4, align 8
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 5
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %148, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %147
  %154 = load i64, i64* %4, align 8
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 5
  store i64 %154, i64* %156, align 8
  br label %23

157:                                              ; preds = %147
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  store i64 2, i64* %159, align 8
  %160 = load i64, i64* %4, align 8
  %161 = call i32 @BZ_GET_FAST(i64 %160)
  %162 = load i32, i32* @BZ_RAND_UPD_MASK, align 4
  %163 = load i64, i64* @BZ_RAND_MASK, align 8
  %164 = load i64, i64* %4, align 8
  %165 = xor i64 %164, %163
  store i64 %165, i64* %4, align 8
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  %169 = add nsw i64 %168, 1
  store i64 %169, i64* %167, align 8
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 4
  %175 = load i64, i64* %174, align 8
  %176 = add nsw i64 %175, 1
  %177 = icmp eq i64 %172, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %157
  br label %23

179:                                              ; preds = %157
  %180 = load i64, i64* %4, align 8
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 5
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %180, %183
  br i1 %184, label %185, label %189

185:                                              ; preds = %179
  %186 = load i64, i64* %4, align 8
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 5
  store i64 %186, i64* %188, align 8
  br label %23

189:                                              ; preds = %179
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 0
  store i64 3, i64* %191, align 8
  %192 = load i64, i64* %4, align 8
  %193 = call i32 @BZ_GET_FAST(i64 %192)
  %194 = load i32, i32* @BZ_RAND_UPD_MASK, align 4
  %195 = load i64, i64* @BZ_RAND_MASK, align 8
  %196 = load i64, i64* %4, align 8
  %197 = xor i64 %196, %195
  store i64 %197, i64* %4, align 8
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 3
  %200 = load i64, i64* %199, align 8
  %201 = add nsw i64 %200, 1
  store i64 %201, i64* %199, align 8
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 3
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 4
  %207 = load i64, i64* %206, align 8
  %208 = add nsw i64 %207, 1
  %209 = icmp eq i64 %204, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %189
  br label %23

211:                                              ; preds = %189
  %212 = load i64, i64* %4, align 8
  %213 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 5
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %212, %215
  br i1 %216, label %217, label %221

217:                                              ; preds = %211
  %218 = load i64, i64* %4, align 8
  %219 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 5
  store i64 %218, i64* %220, align 8
  br label %23

221:                                              ; preds = %211
  %222 = load i64, i64* %4, align 8
  %223 = call i32 @BZ_GET_FAST(i64 %222)
  %224 = load i32, i32* @BZ_RAND_UPD_MASK, align 4
  %225 = load i64, i64* @BZ_RAND_MASK, align 8
  %226 = load i64, i64* %4, align 8
  %227 = xor i64 %226, %225
  store i64 %227, i64* %4, align 8
  %228 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 3
  %230 = load i64, i64* %229, align 8
  %231 = add nsw i64 %230, 1
  store i64 %231, i64* %229, align 8
  %232 = load i64, i64* %4, align 8
  %233 = add nsw i64 %232, 4
  %234 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 0
  store i64 %233, i64* %235, align 8
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 5
  %238 = load i64, i64* %237, align 8
  %239 = call i32 @BZ_GET_FAST(i64 %238)
  %240 = load i32, i32* @BZ_RAND_UPD_MASK, align 4
  %241 = load i64, i64* @BZ_RAND_MASK, align 8
  %242 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 5
  %244 = load i64, i64* %243, align 8
  %245 = xor i64 %244, %241
  store i64 %245, i64* %243, align 8
  %246 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 3
  %248 = load i64, i64* %247, align 8
  %249 = add nsw i64 %248, 1
  store i64 %249, i64* %247, align 8
  br label %23

250:                                              ; preds = %23
  br label %468

251:                                              ; preds = %1
  %252 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  store i32 %254, i32* %5, align 4
  %255 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  store i64 %257, i64* %6, align 8
  %258 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  store i64 %260, i64* %7, align 8
  %261 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i32 0, i32 3
  %263 = load i64, i64* %262, align 8
  store i64 %263, i64* %8, align 8
  %264 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %264, i32 0, i32 5
  %266 = load i64, i64* %265, align 8
  store i64 %266, i64* %9, align 8
  %267 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i32 0, i32 6
  %269 = load i32*, i32** %268, align 8
  store i32* %269, i32** %10, align 8
  %270 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 7
  %272 = load i32, i32* %271, align 8
  store i32 %272, i32* %11, align 4
  %273 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %273, i32 0, i32 9
  %275 = load %struct.TYPE_4__*, %struct.TYPE_4__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %275, i32 0, i32 1
  %277 = load i8*, i8** %276, align 8
  store i8* %277, i8** %12, align 8
  %278 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %279 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %278, i32 0, i32 9
  %280 = load %struct.TYPE_4__*, %struct.TYPE_4__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  store i32 %282, i32* %13, align 4
  %283 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %284 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %283, i32 0, i32 8
  %285 = load i64, i64* %284, align 8
  store i64 %285, i64* %14, align 8
  %286 = load i32, i32* %13, align 4
  store i32 %286, i32* %15, align 4
  %287 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %288 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %287, i32 0, i32 4
  %289 = load i64, i64* %288, align 8
  %290 = add nsw i64 %289, 1
  store i64 %290, i64* %16, align 8
  br label %291

291:                                              ; preds = %395, %393, %388, %378, %373, %251
  %292 = load i64, i64* @True, align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %406

294:                                              ; preds = %291
  %295 = load i64, i64* %7, align 8
  %296 = icmp sgt i64 %295, 0
  br i1 %296, label %297, label %338

297:                                              ; preds = %294
  br label %298

298:                                              ; preds = %309, %297
  %299 = load i64, i64* @True, align 8
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %322

301:                                              ; preds = %298
  %302 = load i32, i32* %13, align 4
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %305

304:                                              ; preds = %301
  br label %407

305:                                              ; preds = %301
  %306 = load i64, i64* %7, align 8
  %307 = icmp eq i64 %306, 1
  br i1 %307, label %308, label %309

308:                                              ; preds = %305
  br label %322

309:                                              ; preds = %305
  %310 = load i64, i64* %6, align 8
  %311 = load i8*, i8** %12, align 8
  %312 = bitcast i8* %311 to i64*
  store i64 %310, i64* %312, align 8
  %313 = load i32, i32* %5, align 4
  %314 = load i64, i64* %6, align 8
  %315 = call i32 @BZ_UPDATE_CRC(i32 %313, i64 %314)
  %316 = load i64, i64* %7, align 8
  %317 = add nsw i64 %316, -1
  store i64 %317, i64* %7, align 8
  %318 = load i8*, i8** %12, align 8
  %319 = getelementptr inbounds i8, i8* %318, i32 1
  store i8* %319, i8** %12, align 8
  %320 = load i32, i32* %13, align 4
  %321 = add i32 %320, -1
  store i32 %321, i32* %13, align 4
  br label %298

322:                                              ; preds = %308, %298
  br label %323

323:                                              ; preds = %364, %358, %322
  %324 = load i32, i32* %13, align 4
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %326, label %327

326:                                              ; preds = %323
  store i64 1, i64* %7, align 8
  br label %407

327:                                              ; preds = %323
  %328 = load i64, i64* %6, align 8
  %329 = load i8*, i8** %12, align 8
  %330 = bitcast i8* %329 to i64*
  store i64 %328, i64* %330, align 8
  %331 = load i32, i32* %5, align 4
  %332 = load i64, i64* %6, align 8
  %333 = call i32 @BZ_UPDATE_CRC(i32 %331, i64 %332)
  %334 = load i8*, i8** %12, align 8
  %335 = getelementptr inbounds i8, i8* %334, i32 1
  store i8* %335, i8** %12, align 8
  %336 = load i32, i32* %13, align 4
  %337 = add i32 %336, -1
  store i32 %337, i32* %13, align 4
  br label %338

338:                                              ; preds = %327, %294
  %339 = load i64, i64* %8, align 8
  %340 = load i64, i64* %16, align 8
  %341 = icmp sgt i64 %339, %340
  br i1 %341, label %342, label %344

342:                                              ; preds = %338
  %343 = load i64, i64* @True, align 8
  store i64 %343, i64* %2, align 8
  br label %470

344:                                              ; preds = %338
  %345 = load i64, i64* %8, align 8
  %346 = load i64, i64* %16, align 8
  %347 = icmp eq i64 %345, %346
  br i1 %347, label %348, label %349

348:                                              ; preds = %344
  store i64 0, i64* %7, align 8
  br label %407

349:                                              ; preds = %344
  %350 = load i64, i64* %9, align 8
  store i64 %350, i64* %6, align 8
  %351 = load i64, i64* %4, align 8
  %352 = call i32 @BZ_GET_FAST_C(i64 %351)
  %353 = load i64, i64* %8, align 8
  %354 = add nsw i64 %353, 1
  store i64 %354, i64* %8, align 8
  %355 = load i64, i64* %4, align 8
  %356 = load i64, i64* %9, align 8
  %357 = icmp ne i64 %355, %356
  br i1 %357, label %358, label %360

358:                                              ; preds = %349
  %359 = load i64, i64* %4, align 8
  store i64 %359, i64* %9, align 8
  br label %323

360:                                              ; preds = %349
  %361 = load i64, i64* %8, align 8
  %362 = load i64, i64* %16, align 8
  %363 = icmp eq i64 %361, %362
  br i1 %363, label %364, label %365

364:                                              ; preds = %360
  br label %323

365:                                              ; preds = %360
  store i64 2, i64* %7, align 8
  %366 = load i64, i64* %4, align 8
  %367 = call i32 @BZ_GET_FAST_C(i64 %366)
  %368 = load i64, i64* %8, align 8
  %369 = add nsw i64 %368, 1
  store i64 %369, i64* %8, align 8
  %370 = load i64, i64* %8, align 8
  %371 = load i64, i64* %16, align 8
  %372 = icmp eq i64 %370, %371
  br i1 %372, label %373, label %374

373:                                              ; preds = %365
  br label %291

374:                                              ; preds = %365
  %375 = load i64, i64* %4, align 8
  %376 = load i64, i64* %9, align 8
  %377 = icmp ne i64 %375, %376
  br i1 %377, label %378, label %380

378:                                              ; preds = %374
  %379 = load i64, i64* %4, align 8
  store i64 %379, i64* %9, align 8
  br label %291

380:                                              ; preds = %374
  store i64 3, i64* %7, align 8
  %381 = load i64, i64* %4, align 8
  %382 = call i32 @BZ_GET_FAST_C(i64 %381)
  %383 = load i64, i64* %8, align 8
  %384 = add nsw i64 %383, 1
  store i64 %384, i64* %8, align 8
  %385 = load i64, i64* %8, align 8
  %386 = load i64, i64* %16, align 8
  %387 = icmp eq i64 %385, %386
  br i1 %387, label %388, label %389

388:                                              ; preds = %380
  br label %291

389:                                              ; preds = %380
  %390 = load i64, i64* %4, align 8
  %391 = load i64, i64* %9, align 8
  %392 = icmp ne i64 %390, %391
  br i1 %392, label %393, label %395

393:                                              ; preds = %389
  %394 = load i64, i64* %4, align 8
  store i64 %394, i64* %9, align 8
  br label %291

395:                                              ; preds = %389
  %396 = load i64, i64* %4, align 8
  %397 = call i32 @BZ_GET_FAST_C(i64 %396)
  %398 = load i64, i64* %8, align 8
  %399 = add nsw i64 %398, 1
  store i64 %399, i64* %8, align 8
  %400 = load i64, i64* %4, align 8
  %401 = add nsw i64 %400, 4
  store i64 %401, i64* %7, align 8
  %402 = load i64, i64* %9, align 8
  %403 = call i32 @BZ_GET_FAST_C(i64 %402)
  %404 = load i64, i64* %8, align 8
  %405 = add nsw i64 %404, 1
  store i64 %405, i64* %8, align 8
  br label %291

406:                                              ; preds = %291
  br label %407

407:                                              ; preds = %406, %348, %326, %304
  %408 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %409 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %408, i32 0, i32 9
  %410 = load %struct.TYPE_4__*, %struct.TYPE_4__** %409, align 8
  %411 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %410, i32 0, i32 2
  %412 = load i32, i32* %411, align 8
  store i32 %412, i32* %17, align 4
  %413 = load i32, i32* %15, align 4
  %414 = load i32, i32* %13, align 4
  %415 = sub i32 %413, %414
  %416 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %417 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %416, i32 0, i32 9
  %418 = load %struct.TYPE_4__*, %struct.TYPE_4__** %417, align 8
  %419 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %418, i32 0, i32 2
  %420 = load i32, i32* %419, align 8
  %421 = add i32 %420, %415
  store i32 %421, i32* %419, align 8
  %422 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %423 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %422, i32 0, i32 9
  %424 = load %struct.TYPE_4__*, %struct.TYPE_4__** %423, align 8
  %425 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %424, i32 0, i32 2
  %426 = load i32, i32* %425, align 8
  %427 = load i32, i32* %17, align 4
  %428 = icmp ult i32 %426, %427
  br i1 %428, label %429, label %436

429:                                              ; preds = %407
  %430 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %431 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %430, i32 0, i32 9
  %432 = load %struct.TYPE_4__*, %struct.TYPE_4__** %431, align 8
  %433 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %432, i32 0, i32 3
  %434 = load i32, i32* %433, align 4
  %435 = add nsw i32 %434, 1
  store i32 %435, i32* %433, align 4
  br label %436

436:                                              ; preds = %429, %407
  %437 = load i32, i32* %5, align 4
  %438 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %439 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %438, i32 0, i32 2
  store i32 %437, i32* %439, align 8
  %440 = load i64, i64* %6, align 8
  %441 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %442 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %441, i32 0, i32 1
  store i64 %440, i64* %442, align 8
  %443 = load i64, i64* %7, align 8
  %444 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %445 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %444, i32 0, i32 0
  store i64 %443, i64* %445, align 8
  %446 = load i64, i64* %8, align 8
  %447 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %448 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %447, i32 0, i32 3
  store i64 %446, i64* %448, align 8
  %449 = load i64, i64* %9, align 8
  %450 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %451 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %450, i32 0, i32 5
  store i64 %449, i64* %451, align 8
  %452 = load i32*, i32** %10, align 8
  %453 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %454 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %453, i32 0, i32 6
  store i32* %452, i32** %454, align 8
  %455 = load i32, i32* %11, align 4
  %456 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %457 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %456, i32 0, i32 7
  store i32 %455, i32* %457, align 8
  %458 = load i8*, i8** %12, align 8
  %459 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %460 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %459, i32 0, i32 9
  %461 = load %struct.TYPE_4__*, %struct.TYPE_4__** %460, align 8
  %462 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %461, i32 0, i32 1
  store i8* %458, i8** %462, align 8
  %463 = load i32, i32* %13, align 4
  %464 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %465 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %464, i32 0, i32 9
  %466 = load %struct.TYPE_4__*, %struct.TYPE_4__** %465, align 8
  %467 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %466, i32 0, i32 0
  store i32 %463, i32* %467, align 8
  br label %468

468:                                              ; preds = %436, %250
  %469 = load i64, i64* @False, align 8
  store i64 %469, i64* %2, align 8
  br label %470

470:                                              ; preds = %468, %342, %118, %107, %37
  %471 = load i64, i64* %2, align 8
  ret i64 %471
}

declare dso_local i32 @BZ_UPDATE_CRC(i32, i64) #1

declare dso_local i32 @BZ_GET_FAST(i64) #1

declare dso_local i32 @BZ_GET_FAST_C(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
