; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs.c_ngx_http_tfs_batch_lookup_block_cache.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs.c_ngx_http_tfs_batch_lookup_block_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32, %struct.TYPE_19__, %struct.TYPE_20__, i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { i64, i64, i64, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32, %struct.TYPE_23__, %struct.TYPE_21__ }
%struct.TYPE_23__ = type { i32*, i32 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { %struct.TYPE_24__*, %struct.TYPE_22__* }
%struct.TYPE_24__ = type { i64, i32 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_28__ = type { i64, i32 }

@NGX_HTTP_TFS_MAX_BATCH_COUNT = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_LOCAL_BLOCK_CACHE = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_REMOTE_BLOCK_CACHE = common dso_local global i32 0, align 4
@ngx_http_tfs_batch_process_start = common dso_local global i32 0, align 4
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"batch lookup block cache failed.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_http_tfs_batch_lookup_block_cache(%struct.TYPE_25__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_18__, align 8
  %9 = alloca %struct.TYPE_18__, align 8
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca %struct.TYPE_27__*, align 8
  %12 = alloca %struct.TYPE_28__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  %13 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = sub i64 %16, %20
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @NGX_HTTP_TFS_MAX_BATCH_COUNT, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i64, i64* @NGX_HTTP_TFS_MAX_BATCH_COUNT, align 8
  store i64 %26, i64* %6, align 8
  br label %27

27:                                               ; preds = %25, %1
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @ngx_array_init(%struct.TYPE_18__* %8, i32 %30, i64 %31, i32 16)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 129
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %2, align 4
  br label %202

37:                                               ; preds = %27
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 3
  %41 = load %struct.TYPE_26__*, %struct.TYPE_26__** %40, align 8
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %41, i64 %45
  store %struct.TYPE_26__* %46, %struct.TYPE_26__** %10, align 8
  store i64 0, i64* %4, align 8
  br label %47

47:                                               ; preds = %67, %37
  %48 = load i64, i64* %4, align 8
  %49 = load i64, i64* %6, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %70

51:                                               ; preds = %47
  %52 = call i64 @ngx_array_push(%struct.TYPE_18__* %8)
  %53 = inttoptr i64 %52 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %53, %struct.TYPE_28__** %12, align 8
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %60 = load i64, i64* %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  br label %67

67:                                               ; preds = %51
  %68 = load i64, i64* %4, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %4, align 8
  br label %47

70:                                               ; preds = %47
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = load i64, i64* %6, align 8
  %75 = call i32 @ngx_array_init(%struct.TYPE_18__* %9, i32 %73, i64 %74, i32 16)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp eq i32 %76, 129
  br i1 %77, label %78, label %80

78:                                               ; preds = %70
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* %2, align 4
  br label %202

80:                                               ; preds = %70
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @ngx_http_tfs_block_cache_batch_lookup(%struct.TYPE_19__* %82, i32 %85, i32 %88, %struct.TYPE_18__* %8, %struct.TYPE_18__* %9)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 129
  br i1 %91, label %92, label %175

92:                                               ; preds = %80
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp sgt i64 %94, 0
  br i1 %95, label %96, label %175

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %102, %98
  store i64 %103, i64* %101, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  %105 = load %struct.TYPE_27__*, %struct.TYPE_27__** %104, align 8
  store %struct.TYPE_27__* %105, %struct.TYPE_27__** %11, align 8
  store i64 0, i64* %4, align 8
  br label %106

106:                                              ; preds = %169, %96
  %107 = load i64, i64* %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp slt i64 %107, %109
  br i1 %110, label %111, label %174

111:                                              ; preds = %106
  store i64 0, i64* %5, align 8
  br label %112

112:                                              ; preds = %139, %111
  %113 = load i64, i64* %5, align 8
  %114 = load i64, i64* %6, align 8
  %115 = icmp slt i64 %113, %114
  br i1 %115, label %116, label %142

116:                                              ; preds = %112
  %117 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %118 = load i64, i64* %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %117, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp eq i64 %122, %127
  br i1 %128, label %129, label %138

129:                                              ; preds = %116
  %130 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %131 = load i64, i64* %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %130, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = icmp eq i32* %135, null
  br i1 %136, label %137, label %138

137:                                              ; preds = %129
  br label %142

138:                                              ; preds = %129, %116
  br label %139

139:                                              ; preds = %138
  %140 = load i64, i64* %5, align 8
  %141 = add nsw i64 %140, 1
  store i64 %141, i64* %5, align 8
  br label %112

142:                                              ; preds = %137, %112
  %143 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_24__*, %struct.TYPE_24__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %149 = load i64, i64* %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %148, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %151, i32 0, i32 1
  store i32 %147, i32* %152, align 8
  %153 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %154 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = inttoptr i64 %157 to i32*
  %159 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %160 = load i64, i64* %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %159, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %162, i32 0, i32 0
  store i32* %158, i32** %163, align 8
  %164 = load i32, i32* @NGX_HTTP_TFS_LOCAL_BLOCK_CACHE, align 4
  %165 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %166 = load i64, i64* %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %165, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %167, i32 0, i32 0
  store i32 %164, i32* %168, align 8
  br label %169

169:                                              ; preds = %142
  %170 = load i64, i64* %4, align 8
  %171 = add nsw i64 %170, 1
  store i64 %171, i64* %4, align 8
  %172 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %173 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %172, i32 1
  store %struct.TYPE_27__* %173, %struct.TYPE_27__** %11, align 8
  br label %106

174:                                              ; preds = %106
  br label %175

175:                                              ; preds = %174, %92, %80
  %176 = load i32, i32* %7, align 4
  switch i32 %176, label %197 [
    i32 130, label %177
    i32 128, label %187
    i32 129, label %191
  ]

177:                                              ; preds = %175
  %178 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @NGX_HTTP_TFS_REMOTE_BLOCK_CACHE, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %177
  store i32 130, i32* %2, align 4
  br label %202

186:                                              ; preds = %177
  store i32 128, i32* %7, align 4
  br label %197

187:                                              ; preds = %175
  %188 = load i32, i32* @ngx_http_tfs_batch_process_start, align 4
  %189 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %189, i32 0, i32 1
  store i32 %188, i32* %190, align 4
  store i32 130, i32* %7, align 4
  br label %197

191:                                              ; preds = %175
  %192 = load i32, i32* @NGX_LOG_ERR, align 4
  %193 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @ngx_log_error(i32 %192, i32 %195, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 128, i32* %7, align 4
  br label %197

197:                                              ; preds = %191, %175, %187, %186
  %198 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %199 = load i32, i32* %7, align 4
  %200 = call i32 @ngx_http_tfs_finalize_state(%struct.TYPE_25__* %198, i32 %199)
  %201 = load i32, i32* %7, align 4
  store i32 %201, i32* %2, align 4
  br label %202

202:                                              ; preds = %197, %185, %78, %35
  %203 = load i32, i32* %2, align 4
  ret i32 %203
}

declare dso_local i32 @ngx_array_init(%struct.TYPE_18__*, i32, i64, i32) #1

declare dso_local i64 @ngx_array_push(%struct.TYPE_18__*) #1

declare dso_local i32 @ngx_http_tfs_block_cache_batch_lookup(%struct.TYPE_19__*, i32, i32, %struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_http_tfs_finalize_state(%struct.TYPE_25__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
