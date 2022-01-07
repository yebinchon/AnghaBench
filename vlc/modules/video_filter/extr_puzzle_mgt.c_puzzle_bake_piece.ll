; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_puzzle_mgt.c_puzzle_bake_piece.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_puzzle_mgt.c_puzzle_bake_piece.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64*, %struct.TYPE_20__*, %struct.TYPE_17__*, %struct.TYPE_16__***, %struct.TYPE_19__, %struct.TYPE_15__ }
%struct.TYPE_20__ = type { i64, i64, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_18__*, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_18__ = type { i64, i64, i64, i64, i64, i64 }
%struct.TYPE_17__ = type { i32, i32, i64, i64 }
%struct.TYPE_16__ = type { i64, i64, i64, i64 }
%struct.TYPE_19__ = type { i64, i64, i64, i64 }
%struct.TYPE_15__ = type { i64 }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@SHAPES_QTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @puzzle_bake_piece(%struct.TYPE_21__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %15 = call i32 @puzzle_allocate_ps_pieces(%struct.TYPE_21__* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @VLC_SUCCESS, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %556

21:                                               ; preds = %1
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  store %struct.TYPE_22__* %24, %struct.TYPE_22__** %5, align 8
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %26 = call i32 @puzzle_shuffle(%struct.TYPE_21__* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @VLC_SUCCESS, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %556

32:                                               ; preds = %21
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %33

33:                                               ; preds = %547, %32
  %34 = load i64, i64* %7, align 8
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ult i64 %34, %38
  br i1 %39, label %40, label %550

40:                                               ; preds = %33
  store i64 0, i64* %8, align 8
  br label %41

41:                                               ; preds = %543, %40
  %42 = load i64, i64* %8, align 8
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ult i64 %42, %46
  br i1 %47, label %48, label %546

48:                                               ; preds = %41
  %49 = load i64, i64* %7, align 8
  store i64 %49, i64* %9, align 8
  %50 = load i64, i64* %8, align 8
  store i64 %50, i64* %10, align 8
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = icmp ne i64* %53, null
  br i1 %54, label %55, label %78

55:                                               ; preds = %48
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = load i64, i64* %6, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = udiv i64 %61, %65
  store i64 %66, i64* %9, align 8
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = load i64, i64* %6, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = urem i64 %72, %76
  store i64 %77, i64* %10, align 8
  br label %78

78:                                               ; preds = %55, %48
  %79 = load i64, i64* %9, align 8
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %81, align 8
  %83 = load i64, i64* %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 0
  store i64 %79, i64* %85, align 8
  %86 = load i64, i64* %10, align 8
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %88, align 8
  %90 = load i64, i64* %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 1
  store i64 %86, i64* %92, align 8
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %94, align 8
  %96 = load i64, i64* %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 15
  store i64 0, i64* %98, align 8
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %100, align 8
  %102 = load i64, i64* %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 2
  store i32 2, i32* %104, align 8
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %106, align 8
  %108 = load i64, i64* %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 3
  store i32 4, i32* %110, align 4
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %112, align 8
  %114 = load i64, i64* %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 4
  store i32 6, i32* %116, align 8
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = icmp sgt i64 %120, 0
  br i1 %121, label %122, label %169

122:                                              ; preds = %78
  %123 = load i64, i64* %9, align 8
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = sub i64 %127, 1
  %129 = icmp ult i64 %123, %128
  br i1 %129, label %130, label %145

130:                                              ; preds = %122
  %131 = call i32 (...) @vlc_mrand48()
  %132 = load i32, i32* @SHAPES_QTY, align 4
  %133 = urem i32 %131, %132
  %134 = mul i32 8, %133
  %135 = add i32 12, %134
  %136 = call i32 (...) @vlc_mrand48()
  %137 = and i32 %136, 1
  %138 = add i32 %135, %137
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %140, align 8
  %142 = load i64, i64* %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 3
  store i32 %138, i32* %144, align 4
  br label %145

145:                                              ; preds = %130, %122
  %146 = load i64, i64* %10, align 8
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 4
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = sub i64 %150, 1
  %152 = icmp ult i64 %146, %151
  br i1 %152, label %153, label %168

153:                                              ; preds = %145
  %154 = call i32 (...) @vlc_mrand48()
  %155 = load i32, i32* @SHAPES_QTY, align 4
  %156 = urem i32 %154, %155
  %157 = mul i32 8, %156
  %158 = add i32 14, %157
  %159 = call i32 (...) @vlc_mrand48()
  %160 = and i32 %159, 1
  %161 = add i32 %158, %160
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %163, align 8
  %165 = load i64, i64* %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 4
  store i32 %161, i32* %167, align 8
  br label %168

168:                                              ; preds = %153, %145
  br label %169

169:                                              ; preds = %168, %78
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_20__*, %struct.TYPE_20__** %171, align 8
  %173 = load i64, i64* %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %172, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 14
  store i64 0, i64* %175, align 8
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_20__*, %struct.TYPE_20__** %177, align 8
  %179 = load i64, i64* %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %178, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 5
  store i32 0, i32* %181, align 4
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %183, align 8
  %185 = load i64, i64* %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %184, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %186, i32 0, i32 6
  store i32 1, i32* %187, align 8
  %188 = load i64, i64* %10, align 8
  %189 = load i64, i64* %8, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %195

191:                                              ; preds = %169
  %192 = load i64, i64* %9, align 8
  %193 = load i64, i64* %7, align 8
  %194 = icmp eq i64 %192, %193
  br label %195

195:                                              ; preds = %191, %169
  %196 = phi i1 [ false, %169 ], [ %194, %191 ]
  %197 = zext i1 %196 to i32
  %198 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %198, i32 0, i32 1
  %200 = load %struct.TYPE_20__*, %struct.TYPE_20__** %199, align 8
  %201 = load i64, i64* %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %200, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %202, i32 0, i32 7
  store i32 %197, i32* %203, align 4
  %204 = load i64, i64* %6, align 8
  %205 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %205, i32 0, i32 1
  %207 = load %struct.TYPE_20__*, %struct.TYPE_20__** %206, align 8
  %208 = load i64, i64* %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %207, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %209, i32 0, i32 8
  store i64 %204, i64* %210, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %211 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %211, i32 0, i32 5
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %255

216:                                              ; preds = %195
  %217 = call i32 (...) @vlc_mrand48()
  %218 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %218, i32 0, i32 2
  %220 = load %struct.TYPE_17__*, %struct.TYPE_17__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %220, i64 0
  %222 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = add nsw i32 %223, 1
  %225 = urem i32 %217, %224
  %226 = zext i32 %225 to i64
  %227 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %227, i32 0, i32 2
  %229 = load %struct.TYPE_17__*, %struct.TYPE_17__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i64 0
  %231 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = sext i32 %232 to i64
  %234 = udiv i64 %233, 2
  %235 = sub i64 %226, %234
  store i64 %235, i64* %11, align 8
  %236 = call i32 (...) @vlc_mrand48()
  %237 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %237, i32 0, i32 2
  %239 = load %struct.TYPE_17__*, %struct.TYPE_17__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %239, i64 0
  %241 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = add nsw i32 %242, 1
  %244 = urem i32 %236, %243
  %245 = zext i32 %244 to i64
  %246 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %246, i32 0, i32 2
  %248 = load %struct.TYPE_17__*, %struct.TYPE_17__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %248, i64 0
  %250 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = sext i32 %251 to i64
  %253 = udiv i64 %252, 2
  %254 = sub i64 %245, %253
  store i64 %254, i64* %12, align 8
  br label %255

255:                                              ; preds = %216, %195
  %256 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %256, i32 0, i32 3
  %258 = load %struct.TYPE_16__***, %struct.TYPE_16__**** %257, align 8
  %259 = icmp ne %struct.TYPE_16__*** %258, null
  br i1 %259, label %260, label %540

260:                                              ; preds = %255
  store i64 0, i64* %13, align 8
  br label %261

261:                                              ; preds = %536, %260
  %262 = load i64, i64* %13, align 8
  %263 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %263, i32 0, i32 4
  %265 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %264, i32 0, i32 3
  %266 = load i64, i64* %265, align 8
  %267 = icmp ult i64 %262, %266
  br i1 %267, label %268, label %539

268:                                              ; preds = %261
  %269 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %269, i32 0, i32 3
  %271 = load %struct.TYPE_16__***, %struct.TYPE_16__**** %270, align 8
  %272 = load i64, i64* %7, align 8
  %273 = getelementptr inbounds %struct.TYPE_16__**, %struct.TYPE_16__*** %271, i64 %272
  %274 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %273, align 8
  %275 = load i64, i64* %8, align 8
  %276 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %274, i64 %275
  %277 = load %struct.TYPE_16__*, %struct.TYPE_16__** %276, align 8
  %278 = load i64, i64* %13, align 8
  %279 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %277, i64 %278
  %280 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %279, i32 0, i32 3
  %281 = load i64, i64* %280, align 8
  %282 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %283 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %282, i32 0, i32 1
  %284 = load %struct.TYPE_20__*, %struct.TYPE_20__** %283, align 8
  %285 = load i64, i64* %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %284, i64 %285
  %287 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %286, i32 0, i32 9
  %288 = load %struct.TYPE_18__*, %struct.TYPE_18__** %287, align 8
  %289 = load i64, i64* %13, align 8
  %290 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %288, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %290, i32 0, i32 2
  store i64 %281, i64* %291, align 8
  %292 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %292, i32 0, i32 3
  %294 = load %struct.TYPE_16__***, %struct.TYPE_16__**** %293, align 8
  %295 = load i64, i64* %7, align 8
  %296 = getelementptr inbounds %struct.TYPE_16__**, %struct.TYPE_16__*** %294, i64 %295
  %297 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %296, align 8
  %298 = load i64, i64* %8, align 8
  %299 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %297, i64 %298
  %300 = load %struct.TYPE_16__*, %struct.TYPE_16__** %299, align 8
  %301 = load i64, i64* %13, align 8
  %302 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %300, i64 %301
  %303 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %302, i32 0, i32 2
  %304 = load i64, i64* %303, align 8
  %305 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %305, i32 0, i32 1
  %307 = load %struct.TYPE_20__*, %struct.TYPE_20__** %306, align 8
  %308 = load i64, i64* %6, align 8
  %309 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %307, i64 %308
  %310 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %309, i32 0, i32 9
  %311 = load %struct.TYPE_18__*, %struct.TYPE_18__** %310, align 8
  %312 = load i64, i64* %13, align 8
  %313 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %311, i64 %312
  %314 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %313, i32 0, i32 0
  store i64 %304, i64* %314, align 8
  %315 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %316 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %315, i32 0, i32 3
  %317 = load %struct.TYPE_16__***, %struct.TYPE_16__**** %316, align 8
  %318 = load i64, i64* %9, align 8
  %319 = getelementptr inbounds %struct.TYPE_16__**, %struct.TYPE_16__*** %317, i64 %318
  %320 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %319, align 8
  %321 = load i64, i64* %10, align 8
  %322 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %320, i64 %321
  %323 = load %struct.TYPE_16__*, %struct.TYPE_16__** %322, align 8
  %324 = load i64, i64* %13, align 8
  %325 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %323, i64 %324
  %326 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %325, i32 0, i32 1
  %327 = load i64, i64* %326, align 8
  %328 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %329 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %328, i32 0, i32 1
  %330 = load %struct.TYPE_20__*, %struct.TYPE_20__** %329, align 8
  %331 = load i64, i64* %6, align 8
  %332 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %330, i64 %331
  %333 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %332, i32 0, i32 9
  %334 = load %struct.TYPE_18__*, %struct.TYPE_18__** %333, align 8
  %335 = load i64, i64* %13, align 8
  %336 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %334, i64 %335
  %337 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %336, i32 0, i32 3
  store i64 %327, i64* %337, align 8
  %338 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %339 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %338, i32 0, i32 3
  %340 = load %struct.TYPE_16__***, %struct.TYPE_16__**** %339, align 8
  %341 = load i64, i64* %9, align 8
  %342 = getelementptr inbounds %struct.TYPE_16__**, %struct.TYPE_16__*** %340, i64 %341
  %343 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %342, align 8
  %344 = load i64, i64* %10, align 8
  %345 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %343, i64 %344
  %346 = load %struct.TYPE_16__*, %struct.TYPE_16__** %345, align 8
  %347 = load i64, i64* %13, align 8
  %348 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %346, i64 %347
  %349 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %348, i32 0, i32 0
  %350 = load i64, i64* %349, align 8
  %351 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %352 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %351, i32 0, i32 1
  %353 = load %struct.TYPE_20__*, %struct.TYPE_20__** %352, align 8
  %354 = load i64, i64* %6, align 8
  %355 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %353, i64 %354
  %356 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %355, i32 0, i32 9
  %357 = load %struct.TYPE_18__*, %struct.TYPE_18__** %356, align 8
  %358 = load i64, i64* %13, align 8
  %359 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %357, i64 %358
  %360 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %359, i32 0, i32 1
  store i64 %350, i64* %360, align 8
  %361 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %362 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %361, i32 0, i32 3
  %363 = load %struct.TYPE_16__***, %struct.TYPE_16__**** %362, align 8
  %364 = load i64, i64* %7, align 8
  %365 = getelementptr inbounds %struct.TYPE_16__**, %struct.TYPE_16__*** %363, i64 %364
  %366 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %365, align 8
  %367 = load i64, i64* %8, align 8
  %368 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %366, i64 %367
  %369 = load %struct.TYPE_16__*, %struct.TYPE_16__** %368, align 8
  %370 = load i64, i64* %13, align 8
  %371 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %369, i64 %370
  %372 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %371, i32 0, i32 1
  %373 = load i64, i64* %372, align 8
  %374 = load i64, i64* %11, align 8
  %375 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %376 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %375, i32 0, i32 2
  %377 = load %struct.TYPE_17__*, %struct.TYPE_17__** %376, align 8
  %378 = load i64, i64* %13, align 8
  %379 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %377, i64 %378
  %380 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %379, i32 0, i32 2
  %381 = load i64, i64* %380, align 8
  %382 = mul i64 %374, %381
  %383 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %384 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %383, i32 0, i32 2
  %385 = load %struct.TYPE_17__*, %struct.TYPE_17__** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %385, i64 0
  %387 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %386, i32 0, i32 2
  %388 = load i64, i64* %387, align 8
  %389 = udiv i64 %382, %388
  %390 = add i64 %373, %389
  %391 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %392 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %391, i32 0, i32 1
  %393 = load %struct.TYPE_20__*, %struct.TYPE_20__** %392, align 8
  %394 = load i64, i64* %6, align 8
  %395 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %393, i64 %394
  %396 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %395, i32 0, i32 9
  %397 = load %struct.TYPE_18__*, %struct.TYPE_18__** %396, align 8
  %398 = load i64, i64* %13, align 8
  %399 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %397, i64 %398
  %400 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %399, i32 0, i32 5
  store i64 %390, i64* %400, align 8
  %401 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %402 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %401, i32 0, i32 3
  %403 = load %struct.TYPE_16__***, %struct.TYPE_16__**** %402, align 8
  %404 = load i64, i64* %7, align 8
  %405 = getelementptr inbounds %struct.TYPE_16__**, %struct.TYPE_16__*** %403, i64 %404
  %406 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %405, align 8
  %407 = load i64, i64* %8, align 8
  %408 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %406, i64 %407
  %409 = load %struct.TYPE_16__*, %struct.TYPE_16__** %408, align 8
  %410 = load i64, i64* %13, align 8
  %411 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %409, i64 %410
  %412 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %411, i32 0, i32 0
  %413 = load i64, i64* %412, align 8
  %414 = load i64, i64* %12, align 8
  %415 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %416 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %415, i32 0, i32 2
  %417 = load %struct.TYPE_17__*, %struct.TYPE_17__** %416, align 8
  %418 = load i64, i64* %13, align 8
  %419 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %417, i64 %418
  %420 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %419, i32 0, i32 3
  %421 = load i64, i64* %420, align 8
  %422 = mul i64 %414, %421
  %423 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %424 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %423, i32 0, i32 2
  %425 = load %struct.TYPE_17__*, %struct.TYPE_17__** %424, align 8
  %426 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %425, i64 0
  %427 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %426, i32 0, i32 3
  %428 = load i64, i64* %427, align 8
  %429 = udiv i64 %422, %428
  %430 = add i64 %413, %429
  %431 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %432 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %431, i32 0, i32 1
  %433 = load %struct.TYPE_20__*, %struct.TYPE_20__** %432, align 8
  %434 = load i64, i64* %6, align 8
  %435 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %433, i64 %434
  %436 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %435, i32 0, i32 9
  %437 = load %struct.TYPE_18__*, %struct.TYPE_18__** %436, align 8
  %438 = load i64, i64* %13, align 8
  %439 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %437, i64 %438
  %440 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %439, i32 0, i32 4
  store i64 %430, i64* %440, align 8
  %441 = load i64, i64* %13, align 8
  %442 = icmp eq i64 %441, 0
  br i1 %442, label %443, label %535

443:                                              ; preds = %268
  %444 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %445 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %444, i32 0, i32 1
  %446 = load %struct.TYPE_20__*, %struct.TYPE_20__** %445, align 8
  %447 = load i64, i64* %6, align 8
  %448 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %446, i64 %447
  %449 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %448, i32 0, i32 9
  %450 = load %struct.TYPE_18__*, %struct.TYPE_18__** %449, align 8
  %451 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %450, i64 0
  %452 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %451, i32 0, i32 3
  %453 = load i64, i64* %452, align 8
  %454 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %455 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %454, i32 0, i32 1
  %456 = load %struct.TYPE_20__*, %struct.TYPE_20__** %455, align 8
  %457 = load i64, i64* %6, align 8
  %458 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %456, i64 %457
  %459 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %458, i32 0, i32 13
  store i64 %453, i64* %459, align 8
  %460 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %461 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %460, i32 0, i32 1
  %462 = load %struct.TYPE_20__*, %struct.TYPE_20__** %461, align 8
  %463 = load i64, i64* %6, align 8
  %464 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %462, i64 %463
  %465 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %464, i32 0, i32 9
  %466 = load %struct.TYPE_18__*, %struct.TYPE_18__** %465, align 8
  %467 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %466, i64 0
  %468 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %467, i32 0, i32 1
  %469 = load i64, i64* %468, align 8
  %470 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %471 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %470, i32 0, i32 1
  %472 = load %struct.TYPE_20__*, %struct.TYPE_20__** %471, align 8
  %473 = load i64, i64* %6, align 8
  %474 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %472, i64 %473
  %475 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %474, i32 0, i32 12
  store i64 %469, i64* %475, align 8
  %476 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %477 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %476, i32 0, i32 1
  %478 = load %struct.TYPE_20__*, %struct.TYPE_20__** %477, align 8
  %479 = load i64, i64* %6, align 8
  %480 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %478, i64 %479
  %481 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %480, i32 0, i32 9
  %482 = load %struct.TYPE_18__*, %struct.TYPE_18__** %481, align 8
  %483 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %482, i64 0
  %484 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %483, i32 0, i32 3
  %485 = load i64, i64* %484, align 8
  %486 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %487 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %486, i32 0, i32 1
  %488 = load %struct.TYPE_20__*, %struct.TYPE_20__** %487, align 8
  %489 = load i64, i64* %6, align 8
  %490 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %488, i64 %489
  %491 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %490, i32 0, i32 9
  %492 = load %struct.TYPE_18__*, %struct.TYPE_18__** %491, align 8
  %493 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %492, i64 0
  %494 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %493, i32 0, i32 2
  %495 = load i64, i64* %494, align 8
  %496 = add nsw i64 %485, %495
  %497 = sub nsw i64 %496, 1
  %498 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %499 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %498, i32 0, i32 1
  %500 = load %struct.TYPE_20__*, %struct.TYPE_20__** %499, align 8
  %501 = load i64, i64* %6, align 8
  %502 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %500, i64 %501
  %503 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %502, i32 0, i32 11
  store i64 %497, i64* %503, align 8
  %504 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %505 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %504, i32 0, i32 1
  %506 = load %struct.TYPE_20__*, %struct.TYPE_20__** %505, align 8
  %507 = load i64, i64* %6, align 8
  %508 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %506, i64 %507
  %509 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %508, i32 0, i32 9
  %510 = load %struct.TYPE_18__*, %struct.TYPE_18__** %509, align 8
  %511 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %510, i64 0
  %512 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %511, i32 0, i32 1
  %513 = load i64, i64* %512, align 8
  %514 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %515 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %514, i32 0, i32 1
  %516 = load %struct.TYPE_20__*, %struct.TYPE_20__** %515, align 8
  %517 = load i64, i64* %6, align 8
  %518 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %516, i64 %517
  %519 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %518, i32 0, i32 9
  %520 = load %struct.TYPE_18__*, %struct.TYPE_18__** %519, align 8
  %521 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %520, i64 0
  %522 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %521, i32 0, i32 0
  %523 = load i64, i64* %522, align 8
  %524 = add nsw i64 %513, %523
  %525 = sub nsw i64 %524, 1
  %526 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %527 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %526, i32 0, i32 1
  %528 = load %struct.TYPE_20__*, %struct.TYPE_20__** %527, align 8
  %529 = load i64, i64* %6, align 8
  %530 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %528, i64 %529
  %531 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %530, i32 0, i32 10
  store i64 %525, i64* %531, align 8
  %532 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %533 = load i64, i64* %6, align 8
  %534 = call i32 @puzzle_calculate_corners(%struct.TYPE_21__* %532, i64 %533)
  br label %535

535:                                              ; preds = %443, %268
  br label %536

536:                                              ; preds = %535
  %537 = load i64, i64* %13, align 8
  %538 = add i64 %537, 1
  store i64 %538, i64* %13, align 8
  br label %261

539:                                              ; preds = %261
  br label %540

540:                                              ; preds = %539, %255
  %541 = load i64, i64* %6, align 8
  %542 = add i64 %541, 1
  store i64 %542, i64* %6, align 8
  br label %543

543:                                              ; preds = %540
  %544 = load i64, i64* %8, align 8
  %545 = add i64 %544, 1
  store i64 %545, i64* %8, align 8
  br label %41

546:                                              ; preds = %41
  br label %547

547:                                              ; preds = %546
  %548 = load i64, i64* %7, align 8
  %549 = add i64 %548, 1
  store i64 %549, i64* %7, align 8
  br label %33

550:                                              ; preds = %33
  %551 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %552 = call i32 @puzzle_set_left_top_shapes(%struct.TYPE_21__* %551)
  %553 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %554 = call i32 @puzzle_random_rotate(%struct.TYPE_21__* %553)
  %555 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %555, i32* %2, align 4
  br label %556

556:                                              ; preds = %550, %30, %19
  %557 = load i32, i32* %2, align 4
  ret i32 %557
}

declare dso_local i32 @puzzle_allocate_ps_pieces(%struct.TYPE_21__*) #1

declare dso_local i32 @puzzle_shuffle(%struct.TYPE_21__*) #1

declare dso_local i32 @vlc_mrand48(...) #1

declare dso_local i32 @puzzle_calculate_corners(%struct.TYPE_21__*, i64) #1

declare dso_local i32 @puzzle_set_left_top_shapes(%struct.TYPE_21__*) #1

declare dso_local i32 @puzzle_random_rotate(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
