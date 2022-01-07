; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_gzip_filter_module.c_ngx_http_gzip_body_filter.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_gzip_filter_module.c_ngx_http_gzip_body_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_19__*, i64 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i32*, i32, i64, i32*, i32**, i64, i32, i32, i64 }

@ngx_http_gzip_filter_module = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"http gzip filter\00", align 1
@NGX_HTTP_GZIP_BUFFERED = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_DECLINED = common dso_local global i32 0, align 4
@NGX_AGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, i32*)* @ngx_http_gzip_body_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_gzip_body_filter(%struct.TYPE_20__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %11 = load i32, i32* @ngx_http_gzip_filter_module, align 4
  %12 = call %struct.TYPE_21__* @ngx_http_get_module_ctx(%struct.TYPE_20__* %10, i32 %11)
  store %struct.TYPE_21__* %12, %struct.TYPE_21__** %9, align 8
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %14 = icmp eq %struct.TYPE_21__* %13, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %2
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20, %15, %2
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @ngx_http_next_body_filter(%struct.TYPE_20__* %26, i32* %27)
  store i32 %28, i32* %3, align 4
  br label %240

29:                                               ; preds = %20
  %30 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ngx_log_debug0(i32 %30, i32 %35, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 9
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %29
  %42 = load i32*, i32** %5, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @ngx_http_gzip_filter_buffer(%struct.TYPE_21__* %45, i32* %46)
  switch i32 %47, label %50 [
    i32 128, label %48
    i32 129, label %49
  ]

48:                                               ; preds = %44
  store i32 128, i32* %3, align 4
  br label %240

49:                                               ; preds = %44
  store i32* null, i32** %5, align 8
  br label %51

50:                                               ; preds = %44
  br label %217

51:                                               ; preds = %49
  br label %55

52:                                               ; preds = %41
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 9
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %52, %51
  br label %56

56:                                               ; preds = %55, %29
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %64 = call i32 @ngx_http_gzip_filter_deflate_start(%struct.TYPE_20__* %62, %struct.TYPE_21__* %63)
  %65 = icmp ne i32 %64, 128
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %217

67:                                               ; preds = %61
  br label %68

68:                                               ; preds = %67, %56
  %69 = load i32*, i32** %5, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %89

71:                                               ; preds = %68
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 8
  %77 = load i32*, i32** %5, align 8
  %78 = call i32 @ngx_chain_add_copy(i32 %74, i32* %76, i32* %77)
  %79 = icmp ne i32 %78, 128
  br i1 %79, label %80, label %81

80:                                               ; preds = %71
  br label %217

81:                                               ; preds = %71
  %82 = load i32, i32* @NGX_HTTP_GZIP_BUFFERED, align 4
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %82
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %81, %68
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %111

94:                                               ; preds = %89
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %96 = call i32 @ngx_http_next_body_filter(%struct.TYPE_20__* %95, i32* null)
  %97 = load i32, i32* @NGX_ERROR, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %217

100:                                              ; preds = %94
  store i32* null, i32** %8, align 8
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 7
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 6
  %108 = call i32 @ngx_chain_update_chains(i32 %103, i32* %105, i64* %107, i32** %8, i32 ptrtoint (i32* @ngx_http_gzip_filter_module to i32))
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 3
  store i64 0, i64* %110, align 8
  store i32 0, i32* %7, align 4
  br label %118

111:                                              ; preds = %89
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 6
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i32 1, i32 0
  store i32 %117, i32* %7, align 4
  br label %118

118:                                              ; preds = %111, %100
  br label %119

119:                                              ; preds = %216, %118
  br label %120

120:                                              ; preds = %158, %132, %119
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %123 = call i32 @ngx_http_gzip_filter_add_data(%struct.TYPE_20__* %121, %struct.TYPE_21__* %122)
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @NGX_DECLINED, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %120
  br label %159

128:                                              ; preds = %120
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* @NGX_AGAIN, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %128
  br label %120

133:                                              ; preds = %128
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %136 = call i32 @ngx_http_gzip_filter_get_buf(%struct.TYPE_20__* %134, %struct.TYPE_21__* %135)
  store i32 %136, i32* %6, align 4
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* @NGX_DECLINED, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %133
  br label %159

141:                                              ; preds = %133
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* @NGX_ERROR, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %141
  br label %217

146:                                              ; preds = %141
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %149 = call i32 @ngx_http_gzip_filter_deflate(%struct.TYPE_20__* %147, %struct.TYPE_21__* %148)
  store i32 %149, i32* %6, align 4
  %150 = load i32, i32* %6, align 4
  %151 = icmp eq i32 %150, 128
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  br label %159

153:                                              ; preds = %146
  %154 = load i32, i32* %6, align 4
  %155 = load i32, i32* @NGX_ERROR, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %153
  br label %217

158:                                              ; preds = %153
  br label %120

159:                                              ; preds = %152, %140, %127
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %160, i32 0, i32 4
  %162 = load i32*, i32** %161, align 8
  %163 = icmp eq i32* %162, null
  br i1 %163, label %164, label %180

164:                                              ; preds = %159
  %165 = load i32, i32* %7, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %180, label %167

167:                                              ; preds = %164
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %170 = call i32 @ngx_http_gzip_filter_free_copy_buf(%struct.TYPE_20__* %168, %struct.TYPE_21__* %169)
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 6
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %167
  %176 = load i32, i32* @NGX_AGAIN, align 4
  br label %178

177:                                              ; preds = %167
  br label %178

178:                                              ; preds = %177, %175
  %179 = phi i32 [ %176, %175 ], [ 128, %177 ]
  store i32 %179, i32* %3, align 4
  br label %240

180:                                              ; preds = %164, %159
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %182, i32 0, i32 4
  %184 = load i32*, i32** %183, align 8
  %185 = call i32 @ngx_http_next_body_filter(%struct.TYPE_20__* %181, i32* %184)
  store i32 %185, i32* %6, align 4
  %186 = load i32, i32* %6, align 4
  %187 = load i32, i32* @NGX_ERROR, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %180
  br label %217

190:                                              ; preds = %180
  %191 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %193 = call i32 @ngx_http_gzip_filter_free_copy_buf(%struct.TYPE_20__* %191, %struct.TYPE_21__* %192)
  %194 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %197, i32 0, i32 7
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %199, i32 0, i32 6
  %201 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %202 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %201, i32 0, i32 4
  %203 = call i32 @ngx_chain_update_chains(i32 %196, i32* %198, i64* %200, i32** %202, i32 ptrtoint (i32* @ngx_http_gzip_filter_module to i32))
  %204 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %205 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %204, i32 0, i32 4
  %206 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %207 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %206, i32 0, i32 5
  store i32** %205, i32*** %207, align 8
  %208 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %209 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %208, i32 0, i32 3
  store i64 0, i64* %209, align 8
  store i32 0, i32* %7, align 4
  %210 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %190
  %215 = load i32, i32* %6, align 4
  store i32 %215, i32* %3, align 4
  br label %240

216:                                              ; preds = %190
  br label %119

217:                                              ; preds = %189, %157, %145, %99, %80, %66, %50
  %218 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %219 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %218, i32 0, i32 0
  store i32 1, i32* %219, align 8
  %220 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %221 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %220, i32 0, i32 1
  %222 = load i32*, i32** %221, align 8
  %223 = icmp ne i32* %222, null
  br i1 %223, label %224, label %235

224:                                              ; preds = %217
  %225 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %226 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %225, i32 0, i32 2
  %227 = call i32 @deflateEnd(i32* %226)
  %228 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %232 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %231, i32 0, i32 1
  %233 = load i32*, i32** %232, align 8
  %234 = call i32 @ngx_pfree(i32 %230, i32* %233)
  br label %235

235:                                              ; preds = %224, %217
  %236 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %237 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %238 = call i32 @ngx_http_gzip_filter_free_copy_buf(%struct.TYPE_20__* %236, %struct.TYPE_21__* %237)
  %239 = load i32, i32* @NGX_ERROR, align 4
  store i32 %239, i32* %3, align 4
  br label %240

240:                                              ; preds = %235, %214, %178, %48, %25
  %241 = load i32, i32* %3, align 4
  ret i32 %241
}

declare dso_local %struct.TYPE_21__* @ngx_http_get_module_ctx(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @ngx_http_next_body_filter(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_http_gzip_filter_buffer(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @ngx_http_gzip_filter_deflate_start(%struct.TYPE_20__*, %struct.TYPE_21__*) #1

declare dso_local i32 @ngx_chain_add_copy(i32, i32*, i32*) #1

declare dso_local i32 @ngx_chain_update_chains(i32, i32*, i64*, i32**, i32) #1

declare dso_local i32 @ngx_http_gzip_filter_add_data(%struct.TYPE_20__*, %struct.TYPE_21__*) #1

declare dso_local i32 @ngx_http_gzip_filter_get_buf(%struct.TYPE_20__*, %struct.TYPE_21__*) #1

declare dso_local i32 @ngx_http_gzip_filter_deflate(%struct.TYPE_20__*, %struct.TYPE_21__*) #1

declare dso_local i32 @ngx_http_gzip_filter_free_copy_buf(%struct.TYPE_20__*, %struct.TYPE_21__*) #1

declare dso_local i32 @deflateEnd(i32*) #1

declare dso_local i32 @ngx_pfree(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
