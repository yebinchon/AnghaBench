; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_peer_connection.c_ngx_http_tfs_select_peer_v1.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_peer_connection.c_ngx_http_tfs_select_peer_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32*, i8*, i8*, i32*, i32, i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@ngx_http_tfs_create_rcs_request = common dso_local global i8* null, align 8
@ngx_http_tfs_process_rcs = common dso_local global i8* null, align 8
@NGX_HTTP_TFS_RC_SERVER = common dso_local global i64 0, align 8
@ngx_http_tfs_create_ns_request = common dso_local global i8* null, align 8
@ngx_http_tfs_process_ns = common dso_local global i8* null, align 8
@NGX_HTTP_TFS_NAME_SERVER = common dso_local global i64 0, align 8
@ngx_http_tfs_create_ds_request = common dso_local global i8* null, align 8
@ngx_http_tfs_process_ds = common dso_local global i8* null, align 8
@ngx_http_tfs_retry_ds = common dso_local global i8* null, align 8
@NGX_HTTP_TFS_DATA_SERVER = common dso_local global i64 0, align 8
@ngx_http_tfs_process_ds_read = common dso_local global i8* null, align 8
@ngx_http_tfs_process_ds_input_filter = common dso_local global i8* null, align 8
@ngx_http_tfs_retry_ns = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_7__*)* @ngx_http_tfs_select_peer_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ngx_http_tfs_select_peer_v1(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 7
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %295 [
    i32 156, label %9
    i32 157, label %102
    i32 154, label %165
    i32 155, label %226
    i32 158, label %281
  ]

9:                                                ; preds = %1
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %101 [
    i32 143, label %13
    i32 146, label %27
    i32 145, label %27
    i32 147, label %27
    i32 142, label %43
    i32 144, label %61
    i32 149, label %81
    i32 148, label %97
  ]

13:                                               ; preds = %9
  %14 = load i8*, i8** @ngx_http_tfs_create_rcs_request, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 3
  store i8* %14, i8** %16, align 8
  %17 = load i8*, i8** @ngx_http_tfs_process_rcs, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  store i8* %17, i8** %19, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  store i32* null, i32** %21, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @NGX_HTTP_TFS_RC_SERVER, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32* %26, i32** %2, align 8
  br label %297

27:                                               ; preds = %9, %9, %9
  %28 = load i8*, i8** @ngx_http_tfs_create_ns_request, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** @ngx_http_tfs_process_ns, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  store i32* null, i32** %35, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 4
  store i32* null, i32** %37, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @NGX_HTTP_TFS_NAME_SERVER, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32* %42, i32** %2, align 8
  br label %297

43:                                               ; preds = %9
  %44 = load i8*, i8** @ngx_http_tfs_create_ds_request, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 3
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** @ngx_http_tfs_process_ds, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  store i32* null, i32** %51, align 8
  %52 = load i8*, i8** @ngx_http_tfs_retry_ds, align 8
  %53 = bitcast i8* %52 to i32*
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 4
  store i32* %53, i32** %55, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* @NGX_HTTP_TFS_DATA_SERVER, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32* %60, i32** %2, align 8
  br label %297

61:                                               ; preds = %9
  %62 = load i8*, i8** @ngx_http_tfs_create_ds_request, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 3
  store i8* %62, i8** %64, align 8
  %65 = load i8*, i8** @ngx_http_tfs_process_ds_read, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  %68 = load i8*, i8** @ngx_http_tfs_process_ds_input_filter, align 8
  %69 = bitcast i8* %68 to i32*
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  store i32* %69, i32** %71, align 8
  %72 = load i8*, i8** @ngx_http_tfs_retry_ds, align 8
  %73 = bitcast i8* %72 to i32*
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 4
  store i32* %73, i32** %75, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* @NGX_HTTP_TFS_DATA_SERVER, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  store i32* %80, i32** %2, align 8
  br label %297

81:                                               ; preds = %9
  %82 = load i8*, i8** @ngx_http_tfs_create_ds_request, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 3
  store i8* %82, i8** %84, align 8
  %85 = load i8*, i8** @ngx_http_tfs_process_ds, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 2
  store i8* %85, i8** %87, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  store i32* null, i32** %89, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 4
  store i32* null, i32** %91, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* @NGX_HTTP_TFS_DATA_SERVER, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  store i32* %96, i32** %2, align 8
  br label %297

97:                                               ; preds = %9
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 6
  %100 = load i32*, i32** %99, align 8
  store i32* %100, i32** %2, align 8
  br label %297

101:                                              ; preds = %9
  store i32* null, i32** %2, align 8
  br label %297

102:                                              ; preds = %1
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 8
  switch i32 %105, label %164 [
    i32 150, label %106
    i32 152, label %120
    i32 151, label %138
    i32 153, label %158
  ]

106:                                              ; preds = %102
  %107 = load i8*, i8** @ngx_http_tfs_create_rcs_request, align 8
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 3
  store i8* %107, i8** %109, align 8
  %110 = load i8*, i8** @ngx_http_tfs_process_rcs, align 8
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 2
  store i8* %110, i8** %112, align 8
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  store i32* null, i32** %114, align 8
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i64, i64* @NGX_HTTP_TFS_RC_SERVER, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  store i32* %119, i32** %2, align 8
  br label %297

120:                                              ; preds = %102
  %121 = load i8*, i8** @ngx_http_tfs_create_ns_request, align 8
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 3
  store i8* %121, i8** %123, align 8
  %124 = load i8*, i8** @ngx_http_tfs_process_ns, align 8
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 2
  store i8* %124, i8** %126, align 8
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 1
  store i32* null, i32** %128, align 8
  %129 = load i8*, i8** @ngx_http_tfs_retry_ns, align 8
  %130 = bitcast i8* %129 to i32*
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 4
  store i32* %130, i32** %132, align 8
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = load i64, i64* @NGX_HTTP_TFS_NAME_SERVER, align 8
  %137 = getelementptr inbounds i32, i32* %135, i64 %136
  store i32* %137, i32** %2, align 8
  br label %297

138:                                              ; preds = %102
  %139 = load i8*, i8** @ngx_http_tfs_create_ds_request, align 8
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 3
  store i8* %139, i8** %141, align 8
  %142 = load i8*, i8** @ngx_http_tfs_process_ds_read, align 8
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 2
  store i8* %142, i8** %144, align 8
  %145 = load i8*, i8** @ngx_http_tfs_process_ds_input_filter, align 8
  %146 = bitcast i8* %145 to i32*
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 1
  store i32* %146, i32** %148, align 8
  %149 = load i8*, i8** @ngx_http_tfs_retry_ds, align 8
  %150 = bitcast i8* %149 to i32*
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 4
  store i32* %150, i32** %152, align 8
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = load i64, i64* @NGX_HTTP_TFS_DATA_SERVER, align 8
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  store i32* %157, i32** %2, align 8
  br label %297

158:                                              ; preds = %102
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 1
  store i32* null, i32** %160, align 8
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 6
  %163 = load i32*, i32** %162, align 8
  store i32* %163, i32** %2, align 8
  br label %297

164:                                              ; preds = %102
  store i32* null, i32** %2, align 8
  br label %297

165:                                              ; preds = %1
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 8
  switch i32 %168, label %225 [
    i32 130, label %169
    i32 132, label %183
    i32 131, label %183
    i32 137, label %183
    i32 133, label %183
    i32 129, label %201
    i32 136, label %201
    i32 128, label %201
    i32 138, label %201
    i32 135, label %201
    i32 134, label %219
  ]

169:                                              ; preds = %165
  %170 = load i8*, i8** @ngx_http_tfs_create_rcs_request, align 8
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 3
  store i8* %170, i8** %172, align 8
  %173 = load i8*, i8** @ngx_http_tfs_process_rcs, align 8
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 2
  store i8* %173, i8** %175, align 8
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 1
  store i32* null, i32** %177, align 8
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = load i64, i64* @NGX_HTTP_TFS_RC_SERVER, align 8
  %182 = getelementptr inbounds i32, i32* %180, i64 %181
  store i32* %182, i32** %2, align 8
  br label %297

183:                                              ; preds = %165, %165, %165, %165
  %184 = load i8*, i8** @ngx_http_tfs_create_ns_request, align 8
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 3
  store i8* %184, i8** %186, align 8
  %187 = load i8*, i8** @ngx_http_tfs_process_ns, align 8
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 2
  store i8* %187, i8** %189, align 8
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 1
  store i32* null, i32** %191, align 8
  %192 = load i8*, i8** @ngx_http_tfs_retry_ns, align 8
  %193 = bitcast i8* %192 to i32*
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 4
  store i32* %193, i32** %195, align 8
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 0
  %198 = load i32*, i32** %197, align 8
  %199 = load i64, i64* @NGX_HTTP_TFS_NAME_SERVER, align 8
  %200 = getelementptr inbounds i32, i32* %198, i64 %199
  store i32* %200, i32** %2, align 8
  br label %297

201:                                              ; preds = %165, %165, %165, %165, %165
  %202 = load i8*, i8** @ngx_http_tfs_create_ds_request, align 8
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 3
  store i8* %202, i8** %204, align 8
  %205 = load i8*, i8** @ngx_http_tfs_process_ds, align 8
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 2
  store i8* %205, i8** %207, align 8
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 1
  store i32* null, i32** %209, align 8
  %210 = load i8*, i8** @ngx_http_tfs_retry_ds, align 8
  %211 = bitcast i8* %210 to i32*
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 4
  store i32* %211, i32** %213, align 8
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 0
  %216 = load i32*, i32** %215, align 8
  %217 = load i64, i64* @NGX_HTTP_TFS_DATA_SERVER, align 8
  %218 = getelementptr inbounds i32, i32* %216, i64 %217
  store i32* %218, i32** %2, align 8
  br label %297

219:                                              ; preds = %165
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 1
  store i32* null, i32** %221, align 8
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 6
  %224 = load i32*, i32** %223, align 8
  store i32* %224, i32** %2, align 8
  br label %297

225:                                              ; preds = %165
  store i32* null, i32** %2, align 8
  br label %297

226:                                              ; preds = %1
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 5
  %229 = load i32, i32* %228, align 8
  switch i32 %229, label %280 [
    i32 140, label %230
    i32 141, label %244
    i32 139, label %262
  ]

230:                                              ; preds = %226
  %231 = load i8*, i8** @ngx_http_tfs_create_rcs_request, align 8
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 3
  store i8* %231, i8** %233, align 8
  %234 = load i8*, i8** @ngx_http_tfs_process_rcs, align 8
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 2
  store i8* %234, i8** %236, align 8
  %237 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 1
  store i32* null, i32** %238, align 8
  %239 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 0
  %241 = load i32*, i32** %240, align 8
  %242 = load i64, i64* @NGX_HTTP_TFS_RC_SERVER, align 8
  %243 = getelementptr inbounds i32, i32* %241, i64 %242
  store i32* %243, i32** %2, align 8
  br label %297

244:                                              ; preds = %226
  %245 = load i8*, i8** @ngx_http_tfs_create_ns_request, align 8
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 3
  store i8* %245, i8** %247, align 8
  %248 = load i8*, i8** @ngx_http_tfs_process_ns, align 8
  %249 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 2
  store i8* %248, i8** %250, align 8
  %251 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %252 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i32 0, i32 1
  store i32* null, i32** %252, align 8
  %253 = load i8*, i8** @ngx_http_tfs_retry_ns, align 8
  %254 = bitcast i8* %253 to i32*
  %255 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 4
  store i32* %254, i32** %256, align 8
  %257 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i32 0, i32 0
  %259 = load i32*, i32** %258, align 8
  %260 = load i64, i64* @NGX_HTTP_TFS_NAME_SERVER, align 8
  %261 = getelementptr inbounds i32, i32* %259, i64 %260
  store i32* %261, i32** %2, align 8
  br label %297

262:                                              ; preds = %226
  %263 = load i8*, i8** @ngx_http_tfs_create_ds_request, align 8
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 3
  store i8* %263, i8** %265, align 8
  %266 = load i8*, i8** @ngx_http_tfs_process_ds, align 8
  %267 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i32 0, i32 2
  store i8* %266, i8** %268, align 8
  %269 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %269, i32 0, i32 1
  store i32* null, i32** %270, align 8
  %271 = load i8*, i8** @ngx_http_tfs_retry_ds, align 8
  %272 = bitcast i8* %271 to i32*
  %273 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %274 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %273, i32 0, i32 4
  store i32* %272, i32** %274, align 8
  %275 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %276 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %275, i32 0, i32 0
  %277 = load i32*, i32** %276, align 8
  %278 = load i64, i64* @NGX_HTTP_TFS_DATA_SERVER, align 8
  %279 = getelementptr inbounds i32, i32* %277, i64 %278
  store i32* %279, i32** %2, align 8
  br label %297

280:                                              ; preds = %226
  store i32* null, i32** %2, align 8
  br label %297

281:                                              ; preds = %1
  %282 = load i8*, i8** @ngx_http_tfs_create_rcs_request, align 8
  %283 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %284 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %283, i32 0, i32 3
  store i8* %282, i8** %284, align 8
  %285 = load i8*, i8** @ngx_http_tfs_process_rcs, align 8
  %286 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %287 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %286, i32 0, i32 2
  store i8* %285, i8** %287, align 8
  %288 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %288, i32 0, i32 1
  store i32* null, i32** %289, align 8
  %290 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %291 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %290, i32 0, i32 0
  %292 = load i32*, i32** %291, align 8
  %293 = load i64, i64* @NGX_HTTP_TFS_RC_SERVER, align 8
  %294 = getelementptr inbounds i32, i32* %292, i64 %293
  store i32* %294, i32** %2, align 8
  br label %297

295:                                              ; preds = %1
  br label %296

296:                                              ; preds = %295
  store i32* null, i32** %2, align 8
  br label %297

297:                                              ; preds = %296, %281, %280, %262, %244, %230, %225, %219, %201, %183, %169, %164, %158, %138, %120, %106, %101, %97, %81, %61, %43, %27, %13
  %298 = load i32*, i32** %2, align 8
  ret i32* %298
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
