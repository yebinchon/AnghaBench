; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_proxy_connect_module/extr_ngx_http_proxy_connect_module.c_ngx_http_proxy_connect_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_proxy_connect_module/extr_ngx_http_proxy_connect_module.c_ngx_http_proxy_connect_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_43__ = type { i32, %struct.TYPE_45__*, i32, i32, i8* }
%struct.TYPE_45__ = type { %struct.TYPE_36__*, %struct.TYPE_46__* }
%struct.TYPE_36__ = type { i32, i8*, %struct.TYPE_43__*, i64, i64, i64, i32, i32 }
%struct.TYPE_46__ = type { i64, i32 }
%struct.TYPE_44__ = type { i64, %struct.TYPE_39__*, %struct.TYPE_40__*, %struct.TYPE_41__, i64, i32, i32, i32 }
%struct.TYPE_39__ = type { i32 }
%struct.TYPE_40__ = type { i32 }
%struct.TYPE_41__ = type { i64, i32* }
%struct.TYPE_42__ = type { i32, i8*, i64, i64, %struct.TYPE_38__*, %struct.TYPE_37__, i64, i64 }
%struct.TYPE_38__ = type { i32, i32, i64 }
%struct.TYPE_37__ = type { i64, i32* }
%struct.TYPE_35__ = type { i32, i32 }
%struct.TYPE_34__ = type { %struct.TYPE_45__* }

@ngx_http_proxy_connect_module = common dso_local global i32 0, align 4
@NGX_HTTP_CONNECT = common dso_local global i64 0, align 8
@NGX_DECLINED = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"proxy_connect: connect handler: parse url: %V\00", align 1
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"proxy_connect: %s in connect host \22%V\22\00", align 1
@NGX_HTTP_FORBIDDEN = common dso_local global i64 0, align 8
@ngx_http_proxy_connect_rd_check_broken_connection = common dso_local global i32 0, align 4
@ngx_http_proxy_connect_wr_check_broken_connection = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"proxy_connect: upstream address given directly\00", align 1
@NGX_DONE = common dso_local global i64 0, align 8
@ngx_http_core_module = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"proxy_connect: failed to start the resolver\00", align 1
@NGX_NO_RESOLVER = common dso_local global %struct.TYPE_43__* null, align 8
@.str.4 = private unnamed_addr constant [49 x i8] c"proxy_connect: no resolver defined to resolve %V\00", align 1
@NGX_HTTP_BAD_GATEWAY = common dso_local global i64 0, align 8
@NGX_RESOLVE_A = common dso_local global i32 0, align 4
@ngx_http_proxy_connect_resolve_handler = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"proxy_connect: fail to run resolver immediately\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_44__*)* @ngx_http_proxy_connect_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_proxy_connect_handler(%struct.TYPE_44__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_44__*, align 8
  %4 = alloca %struct.TYPE_42__, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_43__*, align 8
  %7 = alloca %struct.TYPE_43__, align 8
  %8 = alloca %struct.TYPE_35__*, align 8
  %9 = alloca %struct.TYPE_34__*, align 8
  %10 = alloca %struct.TYPE_45__*, align 8
  %11 = alloca %struct.TYPE_46__*, align 8
  %12 = alloca i8**, align 8
  store %struct.TYPE_44__* %0, %struct.TYPE_44__** %3, align 8
  %13 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %14 = load i32, i32* @ngx_http_proxy_connect_module, align 4
  %15 = call i8* @ngx_http_get_module_loc_conf(%struct.TYPE_44__* %13, i32 %14)
  %16 = bitcast i8* %15 to %struct.TYPE_46__*
  store %struct.TYPE_46__* %16, %struct.TYPE_46__** %11, align 8
  %17 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NGX_HTTP_CONNECT, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %1
  %23 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22, %1
  %28 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %28, i64* %2, align 8
  br label %349

29:                                               ; preds = %22
  %30 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %31 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %32 = call i64 @ngx_http_proxy_connect_allow_handler(%struct.TYPE_44__* %30, %struct.TYPE_46__* %31)
  store i64 %32, i64* %5, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @NGX_OK, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i64, i64* %5, align 8
  store i64 %37, i64* %2, align 8
  br label %349

38:                                               ; preds = %29
  %39 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %40 = load i32, i32* @ngx_http_proxy_connect_module, align 4
  %41 = call %struct.TYPE_34__* @ngx_http_get_module_ctx(%struct.TYPE_44__* %39, i32 %40)
  store %struct.TYPE_34__* %41, %struct.TYPE_34__** %9, align 8
  %42 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %43 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %44 = call i64 @ngx_http_proxy_connect_upstream_create(%struct.TYPE_44__* %42, %struct.TYPE_34__* %43)
  %45 = load i64, i64* @NGX_OK, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %48, i64* %2, align 8
  br label %349

49:                                               ; preds = %38
  %50 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_45__*, %struct.TYPE_45__** %51, align 8
  store %struct.TYPE_45__* %52, %struct.TYPE_45__** %10, align 8
  %53 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %54 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %54, i32 0, i32 1
  store %struct.TYPE_46__* %53, %struct.TYPE_46__** %55, align 8
  %56 = call i32 @ngx_memzero(%struct.TYPE_42__* %4, i32 72)
  %57 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %96

61:                                               ; preds = %49
  %62 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %63 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %4, i32 0, i32 5
  %67 = call i64 @ngx_http_complex_value(%struct.TYPE_44__* %62, i64 %65, %struct.TYPE_37__* %66)
  %68 = load i64, i64* @NGX_OK, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %71, i64* %2, align 8
  br label %349

72:                                               ; preds = %61
  %73 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %4, i32 0, i32 5
  %74 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %4, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %95

82:                                               ; preds = %77, %72
  %83 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %4, i32 0, i32 5
  %88 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  %89 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %4, i32 0, i32 5
  %94 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %93, i32 0, i32 1
  store i32* %92, i32** %94, align 8
  br label %95

95:                                               ; preds = %82, %77
  br label %109

96:                                               ; preds = %49
  %97 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %4, i32 0, i32 5
  %102 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %101, i32 0, i32 0
  store i64 %100, i64* %102, align 8
  %103 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %4, i32 0, i32 5
  %108 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %107, i32 0, i32 1
  store i32* %106, i32** %108, align 8
  br label %109

109:                                              ; preds = %96, %95
  %110 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %4, i32 0, i32 7
  store i64 %112, i64* %113, align 8
  %114 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %4, i32 0, i32 0
  store i32 1, i32* %114, align 8
  %115 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %116 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_40__*, %struct.TYPE_40__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %4, i32 0, i32 5
  %122 = call i32 @ngx_log_debug1(i32 %115, i32 %120, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), %struct.TYPE_37__* %121)
  %123 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 8
  %126 = call i64 @ngx_parse_url(i32 %125, %struct.TYPE_42__* %4)
  %127 = load i64, i64* @NGX_OK, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %147

129:                                              ; preds = %109
  %130 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %4, i32 0, i32 6
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %145

133:                                              ; preds = %129
  %134 = load i32, i32* @NGX_LOG_ERR, align 4
  %135 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %135, i32 0, i32 2
  %137 = load %struct.TYPE_40__*, %struct.TYPE_40__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %4, i32 0, i32 6
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %4, i32 0, i32 5
  %143 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %134, i32 %139, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %141, %struct.TYPE_37__* %142)
  %144 = load i64, i64* @NGX_HTTP_FORBIDDEN, align 8
  store i64 %144, i64* %2, align 8
  br label %349

145:                                              ; preds = %129
  %146 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %146, i64* %2, align 8
  br label %349

147:                                              ; preds = %109
  %148 = load i32, i32* @ngx_http_proxy_connect_rd_check_broken_connection, align 4
  %149 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %149, i32 0, i32 7
  store i32 %148, i32* %150, align 8
  %151 = load i32, i32* @ngx_http_proxy_connect_wr_check_broken_connection, align 4
  %152 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %152, i32 0, i32 6
  store i32 %151, i32* %153, align 4
  %154 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 8
  %157 = call %struct.TYPE_36__* @ngx_pcalloc(i32 %156, i32 4)
  %158 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %158, i32 0, i32 0
  store %struct.TYPE_36__* %157, %struct.TYPE_36__** %159, align 8
  %160 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_36__*, %struct.TYPE_36__** %161, align 8
  %163 = icmp eq %struct.TYPE_36__* %162, null
  br i1 %163, label %164, label %166

164:                                              ; preds = %147
  %165 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %165, i64* %2, align 8
  br label %349

166:                                              ; preds = %147
  %167 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %4, i32 0, i32 4
  %168 = load %struct.TYPE_38__*, %struct.TYPE_38__** %167, align 8
  %169 = icmp ne %struct.TYPE_38__* %168, null
  br i1 %169, label %170, label %200

170:                                              ; preds = %166
  %171 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %172 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %172, i32 0, i32 2
  %174 = load %struct.TYPE_40__*, %struct.TYPE_40__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @ngx_log_debug0(i32 %171, i32 %176, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %178 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %4, i32 0, i32 4
  %179 = load %struct.TYPE_38__*, %struct.TYPE_38__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %179, i64 0
  %181 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_36__*, %struct.TYPE_36__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %185, i32 0, i32 3
  store i64 %182, i64* %186, align 8
  %187 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %4, i32 0, i32 4
  %188 = load %struct.TYPE_38__*, %struct.TYPE_38__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %188, i64 0
  %190 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_36__*, %struct.TYPE_36__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %194, i32 0, i32 7
  store i32 %191, i32* %195, align 4
  %196 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %197 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_36__*, %struct.TYPE_36__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %198, i32 0, i32 0
  store i32 1, i32* %199, align 8
  br label %200

200:                                              ; preds = %170, %166
  %201 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %4, i32 0, i32 1
  %202 = load i8*, i8** %201, align 8
  %203 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %204 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_36__*, %struct.TYPE_36__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %205, i32 0, i32 1
  store i8* %202, i8** %206, align 8
  %207 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %4, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %200
  %211 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %211, i32 0, i32 4
  %213 = load i64, i64* %212, align 8
  br label %217

214:                                              ; preds = %200
  %215 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %4, i32 0, i32 3
  %216 = load i64, i64* %215, align 8
  br label %217

217:                                              ; preds = %214, %210
  %218 = phi i64 [ %213, %210 ], [ %216, %214 ]
  %219 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %220 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %219, i32 0, i32 0
  %221 = load %struct.TYPE_36__*, %struct.TYPE_36__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %221, i32 0, i32 5
  store i64 %218, i64* %222, align 8
  %223 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %4, i32 0, i32 2
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %226 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %225, i32 0, i32 0
  %227 = load %struct.TYPE_36__*, %struct.TYPE_36__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %227, i32 0, i32 4
  store i64 %224, i64* %228, align 8
  %229 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %230 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %229, i32 0, i32 0
  %231 = load %struct.TYPE_36__*, %struct.TYPE_36__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %231, i32 0, i32 3
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %255

235:                                              ; preds = %217
  %236 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %237 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %238 = call i64 @ngx_http_proxy_connect_sock_ntop(%struct.TYPE_44__* %236, %struct.TYPE_45__* %237)
  store i64 %238, i64* %5, align 8
  %239 = load i64, i64* %5, align 8
  %240 = load i64, i64* @NGX_OK, align 8
  %241 = icmp ne i64 %239, %240
  br i1 %241, label %242, label %244

242:                                              ; preds = %235
  %243 = load i64, i64* %5, align 8
  store i64 %243, i64* %2, align 8
  br label %349

244:                                              ; preds = %235
  %245 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %245, i32 0, i32 1
  %247 = load %struct.TYPE_39__*, %struct.TYPE_39__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %248, align 4
  %251 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %252 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %253 = call i32 @ngx_http_proxy_connect_process_connect(%struct.TYPE_44__* %251, %struct.TYPE_45__* %252)
  %254 = load i64, i64* @NGX_DONE, align 8
  store i64 %254, i64* %2, align 8
  br label %349

255:                                              ; preds = %217
  %256 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %4, i32 0, i32 1
  store i8** %256, i8*** %12, align 8
  %257 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %258 = load i32, i32* @ngx_http_core_module, align 4
  %259 = call i8* @ngx_http_get_module_loc_conf(%struct.TYPE_44__* %257, i32 %258)
  %260 = bitcast i8* %259 to %struct.TYPE_35__*
  store %struct.TYPE_35__* %260, %struct.TYPE_35__** %8, align 8
  %261 = load i8**, i8*** %12, align 8
  %262 = load i8*, i8** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %7, i32 0, i32 4
  store i8* %262, i8** %263, align 8
  %264 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %265 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = call %struct.TYPE_43__* @ngx_resolve_start(i32 %266, %struct.TYPE_43__* %7)
  store %struct.TYPE_43__* %267, %struct.TYPE_43__** %6, align 8
  %268 = load %struct.TYPE_43__*, %struct.TYPE_43__** %6, align 8
  %269 = icmp eq %struct.TYPE_43__* %268, null
  br i1 %269, label %270, label %279

270:                                              ; preds = %255
  %271 = load i32, i32* @NGX_LOG_ERR, align 4
  %272 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %273 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %272, i32 0, i32 2
  %274 = load %struct.TYPE_40__*, %struct.TYPE_40__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %271, i32 %276, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %278 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %278, i64* %2, align 8
  br label %349

279:                                              ; preds = %255
  %280 = load %struct.TYPE_43__*, %struct.TYPE_43__** %6, align 8
  %281 = load %struct.TYPE_43__*, %struct.TYPE_43__** @NGX_NO_RESOLVER, align 8
  %282 = icmp eq %struct.TYPE_43__* %280, %281
  br i1 %282, label %283, label %294

283:                                              ; preds = %279
  %284 = load i32, i32* @NGX_LOG_ERR, align 4
  %285 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %286 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %285, i32 0, i32 2
  %287 = load %struct.TYPE_40__*, %struct.TYPE_40__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %291 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %290, i32 0, i32 3
  %292 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %284, i32 %289, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_41__* %291)
  %293 = load i64, i64* @NGX_HTTP_BAD_GATEWAY, align 8
  store i64 %293, i64* %2, align 8
  br label %349

294:                                              ; preds = %279
  %295 = load i8**, i8*** %12, align 8
  %296 = load i8*, i8** %295, align 8
  %297 = load %struct.TYPE_43__*, %struct.TYPE_43__** %6, align 8
  %298 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %297, i32 0, i32 4
  store i8* %296, i8** %298, align 8
  %299 = load i32, i32* @NGX_RESOLVE_A, align 4
  %300 = load %struct.TYPE_43__*, %struct.TYPE_43__** %6, align 8
  %301 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %300, i32 0, i32 3
  store i32 %299, i32* %301, align 4
  %302 = load i32, i32* @ngx_http_proxy_connect_resolve_handler, align 4
  %303 = load %struct.TYPE_43__*, %struct.TYPE_43__** %6, align 8
  %304 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %303, i32 0, i32 2
  store i32 %302, i32* %304, align 8
  %305 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %306 = load %struct.TYPE_43__*, %struct.TYPE_43__** %6, align 8
  %307 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %306, i32 0, i32 1
  store %struct.TYPE_45__* %305, %struct.TYPE_45__** %307, align 8
  %308 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %309 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 4
  %311 = load %struct.TYPE_43__*, %struct.TYPE_43__** %6, align 8
  %312 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %311, i32 0, i32 0
  store i32 %310, i32* %312, align 8
  %313 = load %struct.TYPE_43__*, %struct.TYPE_43__** %6, align 8
  %314 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %315 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %314, i32 0, i32 0
  %316 = load %struct.TYPE_36__*, %struct.TYPE_36__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %316, i32 0, i32 2
  store %struct.TYPE_43__* %313, %struct.TYPE_43__** %317, align 8
  %318 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %319 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %318, i32 0, i32 1
  %320 = load %struct.TYPE_39__*, %struct.TYPE_39__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %321, align 4
  %324 = load %struct.TYPE_43__*, %struct.TYPE_43__** %6, align 8
  %325 = call i64 @ngx_resolve_name(%struct.TYPE_43__* %324)
  %326 = load i64, i64* @NGX_OK, align 8
  %327 = icmp ne i64 %325, %326
  br i1 %327, label %328, label %347

328:                                              ; preds = %294
  %329 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %330 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %331 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %330, i32 0, i32 2
  %332 = load %struct.TYPE_40__*, %struct.TYPE_40__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = call i32 @ngx_log_debug0(i32 %329, i32 %334, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %336 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %337 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %336, i32 0, i32 0
  %338 = load %struct.TYPE_36__*, %struct.TYPE_36__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %338, i32 0, i32 2
  store %struct.TYPE_43__* null, %struct.TYPE_43__** %339, align 8
  %340 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %341 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %340, i32 0, i32 1
  %342 = load %struct.TYPE_39__*, %struct.TYPE_39__** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 4
  %345 = add nsw i32 %344, -1
  store i32 %345, i32* %343, align 4
  %346 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %346, i64* %2, align 8
  br label %349

347:                                              ; preds = %294
  %348 = load i64, i64* @NGX_DONE, align 8
  store i64 %348, i64* %2, align 8
  br label %349

349:                                              ; preds = %347, %328, %283, %270, %244, %242, %164, %145, %133, %70, %47, %36, %27
  %350 = load i64, i64* %2, align 8
  ret i64 %350
}

declare dso_local i8* @ngx_http_get_module_loc_conf(%struct.TYPE_44__*, i32) #1

declare dso_local i64 @ngx_http_proxy_connect_allow_handler(%struct.TYPE_44__*, %struct.TYPE_46__*) #1

declare dso_local %struct.TYPE_34__* @ngx_http_get_module_ctx(%struct.TYPE_44__*, i32) #1

declare dso_local i64 @ngx_http_proxy_connect_upstream_create(%struct.TYPE_44__*, %struct.TYPE_34__*) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_42__*, i32) #1

declare dso_local i64 @ngx_http_complex_value(%struct.TYPE_44__*, i64, %struct.TYPE_37__*) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, %struct.TYPE_37__*) #1

declare dso_local i64 @ngx_parse_url(i32, %struct.TYPE_42__*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, ...) #1

declare dso_local %struct.TYPE_36__* @ngx_pcalloc(i32, i32) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i64 @ngx_http_proxy_connect_sock_ntop(%struct.TYPE_44__*, %struct.TYPE_45__*) #1

declare dso_local i32 @ngx_http_proxy_connect_process_connect(%struct.TYPE_44__*, %struct.TYPE_45__*) #1

declare dso_local %struct.TYPE_43__* @ngx_resolve_start(i32, %struct.TYPE_43__*) #1

declare dso_local i64 @ngx_resolve_name(%struct.TYPE_43__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
