; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_puzzle_mgt.c_puzzle_solve_pces_group.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_puzzle_mgt.c_puzzle_solve_pces_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, i32, i32, i32, i64, i32 }
%struct.TYPE_7__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @puzzle_solve_pces_group(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %3, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* %18, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = urem i64 %27, %24
  store i64 %28, i64* %26, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %6, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i64 %35
  store %struct.TYPE_8__* %36, %struct.TYPE_8__** %7, align 8
  store i64 0, i64* %8, align 8
  br label %37

37:                                               ; preds = %554, %1
  %38 = load i64, i64* %8, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ult i64 %38, %42
  br i1 %43, label %44, label %557

44:                                               ; preds = %37
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = load i64, i64* %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i64 %48
  store %struct.TYPE_8__* %49, %struct.TYPE_8__** %9, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %65, label %57

57:                                               ; preds = %44
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %60, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %57, %44
  br label %554

66:                                               ; preds = %57
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = load i64, i64* %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %69, %76
  br i1 %77, label %78, label %390

78:                                               ; preds = %66
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = sub nsw i32 %81, %84
  %86 = call i32 @abs(i32 %85) #3
  %87 = icmp slt i32 %86, 3
  br i1 %87, label %88, label %233

88:                                               ; preds = %78
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 8
  %95 = sub nsw i32 %91, %94
  %96 = add nsw i32 %95, 1
  %97 = call i32 @abs(i32 %96) #3
  %98 = icmp slt i32 %97, 3
  br i1 %98, label %99, label %232

99:                                               ; preds = %88
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 7
  %105 = load i32, i32* %104, align 8
  %106 = sub nsw i32 %102, %105
  %107 = add nsw i32 %106, 1
  %108 = call i32 @abs(i32 %107) #3
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = icmp slt i32 %108, %111
  br i1 %112, label %113, label %232

113:                                              ; preds = %99
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 8
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 9
  %119 = load i32, i32* %118, align 8
  %120 = sub nsw i32 %116, %119
  %121 = call i32 @abs(i32 %120) #3
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = icmp slt i32 %121, %124
  br i1 %125, label %126, label %232

126:                                              ; preds = %113
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 10
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 11
  %132 = load i32, i32* %131, align 8
  %133 = sub nsw i32 %129, %132
  %134 = add nsw i32 %133, 1
  %135 = call i32 @abs(i32 %134) #3
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = icmp slt i32 %135, %138
  br i1 %139, label %140, label %232

140:                                              ; preds = %126
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 12
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 13
  %146 = load i32, i32* %145, align 8
  %147 = sub nsw i32 %143, %146
  %148 = call i32 @abs(i32 %147) #3
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = icmp slt i32 %148, %151
  br i1 %152, label %153, label %232

153:                                              ; preds = %140
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 6
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 7
  %159 = load i32, i32* %158, align 8
  %160 = sub nsw i32 %156, %159
  %161 = sext i32 %160 to i64
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 14
  %164 = load i64, i64* %163, align 8
  %165 = add i64 %161, %164
  store i64 %165, i64* %4, align 8
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 8
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 9
  %171 = load i32, i32* %170, align 8
  %172 = sub nsw i32 %168, %171
  %173 = sext i32 %172 to i64
  store i64 %173, i64* %5, align 8
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 21
  %176 = load i32, i32* %175, align 8
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %184, label %178

178:                                              ; preds = %153
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %180 = load i64, i64* %8, align 8
  %181 = load i64, i64* %4, align 8
  %182 = load i64, i64* %5, align 8
  %183 = call i32 @puzzle_move_group(%struct.TYPE_9__* %179, i64 %180, i64 %181, i64 %182)
  br label %192

184:                                              ; preds = %153
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %186 = load i64, i64* %6, align 8
  %187 = load i64, i64* %4, align 8
  %188 = sub i64 0, %187
  %189 = load i64, i64* %5, align 8
  %190 = sub i64 0, %189
  %191 = call i32 @puzzle_move_group(%struct.TYPE_9__* %185, i64 %186, i64 %188, i64 %190)
  br label %192

192:                                              ; preds = %184, %178
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  store i64 %195, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %196

196:                                              ; preds = %228, %192
  %197 = load i64, i64* %11, align 8
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 3
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = icmp ult i64 %197, %201
  br i1 %202, label %203, label %231

203:                                              ; preds = %196
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 2
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %205, align 8
  %207 = load i64, i64* %11, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* %10, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %227

213:                                              ; preds = %203
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 2
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %215, align 8
  %217 = load i64, i64* %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 2
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %222, align 8
  %224 = load i64, i64* %11, align 8
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 2
  store i64 %220, i64* %226, align 8
  br label %227

227:                                              ; preds = %213, %203
  br label %228

228:                                              ; preds = %227
  %229 = load i64, i64* %11, align 8
  %230 = add i64 %229, 1
  store i64 %230, i64* %11, align 8
  br label %196

231:                                              ; preds = %196
  br label %232

232:                                              ; preds = %231, %140, %126, %113, %99, %88
  br label %389

233:                                              ; preds = %78
  %234 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 5
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 5
  %239 = load i32, i32* %238, align 8
  %240 = sub nsw i32 %236, %239
  %241 = call i32 @abs(i32 %240) #3
  %242 = icmp slt i32 %241, 3
  br i1 %242, label %243, label %388

243:                                              ; preds = %233
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 15
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 8
  %250 = sub nsw i32 %246, %249
  %251 = add nsw i32 %250, 1
  %252 = call i32 @abs(i32 %251) #3
  %253 = icmp slt i32 %252, 3
  br i1 %253, label %254, label %387

254:                                              ; preds = %243
  %255 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 7
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 11
  %260 = load i32, i32* %259, align 8
  %261 = sub nsw i32 %257, %260
  %262 = call i32 @abs(i32 %261) #3
  %263 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 8
  %266 = icmp slt i32 %262, %265
  br i1 %266, label %267, label %387

267:                                              ; preds = %254
  %268 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 9
  %270 = load i32, i32* %269, align 8
  %271 = sub nsw i32 %270, 1
  %272 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 13
  %274 = load i32, i32* %273, align 8
  %275 = sub nsw i32 %271, %274
  %276 = call i32 @abs(i32 %275) #3
  %277 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %278 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 8
  %280 = icmp slt i32 %276, %279
  br i1 %280, label %281, label %387

281:                                              ; preds = %267
  %282 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %282, i32 0, i32 6
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %285, i32 0, i32 10
  %287 = load i32, i32* %286, align 4
  %288 = sub nsw i32 %284, %287
  %289 = call i32 @abs(i32 %288) #3
  %290 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %291 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 8
  %293 = icmp slt i32 %289, %292
  br i1 %293, label %294, label %387

294:                                              ; preds = %281
  %295 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %296 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %295, i32 0, i32 8
  %297 = load i32, i32* %296, align 4
  %298 = sub nsw i32 %297, 1
  %299 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %300 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %299, i32 0, i32 12
  %301 = load i32, i32* %300, align 4
  %302 = sub nsw i32 %298, %301
  %303 = call i32 @abs(i32 %302) #3
  %304 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %305 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 8
  %307 = icmp slt i32 %303, %306
  br i1 %307, label %308, label %387

308:                                              ; preds = %294
  %309 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %310 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %309, i32 0, i32 11
  %311 = load i32, i32* %310, align 8
  %312 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %313 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %312, i32 0, i32 7
  %314 = load i32, i32* %313, align 8
  %315 = sub nsw i32 %311, %314
  %316 = sext i32 %315 to i64
  store i64 %316, i64* %4, align 8
  %317 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %318 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %317, i32 0, i32 13
  %319 = load i32, i32* %318, align 8
  %320 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %321 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %320, i32 0, i32 9
  %322 = load i32, i32* %321, align 8
  %323 = sub nsw i32 %319, %322
  %324 = sext i32 %323 to i64
  %325 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %326 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %325, i32 0, i32 16
  %327 = load i64, i64* %326, align 8
  %328 = add i64 %324, %327
  store i64 %328, i64* %5, align 8
  %329 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %330 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %329, i32 0, i32 21
  %331 = load i32, i32* %330, align 8
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %339, label %333

333:                                              ; preds = %308
  %334 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %335 = load i64, i64* %8, align 8
  %336 = load i64, i64* %4, align 8
  %337 = load i64, i64* %5, align 8
  %338 = call i32 @puzzle_move_group(%struct.TYPE_9__* %334, i64 %335, i64 %336, i64 %337)
  br label %347

339:                                              ; preds = %308
  %340 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %341 = load i64, i64* %6, align 8
  %342 = load i64, i64* %4, align 8
  %343 = sub i64 0, %342
  %344 = load i64, i64* %5, align 8
  %345 = sub i64 0, %344
  %346 = call i32 @puzzle_move_group(%struct.TYPE_9__* %340, i64 %341, i64 %343, i64 %345)
  br label %347

347:                                              ; preds = %339, %333
  %348 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %349 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %348, i32 0, i32 2
  %350 = load i64, i64* %349, align 8
  store i64 %350, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %351

351:                                              ; preds = %383, %347
  %352 = load i64, i64* %13, align 8
  %353 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %354 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %353, i32 0, i32 3
  %355 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %354, i32 0, i32 0
  %356 = load i64, i64* %355, align 8
  %357 = icmp ult i64 %352, %356
  br i1 %357, label %358, label %386

358:                                              ; preds = %351
  %359 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %360 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %359, i32 0, i32 2
  %361 = load %struct.TYPE_8__*, %struct.TYPE_8__** %360, align 8
  %362 = load i64, i64* %13, align 8
  %363 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %361, i64 %362
  %364 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %363, i32 0, i32 2
  %365 = load i64, i64* %364, align 8
  %366 = load i64, i64* %12, align 8
  %367 = icmp eq i64 %365, %366
  br i1 %367, label %368, label %382

368:                                              ; preds = %358
  %369 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %370 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %369, i32 0, i32 2
  %371 = load %struct.TYPE_8__*, %struct.TYPE_8__** %370, align 8
  %372 = load i64, i64* %6, align 8
  %373 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %371, i64 %372
  %374 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %373, i32 0, i32 2
  %375 = load i64, i64* %374, align 8
  %376 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %377 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %376, i32 0, i32 2
  %378 = load %struct.TYPE_8__*, %struct.TYPE_8__** %377, align 8
  %379 = load i64, i64* %13, align 8
  %380 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %378, i64 %379
  %381 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %380, i32 0, i32 2
  store i64 %375, i64* %381, align 8
  br label %382

382:                                              ; preds = %368, %358
  br label %383

383:                                              ; preds = %382
  %384 = load i64, i64* %13, align 8
  %385 = add i64 %384, 1
  store i64 %385, i64* %13, align 8
  br label %351

386:                                              ; preds = %351
  br label %387

387:                                              ; preds = %386, %294, %281, %267, %254, %243
  br label %388

388:                                              ; preds = %387, %233
  br label %389

389:                                              ; preds = %388, %232
  br label %390

390:                                              ; preds = %389, %66
  %391 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %392 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %391, i32 0, i32 3
  %393 = load i32, i32* %392, align 8
  %394 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %395 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %394, i32 0, i32 3
  %396 = load i32, i32* %395, align 8
  %397 = sub nsw i32 %393, %396
  %398 = call i32 @abs(i32 %397) #3
  %399 = icmp slt i32 %398, 3
  br i1 %399, label %400, label %471

400:                                              ; preds = %390
  %401 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %402 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %401, i32 0, i32 4
  %403 = load i32, i32* %402, align 4
  %404 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %405 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %404, i32 0, i32 5
  %406 = load i32, i32* %405, align 8
  %407 = sub nsw i32 %403, %406
  %408 = add nsw i32 %407, 1
  %409 = call i32 @abs(i32 %408) #3
  %410 = icmp slt i32 %409, 3
  br i1 %410, label %411, label %470

411:                                              ; preds = %400
  %412 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %413 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %412, i32 0, i32 6
  %414 = load i32, i32* %413, align 4
  %415 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %416 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %415, i32 0, i32 7
  %417 = load i32, i32* %416, align 8
  %418 = sub nsw i32 %414, %417
  %419 = add nsw i32 %418, 1
  %420 = call i32 @abs(i32 %419) #3
  %421 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %422 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %421, i32 0, i32 1
  %423 = load i32, i32* %422, align 8
  %424 = icmp slt i32 %420, %423
  br i1 %424, label %425, label %470

425:                                              ; preds = %411
  %426 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %427 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %426, i32 0, i32 8
  %428 = load i32, i32* %427, align 4
  %429 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %430 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %429, i32 0, i32 9
  %431 = load i32, i32* %430, align 8
  %432 = sub nsw i32 %428, %431
  %433 = call i32 @abs(i32 %432) #3
  %434 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %435 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %434, i32 0, i32 1
  %436 = load i32, i32* %435, align 8
  %437 = icmp slt i32 %433, %436
  br i1 %437, label %438, label %470

438:                                              ; preds = %425
  %439 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %440 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %439, i32 0, i32 10
  %441 = load i32, i32* %440, align 4
  %442 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %443 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %442, i32 0, i32 11
  %444 = load i32, i32* %443, align 8
  %445 = sub nsw i32 %441, %444
  %446 = add nsw i32 %445, 1
  %447 = call i32 @abs(i32 %446) #3
  %448 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %449 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %448, i32 0, i32 1
  %450 = load i32, i32* %449, align 8
  %451 = icmp slt i32 %447, %450
  br i1 %451, label %452, label %470

452:                                              ; preds = %438
  %453 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %454 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %453, i32 0, i32 12
  %455 = load i32, i32* %454, align 4
  %456 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %457 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %456, i32 0, i32 13
  %458 = load i32, i32* %457, align 8
  %459 = sub nsw i32 %455, %458
  %460 = call i32 @abs(i32 %459) #3
  %461 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %462 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %461, i32 0, i32 1
  %463 = load i32, i32* %462, align 8
  %464 = icmp slt i32 %460, %463
  br i1 %464, label %465, label %470

465:                                              ; preds = %452
  %466 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %467 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %466, i32 0, i32 20
  store i64 0, i64* %467, align 8
  %468 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %469 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %468, i32 0, i32 17
  store i32 6, i32* %469, align 8
  br label %470

470:                                              ; preds = %465, %452, %438, %425, %411, %400
  br label %553

471:                                              ; preds = %390
  %472 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %473 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %472, i32 0, i32 5
  %474 = load i32, i32* %473, align 8
  %475 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %476 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %475, i32 0, i32 5
  %477 = load i32, i32* %476, align 8
  %478 = sub nsw i32 %474, %477
  %479 = call i32 @abs(i32 %478) #3
  %480 = icmp slt i32 %479, 3
  br i1 %480, label %481, label %552

481:                                              ; preds = %471
  %482 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %483 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %482, i32 0, i32 15
  %484 = load i32, i32* %483, align 8
  %485 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %486 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %485, i32 0, i32 3
  %487 = load i32, i32* %486, align 8
  %488 = sub nsw i32 %484, %487
  %489 = add nsw i32 %488, 1
  %490 = call i32 @abs(i32 %489) #3
  %491 = icmp slt i32 %490, 3
  br i1 %491, label %492, label %551

492:                                              ; preds = %481
  %493 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %494 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %493, i32 0, i32 7
  %495 = load i32, i32* %494, align 8
  %496 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %497 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %496, i32 0, i32 11
  %498 = load i32, i32* %497, align 8
  %499 = sub nsw i32 %495, %498
  %500 = call i32 @abs(i32 %499) #3
  %501 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %502 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %501, i32 0, i32 1
  %503 = load i32, i32* %502, align 8
  %504 = icmp slt i32 %500, %503
  br i1 %504, label %505, label %551

505:                                              ; preds = %492
  %506 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %507 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %506, i32 0, i32 9
  %508 = load i32, i32* %507, align 8
  %509 = sub nsw i32 %508, 1
  %510 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %511 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %510, i32 0, i32 13
  %512 = load i32, i32* %511, align 8
  %513 = sub nsw i32 %509, %512
  %514 = call i32 @abs(i32 %513) #3
  %515 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %516 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %515, i32 0, i32 1
  %517 = load i32, i32* %516, align 8
  %518 = icmp slt i32 %514, %517
  br i1 %518, label %519, label %551

519:                                              ; preds = %505
  %520 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %521 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %520, i32 0, i32 6
  %522 = load i32, i32* %521, align 4
  %523 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %524 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %523, i32 0, i32 10
  %525 = load i32, i32* %524, align 4
  %526 = sub nsw i32 %522, %525
  %527 = call i32 @abs(i32 %526) #3
  %528 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %529 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %528, i32 0, i32 1
  %530 = load i32, i32* %529, align 8
  %531 = icmp slt i32 %527, %530
  br i1 %531, label %532, label %551

532:                                              ; preds = %519
  %533 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %534 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %533, i32 0, i32 8
  %535 = load i32, i32* %534, align 4
  %536 = sub nsw i32 %535, 1
  %537 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %538 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %537, i32 0, i32 12
  %539 = load i32, i32* %538, align 4
  %540 = sub nsw i32 %536, %539
  %541 = call i32 @abs(i32 %540) #3
  %542 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %543 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %542, i32 0, i32 1
  %544 = load i32, i32* %543, align 8
  %545 = icmp slt i32 %541, %544
  br i1 %545, label %546, label %551

546:                                              ; preds = %532
  %547 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %548 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %547, i32 0, i32 18
  store i32 2, i32* %548, align 4
  %549 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %550 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %549, i32 0, i32 19
  store i32 4, i32* %550, align 8
  br label %551

551:                                              ; preds = %546, %532, %519, %505, %492, %481
  br label %552

552:                                              ; preds = %551, %471
  br label %553

553:                                              ; preds = %552, %470
  br label %554

554:                                              ; preds = %553, %65
  %555 = load i64, i64* %8, align 8
  %556 = add i64 %555, 1
  store i64 %556, i64* %8, align 8
  br label %37

557:                                              ; preds = %37
  ret void
}

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #1

declare dso_local i32 @puzzle_move_group(%struct.TYPE_9__*, i64, i64, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
