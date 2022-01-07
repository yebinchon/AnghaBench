; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_peer_connection.c_ngx_http_tfs_select_peer_v2.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_peer_connection.c_ngx_http_tfs_select_peer_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32*, i32*, i8*, %struct.TYPE_6__, i8*, i32, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@ngx_http_tfs_create_rcs_request = common dso_local global i8* null, align 8
@ngx_http_tfs_process_rcs = common dso_local global i8* null, align 8
@NGX_HTTP_TFS_RC_SERVER = common dso_local global i64 0, align 8
@ngx_http_tfs_create_rs_request = common dso_local global i8* null, align 8
@ngx_http_tfs_process_rs = common dso_local global i8* null, align 8
@NGX_HTTP_TFS_ROOT_SERVER = common dso_local global i64 0, align 8
@ngx_http_tfs_create_ms_request = common dso_local global i8* null, align 8
@ngx_http_tfs_process_ms = common dso_local global i8* null, align 8
@NGX_HTTP_TFS_META_SERVER = common dso_local global i64 0, align 8
@ngx_http_tfs_create_ns_request = common dso_local global i8* null, align 8
@ngx_http_tfs_process_ns = common dso_local global i8* null, align 8
@NGX_HTTP_TFS_NAME_SERVER = common dso_local global i64 0, align 8
@ngx_http_tfs_create_ds_request = common dso_local global i8* null, align 8
@ngx_http_tfs_process_ds = common dso_local global i8* null, align 8
@NGX_HTTP_TFS_DATA_SERVER = common dso_local global i64 0, align 8
@ngx_http_tfs_retry_ns = common dso_local global i8* null, align 8
@ngx_http_tfs_process_ds_read = common dso_local global i8* null, align 8
@ngx_http_tfs_process_ds_input_filter = common dso_local global i32* null, align 8
@ngx_http_tfs_retry_ds = common dso_local global i8* null, align 8
@ngx_http_tfs_process_ms_ls_dir = common dso_local global i8* null, align 8
@ngx_http_tfs_process_ms_input_filter = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_7__*)* @ngx_http_tfs_select_peer_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ngx_http_tfs_select_peer_v2(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 4
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %353 [
    i32 165, label %9
    i32 158, label %21
    i32 160, label %90
    i32 157, label %188
    i32 166, label %285
    i32 167, label %285
    i32 163, label %285
    i32 164, label %285
    i32 162, label %285
    i32 161, label %285
    i32 159, label %285
  ]

9:                                                ; preds = %1
  %10 = load i8*, i8** @ngx_http_tfs_create_rcs_request, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 5
  store i8* %10, i8** %12, align 8
  %13 = load i8*, i8** @ngx_http_tfs_process_rcs, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 3
  store i8* %13, i8** %15, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @NGX_HTTP_TFS_RC_SERVER, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  store i32* %20, i32** %2, align 8
  br label %355

21:                                               ; preds = %1
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %89 [
    i32 138, label %25
    i32 140, label %37
    i32 139, label %49
    i32 143, label %49
    i32 142, label %61
    i32 141, label %61
    i32 144, label %61
    i32 146, label %73
    i32 145, label %85
  ]

25:                                               ; preds = %21
  %26 = load i8*, i8** @ngx_http_tfs_create_rcs_request, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 5
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** @ngx_http_tfs_process_rcs, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 3
  store i8* %29, i8** %31, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @NGX_HTTP_TFS_RC_SERVER, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32* %36, i32** %2, align 8
  br label %355

37:                                               ; preds = %21
  %38 = load i8*, i8** @ngx_http_tfs_create_rs_request, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 5
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** @ngx_http_tfs_process_rs, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 3
  store i8* %41, i8** %43, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @NGX_HTTP_TFS_ROOT_SERVER, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  store i32* %48, i32** %2, align 8
  br label %355

49:                                               ; preds = %21, %21
  %50 = load i8*, i8** @ngx_http_tfs_create_ms_request, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 5
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** @ngx_http_tfs_process_ms, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 3
  store i8* %53, i8** %55, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* @NGX_HTTP_TFS_META_SERVER, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32* %60, i32** %2, align 8
  br label %355

61:                                               ; preds = %21, %21, %21
  %62 = load i8*, i8** @ngx_http_tfs_create_ns_request, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 5
  store i8* %62, i8** %64, align 8
  %65 = load i8*, i8** @ngx_http_tfs_process_ns, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 3
  store i8* %65, i8** %67, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* @NGX_HTTP_TFS_NAME_SERVER, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32* %72, i32** %2, align 8
  br label %355

73:                                               ; preds = %21
  %74 = load i8*, i8** @ngx_http_tfs_create_ds_request, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 5
  store i8* %74, i8** %76, align 8
  %77 = load i8*, i8** @ngx_http_tfs_process_ds, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 3
  store i8* %77, i8** %79, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* @NGX_HTTP_TFS_DATA_SERVER, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32* %84, i32** %2, align 8
  br label %355

85:                                               ; preds = %21
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  store i32* %88, i32** %2, align 8
  br label %355

89:                                               ; preds = %21
  store i32* null, i32** %2, align 8
  br label %355

90:                                               ; preds = %1
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 8
  switch i32 %93, label %187 [
    i32 147, label %94
    i32 149, label %110
    i32 150, label %126
    i32 151, label %142
    i32 148, label %160
    i32 152, label %179
  ]

94:                                               ; preds = %90
  %95 = load i8*, i8** @ngx_http_tfs_create_rcs_request, align 8
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 5
  store i8* %95, i8** %97, align 8
  %98 = load i8*, i8** @ngx_http_tfs_process_rcs, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 3
  store i8* %98, i8** %100, align 8
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  store i32* null, i32** %102, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 7
  store i32* null, i32** %104, align 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = load i64, i64* @NGX_HTTP_TFS_RC_SERVER, align 8
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  store i32* %109, i32** %2, align 8
  br label %355

110:                                              ; preds = %90
  %111 = load i8*, i8** @ngx_http_tfs_create_rs_request, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 5
  store i8* %111, i8** %113, align 8
  %114 = load i8*, i8** @ngx_http_tfs_process_rs, align 8
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 3
  store i8* %114, i8** %116, align 8
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  store i32* null, i32** %118, align 8
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 7
  store i32* null, i32** %120, align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = load i64, i64* @NGX_HTTP_TFS_ROOT_SERVER, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  store i32* %125, i32** %2, align 8
  br label %355

126:                                              ; preds = %90
  %127 = load i8*, i8** @ngx_http_tfs_create_ms_request, align 8
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 5
  store i8* %127, i8** %129, align 8
  %130 = load i8*, i8** @ngx_http_tfs_process_ms, align 8
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 3
  store i8* %130, i8** %132, align 8
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  store i32* null, i32** %134, align 8
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 7
  store i32* null, i32** %136, align 8
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 2
  %139 = load i32*, i32** %138, align 8
  %140 = load i64, i64* @NGX_HTTP_TFS_META_SERVER, align 8
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  store i32* %141, i32** %2, align 8
  br label %355

142:                                              ; preds = %90
  %143 = load i8*, i8** @ngx_http_tfs_create_ns_request, align 8
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 5
  store i8* %143, i8** %145, align 8
  %146 = load i8*, i8** @ngx_http_tfs_process_ns, align 8
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 3
  store i8* %146, i8** %148, align 8
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 1
  store i32* null, i32** %150, align 8
  %151 = load i8*, i8** @ngx_http_tfs_retry_ns, align 8
  %152 = bitcast i8* %151 to i32*
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 7
  store i32* %152, i32** %154, align 8
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 2
  %157 = load i32*, i32** %156, align 8
  %158 = load i64, i64* @NGX_HTTP_TFS_NAME_SERVER, align 8
  %159 = getelementptr inbounds i32, i32* %157, i64 %158
  store i32* %159, i32** %2, align 8
  br label %355

160:                                              ; preds = %90
  %161 = load i8*, i8** @ngx_http_tfs_create_ds_request, align 8
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 5
  store i8* %161, i8** %163, align 8
  %164 = load i8*, i8** @ngx_http_tfs_process_ds_read, align 8
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 3
  store i8* %164, i8** %166, align 8
  %167 = load i32*, i32** @ngx_http_tfs_process_ds_input_filter, align 8
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 1
  store i32* %167, i32** %169, align 8
  %170 = load i8*, i8** @ngx_http_tfs_retry_ds, align 8
  %171 = bitcast i8* %170 to i32*
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 7
  store i32* %171, i32** %173, align 8
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 2
  %176 = load i32*, i32** %175, align 8
  %177 = load i64, i64* @NGX_HTTP_TFS_DATA_SERVER, align 8
  %178 = getelementptr inbounds i32, i32* %176, i64 %177
  store i32* %178, i32** %2, align 8
  br label %355

179:                                              ; preds = %90
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 1
  store i32* null, i32** %181, align 8
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 7
  store i32* null, i32** %183, align 8
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  store i32* %186, i32** %2, align 8
  br label %355

187:                                              ; preds = %90
  store i32* null, i32** %2, align 8
  br label %355

188:                                              ; preds = %1
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 6
  %191 = load i32, i32* %190, align 8
  switch i32 %191, label %284 [
    i32 130, label %192
    i32 131, label %208
    i32 136, label %224
    i32 128, label %224
    i32 135, label %240
    i32 132, label %240
    i32 134, label %258
    i32 129, label %258
    i32 137, label %258
    i32 133, label %276
  ]

192:                                              ; preds = %188
  %193 = load i8*, i8** @ngx_http_tfs_create_rcs_request, align 8
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 5
  store i8* %193, i8** %195, align 8
  %196 = load i8*, i8** @ngx_http_tfs_process_rcs, align 8
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 3
  store i8* %196, i8** %198, align 8
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 1
  store i32* null, i32** %200, align 8
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 7
  store i32* null, i32** %202, align 8
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 2
  %205 = load i32*, i32** %204, align 8
  %206 = load i64, i64* @NGX_HTTP_TFS_RC_SERVER, align 8
  %207 = getelementptr inbounds i32, i32* %205, i64 %206
  store i32* %207, i32** %2, align 8
  br label %355

208:                                              ; preds = %188
  %209 = load i8*, i8** @ngx_http_tfs_create_rs_request, align 8
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 5
  store i8* %209, i8** %211, align 8
  %212 = load i8*, i8** @ngx_http_tfs_process_rs, align 8
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 3
  store i8* %212, i8** %214, align 8
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 1
  store i32* null, i32** %216, align 8
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 7
  store i32* null, i32** %218, align 8
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 2
  %221 = load i32*, i32** %220, align 8
  %222 = load i64, i64* @NGX_HTTP_TFS_ROOT_SERVER, align 8
  %223 = getelementptr inbounds i32, i32* %221, i64 %222
  store i32* %223, i32** %2, align 8
  br label %355

224:                                              ; preds = %188, %188
  %225 = load i8*, i8** @ngx_http_tfs_create_ms_request, align 8
  %226 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 5
  store i8* %225, i8** %227, align 8
  %228 = load i8*, i8** @ngx_http_tfs_process_ms, align 8
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 3
  store i8* %228, i8** %230, align 8
  %231 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 1
  store i32* null, i32** %232, align 8
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 7
  store i32* null, i32** %234, align 8
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 2
  %237 = load i32*, i32** %236, align 8
  %238 = load i64, i64* @NGX_HTTP_TFS_META_SERVER, align 8
  %239 = getelementptr inbounds i32, i32* %237, i64 %238
  store i32* %239, i32** %2, align 8
  br label %355

240:                                              ; preds = %188, %188
  %241 = load i8*, i8** @ngx_http_tfs_create_ns_request, align 8
  %242 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 5
  store i8* %241, i8** %243, align 8
  %244 = load i8*, i8** @ngx_http_tfs_process_ns, align 8
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 3
  store i8* %244, i8** %246, align 8
  %247 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 1
  store i32* null, i32** %248, align 8
  %249 = load i8*, i8** @ngx_http_tfs_retry_ns, align 8
  %250 = bitcast i8* %249 to i32*
  %251 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %252 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i32 0, i32 7
  store i32* %250, i32** %252, align 8
  %253 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i32 0, i32 2
  %255 = load i32*, i32** %254, align 8
  %256 = load i64, i64* @NGX_HTTP_TFS_NAME_SERVER, align 8
  %257 = getelementptr inbounds i32, i32* %255, i64 %256
  store i32* %257, i32** %2, align 8
  br label %355

258:                                              ; preds = %188, %188, %188
  %259 = load i8*, i8** @ngx_http_tfs_create_ds_request, align 8
  %260 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 5
  store i8* %259, i8** %261, align 8
  %262 = load i8*, i8** @ngx_http_tfs_process_ds, align 8
  %263 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %263, i32 0, i32 3
  store i8* %262, i8** %264, align 8
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 1
  store i32* null, i32** %266, align 8
  %267 = load i8*, i8** @ngx_http_tfs_retry_ds, align 8
  %268 = bitcast i8* %267 to i32*
  %269 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %269, i32 0, i32 7
  store i32* %268, i32** %270, align 8
  %271 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 2
  %273 = load i32*, i32** %272, align 8
  %274 = load i64, i64* @NGX_HTTP_TFS_DATA_SERVER, align 8
  %275 = getelementptr inbounds i32, i32* %273, i64 %274
  store i32* %275, i32** %2, align 8
  br label %355

276:                                              ; preds = %188
  %277 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %277, i32 0, i32 1
  store i32* null, i32** %278, align 8
  %279 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %279, i32 0, i32 7
  store i32* null, i32** %280, align 8
  %281 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %282 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %281, i32 0, i32 0
  %283 = load i32*, i32** %282, align 8
  store i32* %283, i32** %2, align 8
  br label %355

284:                                              ; preds = %188
  store i32* null, i32** %2, align 8
  br label %355

285:                                              ; preds = %1, %1, %1, %1, %1, %1, %1
  %286 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %287 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %286, i32 0, i32 6
  %288 = load i32, i32* %287, align 8
  switch i32 %288, label %352 [
    i32 153, label %289
    i32 155, label %303
    i32 154, label %317
    i32 156, label %346
  ]

289:                                              ; preds = %285
  %290 = load i8*, i8** @ngx_http_tfs_create_rcs_request, align 8
  %291 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %292 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %291, i32 0, i32 5
  store i8* %290, i8** %292, align 8
  %293 = load i8*, i8** @ngx_http_tfs_process_rcs, align 8
  %294 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %295 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %294, i32 0, i32 3
  store i8* %293, i8** %295, align 8
  %296 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %297 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %296, i32 0, i32 1
  store i32* null, i32** %297, align 8
  %298 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %299 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %298, i32 0, i32 2
  %300 = load i32*, i32** %299, align 8
  %301 = load i64, i64* @NGX_HTTP_TFS_RC_SERVER, align 8
  %302 = getelementptr inbounds i32, i32* %300, i64 %301
  store i32* %302, i32** %2, align 8
  br label %355

303:                                              ; preds = %285
  %304 = load i8*, i8** @ngx_http_tfs_create_rs_request, align 8
  %305 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %306 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %305, i32 0, i32 5
  store i8* %304, i8** %306, align 8
  %307 = load i8*, i8** @ngx_http_tfs_process_rs, align 8
  %308 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %309 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %308, i32 0, i32 3
  store i8* %307, i8** %309, align 8
  %310 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %311 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %310, i32 0, i32 1
  store i32* null, i32** %311, align 8
  %312 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %313 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %312, i32 0, i32 2
  %314 = load i32*, i32** %313, align 8
  %315 = load i64, i64* @NGX_HTTP_TFS_ROOT_SERVER, align 8
  %316 = getelementptr inbounds i32, i32* %314, i64 %315
  store i32* %316, i32** %2, align 8
  br label %355

317:                                              ; preds = %285
  %318 = load i8*, i8** @ngx_http_tfs_create_ms_request, align 8
  %319 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %320 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %319, i32 0, i32 5
  store i8* %318, i8** %320, align 8
  %321 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %322 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %321, i32 0, i32 4
  %323 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = icmp eq i32 %325, 164
  br i1 %326, label %327, label %334

327:                                              ; preds = %317
  %328 = load i8*, i8** @ngx_http_tfs_process_ms_ls_dir, align 8
  %329 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %330 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %329, i32 0, i32 3
  store i8* %328, i8** %330, align 8
  %331 = load i32*, i32** @ngx_http_tfs_process_ms_input_filter, align 8
  %332 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %333 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %332, i32 0, i32 1
  store i32* %331, i32** %333, align 8
  br label %340

334:                                              ; preds = %317
  %335 = load i8*, i8** @ngx_http_tfs_process_ms, align 8
  %336 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %337 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %336, i32 0, i32 3
  store i8* %335, i8** %337, align 8
  %338 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %339 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %338, i32 0, i32 1
  store i32* null, i32** %339, align 8
  br label %340

340:                                              ; preds = %334, %327
  %341 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %342 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %341, i32 0, i32 2
  %343 = load i32*, i32** %342, align 8
  %344 = load i64, i64* @NGX_HTTP_TFS_META_SERVER, align 8
  %345 = getelementptr inbounds i32, i32* %343, i64 %344
  store i32* %345, i32** %2, align 8
  br label %355

346:                                              ; preds = %285
  %347 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %348 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %347, i32 0, i32 1
  store i32* null, i32** %348, align 8
  %349 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %350 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %349, i32 0, i32 0
  %351 = load i32*, i32** %350, align 8
  store i32* %351, i32** %2, align 8
  br label %355

352:                                              ; preds = %285
  store i32* null, i32** %2, align 8
  br label %355

353:                                              ; preds = %1
  br label %354

354:                                              ; preds = %353
  store i32* null, i32** %2, align 8
  br label %355

355:                                              ; preds = %354, %352, %346, %340, %303, %289, %284, %276, %258, %240, %224, %208, %192, %187, %179, %160, %142, %126, %110, %94, %89, %85, %73, %61, %49, %37, %25, %9
  %356 = load i32*, i32** %2, align 8
  ret i32* %356
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
