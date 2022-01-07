; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_extent.c_extent_recycle.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_extent.c_extent_recycle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WITNESS_RANK_CORE = common dso_local global i32 0, align 4
@extent_state_active = common dso_local global i64 0, align 8
@config_debug = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32**, i32*, i8*, i64, i64, i64, i32, i32, i32*, i32*, i32)* @extent_recycle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @extent_recycle(i32* %0, i32* %1, i32** %2, i32* %3, i8* %4, i64 %5, i64 %6, i64 %7, i32 %8, i32 %9, i32* %10, i32* %11, i32 %12) #0 {
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32**, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64*, align 8
  %34 = alloca i64, align 8
  store i32* %0, i32** %15, align 8
  store i32* %1, i32** %16, align 8
  store i32** %2, i32*** %17, align 8
  store i32* %3, i32** %18, align 8
  store i8* %4, i8** %19, align 8
  store i64 %5, i64* %20, align 8
  store i64 %6, i64* %21, align 8
  store i64 %7, i64* %22, align 8
  store i32 %8, i32* %23, align 4
  store i32 %9, i32* %24, align 4
  store i32* %10, i32** %25, align 8
  store i32* %11, i32** %26, align 8
  store i32 %12, i32* %27, align 4
  %35 = load i32*, i32** %15, align 8
  %36 = call i32 @tsdn_witness_tsdp_get(i32* %35)
  %37 = load i32, i32* @WITNESS_RANK_CORE, align 4
  %38 = load i32, i32* %27, align 4
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 1, i32 0
  %42 = call i32 @witness_assert_depth_to_rank(i32 %36, i32 %37, i32 %41)
  %43 = load i8*, i8** %19, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %13
  %46 = load i32, i32* %23, align 4
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  br label %49

49:                                               ; preds = %45, %13
  %50 = phi i1 [ true, %13 ], [ %48, %45 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load i64, i64* %21, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %49
  %56 = load i32, i32* %23, align 4
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br label %59

59:                                               ; preds = %55, %49
  %60 = phi i1 [ true, %49 ], [ %58, %55 ]
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load i32*, i32** %25, align 8
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load i32, i32* %23, align 4
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  br label %70

70:                                               ; preds = %66, %59
  %71 = phi i1 [ true, %59 ], [ %69, %66 ]
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  %74 = load i32*, i32** %15, align 8
  %75 = call i32* @tsdn_rtree_ctx(i32* %74, i32* %28)
  store i32* %75, i32** %29, align 8
  %76 = load i32*, i32** %15, align 8
  %77 = load i32*, i32** %16, align 8
  %78 = load i32**, i32*** %17, align 8
  %79 = load i32*, i32** %29, align 8
  %80 = load i32*, i32** %18, align 8
  %81 = load i8*, i8** %19, align 8
  %82 = load i64, i64* %20, align 8
  %83 = load i64, i64* %21, align 8
  %84 = load i64, i64* %22, align 8
  %85 = load i32, i32* %23, align 4
  %86 = load i32, i32* %27, align 4
  %87 = call i32* @extent_recycle_extract(i32* %76, i32* %77, i32** %78, i32* %79, i32* %80, i8* %81, i64 %82, i64 %83, i64 %84, i32 %85, i32 %86)
  store i32* %87, i32** %30, align 8
  %88 = load i32*, i32** %30, align 8
  %89 = icmp eq i32* %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %70
  store i32* null, i32** %14, align 8
  br label %226

91:                                               ; preds = %70
  %92 = load i32*, i32** %15, align 8
  %93 = load i32*, i32** %16, align 8
  %94 = load i32**, i32*** %17, align 8
  %95 = load i32*, i32** %29, align 8
  %96 = load i32*, i32** %18, align 8
  %97 = load i8*, i8** %19, align 8
  %98 = load i64, i64* %20, align 8
  %99 = load i64, i64* %21, align 8
  %100 = load i64, i64* %22, align 8
  %101 = load i32, i32* %23, align 4
  %102 = load i32, i32* %24, align 4
  %103 = load i32*, i32** %30, align 8
  %104 = load i32, i32* %27, align 4
  %105 = call i32* @extent_recycle_split(i32* %92, i32* %93, i32** %94, i32* %95, i32* %96, i8* %97, i64 %98, i64 %99, i64 %100, i32 %101, i32 %102, i32* %103, i32 %104)
  store i32* %105, i32** %30, align 8
  %106 = load i32*, i32** %30, align 8
  %107 = icmp eq i32* %106, null
  br i1 %107, label %108, label %109

108:                                              ; preds = %91
  store i32* null, i32** %14, align 8
  br label %226

109:                                              ; preds = %91
  %110 = load i32*, i32** %26, align 8
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %138

113:                                              ; preds = %109
  %114 = load i32*, i32** %30, align 8
  %115 = call i64 @extent_committed_get(i32* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %138, label %117

117:                                              ; preds = %113
  %118 = load i32*, i32** %15, align 8
  %119 = load i32*, i32** %16, align 8
  %120 = load i32**, i32*** %17, align 8
  %121 = load i32*, i32** %30, align 8
  %122 = load i32*, i32** %30, align 8
  %123 = call i64 @extent_size_get(i32* %122)
  %124 = load i32, i32* %27, align 4
  %125 = call i64 @extent_commit_impl(i32* %118, i32* %119, i32** %120, i32* %121, i32 0, i64 %123, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %117
  %128 = load i32*, i32** %15, align 8
  %129 = load i32*, i32** %16, align 8
  %130 = load i32**, i32*** %17, align 8
  %131 = load i32*, i32** %18, align 8
  %132 = load i32*, i32** %30, align 8
  %133 = load i32, i32* %27, align 4
  %134 = call i32 @extent_record(i32* %128, i32* %129, i32** %130, i32* %131, i32* %132, i32 %133)
  store i32* null, i32** %14, align 8
  br label %226

135:                                              ; preds = %117
  %136 = load i32*, i32** %30, align 8
  %137 = call i32 @extent_zeroed_set(i32* %136, i32 1)
  br label %138

138:                                              ; preds = %135, %113, %109
  %139 = load i32*, i32** %30, align 8
  %140 = call i64 @extent_committed_get(i32* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %138
  %143 = load i32*, i32** %26, align 8
  store i32 1, i32* %143, align 4
  br label %144

144:                                              ; preds = %142, %138
  %145 = load i32*, i32** %30, align 8
  %146 = call i64 @extent_zeroed_get(i32* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %144
  %149 = load i32*, i32** %25, align 8
  store i32 1, i32* %149, align 4
  br label %150

150:                                              ; preds = %148, %144
  %151 = load i64, i64* %21, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %150
  %154 = load i32*, i32** %15, align 8
  %155 = load i32*, i32** %30, align 8
  %156 = load i64, i64* %22, align 8
  %157 = call i32 @extent_addr_randomize(i32* %154, i32* %155, i64 %156)
  br label %158

158:                                              ; preds = %153, %150
  %159 = load i32*, i32** %30, align 8
  %160 = call i64 @extent_state_get(i32* %159)
  %161 = load i64, i64* @extent_state_active, align 8
  %162 = icmp eq i64 %160, %161
  %163 = zext i1 %162 to i32
  %164 = call i32 @assert(i32 %163)
  %165 = load i32, i32* %23, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %176

167:                                              ; preds = %158
  %168 = load i32*, i32** %30, align 8
  %169 = load i32, i32* %23, align 4
  %170 = call i32 @extent_slab_set(i32* %168, i32 %169)
  %171 = load i32*, i32** %15, align 8
  %172 = load i32*, i32** %29, align 8
  %173 = load i32*, i32** %30, align 8
  %174 = load i32, i32* %24, align 4
  %175 = call i32 @extent_interior_register(i32* %171, i32* %172, i32* %173, i32 %174)
  br label %176

176:                                              ; preds = %167, %158
  %177 = load i32*, i32** %25, align 8
  %178 = load i32, i32* %177, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %224

180:                                              ; preds = %176
  %181 = load i32*, i32** %30, align 8
  %182 = call i8* @extent_base_get(i32* %181)
  store i8* %182, i8** %31, align 8
  %183 = load i32*, i32** %30, align 8
  %184 = call i64 @extent_size_get(i32* %183)
  store i64 %184, i64* %32, align 8
  %185 = load i32*, i32** %30, align 8
  %186 = call i64 @extent_zeroed_get(i32* %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %198, label %188

188:                                              ; preds = %180
  %189 = load i8*, i8** %31, align 8
  %190 = load i64, i64* %32, align 8
  %191 = call i64 @pages_purge_forced(i8* %189, i64 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %188
  %194 = load i8*, i8** %31, align 8
  %195 = load i64, i64* %32, align 8
  %196 = call i32 @memset(i8* %194, i32 0, i64 %195)
  br label %197

197:                                              ; preds = %193, %188
  br label %223

198:                                              ; preds = %180
  %199 = load i64, i64* @config_debug, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %222

201:                                              ; preds = %198
  %202 = load i8*, i8** %31, align 8
  %203 = ptrtoint i8* %202 to i64
  %204 = inttoptr i64 %203 to i64*
  store i64* %204, i64** %33, align 8
  store i64 0, i64* %34, align 8
  br label %205

205:                                              ; preds = %218, %201
  %206 = load i64, i64* %34, align 8
  %207 = load i64, i64* %32, align 8
  %208 = udiv i64 %207, 8
  %209 = icmp ult i64 %206, %208
  br i1 %209, label %210, label %221

210:                                              ; preds = %205
  %211 = load i64*, i64** %33, align 8
  %212 = load i64, i64* %34, align 8
  %213 = getelementptr inbounds i64, i64* %211, i64 %212
  %214 = load i64, i64* %213, align 8
  %215 = icmp eq i64 %214, 0
  %216 = zext i1 %215 to i32
  %217 = call i32 @assert(i32 %216)
  br label %218

218:                                              ; preds = %210
  %219 = load i64, i64* %34, align 8
  %220 = add i64 %219, 1
  store i64 %220, i64* %34, align 8
  br label %205

221:                                              ; preds = %205
  br label %222

222:                                              ; preds = %221, %198
  br label %223

223:                                              ; preds = %222, %197
  br label %224

224:                                              ; preds = %223, %176
  %225 = load i32*, i32** %30, align 8
  store i32* %225, i32** %14, align 8
  br label %226

226:                                              ; preds = %224, %127, %108, %90
  %227 = load i32*, i32** %14, align 8
  ret i32* %227
}

declare dso_local i32 @witness_assert_depth_to_rank(i32, i32, i32) #1

declare dso_local i32 @tsdn_witness_tsdp_get(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @tsdn_rtree_ctx(i32*, i32*) #1

declare dso_local i32* @extent_recycle_extract(i32*, i32*, i32**, i32*, i32*, i8*, i64, i64, i64, i32, i32) #1

declare dso_local i32* @extent_recycle_split(i32*, i32*, i32**, i32*, i32*, i8*, i64, i64, i64, i32, i32, i32*, i32) #1

declare dso_local i64 @extent_committed_get(i32*) #1

declare dso_local i64 @extent_commit_impl(i32*, i32*, i32**, i32*, i32, i64, i32) #1

declare dso_local i64 @extent_size_get(i32*) #1

declare dso_local i32 @extent_record(i32*, i32*, i32**, i32*, i32*, i32) #1

declare dso_local i32 @extent_zeroed_set(i32*, i32) #1

declare dso_local i64 @extent_zeroed_get(i32*) #1

declare dso_local i32 @extent_addr_randomize(i32*, i32*, i64) #1

declare dso_local i64 @extent_state_get(i32*) #1

declare dso_local i32 @extent_slab_set(i32*, i32) #1

declare dso_local i32 @extent_interior_register(i32*, i32*, i32*, i32) #1

declare dso_local i8* @extent_base_get(i32*) #1

declare dso_local i64 @pages_purge_forced(i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
