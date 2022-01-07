; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_name_server_message.c_ngx_http_tfs_parse_block_info_message.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_name_server_message.c_ngx_http_tfs_parse_block_info_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i32, i32, %struct.TYPE_30__, i32, i32, i32, %struct.TYPE_28__, %struct.TYPE_33__*, i64 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_33__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32* }
%struct.TYPE_32__ = type { i64, %struct.TYPE_21__, %struct.TYPE_29__ }
%struct.TYPE_21__ = type { i32, i8*, i8*, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, i32* }
%struct.TYPE_34__ = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"get block info (name server)\00", align 1
@NGX_HTTP_TFS_OPEN_MODE_WRITE = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_EXIT_GENERAL_ERROR = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_OPEN_MODE_READ = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_OPEN_MODE_STAT = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [92 x i8] c"get block info from nameserver: %V, block id: %uD, ds count: %uD, version: %D, lease id: %D\00", align 1
@NGX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_http_tfs_parse_block_info_message(%struct.TYPE_31__* %0, %struct.TYPE_32__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_31__*, align 8
  %5 = alloca %struct.TYPE_32__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca %struct.TYPE_23__, align 4
  %14 = alloca %struct.TYPE_22__, align 8
  %15 = alloca %struct.TYPE_33__*, align 8
  %16 = alloca %struct.TYPE_34__*, align 8
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %4, align 8
  store %struct.TYPE_32__* %1, %struct.TYPE_32__** %5, align 8
  %17 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %17, i32 0, i32 8
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %20, %struct.TYPE_20__** %11, align 8
  %21 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %21, i32 0, i32 7
  %23 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  store %struct.TYPE_33__* %23, %struct.TYPE_33__** %15, align 8
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  switch i32 %27, label %36 [
    i32 128, label %28
  ]

28:                                               ; preds = %2
  %29 = call i32 @ngx_str_set(i32* %9, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %31 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ngx_http_tfs_status_message(%struct.TYPE_25__* %31, i32* %9, i32 %34)
  store i32 %35, i32* %3, align 4
  br label %225

36:                                               ; preds = %2
  %37 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %38 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = bitcast i32* %40 to %struct.TYPE_34__*
  store %struct.TYPE_34__* %41, %struct.TYPE_34__** %16, align 8
  %42 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %43 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 8
  store i32* %46, i32** %6, align 8
  %47 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @NGX_HTTP_TFS_OPEN_MODE_WRITE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %36
  %55 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %56 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp sle i32 %57, 3
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* @NGX_HTTP_TFS_EXIT_GENERAL_ERROR, align 4
  store i32 %60, i32* %3, align 4
  br label %225

61:                                               ; preds = %54
  %62 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %63 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %64, 3
  store i32 %65, i32* %8, align 4
  br label %70

66:                                               ; preds = %36
  %67 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %68 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %66, %61
  %71 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %72 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %74, i32 0, i32 6
  %76 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %77, i32 0, i32 0
  store i32 %73, i32* %78, align 8
  %79 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %80 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 8
  %85 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %85, i32 0, i32 1
  store %struct.TYPE_21__* %86, %struct.TYPE_21__** %12, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = mul i64 4, %94
  %96 = trunc i64 %95 to i32
  %97 = call %struct.TYPE_24__* @ngx_pcalloc(i32 %92, i32 %96)
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 3
  store %struct.TYPE_24__* %97, %struct.TYPE_24__** %99, align 8
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 3
  %102 = load %struct.TYPE_24__*, %struct.TYPE_24__** %101, align 8
  %103 = icmp eq %struct.TYPE_24__* %102, null
  br i1 %103, label %104, label %106

104:                                              ; preds = %70
  %105 = load i32, i32* @NGX_ERROR, align 4
  store i32 %105, i32* %3, align 4
  br label %225

106:                                              ; preds = %70
  store i32 0, i32* %10, align 4
  br label %107

107:                                              ; preds = %133, %106
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %136

111:                                              ; preds = %107
  %112 = load i32*, i32** %6, align 8
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 3
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %115, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %119, i32 0, i32 0
  store i32 %113, i32* %120, align 4
  %121 = load i32*, i32** %6, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 4
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 3
  %126 = load %struct.TYPE_24__*, %struct.TYPE_24__** %125, align 8
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %129, i32 0, i32 1
  store i32 %123, i32* %130, align 4
  %131 = load i32*, i32** %6, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 8
  store i32* %132, i32** %6, align 8
  br label %133

133:                                              ; preds = %111
  %134 = load i32, i32* %10, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %10, align 4
  br label %107

136:                                              ; preds = %107
  %137 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @NGX_HTTP_TFS_OPEN_MODE_READ, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %152, label %144

144:                                              ; preds = %136
  %145 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @NGX_HTTP_TFS_OPEN_MODE_STAT, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %179

152:                                              ; preds = %144, %136
  %153 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 4
  %156 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 1
  store i32 %155, i32* %156, align 4
  %157 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %158 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 0
  store i32 %159, i32* %160, align 4
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 0
  store i32 %163, i32* %164, align 8
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 3
  %167 = load %struct.TYPE_24__*, %struct.TYPE_24__** %166, align 8
  %168 = bitcast %struct.TYPE_24__* %167 to i32*
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 1
  store i32* %168, i32** %169, align 8
  %170 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %170, i32 0, i32 4
  %172 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @ngx_http_tfs_block_cache_insert(i32* %171, i32 %174, i32 %177, %struct.TYPE_23__* %13, %struct.TYPE_22__* %14)
  br label %179

179:                                              ; preds = %152, %144
  %180 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @NGX_HTTP_TFS_OPEN_MODE_WRITE, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %202

187:                                              ; preds = %179
  %188 = load i32*, i32** %6, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 4
  store i32* %189, i32** %6, align 8
  %190 = load i32*, i32** %6, align 8
  %191 = bitcast i32* %190 to i8**
  %192 = load i8*, i8** %191, align 8
  %193 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %194 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %193, i32 0, i32 2
  store i8* %192, i8** %194, align 8
  %195 = load i32*, i32** %6, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 4
  store i32* %196, i32** %6, align 8
  %197 = load i32*, i32** %6, align 8
  %198 = bitcast i32* %197 to i8**
  %199 = load i8*, i8** %198, align 8
  %200 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %201 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %200, i32 0, i32 1
  store i8* %199, i8** %201, align 8
  br label %202

202:                                              ; preds = %187, %179
  %203 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %203, i32 0, i32 0
  store i64 0, i64* %204, align 8
  %205 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %206 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %209, i32 0, i32 0
  %211 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %212 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %215 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %217, i32 0, i32 2
  %219 = load i8*, i8** %218, align 8
  %220 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %221 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %220, i32 0, i32 1
  %222 = load i8*, i8** %221, align 8
  %223 = call i32 @ngx_log_debug5(i32 %205, i32 %208, i32 0, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.1, i64 0, i64 0), i32* %210, i32 %213, i32 %216, i8* %219, i8* %222)
  %224 = load i32, i32* @NGX_OK, align 4
  store i32 %224, i32* %3, align 4
  br label %225

225:                                              ; preds = %202, %104, %59, %28
  %226 = load i32, i32* %3, align 4
  ret i32 %226
}

declare dso_local i32 @ngx_str_set(i32*, i8*) #1

declare dso_local i32 @ngx_http_tfs_status_message(%struct.TYPE_25__*, i32*, i32) #1

declare dso_local %struct.TYPE_24__* @ngx_pcalloc(i32, i32) #1

declare dso_local i32 @ngx_http_tfs_block_cache_insert(i32*, i32, i32, %struct.TYPE_23__*, %struct.TYPE_22__*) #1

declare dso_local i32 @ngx_log_debug5(i32, i32, i32, i8*, i32*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
