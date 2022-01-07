; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_shade.c_make_tensor_patch.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_shade.c_make_tensor_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i8**)* @make_tensor_patch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_tensor_patch(%struct.TYPE_3__* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = icmp eq i32 %7, 6
  br i1 %8, label %9, label %370

9:                                                ; preds = %3
  %10 = load i8**, i8*** %6, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 0
  %12 = load i8*, i8** %11, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i8***, i8**** %14, align 8
  %16 = getelementptr inbounds i8**, i8*** %15, i64 0
  %17 = load i8**, i8*** %16, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  store i8* %12, i8** %18, align 8
  %19 = load i8**, i8*** %6, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i8***, i8**** %23, align 8
  %25 = getelementptr inbounds i8**, i8*** %24, i64 0
  %26 = load i8**, i8*** %25, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 1
  store i8* %21, i8** %27, align 8
  %28 = load i8**, i8*** %6, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 2
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i8***, i8**** %32, align 8
  %34 = getelementptr inbounds i8**, i8*** %33, i64 0
  %35 = load i8**, i8*** %34, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 2
  store i8* %30, i8** %36, align 8
  %37 = load i8**, i8*** %6, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 3
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i8***, i8**** %41, align 8
  %43 = getelementptr inbounds i8**, i8*** %42, i64 0
  %44 = load i8**, i8*** %43, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 3
  store i8* %39, i8** %45, align 8
  %46 = load i8**, i8*** %6, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 4
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i8***, i8**** %50, align 8
  %52 = getelementptr inbounds i8**, i8*** %51, i64 1
  %53 = load i8**, i8*** %52, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 3
  store i8* %48, i8** %54, align 8
  %55 = load i8**, i8*** %6, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 5
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i8***, i8**** %59, align 8
  %61 = getelementptr inbounds i8**, i8*** %60, i64 2
  %62 = load i8**, i8*** %61, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 3
  store i8* %57, i8** %63, align 8
  %64 = load i8**, i8*** %6, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 6
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i8***, i8**** %68, align 8
  %70 = getelementptr inbounds i8**, i8*** %69, i64 3
  %71 = load i8**, i8*** %70, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 3
  store i8* %66, i8** %72, align 8
  %73 = load i8**, i8*** %6, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 7
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i8***, i8**** %77, align 8
  %79 = getelementptr inbounds i8**, i8*** %78, i64 3
  %80 = load i8**, i8*** %79, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 2
  store i8* %75, i8** %81, align 8
  %82 = load i8**, i8*** %6, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 8
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i8***, i8**** %86, align 8
  %88 = getelementptr inbounds i8**, i8*** %87, i64 3
  %89 = load i8**, i8*** %88, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 1
  store i8* %84, i8** %90, align 8
  %91 = load i8**, i8*** %6, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 9
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i8***, i8**** %95, align 8
  %97 = getelementptr inbounds i8**, i8*** %96, i64 3
  %98 = load i8**, i8*** %97, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 0
  store i8* %93, i8** %99, align 8
  %100 = load i8**, i8*** %6, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 10
  %102 = load i8*, i8** %101, align 8
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i8***, i8**** %104, align 8
  %106 = getelementptr inbounds i8**, i8*** %105, i64 2
  %107 = load i8**, i8*** %106, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i64 0
  store i8* %102, i8** %108, align 8
  %109 = load i8**, i8*** %6, align 8
  %110 = getelementptr inbounds i8*, i8** %109, i64 11
  %111 = load i8*, i8** %110, align 8
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i8***, i8**** %113, align 8
  %115 = getelementptr inbounds i8**, i8*** %114, i64 1
  %116 = load i8**, i8*** %115, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 0
  store i8* %111, i8** %117, align 8
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i8***, i8**** %119, align 8
  %121 = getelementptr inbounds i8**, i8*** %120, i64 0
  %122 = load i8**, i8*** %121, align 8
  %123 = getelementptr inbounds i8*, i8** %122, i64 0
  %124 = load i8*, i8** %123, align 8
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i8***, i8**** %126, align 8
  %128 = getelementptr inbounds i8**, i8*** %127, i64 0
  %129 = load i8**, i8*** %128, align 8
  %130 = getelementptr inbounds i8*, i8** %129, i64 1
  %131 = load i8*, i8** %130, align 8
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i8***, i8**** %133, align 8
  %135 = getelementptr inbounds i8**, i8*** %134, i64 1
  %136 = load i8**, i8*** %135, align 8
  %137 = getelementptr inbounds i8*, i8** %136, i64 0
  %138 = load i8*, i8** %137, align 8
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load i8***, i8**** %140, align 8
  %142 = getelementptr inbounds i8**, i8*** %141, i64 0
  %143 = load i8**, i8*** %142, align 8
  %144 = getelementptr inbounds i8*, i8** %143, i64 3
  %145 = load i8*, i8** %144, align 8
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  %148 = load i8***, i8**** %147, align 8
  %149 = getelementptr inbounds i8**, i8*** %148, i64 3
  %150 = load i8**, i8*** %149, align 8
  %151 = getelementptr inbounds i8*, i8** %150, i64 0
  %152 = load i8*, i8** %151, align 8
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 0
  %155 = load i8***, i8**** %154, align 8
  %156 = getelementptr inbounds i8**, i8*** %155, i64 3
  %157 = load i8**, i8*** %156, align 8
  %158 = getelementptr inbounds i8*, i8** %157, i64 1
  %159 = load i8*, i8** %158, align 8
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 0
  %162 = load i8***, i8**** %161, align 8
  %163 = getelementptr inbounds i8**, i8*** %162, i64 1
  %164 = load i8**, i8*** %163, align 8
  %165 = getelementptr inbounds i8*, i8** %164, i64 3
  %166 = load i8*, i8** %165, align 8
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  %169 = load i8***, i8**** %168, align 8
  %170 = getelementptr inbounds i8**, i8*** %169, i64 3
  %171 = load i8**, i8*** %170, align 8
  %172 = getelementptr inbounds i8*, i8** %171, i64 3
  %173 = load i8*, i8** %172, align 8
  %174 = call i8* @compute_tensor_interior(i8* %124, i8* %131, i8* %138, i8* %145, i8* %152, i8* %159, i8* %166, i8* %173)
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 0
  %177 = load i8***, i8**** %176, align 8
  %178 = getelementptr inbounds i8**, i8*** %177, i64 1
  %179 = load i8**, i8*** %178, align 8
  %180 = getelementptr inbounds i8*, i8** %179, i64 1
  store i8* %174, i8** %180, align 8
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 0
  %183 = load i8***, i8**** %182, align 8
  %184 = getelementptr inbounds i8**, i8*** %183, i64 0
  %185 = load i8**, i8*** %184, align 8
  %186 = getelementptr inbounds i8*, i8** %185, i64 3
  %187 = load i8*, i8** %186, align 8
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 0
  %190 = load i8***, i8**** %189, align 8
  %191 = getelementptr inbounds i8**, i8*** %190, i64 0
  %192 = load i8**, i8*** %191, align 8
  %193 = getelementptr inbounds i8*, i8** %192, i64 2
  %194 = load i8*, i8** %193, align 8
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 0
  %197 = load i8***, i8**** %196, align 8
  %198 = getelementptr inbounds i8**, i8*** %197, i64 1
  %199 = load i8**, i8*** %198, align 8
  %200 = getelementptr inbounds i8*, i8** %199, i64 3
  %201 = load i8*, i8** %200, align 8
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 0
  %204 = load i8***, i8**** %203, align 8
  %205 = getelementptr inbounds i8**, i8*** %204, i64 0
  %206 = load i8**, i8*** %205, align 8
  %207 = getelementptr inbounds i8*, i8** %206, i64 0
  %208 = load i8*, i8** %207, align 8
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 0
  %211 = load i8***, i8**** %210, align 8
  %212 = getelementptr inbounds i8**, i8*** %211, i64 3
  %213 = load i8**, i8*** %212, align 8
  %214 = getelementptr inbounds i8*, i8** %213, i64 3
  %215 = load i8*, i8** %214, align 8
  %216 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 0
  %218 = load i8***, i8**** %217, align 8
  %219 = getelementptr inbounds i8**, i8*** %218, i64 3
  %220 = load i8**, i8*** %219, align 8
  %221 = getelementptr inbounds i8*, i8** %220, i64 2
  %222 = load i8*, i8** %221, align 8
  %223 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 0
  %225 = load i8***, i8**** %224, align 8
  %226 = getelementptr inbounds i8**, i8*** %225, i64 1
  %227 = load i8**, i8*** %226, align 8
  %228 = getelementptr inbounds i8*, i8** %227, i64 0
  %229 = load i8*, i8** %228, align 8
  %230 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 0
  %232 = load i8***, i8**** %231, align 8
  %233 = getelementptr inbounds i8**, i8*** %232, i64 3
  %234 = load i8**, i8*** %233, align 8
  %235 = getelementptr inbounds i8*, i8** %234, i64 0
  %236 = load i8*, i8** %235, align 8
  %237 = call i8* @compute_tensor_interior(i8* %187, i8* %194, i8* %201, i8* %208, i8* %215, i8* %222, i8* %229, i8* %236)
  %238 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 0
  %240 = load i8***, i8**** %239, align 8
  %241 = getelementptr inbounds i8**, i8*** %240, i64 1
  %242 = load i8**, i8*** %241, align 8
  %243 = getelementptr inbounds i8*, i8** %242, i64 2
  store i8* %237, i8** %243, align 8
  %244 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %244, i32 0, i32 0
  %246 = load i8***, i8**** %245, align 8
  %247 = getelementptr inbounds i8**, i8*** %246, i64 3
  %248 = load i8**, i8*** %247, align 8
  %249 = getelementptr inbounds i8*, i8** %248, i64 0
  %250 = load i8*, i8** %249, align 8
  %251 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i32 0, i32 0
  %253 = load i8***, i8**** %252, align 8
  %254 = getelementptr inbounds i8**, i8*** %253, i64 3
  %255 = load i8**, i8*** %254, align 8
  %256 = getelementptr inbounds i8*, i8** %255, i64 1
  %257 = load i8*, i8** %256, align 8
  %258 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %258, i32 0, i32 0
  %260 = load i8***, i8**** %259, align 8
  %261 = getelementptr inbounds i8**, i8*** %260, i64 2
  %262 = load i8**, i8*** %261, align 8
  %263 = getelementptr inbounds i8*, i8** %262, i64 0
  %264 = load i8*, i8** %263, align 8
  %265 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %265, i32 0, i32 0
  %267 = load i8***, i8**** %266, align 8
  %268 = getelementptr inbounds i8**, i8*** %267, i64 3
  %269 = load i8**, i8*** %268, align 8
  %270 = getelementptr inbounds i8*, i8** %269, i64 3
  %271 = load i8*, i8** %270, align 8
  %272 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %272, i32 0, i32 0
  %274 = load i8***, i8**** %273, align 8
  %275 = getelementptr inbounds i8**, i8*** %274, i64 0
  %276 = load i8**, i8*** %275, align 8
  %277 = getelementptr inbounds i8*, i8** %276, i64 0
  %278 = load i8*, i8** %277, align 8
  %279 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %280 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %279, i32 0, i32 0
  %281 = load i8***, i8**** %280, align 8
  %282 = getelementptr inbounds i8**, i8*** %281, i64 0
  %283 = load i8**, i8*** %282, align 8
  %284 = getelementptr inbounds i8*, i8** %283, i64 1
  %285 = load i8*, i8** %284, align 8
  %286 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %287 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %286, i32 0, i32 0
  %288 = load i8***, i8**** %287, align 8
  %289 = getelementptr inbounds i8**, i8*** %288, i64 2
  %290 = load i8**, i8*** %289, align 8
  %291 = getelementptr inbounds i8*, i8** %290, i64 3
  %292 = load i8*, i8** %291, align 8
  %293 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %294 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %293, i32 0, i32 0
  %295 = load i8***, i8**** %294, align 8
  %296 = getelementptr inbounds i8**, i8*** %295, i64 0
  %297 = load i8**, i8*** %296, align 8
  %298 = getelementptr inbounds i8*, i8** %297, i64 3
  %299 = load i8*, i8** %298, align 8
  %300 = call i8* @compute_tensor_interior(i8* %250, i8* %257, i8* %264, i8* %271, i8* %278, i8* %285, i8* %292, i8* %299)
  %301 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %302 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %301, i32 0, i32 0
  %303 = load i8***, i8**** %302, align 8
  %304 = getelementptr inbounds i8**, i8*** %303, i64 2
  %305 = load i8**, i8*** %304, align 8
  %306 = getelementptr inbounds i8*, i8** %305, i64 1
  store i8* %300, i8** %306, align 8
  %307 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %308 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %307, i32 0, i32 0
  %309 = load i8***, i8**** %308, align 8
  %310 = getelementptr inbounds i8**, i8*** %309, i64 3
  %311 = load i8**, i8*** %310, align 8
  %312 = getelementptr inbounds i8*, i8** %311, i64 3
  %313 = load i8*, i8** %312, align 8
  %314 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %315 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %314, i32 0, i32 0
  %316 = load i8***, i8**** %315, align 8
  %317 = getelementptr inbounds i8**, i8*** %316, i64 3
  %318 = load i8**, i8*** %317, align 8
  %319 = getelementptr inbounds i8*, i8** %318, i64 2
  %320 = load i8*, i8** %319, align 8
  %321 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %322 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %321, i32 0, i32 0
  %323 = load i8***, i8**** %322, align 8
  %324 = getelementptr inbounds i8**, i8*** %323, i64 2
  %325 = load i8**, i8*** %324, align 8
  %326 = getelementptr inbounds i8*, i8** %325, i64 3
  %327 = load i8*, i8** %326, align 8
  %328 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %329 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %328, i32 0, i32 0
  %330 = load i8***, i8**** %329, align 8
  %331 = getelementptr inbounds i8**, i8*** %330, i64 3
  %332 = load i8**, i8*** %331, align 8
  %333 = getelementptr inbounds i8*, i8** %332, i64 0
  %334 = load i8*, i8** %333, align 8
  %335 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %336 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %335, i32 0, i32 0
  %337 = load i8***, i8**** %336, align 8
  %338 = getelementptr inbounds i8**, i8*** %337, i64 0
  %339 = load i8**, i8*** %338, align 8
  %340 = getelementptr inbounds i8*, i8** %339, i64 3
  %341 = load i8*, i8** %340, align 8
  %342 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %343 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %342, i32 0, i32 0
  %344 = load i8***, i8**** %343, align 8
  %345 = getelementptr inbounds i8**, i8*** %344, i64 0
  %346 = load i8**, i8*** %345, align 8
  %347 = getelementptr inbounds i8*, i8** %346, i64 2
  %348 = load i8*, i8** %347, align 8
  %349 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %350 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %349, i32 0, i32 0
  %351 = load i8***, i8**** %350, align 8
  %352 = getelementptr inbounds i8**, i8*** %351, i64 2
  %353 = load i8**, i8*** %352, align 8
  %354 = getelementptr inbounds i8*, i8** %353, i64 0
  %355 = load i8*, i8** %354, align 8
  %356 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %357 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %356, i32 0, i32 0
  %358 = load i8***, i8**** %357, align 8
  %359 = getelementptr inbounds i8**, i8*** %358, i64 0
  %360 = load i8**, i8*** %359, align 8
  %361 = getelementptr inbounds i8*, i8** %360, i64 0
  %362 = load i8*, i8** %361, align 8
  %363 = call i8* @compute_tensor_interior(i8* %313, i8* %320, i8* %327, i8* %334, i8* %341, i8* %348, i8* %355, i8* %362)
  %364 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %365 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %364, i32 0, i32 0
  %366 = load i8***, i8**** %365, align 8
  %367 = getelementptr inbounds i8**, i8*** %366, i64 2
  %368 = load i8**, i8*** %367, align 8
  %369 = getelementptr inbounds i8*, i8** %368, i64 2
  store i8* %363, i8** %369, align 8
  br label %519

370:                                              ; preds = %3
  %371 = load i32, i32* %5, align 4
  %372 = icmp eq i32 %371, 7
  br i1 %372, label %373, label %518

373:                                              ; preds = %370
  %374 = load i8**, i8*** %6, align 8
  %375 = getelementptr inbounds i8*, i8** %374, i64 0
  %376 = load i8*, i8** %375, align 8
  %377 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %378 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %377, i32 0, i32 0
  %379 = load i8***, i8**** %378, align 8
  %380 = getelementptr inbounds i8**, i8*** %379, i64 0
  %381 = load i8**, i8*** %380, align 8
  %382 = getelementptr inbounds i8*, i8** %381, i64 0
  store i8* %376, i8** %382, align 8
  %383 = load i8**, i8*** %6, align 8
  %384 = getelementptr inbounds i8*, i8** %383, i64 1
  %385 = load i8*, i8** %384, align 8
  %386 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %387 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %386, i32 0, i32 0
  %388 = load i8***, i8**** %387, align 8
  %389 = getelementptr inbounds i8**, i8*** %388, i64 0
  %390 = load i8**, i8*** %389, align 8
  %391 = getelementptr inbounds i8*, i8** %390, i64 1
  store i8* %385, i8** %391, align 8
  %392 = load i8**, i8*** %6, align 8
  %393 = getelementptr inbounds i8*, i8** %392, i64 2
  %394 = load i8*, i8** %393, align 8
  %395 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %396 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %395, i32 0, i32 0
  %397 = load i8***, i8**** %396, align 8
  %398 = getelementptr inbounds i8**, i8*** %397, i64 0
  %399 = load i8**, i8*** %398, align 8
  %400 = getelementptr inbounds i8*, i8** %399, i64 2
  store i8* %394, i8** %400, align 8
  %401 = load i8**, i8*** %6, align 8
  %402 = getelementptr inbounds i8*, i8** %401, i64 3
  %403 = load i8*, i8** %402, align 8
  %404 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %405 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %404, i32 0, i32 0
  %406 = load i8***, i8**** %405, align 8
  %407 = getelementptr inbounds i8**, i8*** %406, i64 0
  %408 = load i8**, i8*** %407, align 8
  %409 = getelementptr inbounds i8*, i8** %408, i64 3
  store i8* %403, i8** %409, align 8
  %410 = load i8**, i8*** %6, align 8
  %411 = getelementptr inbounds i8*, i8** %410, i64 4
  %412 = load i8*, i8** %411, align 8
  %413 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %414 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %413, i32 0, i32 0
  %415 = load i8***, i8**** %414, align 8
  %416 = getelementptr inbounds i8**, i8*** %415, i64 1
  %417 = load i8**, i8*** %416, align 8
  %418 = getelementptr inbounds i8*, i8** %417, i64 3
  store i8* %412, i8** %418, align 8
  %419 = load i8**, i8*** %6, align 8
  %420 = getelementptr inbounds i8*, i8** %419, i64 5
  %421 = load i8*, i8** %420, align 8
  %422 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %423 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %422, i32 0, i32 0
  %424 = load i8***, i8**** %423, align 8
  %425 = getelementptr inbounds i8**, i8*** %424, i64 2
  %426 = load i8**, i8*** %425, align 8
  %427 = getelementptr inbounds i8*, i8** %426, i64 3
  store i8* %421, i8** %427, align 8
  %428 = load i8**, i8*** %6, align 8
  %429 = getelementptr inbounds i8*, i8** %428, i64 6
  %430 = load i8*, i8** %429, align 8
  %431 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %432 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %431, i32 0, i32 0
  %433 = load i8***, i8**** %432, align 8
  %434 = getelementptr inbounds i8**, i8*** %433, i64 3
  %435 = load i8**, i8*** %434, align 8
  %436 = getelementptr inbounds i8*, i8** %435, i64 3
  store i8* %430, i8** %436, align 8
  %437 = load i8**, i8*** %6, align 8
  %438 = getelementptr inbounds i8*, i8** %437, i64 7
  %439 = load i8*, i8** %438, align 8
  %440 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %441 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %440, i32 0, i32 0
  %442 = load i8***, i8**** %441, align 8
  %443 = getelementptr inbounds i8**, i8*** %442, i64 3
  %444 = load i8**, i8*** %443, align 8
  %445 = getelementptr inbounds i8*, i8** %444, i64 2
  store i8* %439, i8** %445, align 8
  %446 = load i8**, i8*** %6, align 8
  %447 = getelementptr inbounds i8*, i8** %446, i64 8
  %448 = load i8*, i8** %447, align 8
  %449 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %450 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %449, i32 0, i32 0
  %451 = load i8***, i8**** %450, align 8
  %452 = getelementptr inbounds i8**, i8*** %451, i64 3
  %453 = load i8**, i8*** %452, align 8
  %454 = getelementptr inbounds i8*, i8** %453, i64 1
  store i8* %448, i8** %454, align 8
  %455 = load i8**, i8*** %6, align 8
  %456 = getelementptr inbounds i8*, i8** %455, i64 9
  %457 = load i8*, i8** %456, align 8
  %458 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %459 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %458, i32 0, i32 0
  %460 = load i8***, i8**** %459, align 8
  %461 = getelementptr inbounds i8**, i8*** %460, i64 3
  %462 = load i8**, i8*** %461, align 8
  %463 = getelementptr inbounds i8*, i8** %462, i64 0
  store i8* %457, i8** %463, align 8
  %464 = load i8**, i8*** %6, align 8
  %465 = getelementptr inbounds i8*, i8** %464, i64 10
  %466 = load i8*, i8** %465, align 8
  %467 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %468 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %467, i32 0, i32 0
  %469 = load i8***, i8**** %468, align 8
  %470 = getelementptr inbounds i8**, i8*** %469, i64 2
  %471 = load i8**, i8*** %470, align 8
  %472 = getelementptr inbounds i8*, i8** %471, i64 0
  store i8* %466, i8** %472, align 8
  %473 = load i8**, i8*** %6, align 8
  %474 = getelementptr inbounds i8*, i8** %473, i64 11
  %475 = load i8*, i8** %474, align 8
  %476 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %477 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %476, i32 0, i32 0
  %478 = load i8***, i8**** %477, align 8
  %479 = getelementptr inbounds i8**, i8*** %478, i64 1
  %480 = load i8**, i8*** %479, align 8
  %481 = getelementptr inbounds i8*, i8** %480, i64 0
  store i8* %475, i8** %481, align 8
  %482 = load i8**, i8*** %6, align 8
  %483 = getelementptr inbounds i8*, i8** %482, i64 12
  %484 = load i8*, i8** %483, align 8
  %485 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %486 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %485, i32 0, i32 0
  %487 = load i8***, i8**** %486, align 8
  %488 = getelementptr inbounds i8**, i8*** %487, i64 1
  %489 = load i8**, i8*** %488, align 8
  %490 = getelementptr inbounds i8*, i8** %489, i64 1
  store i8* %484, i8** %490, align 8
  %491 = load i8**, i8*** %6, align 8
  %492 = getelementptr inbounds i8*, i8** %491, i64 13
  %493 = load i8*, i8** %492, align 8
  %494 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %495 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %494, i32 0, i32 0
  %496 = load i8***, i8**** %495, align 8
  %497 = getelementptr inbounds i8**, i8*** %496, i64 1
  %498 = load i8**, i8*** %497, align 8
  %499 = getelementptr inbounds i8*, i8** %498, i64 2
  store i8* %493, i8** %499, align 8
  %500 = load i8**, i8*** %6, align 8
  %501 = getelementptr inbounds i8*, i8** %500, i64 14
  %502 = load i8*, i8** %501, align 8
  %503 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %504 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %503, i32 0, i32 0
  %505 = load i8***, i8**** %504, align 8
  %506 = getelementptr inbounds i8**, i8*** %505, i64 2
  %507 = load i8**, i8*** %506, align 8
  %508 = getelementptr inbounds i8*, i8** %507, i64 2
  store i8* %502, i8** %508, align 8
  %509 = load i8**, i8*** %6, align 8
  %510 = getelementptr inbounds i8*, i8** %509, i64 15
  %511 = load i8*, i8** %510, align 8
  %512 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %513 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %512, i32 0, i32 0
  %514 = load i8***, i8**** %513, align 8
  %515 = getelementptr inbounds i8**, i8*** %514, i64 2
  %516 = load i8**, i8*** %515, align 8
  %517 = getelementptr inbounds i8*, i8** %516, i64 1
  store i8* %511, i8** %517, align 8
  br label %518

518:                                              ; preds = %373, %370
  br label %519

519:                                              ; preds = %518, %9
  ret void
}

declare dso_local i8* @compute_tensor_interior(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
