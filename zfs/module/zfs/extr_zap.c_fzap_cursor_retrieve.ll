; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zap.c_fzap_cursor_retrieve.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zap.c_fzap_cursor_retrieve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, %struct.TYPE_20__*, i32, i32, i32, i64 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_23__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i64, i64, i32, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i64 }

@ENOENT = common dso_local global i32 0, align 4
@zap_iterate_prefetch = common dso_local global i64 0, align 8
@ZIO_PRIORITY_ASYNC_READ = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fzap_cursor_retrieve(i32* %0, %struct.TYPE_22__* %1, %struct.TYPE_23__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_21__, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %7, align 8
  %12 = load i32, i32* @ENOENT, align 4
  store i32 %12, i32* %8, align 4
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %47

17:                                               ; preds = %3
  %18 = load i64, i64* @zap_iterate_prefetch, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %47

20:                                               ; preds = %17
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %47

25:                                               ; preds = %20
  %26 = load i32*, i32** %5, align 8
  %27 = call %struct.TYPE_18__* @zap_f_phys(i32* %26)
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %29, 2
  br i1 %30, label %31, label %47

31:                                               ; preds = %25
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = call %struct.TYPE_18__* @zap_f_phys(i32* %38)
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @FZAP_BLOCK_SHIFT(i32* %42)
  %44 = shl i32 %41, %43
  %45 = load i32, i32* @ZIO_PRIORITY_ASYNC_READ, align 4
  %46 = call i32 @dmu_prefetch(i32 %34, i32 %37, i32 0, i32 0, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %31, %25, %20, %17, %3
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %49, align 8
  %51 = icmp ne %struct.TYPE_20__* %50, null
  br i1 %51, label %52, label %85

52:                                               ; preds = %47
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %57, align 8
  %59 = call %struct.TYPE_24__* @zap_leaf_phys(%struct.TYPE_20__* %58)
  %60 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @ZAP_HASH_IDX(i64 %55, i32 %62)
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %65, align 8
  %67 = call %struct.TYPE_24__* @zap_leaf_phys(%struct.TYPE_20__* %66)
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %63, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %52
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 0
  %77 = load i32, i32* @RW_READER, align 4
  %78 = call i32 @rw_enter(i32* %76, i32 %77)
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %80, align 8
  %82 = call i32 @zap_put_leaf(%struct.TYPE_20__* %81)
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 1
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %84, align 8
  br label %85

85:                                               ; preds = %72, %52, %47
  br label %86

86:                                               ; preds = %172, %85
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %88, align 8
  %90 = icmp eq %struct.TYPE_20__* %89, null
  br i1 %90, label %91, label %105

91:                                               ; preds = %86
  %92 = load i32*, i32** %5, align 8
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* @RW_READER, align 4
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 1
  %99 = call i32 @zap_deref_leaf(i32* %92, i64 %95, i32* null, i32 %96, %struct.TYPE_20__** %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %91
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %4, align 4
  br label %245

104:                                              ; preds = %91
  br label %112

105:                                              ; preds = %86
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 0
  %110 = load i32, i32* @RW_READER, align 4
  %111 = call i32 @rw_enter(i32* %109, i32 %110)
  br label %112

112:                                              ; preds = %105, %104
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %114, align 8
  store %struct.TYPE_20__* %115, %struct.TYPE_20__** %10, align 8
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @zap_leaf_lookup_closest(%struct.TYPE_20__* %116, i64 %119, i32 %122, %struct.TYPE_21__* %9)
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* @ENOENT, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %181

127:                                              ; preds = %112
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %129 = call %struct.TYPE_24__* @zap_leaf_phys(%struct.TYPE_20__* %128)
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %127
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 0
  store i64 -1, i64* %136, align 8
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %137, i32 0, i32 2
  store i32 0, i32* %138, align 8
  br label %180

139:                                              ; preds = %127
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %141 = call %struct.TYPE_24__* @zap_leaf_phys(%struct.TYPE_20__* %140)
  %142 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = sub nsw i32 64, %144
  %146 = zext i32 %145 to i64
  %147 = shl i64 1, %146
  %148 = sub i64 %147, 1
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %11, align 4
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i32, i32* %11, align 4
  %154 = xor i32 %153, -1
  %155 = sext i32 %154 to i64
  %156 = and i64 %152, %155
  %157 = load i32, i32* %11, align 4
  %158 = sext i32 %157 to i64
  %159 = add i64 %156, %158
  %160 = add i64 %159, 1
  %161 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %161, i32 0, i32 0
  store i64 %160, i64* %162, align 8
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i32 0, i32 2
  store i32 0, i32* %164, align 8
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %139
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %170, i32 0, i32 0
  store i64 -1, i64* %171, align 8
  br label %179

172:                                              ; preds = %139
  %173 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %174, align 8
  %176 = call i32 @zap_put_leaf(%struct.TYPE_20__* %175)
  %177 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %177, i32 0, i32 1
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %178, align 8
  br label %86

179:                                              ; preds = %169
  br label %180

180:                                              ; preds = %179, %134
  br label %181

181:                                              ; preds = %180, %112
  %182 = load i32, i32* %8, align 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %238

184:                                              ; preds = %181
  %185 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %187, i32 0, i32 0
  store i64 %186, i64* %188, align 8
  %189 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %191, i32 0, i32 2
  store i32 %190, i32* %192, align 8
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %195, i32 0, i32 4
  store i32 %194, i32* %196, align 4
  %197 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %199, i32 0, i32 0
  store i64 %198, i64* %200, align 8
  %201 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = icmp eq i64 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %184
  %205 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %205, i32 0, i32 3
  store i32 0, i32* %206, align 8
  br label %221

207:                                              ; preds = %184
  %208 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %208, i32 0, i32 3
  %210 = call i32 @zap_entry_read(%struct.TYPE_21__* %9, i32 8, i32 1, i32* %209)
  store i32 %210, i32* %8, align 4
  %211 = load i32, i32* %8, align 4
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %217, label %213

213:                                              ; preds = %207
  %214 = load i32, i32* %8, align 4
  %215 = load i32, i32* @EOVERFLOW, align 4
  %216 = icmp eq i32 %214, %215
  br label %217

217:                                              ; preds = %213, %207
  %218 = phi i1 [ true, %207 ], [ %216, %213 ]
  %219 = zext i1 %218 to i32
  %220 = call i32 @ASSERT(i32 %219)
  br label %221

221:                                              ; preds = %217, %204
  %222 = load i32*, i32** %5, align 8
  %223 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @zap_entry_read_name(i32* %222, %struct.TYPE_21__* %9, i32 4, i32 %225)
  store i32 %226, i32* %8, align 4
  %227 = load i32, i32* %8, align 4
  %228 = icmp eq i32 %227, 0
  %229 = zext i1 %228 to i32
  %230 = call i32 @ASSERT(i32 %229)
  %231 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = load i32*, i32** %5, align 8
  %235 = call i32 @zap_entry_normalization_conflict(%struct.TYPE_21__* %9, i32* null, i32 %233, i32* %234)
  %236 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %236, i32 0, i32 2
  store i32 %235, i32* %237, align 4
  br label %238

238:                                              ; preds = %221, %181
  %239 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %239, i32 0, i32 1
  %241 = load %struct.TYPE_20__*, %struct.TYPE_20__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %241, i32 0, i32 0
  %243 = call i32 @rw_exit(i32* %242)
  %244 = load i32, i32* %8, align 4
  store i32 %244, i32* %4, align 4
  br label %245

245:                                              ; preds = %238, %102
  %246 = load i32, i32* %4, align 4
  ret i32 %246
}

declare dso_local %struct.TYPE_18__* @zap_f_phys(i32*) #1

declare dso_local i32 @dmu_prefetch(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FZAP_BLOCK_SHIFT(i32*) #1

declare dso_local i64 @ZAP_HASH_IDX(i64, i32) #1

declare dso_local %struct.TYPE_24__* @zap_leaf_phys(%struct.TYPE_20__*) #1

declare dso_local i32 @rw_enter(i32*, i32) #1

declare dso_local i32 @zap_put_leaf(%struct.TYPE_20__*) #1

declare dso_local i32 @zap_deref_leaf(i32*, i64, i32*, i32, %struct.TYPE_20__**) #1

declare dso_local i32 @zap_leaf_lookup_closest(%struct.TYPE_20__*, i64, i32, %struct.TYPE_21__*) #1

declare dso_local i32 @zap_entry_read(%struct.TYPE_21__*, i32, i32, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @zap_entry_read_name(i32*, %struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @zap_entry_normalization_conflict(%struct.TYPE_21__*, i32*, i32, i32*) #1

declare dso_local i32 @rw_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
