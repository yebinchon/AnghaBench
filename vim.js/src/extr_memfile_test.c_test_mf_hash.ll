; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_memfile_test.c_test_mf_hash.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_memfile_test.c_test_mf_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i64, i64 }
%struct.TYPE_13__ = type { i64 }

@TEST_COUNT = common dso_local global i32 0, align 4
@MHT_LOG_LOAD_FACTOR = common dso_local global i32 0, align 4
@MHT_INIT_SIZE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@MHT_GROWTH_FACTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_mf_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_mf_hash() #0 {
  %1 = alloca %struct.TYPE_12__, align 8
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i32 @mf_hash_init(%struct.TYPE_12__* %1)
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %122, %0
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @TEST_COUNT, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %125

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %11
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = sub nsw i32 %25, 1
  %27 = and i32 %24, %26
  %28 = icmp eq i32 %27, 0
  br label %29

29:                                               ; preds = %23, %11
  %30 = phi i1 [ false, %11 ], [ %28, %23 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @MHT_LOG_LOAD_FACTOR, align 4
  %37 = shl i32 %35, %36
  %38 = icmp sle i32 %34, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @MHT_INIT_SIZE, align 4
  %43 = load i32, i32* @MHT_LOG_LOAD_FACTOR, align 4
  %44 = shl i32 %42, %43
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %29
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @MHT_INIT_SIZE, align 4
  %49 = icmp eq i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %53, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  br label %72

59:                                               ; preds = %29
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @MHT_INIT_SIZE, align 4
  %62 = icmp sgt i32 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %66, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  br label %72

72:                                               ; preds = %59, %46
  %73 = load i32, i32* %4, align 4
  %74 = call i64 @index_to_key(i32 %73)
  store i64 %74, i64* %3, align 8
  %75 = load i64, i64* %3, align 8
  %76 = call %struct.TYPE_13__* @mf_hash_find(%struct.TYPE_12__* %1, i64 %75)
  %77 = icmp eq %struct.TYPE_13__* %76, null
  %78 = zext i1 %77 to i32
  %79 = call i32 @assert(i32 %78)
  %80 = load i32, i32* @FALSE, align 4
  %81 = call i64 @lalloc_clear(i32 24, i32 %80)
  %82 = inttoptr i64 %81 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %82, %struct.TYPE_13__** %2, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %84 = icmp ne %struct.TYPE_13__* %83, null
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  %87 = load i64, i64* %3, align 8
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %91 = call i32 @mf_hash_add_item(%struct.TYPE_12__* %1, %struct.TYPE_13__* %90)
  %92 = load i64, i64* %3, align 8
  %93 = call %struct.TYPE_13__* @mf_hash_find(%struct.TYPE_12__* %1, i64 %92)
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %95 = icmp eq %struct.TYPE_13__* %93, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @assert(i32 %96)
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  %101 = load i32, i32* %5, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %121

103:                                              ; preds = %72
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 1
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* @MHT_GROWTH_FACTOR, align 4
  %109 = mul nsw i32 %107, %108
  %110 = icmp eq i32 %106, %109
  %111 = zext i1 %110 to i32
  %112 = call i32 @assert(i32 %111)
  %113 = load i32, i32* %4, align 4
  %114 = add nsw i32 %113, 1
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @MHT_LOG_LOAD_FACTOR, align 4
  %117 = shl i32 %115, %116
  %118 = icmp eq i32 %114, %117
  %119 = zext i1 %118 to i32
  %120 = call i32 @assert(i32 %119)
  br label %121

121:                                              ; preds = %103, %72
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %4, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %4, align 4
  br label %7

125:                                              ; preds = %7
  store i32 0, i32* %4, align 4
  br label %126

126:                                              ; preds = %146, %125
  %127 = load i32, i32* %4, align 4
  %128 = load i32, i32* @TEST_COUNT, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %149

130:                                              ; preds = %126
  %131 = load i32, i32* %4, align 4
  %132 = call i64 @index_to_key(i32 %131)
  store i64 %132, i64* %3, align 8
  %133 = load i64, i64* %3, align 8
  %134 = call %struct.TYPE_13__* @mf_hash_find(%struct.TYPE_12__* %1, i64 %133)
  store %struct.TYPE_13__* %134, %struct.TYPE_13__** %2, align 8
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %136 = icmp ne %struct.TYPE_13__* %135, null
  %137 = zext i1 %136 to i32
  %138 = call i32 @assert(i32 %137)
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* %3, align 8
  %143 = icmp eq i64 %141, %142
  %144 = zext i1 %143 to i32
  %145 = call i32 @assert(i32 %144)
  br label %146

146:                                              ; preds = %130
  %147 = load i32, i32* %4, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %4, align 4
  br label %126

149:                                              ; preds = %126
  store i32 0, i32* %4, align 4
  br label %150

150:                                              ; preds = %199, %149
  %151 = load i32, i32* %4, align 4
  %152 = load i32, i32* @TEST_COUNT, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %202

154:                                              ; preds = %150
  %155 = load i32, i32* %4, align 4
  %156 = srem i32 %155, 100
  %157 = icmp slt i32 %156, 70
  br i1 %157, label %158, label %198

158:                                              ; preds = %154
  %159 = load i32, i32* %4, align 4
  %160 = call i64 @index_to_key(i32 %159)
  store i64 %160, i64* %3, align 8
  %161 = load i64, i64* %3, align 8
  %162 = call %struct.TYPE_13__* @mf_hash_find(%struct.TYPE_12__* %1, i64 %161)
  store %struct.TYPE_13__* %162, %struct.TYPE_13__** %2, align 8
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %164 = icmp ne %struct.TYPE_13__* %163, null
  %165 = zext i1 %164 to i32
  %166 = call i32 @assert(i32 %165)
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* %3, align 8
  %171 = icmp eq i64 %169, %170
  %172 = zext i1 %171 to i32
  %173 = call i32 @assert(i32 %172)
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %175 = call i32 @mf_hash_rem_item(%struct.TYPE_12__* %1, %struct.TYPE_13__* %174)
  %176 = load i64, i64* %3, align 8
  %177 = call %struct.TYPE_13__* @mf_hash_find(%struct.TYPE_12__* %1, i64 %176)
  %178 = icmp eq %struct.TYPE_13__* %177, null
  %179 = zext i1 %178 to i32
  %180 = call i32 @assert(i32 %179)
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %182 = call i32 @mf_hash_add_item(%struct.TYPE_12__* %1, %struct.TYPE_13__* %181)
  %183 = load i64, i64* %3, align 8
  %184 = call %struct.TYPE_13__* @mf_hash_find(%struct.TYPE_12__* %1, i64 %183)
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %186 = icmp eq %struct.TYPE_13__* %184, %185
  %187 = zext i1 %186 to i32
  %188 = call i32 @assert(i32 %187)
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %190 = call i32 @mf_hash_rem_item(%struct.TYPE_12__* %1, %struct.TYPE_13__* %189)
  %191 = load i64, i64* %3, align 8
  %192 = call %struct.TYPE_13__* @mf_hash_find(%struct.TYPE_12__* %1, i64 %191)
  %193 = icmp eq %struct.TYPE_13__* %192, null
  %194 = zext i1 %193 to i32
  %195 = call i32 @assert(i32 %194)
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %197 = call i32 @vim_free(%struct.TYPE_13__* %196)
  br label %198

198:                                              ; preds = %158, %154
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %4, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %4, align 4
  br label %150

202:                                              ; preds = %150
  store i32 0, i32* %4, align 4
  br label %203

203:                                              ; preds = %233, %202
  %204 = load i32, i32* %4, align 4
  %205 = load i32, i32* @TEST_COUNT, align 4
  %206 = icmp slt i32 %204, %205
  br i1 %206, label %207, label %236

207:                                              ; preds = %203
  %208 = load i32, i32* %4, align 4
  %209 = call i64 @index_to_key(i32 %208)
  store i64 %209, i64* %3, align 8
  %210 = load i64, i64* %3, align 8
  %211 = call %struct.TYPE_13__* @mf_hash_find(%struct.TYPE_12__* %1, i64 %210)
  store %struct.TYPE_13__* %211, %struct.TYPE_13__** %2, align 8
  %212 = load i32, i32* %4, align 4
  %213 = srem i32 %212, 100
  %214 = icmp slt i32 %213, 70
  br i1 %214, label %215, label %220

215:                                              ; preds = %207
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %217 = icmp eq %struct.TYPE_13__* %216, null
  %218 = zext i1 %217 to i32
  %219 = call i32 @assert(i32 %218)
  br label %232

220:                                              ; preds = %207
  %221 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %222 = icmp ne %struct.TYPE_13__* %221, null
  %223 = zext i1 %222 to i32
  %224 = call i32 @assert(i32 %223)
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* %3, align 8
  %229 = icmp eq i64 %227, %228
  %230 = zext i1 %229 to i32
  %231 = call i32 @assert(i32 %230)
  br label %232

232:                                              ; preds = %220, %215
  br label %233

233:                                              ; preds = %232
  %234 = load i32, i32* %4, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %4, align 4
  br label %203

236:                                              ; preds = %203
  %237 = call i32 @mf_hash_free_all(%struct.TYPE_12__* %1)
  ret void
}

declare dso_local i32 @mf_hash_init(%struct.TYPE_12__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @index_to_key(i32) #1

declare dso_local %struct.TYPE_13__* @mf_hash_find(%struct.TYPE_12__*, i64) #1

declare dso_local i64 @lalloc_clear(i32, i32) #1

declare dso_local i32 @mf_hash_add_item(%struct.TYPE_12__*, %struct.TYPE_13__*) #1

declare dso_local i32 @mf_hash_rem_item(%struct.TYPE_12__*, %struct.TYPE_13__*) #1

declare dso_local i32 @vim_free(%struct.TYPE_13__*) #1

declare dso_local i32 @mf_hash_free_all(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
