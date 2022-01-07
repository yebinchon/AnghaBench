; ModuleID = '/home/carl/AnghaBench/tengine/src/mail/extr_ngx_mail_auth_http_module.c_ngx_mail_auth_http_init.c'
source_filename = "/home/carl/AnghaBench/tengine/src/mail/extr_ngx_mail_auth_http_module.c_ngx_mail_auth_http_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { %struct.TYPE_27__*, i32, %struct.TYPE_24__* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_24__ = type { i8* }
%struct.TYPE_30__ = type { %struct.TYPE_23__, i32, i32*, i32* }
%struct.TYPE_23__ = type { %struct.TYPE_26__*, i32, %struct.TYPE_24__*, i32, i32*, i32, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_22__*, %struct.TYPE_22__*, i32, %struct.TYPE_29__* }
%struct.TYPE_22__ = type { i32 (%struct.TYPE_22__*)* }
%struct.TYPE_31__ = type { i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"in http auth state\00", align 1
@ngx_mail_auth_http_module = common dso_local global i32 0, align 4
@ngx_event_get_peer = common dso_local global i32 0, align 4
@NGX_ERROR_ERR = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_BUSY = common dso_local global i64 0, align 8
@NGX_DECLINED = common dso_local global i64 0, align 8
@ngx_mail_auth_http_block_read = common dso_local global i32 0, align 4
@ngx_mail_auth_http_ignore_status_line = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_mail_auth_http_init(%struct.TYPE_29__* %0) #0 {
  %2 = alloca %struct.TYPE_29__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_30__*, align 8
  %6 = alloca %struct.TYPE_31__*, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %2, align 8
  %7 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %13 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %18 = call i32* @ngx_create_pool(i32 2048, %struct.TYPE_24__* %17)
  store i32* %18, i32** %4, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %23 = call i32 @ngx_mail_session_internal_server_error(%struct.TYPE_29__* %22)
  br label %207

24:                                               ; preds = %1
  %25 = load i32*, i32** %4, align 8
  %26 = call %struct.TYPE_30__* @ngx_pcalloc(i32* %25, i32 72)
  store %struct.TYPE_30__* %26, %struct.TYPE_30__** %5, align 8
  %27 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %28 = icmp eq %struct.TYPE_30__* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @ngx_destroy_pool(i32* %30)
  %32 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %33 = call i32 @ngx_mail_session_internal_server_error(%struct.TYPE_29__* %32)
  br label %207

34:                                               ; preds = %24
  %35 = load i32*, i32** %4, align 8
  %36 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %36, i32 0, i32 2
  store i32* %35, i32** %37, align 8
  %38 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %39 = load i32, i32* @ngx_mail_auth_http_module, align 4
  %40 = call %struct.TYPE_31__* @ngx_mail_get_module_srv_conf(%struct.TYPE_29__* %38, i32 %39)
  store %struct.TYPE_31__* %40, %struct.TYPE_31__** %6, align 8
  %41 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %44 = call i32* @ngx_mail_auth_http_create_request(%struct.TYPE_29__* %41, i32* %42, %struct.TYPE_31__* %43)
  %45 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %45, i32 0, i32 3
  store i32* %44, i32** %46, align 8
  %47 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %34
  %52 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @ngx_destroy_pool(i32* %54)
  %56 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %57 = call i32 @ngx_mail_session_internal_server_error(%struct.TYPE_29__* %56)
  br label %207

58:                                               ; preds = %34
  %59 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %60 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %61 = load i32, i32* @ngx_mail_auth_http_module, align 4
  %62 = call i32 @ngx_mail_set_ctx(%struct.TYPE_29__* %59, %struct.TYPE_30__* %60, i32 %61)
  %63 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 6
  store i32 %67, i32* %70, align 4
  %71 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 5
  store i32 %75, i32* %78, align 8
  %79 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 4
  store i32* %82, i32** %85, align 8
  %86 = load i32, i32* @ngx_event_get_peer, align 4
  %87 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 3
  store i32 %86, i32* %89, align 8
  %90 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_28__*, %struct.TYPE_28__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %93, align 8
  %95 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 2
  store %struct.TYPE_24__* %94, %struct.TYPE_24__** %97, align 8
  %98 = load i32, i32* @NGX_ERROR_ERR, align 4
  %99 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 1
  store i32 %98, i32* %101, align 8
  %102 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %102, i32 0, i32 0
  %104 = call i64 @ngx_event_connect_peer(%struct.TYPE_23__* %103)
  store i64 %104, i64* %3, align 8
  %105 = load i64, i64* %3, align 8
  %106 = load i64, i64* @NGX_ERROR, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %116, label %108

108:                                              ; preds = %58
  %109 = load i64, i64* %3, align 8
  %110 = load i64, i64* @NGX_BUSY, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %116, label %112

112:                                              ; preds = %108
  %113 = load i64, i64* %3, align 8
  %114 = load i64, i64* @NGX_DECLINED, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %135

116:                                              ; preds = %112, %108, %58
  %117 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_26__*, %struct.TYPE_26__** %119, align 8
  %121 = icmp ne %struct.TYPE_26__* %120, null
  br i1 %121, label %122, label %128

122:                                              ; preds = %116
  %123 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_26__*, %struct.TYPE_26__** %125, align 8
  %127 = call i32 @ngx_close_connection(%struct.TYPE_26__* %126)
  br label %128

128:                                              ; preds = %122, %116
  %129 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = call i32 @ngx_destroy_pool(i32* %131)
  %133 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %134 = call i32 @ngx_mail_session_internal_server_error(%struct.TYPE_29__* %133)
  br label %207

135:                                              ; preds = %112
  %136 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %137 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_26__*, %struct.TYPE_26__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %140, i32 0, i32 3
  store %struct.TYPE_29__* %136, %struct.TYPE_29__** %141, align 8
  %142 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_28__*, %struct.TYPE_28__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_26__*, %struct.TYPE_26__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %150, i32 0, i32 2
  store i32 %146, i32* %151, align 8
  %152 = load i32, i32* @ngx_mail_auth_http_block_read, align 4
  %153 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_28__*, %struct.TYPE_28__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_27__*, %struct.TYPE_27__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %157, i32 0, i32 0
  store i32 %152, i32* %158, align 4
  %159 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_26__*, %struct.TYPE_26__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 0
  store i32 (%struct.TYPE_22__*)* @ngx_mail_auth_http_read_handler, i32 (%struct.TYPE_22__*)** %165, align 8
  %166 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_26__*, %struct.TYPE_26__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %171, i32 0, i32 0
  store i32 (%struct.TYPE_22__*)* @ngx_mail_auth_http_write_handler, i32 (%struct.TYPE_22__*)** %172, align 8
  %173 = load i32, i32* @ngx_mail_auth_http_ignore_status_line, align 4
  %174 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %174, i32 0, i32 1
  store i32 %173, i32* %175, align 8
  %176 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_26__*, %struct.TYPE_26__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_22__*, %struct.TYPE_22__** %180, align 8
  %182 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @ngx_add_timer(%struct.TYPE_22__* %181, i32 %184)
  %186 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_26__*, %struct.TYPE_26__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_22__*, %struct.TYPE_22__** %190, align 8
  %192 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @ngx_add_timer(%struct.TYPE_22__* %191, i32 %194)
  %196 = load i64, i64* %3, align 8
  %197 = load i64, i64* @NGX_OK, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %207

199:                                              ; preds = %135
  %200 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_26__*, %struct.TYPE_26__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_22__*, %struct.TYPE_22__** %204, align 8
  %206 = call i32 @ngx_mail_auth_http_write_handler(%struct.TYPE_22__* %205)
  br label %207

207:                                              ; preds = %21, %29, %51, %128, %199, %135
  ret void
}

declare dso_local i32* @ngx_create_pool(i32, %struct.TYPE_24__*) #1

declare dso_local i32 @ngx_mail_session_internal_server_error(%struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_30__* @ngx_pcalloc(i32*, i32) #1

declare dso_local i32 @ngx_destroy_pool(i32*) #1

declare dso_local %struct.TYPE_31__* @ngx_mail_get_module_srv_conf(%struct.TYPE_29__*, i32) #1

declare dso_local i32* @ngx_mail_auth_http_create_request(%struct.TYPE_29__*, i32*, %struct.TYPE_31__*) #1

declare dso_local i32 @ngx_mail_set_ctx(%struct.TYPE_29__*, %struct.TYPE_30__*, i32) #1

declare dso_local i64 @ngx_event_connect_peer(%struct.TYPE_23__*) #1

declare dso_local i32 @ngx_close_connection(%struct.TYPE_26__*) #1

declare dso_local i32 @ngx_mail_auth_http_read_handler(%struct.TYPE_22__*) #1

declare dso_local i32 @ngx_mail_auth_http_write_handler(%struct.TYPE_22__*) #1

declare dso_local i32 @ngx_add_timer(%struct.TYPE_22__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
