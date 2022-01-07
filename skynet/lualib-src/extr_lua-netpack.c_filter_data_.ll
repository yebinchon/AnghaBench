; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-netpack.c_filter_data_.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-netpack.c_filter_data_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue = type { %struct.uncomplete** }
%struct.uncomplete = type { i32, i32, %struct.TYPE_2__, %struct.uncomplete* }
%struct.TYPE_2__ = type { i32, i8* }

@TYPE_DATA = common dso_local global i32 0, align 4
@TYPE_MORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8**, i32)* @filter_data_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_data_(i32* %0, i32 %1, i8** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.queue*, align 8
  %11 = alloca %struct.uncomplete*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.uncomplete*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.uncomplete*, align 8
  %18 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = call %struct.queue* @lua_touserdata(i32* %19, i32 1)
  store %struct.queue* %20, %struct.queue** %10, align 8
  %21 = load %struct.queue*, %struct.queue** %10, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call %struct.uncomplete* @find_uncomplete(%struct.queue* %21, i32 %22)
  store %struct.uncomplete* %23, %struct.uncomplete** %11, align 8
  %24 = load %struct.uncomplete*, %struct.uncomplete** %11, align 8
  %25 = icmp ne %struct.uncomplete* %24, null
  br i1 %25, label %26, label %178

26:                                               ; preds = %4
  %27 = load %struct.uncomplete*, %struct.uncomplete** %11, align 8
  %28 = getelementptr inbounds %struct.uncomplete, %struct.uncomplete* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %62

31:                                               ; preds = %26
  %32 = load %struct.uncomplete*, %struct.uncomplete** %11, align 8
  %33 = getelementptr inbounds %struct.uncomplete, %struct.uncomplete* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, -1
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i8**, i8*** %8, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = ptrtoint i8* %39 to i32
  store i32 %40, i32* %12, align 4
  %41 = load %struct.uncomplete*, %struct.uncomplete** %11, align 8
  %42 = getelementptr inbounds %struct.uncomplete, %struct.uncomplete* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %43, 8
  %45 = load i32, i32* %12, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %12, align 4
  %47 = load i8**, i8*** %8, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i32 1
  store i8** %48, i8*** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load %struct.uncomplete*, %struct.uncomplete** %11, align 8
  %53 = getelementptr inbounds %struct.uncomplete, %struct.uncomplete* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  %55 = load i32, i32* %12, align 4
  %56 = call i8* @skynet_malloc(i32 %55)
  %57 = load %struct.uncomplete*, %struct.uncomplete** %11, align 8
  %58 = getelementptr inbounds %struct.uncomplete, %struct.uncomplete* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  store i8* %56, i8** %59, align 8
  %60 = load %struct.uncomplete*, %struct.uncomplete** %11, align 8
  %61 = getelementptr inbounds %struct.uncomplete, %struct.uncomplete* %60, i32 0, i32 0
  store i32 0, i32* %61, align 8
  br label %62

62:                                               ; preds = %31, %26
  %63 = load %struct.uncomplete*, %struct.uncomplete** %11, align 8
  %64 = getelementptr inbounds %struct.uncomplete, %struct.uncomplete* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.uncomplete*, %struct.uncomplete** %11, align 8
  %68 = getelementptr inbounds %struct.uncomplete, %struct.uncomplete* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sub nsw i32 %66, %69
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %110

74:                                               ; preds = %62
  %75 = load %struct.uncomplete*, %struct.uncomplete** %11, align 8
  %76 = getelementptr inbounds %struct.uncomplete, %struct.uncomplete* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.uncomplete*, %struct.uncomplete** %11, align 8
  %80 = getelementptr inbounds %struct.uncomplete, %struct.uncomplete* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = getelementptr i8, i8* %78, i64 %82
  %84 = load i8**, i8*** %8, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @memcpy(i8* %83, i8** %84, i32 %85)
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.uncomplete*, %struct.uncomplete** %11, align 8
  %89 = getelementptr inbounds %struct.uncomplete, %struct.uncomplete* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, %87
  store i32 %91, i32* %89, align 8
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @hash_fd(i32 %92)
  store i32 %93, i32* %14, align 4
  %94 = load %struct.queue*, %struct.queue** %10, align 8
  %95 = getelementptr inbounds %struct.queue, %struct.queue* %94, i32 0, i32 0
  %96 = load %struct.uncomplete**, %struct.uncomplete*** %95, align 8
  %97 = load i32, i32* %14, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.uncomplete*, %struct.uncomplete** %96, i64 %98
  %100 = load %struct.uncomplete*, %struct.uncomplete** %99, align 8
  %101 = load %struct.uncomplete*, %struct.uncomplete** %11, align 8
  %102 = getelementptr inbounds %struct.uncomplete, %struct.uncomplete* %101, i32 0, i32 3
  store %struct.uncomplete* %100, %struct.uncomplete** %102, align 8
  %103 = load %struct.uncomplete*, %struct.uncomplete** %11, align 8
  %104 = load %struct.queue*, %struct.queue** %10, align 8
  %105 = getelementptr inbounds %struct.queue, %struct.queue* %104, i32 0, i32 0
  %106 = load %struct.uncomplete**, %struct.uncomplete*** %105, align 8
  %107 = load i32, i32* %14, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.uncomplete*, %struct.uncomplete** %106, i64 %108
  store %struct.uncomplete* %103, %struct.uncomplete** %109, align 8
  store i32 1, i32* %5, align 4
  br label %271

110:                                              ; preds = %62
  %111 = load %struct.uncomplete*, %struct.uncomplete** %11, align 8
  %112 = getelementptr inbounds %struct.uncomplete, %struct.uncomplete* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = load %struct.uncomplete*, %struct.uncomplete** %11, align 8
  %116 = getelementptr inbounds %struct.uncomplete, %struct.uncomplete* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = sext i32 %117 to i64
  %119 = getelementptr i8, i8* %114, i64 %118
  %120 = load i8**, i8*** %8, align 8
  %121 = load i32, i32* %13, align 4
  %122 = call i32 @memcpy(i8* %119, i8** %120, i32 %121)
  %123 = load i32, i32* %13, align 4
  %124 = load i8**, i8*** %8, align 8
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds i8*, i8** %124, i64 %125
  store i8** %126, i8*** %8, align 8
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* %9, align 4
  %129 = sub nsw i32 %128, %127
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %154

132:                                              ; preds = %110
  %133 = load i32*, i32** %6, align 8
  %134 = load i32, i32* @TYPE_DATA, align 4
  %135 = call i32 @lua_upvalueindex(i32 %134)
  %136 = call i32 @lua_pushvalue(i32* %133, i32 %135)
  %137 = load i32*, i32** %6, align 8
  %138 = load i32, i32* %7, align 4
  %139 = call i32 @lua_pushinteger(i32* %137, i32 %138)
  %140 = load i32*, i32** %6, align 8
  %141 = load %struct.uncomplete*, %struct.uncomplete** %11, align 8
  %142 = getelementptr inbounds %struct.uncomplete, %struct.uncomplete* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 1
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 @lua_pushlightuserdata(i32* %140, i8* %144)
  %146 = load i32*, i32** %6, align 8
  %147 = load %struct.uncomplete*, %struct.uncomplete** %11, align 8
  %148 = getelementptr inbounds %struct.uncomplete, %struct.uncomplete* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @lua_pushinteger(i32* %146, i32 %150)
  %152 = load %struct.uncomplete*, %struct.uncomplete** %11, align 8
  %153 = call i32 @skynet_free(%struct.uncomplete* %152)
  store i32 5, i32* %5, align 4
  br label %271

154:                                              ; preds = %110
  %155 = load i32*, i32** %6, align 8
  %156 = load i32, i32* %7, align 4
  %157 = load %struct.uncomplete*, %struct.uncomplete** %11, align 8
  %158 = getelementptr inbounds %struct.uncomplete, %struct.uncomplete* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 1
  %160 = load i8*, i8** %159, align 8
  %161 = bitcast i8* %160 to i8**
  %162 = load %struct.uncomplete*, %struct.uncomplete** %11, align 8
  %163 = getelementptr inbounds %struct.uncomplete, %struct.uncomplete* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @push_data(i32* %155, i32 %156, i8** %161, i32 %165, i32 0)
  %167 = load %struct.uncomplete*, %struct.uncomplete** %11, align 8
  %168 = call i32 @skynet_free(%struct.uncomplete* %167)
  %169 = load i32*, i32** %6, align 8
  %170 = load i32, i32* %7, align 4
  %171 = load i8**, i8*** %8, align 8
  %172 = load i32, i32* %9, align 4
  %173 = call i32 @push_more(i32* %169, i32 %170, i8** %171, i32 %172)
  %174 = load i32*, i32** %6, align 8
  %175 = load i32, i32* @TYPE_MORE, align 4
  %176 = call i32 @lua_upvalueindex(i32 %175)
  %177 = call i32 @lua_pushvalue(i32* %174, i32 %176)
  store i32 2, i32* %5, align 4
  br label %271

178:                                              ; preds = %4
  %179 = load i32, i32* %9, align 4
  %180 = icmp eq i32 %179, 1
  br i1 %180, label %181, label %192

181:                                              ; preds = %178
  %182 = load i32*, i32** %6, align 8
  %183 = load i32, i32* %7, align 4
  %184 = call %struct.uncomplete* @save_uncomplete(i32* %182, i32 %183)
  store %struct.uncomplete* %184, %struct.uncomplete** %15, align 8
  %185 = load %struct.uncomplete*, %struct.uncomplete** %15, align 8
  %186 = getelementptr inbounds %struct.uncomplete, %struct.uncomplete* %185, i32 0, i32 0
  store i32 -1, i32* %186, align 8
  %187 = load i8**, i8*** %8, align 8
  %188 = load i8*, i8** %187, align 8
  %189 = ptrtoint i8* %188 to i32
  %190 = load %struct.uncomplete*, %struct.uncomplete** %15, align 8
  %191 = getelementptr inbounds %struct.uncomplete, %struct.uncomplete* %190, i32 0, i32 1
  store i32 %189, i32* %191, align 4
  store i32 1, i32* %5, align 4
  br label %271

192:                                              ; preds = %178
  %193 = load i8**, i8*** %8, align 8
  %194 = call i32 @read_size(i8** %193)
  store i32 %194, i32* %16, align 4
  %195 = load i8**, i8*** %8, align 8
  %196 = getelementptr inbounds i8*, i8** %195, i64 2
  store i8** %196, i8*** %8, align 8
  %197 = load i32, i32* %9, align 4
  %198 = sub nsw i32 %197, 2
  store i32 %198, i32* %9, align 4
  %199 = load i32, i32* %9, align 4
  %200 = load i32, i32* %16, align 4
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %202, label %225

202:                                              ; preds = %192
  %203 = load i32*, i32** %6, align 8
  %204 = load i32, i32* %7, align 4
  %205 = call %struct.uncomplete* @save_uncomplete(i32* %203, i32 %204)
  store %struct.uncomplete* %205, %struct.uncomplete** %17, align 8
  %206 = load i32, i32* %9, align 4
  %207 = load %struct.uncomplete*, %struct.uncomplete** %17, align 8
  %208 = getelementptr inbounds %struct.uncomplete, %struct.uncomplete* %207, i32 0, i32 0
  store i32 %206, i32* %208, align 8
  %209 = load i32, i32* %16, align 4
  %210 = load %struct.uncomplete*, %struct.uncomplete** %17, align 8
  %211 = getelementptr inbounds %struct.uncomplete, %struct.uncomplete* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 0
  store i32 %209, i32* %212, align 8
  %213 = load i32, i32* %16, align 4
  %214 = call i8* @skynet_malloc(i32 %213)
  %215 = load %struct.uncomplete*, %struct.uncomplete** %17, align 8
  %216 = getelementptr inbounds %struct.uncomplete, %struct.uncomplete* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 1
  store i8* %214, i8** %217, align 8
  %218 = load %struct.uncomplete*, %struct.uncomplete** %17, align 8
  %219 = getelementptr inbounds %struct.uncomplete, %struct.uncomplete* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i32 0, i32 1
  %221 = load i8*, i8** %220, align 8
  %222 = load i8**, i8*** %8, align 8
  %223 = load i32, i32* %9, align 4
  %224 = call i32 @memcpy(i8* %221, i8** %222, i32 %223)
  store i32 1, i32* %5, align 4
  br label %271

225:                                              ; preds = %192
  %226 = load i32, i32* %9, align 4
  %227 = load i32, i32* %16, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %229, label %249

229:                                              ; preds = %225
  %230 = load i32*, i32** %6, align 8
  %231 = load i32, i32* @TYPE_DATA, align 4
  %232 = call i32 @lua_upvalueindex(i32 %231)
  %233 = call i32 @lua_pushvalue(i32* %230, i32 %232)
  %234 = load i32*, i32** %6, align 8
  %235 = load i32, i32* %7, align 4
  %236 = call i32 @lua_pushinteger(i32* %234, i32 %235)
  %237 = load i32, i32* %16, align 4
  %238 = call i8* @skynet_malloc(i32 %237)
  store i8* %238, i8** %18, align 8
  %239 = load i8*, i8** %18, align 8
  %240 = load i8**, i8*** %8, align 8
  %241 = load i32, i32* %9, align 4
  %242 = call i32 @memcpy(i8* %239, i8** %240, i32 %241)
  %243 = load i32*, i32** %6, align 8
  %244 = load i8*, i8** %18, align 8
  %245 = call i32 @lua_pushlightuserdata(i32* %243, i8* %244)
  %246 = load i32*, i32** %6, align 8
  %247 = load i32, i32* %9, align 4
  %248 = call i32 @lua_pushinteger(i32* %246, i32 %247)
  store i32 5, i32* %5, align 4
  br label %271

249:                                              ; preds = %225
  %250 = load i32*, i32** %6, align 8
  %251 = load i32, i32* %7, align 4
  %252 = load i8**, i8*** %8, align 8
  %253 = load i32, i32* %16, align 4
  %254 = call i32 @push_data(i32* %250, i32 %251, i8** %252, i32 %253, i32 1)
  %255 = load i32, i32* %16, align 4
  %256 = load i8**, i8*** %8, align 8
  %257 = sext i32 %255 to i64
  %258 = getelementptr inbounds i8*, i8** %256, i64 %257
  store i8** %258, i8*** %8, align 8
  %259 = load i32, i32* %16, align 4
  %260 = load i32, i32* %9, align 4
  %261 = sub nsw i32 %260, %259
  store i32 %261, i32* %9, align 4
  %262 = load i32*, i32** %6, align 8
  %263 = load i32, i32* %7, align 4
  %264 = load i8**, i8*** %8, align 8
  %265 = load i32, i32* %9, align 4
  %266 = call i32 @push_more(i32* %262, i32 %263, i8** %264, i32 %265)
  %267 = load i32*, i32** %6, align 8
  %268 = load i32, i32* @TYPE_MORE, align 4
  %269 = call i32 @lua_upvalueindex(i32 %268)
  %270 = call i32 @lua_pushvalue(i32* %267, i32 %269)
  store i32 2, i32* %5, align 4
  br label %271

271:                                              ; preds = %249, %229, %202, %181, %154, %132, %74
  %272 = load i32, i32* %5, align 4
  ret i32 %272
}

declare dso_local %struct.queue* @lua_touserdata(i32*, i32) #1

declare dso_local %struct.uncomplete* @find_uncomplete(%struct.queue*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @skynet_malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8**, i32) #1

declare dso_local i32 @hash_fd(i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_upvalueindex(i32) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @lua_pushlightuserdata(i32*, i8*) #1

declare dso_local i32 @skynet_free(%struct.uncomplete*) #1

declare dso_local i32 @push_data(i32*, i32, i8**, i32, i32) #1

declare dso_local i32 @push_more(i32*, i32, i8**, i32) #1

declare dso_local %struct.uncomplete* @save_uncomplete(i32*, i32) #1

declare dso_local i32 @read_size(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
