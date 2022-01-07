; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_puzzle_pce.c_puzzle_calculate_corners.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_puzzle_pce.c_puzzle_calculate_corners.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32*, %struct.TYPE_10__*, %struct.TYPE_9__, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_12__ = type { i32, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i64, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i64, i64 }

@NO_PCE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @puzzle_calculate_corners(%struct.TYPE_13__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  store %struct.TYPE_14__* %13, %struct.TYPE_14__** %5, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i64 %17
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %6, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %72 [
    i32 0, label %22
    i32 1, label %34
    i32 2, label %47
    i32 3, label %60
  ]

22:                                               ; preds = %2
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 3
  store i64 0, i64* %29, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 4
  store i32 1, i32* %31, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 5
  store i32 0, i32* %33, align 4
  br label %72

34:                                               ; preds = %2
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = sub i64 0, %39
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 3
  store i64 %40, i64* %42, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 4
  store i32 0, i32* %44, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 5
  store i32 1, i32* %46, align 4
  br label %72

47:                                               ; preds = %2
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = sub i64 0, %50
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 3
  store i64 0, i64* %55, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 4
  store i32 -1, i32* %57, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 5
  store i32 0, i32* %59, align 4
  br label %72

60:                                               ; preds = %2
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  store i64 0, i64* %62, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 3
  store i64 %65, i64* %67, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 4
  store i32 0, i32* %69, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 5
  store i32 -1, i32* %71, align 4
  br label %72

72:                                               ; preds = %2, %60, %47, %34, %22
  store i64 1, i64* %7, align 8
  br label %73

73:                                               ; preds = %135, %72
  %74 = load i64, i64* %7, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ult i64 %74, %78
  br i1 %79, label %80, label %138

80:                                               ; preds = %73
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 22
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i64 0
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %88, align 8
  %90 = load i64, i64* %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = mul nsw i32 %86, %93
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i64 0
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = sdiv i32 %94, %100
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 22
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %103, align 8
  %105 = load i64, i64* %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  store i32 %101, i32* %107, align 8
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 22
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i64 0
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %115, align 8
  %117 = load i64, i64* %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = mul nsw i32 %113, %120
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i64 0
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = sdiv i32 %121, %127
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 22
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %130, align 8
  %132 = load i64, i64* %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 1
  store i32 %128, i32* %134, align 4
  br label %135

135:                                              ; preds = %80
  %136 = load i64, i64* %7, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %7, align 8
  br label %73

138:                                              ; preds = %73
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 22
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i64 0
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  store i64 %144, i64* %8, align 8
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 22
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i64 0
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  store i64 %150, i64* %9, align 8
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 22
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i64 0
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = sext i32 %156 to i64
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 6
  store i64 %157, i64* %159, align 8
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 22
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i64 0
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = sext i32 %165 to i64
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 7
  store i64 %166, i64* %168, align 8
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 6
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* %8, align 8
  %173 = sub i64 %172, 1
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = mul i64 %173, %176
  %178 = add i64 %171, %177
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 8
  store i64 %178, i64* %180, align 8
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 7
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* %8, align 8
  %185 = sub i64 %184, 1
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = mul i64 %185, %188
  %190 = add i64 %183, %189
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 9
  store i64 %190, i64* %192, align 8
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 6
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* %8, align 8
  %197 = sub i64 %196, 1
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = mul i64 %197, %200
  %202 = add i64 %195, %201
  %203 = load i64, i64* %9, align 8
  %204 = sub i64 %203, 1
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 5
  %207 = load i32, i32* %206, align 4
  %208 = sext i32 %207 to i64
  %209 = mul i64 %204, %208
  %210 = add i64 %202, %209
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 10
  store i64 %210, i64* %212, align 8
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 7
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* %8, align 8
  %217 = sub i64 %216, 1
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 3
  %220 = load i64, i64* %219, align 8
  %221 = mul i64 %217, %220
  %222 = add i64 %215, %221
  %223 = load i64, i64* %9, align 8
  %224 = sub i64 %223, 1
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 4
  %227 = load i32, i32* %226, align 8
  %228 = sext i32 %227 to i64
  %229 = mul i64 %224, %228
  %230 = add i64 %222, %229
  %231 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 11
  store i64 %230, i64* %232, align 8
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 6
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* %9, align 8
  %237 = sub i64 %236, 1
  %238 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 5
  %240 = load i32, i32* %239, align 4
  %241 = sext i32 %240 to i64
  %242 = mul i64 %237, %241
  %243 = add i64 %235, %242
  %244 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i32 0, i32 12
  store i64 %243, i64* %245, align 8
  %246 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 7
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* %9, align 8
  %250 = sub i64 %249, 1
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 4
  %253 = load i32, i32* %252, align 8
  %254 = sext i32 %253 to i64
  %255 = mul i64 %250, %254
  %256 = add i64 %248, %255
  %257 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 13
  store i64 %256, i64* %258, align 8
  %259 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %260 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %259, i32 0, i32 6
  %261 = load i64, i64* %260, align 8
  %262 = inttoptr i64 %261 to i8*
  %263 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i32 0, i32 8
  %265 = load i64, i64* %264, align 8
  %266 = inttoptr i64 %265 to i8*
  %267 = call i8* @__MAX(i8* %262, i8* %266)
  %268 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %268, i32 0, i32 12
  %270 = load i64, i64* %269, align 8
  %271 = inttoptr i64 %270 to i8*
  %272 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i32 0, i32 10
  %274 = load i64, i64* %273, align 8
  %275 = inttoptr i64 %274 to i8*
  %276 = call i8* @__MAX(i8* %271, i8* %275)
  %277 = call i8* @__MAX(i8* %267, i8* %276)
  %278 = ptrtoint i8* %277 to i32
  %279 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %280 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %279, i32 0, i32 14
  store i32 %278, i32* %280, align 8
  %281 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %282 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %281, i32 0, i32 6
  %283 = load i64, i64* %282, align 8
  %284 = inttoptr i64 %283 to i8*
  %285 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %285, i32 0, i32 8
  %287 = load i64, i64* %286, align 8
  %288 = inttoptr i64 %287 to i8*
  %289 = call i8* @__MIN(i8* %284, i8* %288)
  %290 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %291 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %290, i32 0, i32 12
  %292 = load i64, i64* %291, align 8
  %293 = inttoptr i64 %292 to i8*
  %294 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %295 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %294, i32 0, i32 10
  %296 = load i64, i64* %295, align 8
  %297 = inttoptr i64 %296 to i8*
  %298 = call i8* @__MIN(i8* %293, i8* %297)
  %299 = call i8* @__MIN(i8* %289, i8* %298)
  %300 = ptrtoint i8* %299 to i32
  %301 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %302 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %301, i32 0, i32 15
  store i32 %300, i32* %302, align 4
  %303 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %304 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %303, i32 0, i32 7
  %305 = load i64, i64* %304, align 8
  %306 = inttoptr i64 %305 to i8*
  %307 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %308 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %307, i32 0, i32 9
  %309 = load i64, i64* %308, align 8
  %310 = inttoptr i64 %309 to i8*
  %311 = call i8* @__MAX(i8* %306, i8* %310)
  %312 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %313 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %312, i32 0, i32 13
  %314 = load i64, i64* %313, align 8
  %315 = inttoptr i64 %314 to i8*
  %316 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %317 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %316, i32 0, i32 11
  %318 = load i64, i64* %317, align 8
  %319 = inttoptr i64 %318 to i8*
  %320 = call i8* @__MAX(i8* %315, i8* %319)
  %321 = call i8* @__MAX(i8* %311, i8* %320)
  %322 = ptrtoint i8* %321 to i32
  %323 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %324 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %323, i32 0, i32 16
  store i32 %322, i32* %324, align 8
  %325 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %326 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %325, i32 0, i32 7
  %327 = load i64, i64* %326, align 8
  %328 = inttoptr i64 %327 to i8*
  %329 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %330 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %329, i32 0, i32 9
  %331 = load i64, i64* %330, align 8
  %332 = inttoptr i64 %331 to i8*
  %333 = call i8* @__MIN(i8* %328, i8* %332)
  %334 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %335 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %334, i32 0, i32 13
  %336 = load i64, i64* %335, align 8
  %337 = inttoptr i64 %336 to i8*
  %338 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %339 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %338, i32 0, i32 11
  %340 = load i64, i64* %339, align 8
  %341 = inttoptr i64 %340 to i8*
  %342 = call i8* @__MIN(i8* %337, i8* %341)
  %343 = call i8* @__MIN(i8* %333, i8* %342)
  %344 = ptrtoint i8* %343 to i32
  %345 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %346 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %345, i32 0, i32 17
  store i32 %344, i32* %346, align 4
  %347 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %348 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %347, i32 0, i32 14
  %349 = load i32, i32* %348, align 8
  %350 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %351 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %350, i32 0, i32 15
  %352 = load i32, i32* %351, align 4
  %353 = add nsw i32 %349, %352
  %354 = sdiv i32 %353, 2
  %355 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %356 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %355, i32 0, i32 18
  store i32 %354, i32* %356, align 8
  %357 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %358 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %357, i32 0, i32 16
  %359 = load i32, i32* %358, align 8
  %360 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %361 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %360, i32 0, i32 17
  %362 = load i32, i32* %361, align 4
  %363 = add nsw i32 %359, %362
  %364 = sdiv i32 %363, 2
  %365 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %366 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %365, i32 0, i32 19
  store i32 %364, i32* %366, align 4
  %367 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %368 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %369 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %368, i32 0, i32 18
  %370 = load i32, i32* %369, align 8
  %371 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %372 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %371, i32 0, i32 19
  %373 = load i32, i32* %372, align 4
  %374 = load i64, i64* %4, align 8
  %375 = call i64 @puzzle_find_piece(%struct.TYPE_13__* %367, i32 %370, i32 %373, i64 %374)
  store i64 %375, i64* %10, align 8
  %376 = load i64, i64* %10, align 8
  %377 = load i64, i64* @NO_PCE, align 8
  %378 = icmp ne i64 %376, %377
  br i1 %378, label %379, label %392

379:                                              ; preds = %138
  %380 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %381 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %380, i32 0, i32 0
  %382 = load i32*, i32** %381, align 8
  %383 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %384 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %383, i32 0, i32 20
  %385 = load i64, i64* %384, align 8
  %386 = getelementptr inbounds i32, i32* %382, i64 %385
  %387 = load i32, i32* %386, align 4
  %388 = icmp eq i32 %387, 1
  br i1 %388, label %389, label %392

389:                                              ; preds = %379
  %390 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %391 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %390, i32 0, i32 21
  store i32 1, i32* %391, align 8
  br label %392

392:                                              ; preds = %389, %379, %138
  ret void
}

declare dso_local i8* @__MAX(i8*, i8*) #1

declare dso_local i8* @__MIN(i8*, i8*) #1

declare dso_local i64 @puzzle_find_piece(%struct.TYPE_13__*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
