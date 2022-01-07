; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_dvbsub.c_decode_clut.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_dvbsub.c_decode_clut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_13__, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_11__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_10__ = type { i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i32*, i32)* @decode_clut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_clut(%struct.TYPE_14__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  store %struct.TYPE_15__* %21, %struct.TYPE_15__** %7, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @bs_read(i32* %22, i32 8)
  store i32 %23, i32* %11, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @bs_read(i32* %24, i32 4)
  store i32 %25, i32* %12, align 4
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  store %struct.TYPE_13__* %28, %struct.TYPE_13__** %9, align 8
  br label %29

29:                                               ; preds = %40, %3
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %31 = icmp ne %struct.TYPE_13__* %30, null
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %11, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %44

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 5
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %42, align 8
  store %struct.TYPE_13__* %43, %struct.TYPE_13__** %9, align 8
  br label %29

44:                                               ; preds = %38, %29
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %46 = icmp ne %struct.TYPE_13__* %45, null
  br i1 %46, label %47, label %59

47:                                               ; preds = %44
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = mul nsw i32 8, %55
  %57 = sub nsw i32 %56, 12
  %58 = call i32 @bs_skip(i32* %54, i32 %57)
  br label %274

59:                                               ; preds = %47, %44
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %61 = icmp ne %struct.TYPE_13__* %60, null
  br i1 %61, label %76, label %62

62:                                               ; preds = %59
  %63 = call %struct.TYPE_13__* @malloc(i32 40)
  store %struct.TYPE_13__* %63, %struct.TYPE_13__** %9, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %65 = icmp ne %struct.TYPE_13__* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  br label %274

67:                                               ; preds = %62
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %69, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 5
  store %struct.TYPE_13__* %70, %struct.TYPE_13__** %72, align 8
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 1
  store %struct.TYPE_13__* %73, %struct.TYPE_13__** %75, align 8
  br label %76

76:                                               ; preds = %67, %59
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 5
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %78, align 8
  store %struct.TYPE_13__* %79, %struct.TYPE_13__** %10, align 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = bitcast %struct.TYPE_13__* %80 to i8*
  %84 = bitcast %struct.TYPE_13__* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %83, i8* align 8 %84, i64 40, i1 false)
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 5
  store %struct.TYPE_13__* %85, %struct.TYPE_13__** %87, align 8
  %88 = load i32, i32* %12, align 4
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load i32*, i32** %5, align 8
  %95 = call i32 @bs_skip(i32* %94, i32 4)
  store i32 2, i32* %8, align 4
  br label %96

96:                                               ; preds = %273, %76
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %6, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %274

100:                                              ; preds = %96
  %101 = load i32*, i32** %5, align 8
  %102 = call i32 @bs_read(i32* %101, i32 8)
  store i32 %102, i32* %17, align 4
  %103 = load i32*, i32** %5, align 8
  %104 = call i32 @bs_read(i32* %103, i32 3)
  store i32 %104, i32* %18, align 4
  %105 = load i32*, i32** %5, align 8
  %106 = call i32 @bs_skip(i32* %105, i32 4)
  %107 = load i32*, i32** %5, align 8
  %108 = call i32 @bs_read(i32* %107, i32 1)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %129

110:                                              ; preds = %100
  %111 = load i32*, i32** %5, align 8
  %112 = call i32 @bs_read(i32* %111, i32 8)
  %113 = sext i32 %112 to i64
  %114 = inttoptr i64 %113 to i8*
  store i8* %114, i8** %13, align 8
  %115 = load i32*, i32** %5, align 8
  %116 = call i32 @bs_read(i32* %115, i32 8)
  %117 = sext i32 %116 to i64
  %118 = inttoptr i64 %117 to i8*
  store i8* %118, i8** %15, align 8
  %119 = load i32*, i32** %5, align 8
  %120 = call i32 @bs_read(i32* %119, i32 8)
  %121 = sext i32 %120 to i64
  %122 = inttoptr i64 %121 to i8*
  store i8* %122, i8** %14, align 8
  %123 = load i32*, i32** %5, align 8
  %124 = call i32 @bs_read(i32* %123, i32 8)
  %125 = sext i32 %124 to i64
  %126 = inttoptr i64 %125 to i8*
  store i8* %126, i8** %16, align 8
  %127 = load i32, i32* %8, align 4
  %128 = add nsw i32 %127, 6
  store i32 %128, i32* %8, align 4
  br label %152

129:                                              ; preds = %100
  %130 = load i32*, i32** %5, align 8
  %131 = call i32 @bs_read(i32* %130, i32 6)
  %132 = shl i32 %131, 2
  %133 = sext i32 %132 to i64
  %134 = inttoptr i64 %133 to i8*
  store i8* %134, i8** %13, align 8
  %135 = load i32*, i32** %5, align 8
  %136 = call i32 @bs_read(i32* %135, i32 4)
  %137 = shl i32 %136, 4
  %138 = sext i32 %137 to i64
  %139 = inttoptr i64 %138 to i8*
  store i8* %139, i8** %15, align 8
  %140 = load i32*, i32** %5, align 8
  %141 = call i32 @bs_read(i32* %140, i32 4)
  %142 = shl i32 %141, 4
  %143 = sext i32 %142 to i64
  %144 = inttoptr i64 %143 to i8*
  store i8* %144, i8** %14, align 8
  %145 = load i32*, i32** %5, align 8
  %146 = call i32 @bs_read(i32* %145, i32 2)
  %147 = shl i32 %146, 6
  %148 = sext i32 %147 to i64
  %149 = inttoptr i64 %148 to i8*
  store i8* %149, i8** %16, align 8
  %150 = load i32, i32* %8, align 4
  %151 = add nsw i32 %150, 4
  store i32 %151, i32* %8, align 4
  br label %152

152:                                              ; preds = %129, %110
  %153 = load i8*, i8** %13, align 8
  %154 = icmp eq i8* %153, null
  br i1 %154, label %155, label %156

155:                                              ; preds = %152
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i8* inttoptr (i64 255 to i8*), i8** %16, align 8
  br label %156

156:                                              ; preds = %155, %152
  %157 = load i32, i32* %18, align 4
  %158 = and i32 %157, 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %196

160:                                              ; preds = %156
  %161 = load i32, i32* %17, align 4
  %162 = icmp slt i32 %161, 4
  br i1 %162, label %163, label %196

163:                                              ; preds = %160
  %164 = load i8*, i8** %13, align 8
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 4
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %166, align 8
  %168 = load i32, i32* %17, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 3
  store i8* %164, i8** %171, align 8
  %172 = load i8*, i8** %15, align 8
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 4
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %174, align 8
  %176 = load i32, i32* %17, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 2
  store i8* %172, i8** %179, align 8
  %180 = load i8*, i8** %14, align 8
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 4
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %182, align 8
  %184 = load i32, i32* %17, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 1
  store i8* %180, i8** %187, align 8
  %188 = load i8*, i8** %16, align 8
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 4
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %190, align 8
  %192 = load i32, i32* %17, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 0
  store i8* %188, i8** %195, align 8
  br label %196

196:                                              ; preds = %163, %160, %156
  %197 = load i32, i32* %18, align 4
  %198 = and i32 %197, 2
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %236

200:                                              ; preds = %196
  %201 = load i32, i32* %17, align 4
  %202 = icmp slt i32 %201, 16
  br i1 %202, label %203, label %236

203:                                              ; preds = %200
  %204 = load i8*, i8** %13, align 8
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 3
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %206, align 8
  %208 = load i32, i32* %17, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 3
  store i8* %204, i8** %211, align 8
  %212 = load i8*, i8** %15, align 8
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 3
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %214, align 8
  %216 = load i32, i32* %17, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 2
  store i8* %212, i8** %219, align 8
  %220 = load i8*, i8** %14, align 8
  %221 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i32 0, i32 3
  %223 = load %struct.TYPE_11__*, %struct.TYPE_11__** %222, align 8
  %224 = load i32, i32* %17, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 1
  store i8* %220, i8** %227, align 8
  %228 = load i8*, i8** %16, align 8
  %229 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 3
  %231 = load %struct.TYPE_11__*, %struct.TYPE_11__** %230, align 8
  %232 = load i32, i32* %17, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %231, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 0
  store i8* %228, i8** %235, align 8
  br label %236

236:                                              ; preds = %203, %200, %196
  %237 = load i32, i32* %18, align 4
  %238 = and i32 %237, 1
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %273

240:                                              ; preds = %236
  %241 = load i8*, i8** %13, align 8
  %242 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i32 0, i32 2
  %244 = load %struct.TYPE_12__*, %struct.TYPE_12__** %243, align 8
  %245 = load i32, i32* %17, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i32 0, i32 3
  store i8* %241, i8** %248, align 8
  %249 = load i8*, i8** %15, align 8
  %250 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i32 0, i32 2
  %252 = load %struct.TYPE_12__*, %struct.TYPE_12__** %251, align 8
  %253 = load i32, i32* %17, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i32 0, i32 2
  store i8* %249, i8** %256, align 8
  %257 = load i8*, i8** %14, align 8
  %258 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %259 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %258, i32 0, i32 2
  %260 = load %struct.TYPE_12__*, %struct.TYPE_12__** %259, align 8
  %261 = load i32, i32* %17, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i32 0, i32 1
  store i8* %257, i8** %264, align 8
  %265 = load i8*, i8** %16, align 8
  %266 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %267 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %266, i32 0, i32 2
  %268 = load %struct.TYPE_12__*, %struct.TYPE_12__** %267, align 8
  %269 = load i32, i32* %17, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %268, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %271, i32 0, i32 0
  store i8* %265, i8** %272, align 8
  br label %273

273:                                              ; preds = %240, %236
  br label %96

274:                                              ; preds = %53, %66, %96
  ret void
}

declare dso_local i32 @bs_read(i32*, i32) #1

declare dso_local i32 @bs_skip(i32*, i32) #1

declare dso_local %struct.TYPE_13__* @malloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
