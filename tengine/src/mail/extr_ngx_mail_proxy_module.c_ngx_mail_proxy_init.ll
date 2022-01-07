; ModuleID = '/home/carl/AnghaBench/tengine/src/mail/extr_ngx_mail_proxy_module.c_ngx_mail_proxy_init.c'
source_filename = "/home/carl/AnghaBench/tengine/src/mail/extr_ngx_mail_proxy_module.c_ngx_mail_proxy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32, i32, %struct.TYPE_28__, %struct.TYPE_31__*, %struct.TYPE_27__* }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_31__ = type { %struct.TYPE_22__, i32* }
%struct.TYPE_22__ = type { %struct.TYPE_29__*, i32, %struct.TYPE_24__*, i32, i32*, i32, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_23__*, %struct.TYPE_26__*, i32, %struct.TYPE_30__* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_24__ = type { i8* }
%struct.TYPE_27__ = type { i32, %struct.TYPE_25__*, %struct.TYPE_24__* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32, i32 }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_20__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"connecting to upstream\00", align 1
@ngx_mail_core_module = common dso_local global i32 0, align 4
@ngx_event_get_peer = common dso_local global i32 0, align 4
@NGX_ERROR_ERR = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_BUSY = common dso_local global i64 0, align 8
@NGX_DECLINED = common dso_local global i64 0, align 8
@ngx_mail_proxy_block_read = common dso_local global i32 0, align 4
@ngx_mail_proxy_dummy_handler = common dso_local global i32 0, align 4
@ngx_mail_proxy_module = common dso_local global i32 0, align 4
@ngx_mail_proxy_pop3_handler = common dso_local global i32 0, align 4
@ngx_pop3_start = common dso_local global i32 0, align 4
@ngx_mail_proxy_imap_handler = common dso_local global i32 0, align 4
@ngx_imap_start = common dso_local global i32 0, align 4
@ngx_mail_proxy_smtp_handler = common dso_local global i32 0, align 4
@ngx_smtp_start = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_mail_proxy_init(%struct.TYPE_30__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca %struct.TYPE_30__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_31__*, align 8
  %7 = alloca %struct.TYPE_32__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %3, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %4, align 8
  %9 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %9, i32 0, i32 4
  %11 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %15 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %16 = load i32, i32* @ngx_mail_core_module, align 4
  %17 = call i8* @ngx_mail_get_module_srv_conf(%struct.TYPE_30__* %15, i32 %16)
  %18 = bitcast i8* %17 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %18, %struct.TYPE_20__** %8, align 8
  %19 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %19, i32 0, i32 4
  %21 = load %struct.TYPE_27__*, %struct.TYPE_27__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.TYPE_31__* @ngx_pcalloc(i32 %23, i32 56)
  store %struct.TYPE_31__* %24, %struct.TYPE_31__** %6, align 8
  %25 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %26 = icmp eq %struct.TYPE_31__* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %29 = call i32 @ngx_mail_session_internal_server_error(%struct.TYPE_30__* %28)
  br label %195

30:                                               ; preds = %2
  %31 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %32 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %32, i32 0, i32 3
  store %struct.TYPE_31__* %31, %struct.TYPE_31__** %33, align 8
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i32 0, i32 6
  store i32 %36, i32* %39, align 4
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 5
  store i32 %42, i32* %45, align 8
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 4
  store i32* %47, i32** %50, align 8
  %51 = load i32, i32* @ngx_event_get_peer, align 4
  %52 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 3
  store i32 %51, i32* %54, align 8
  %55 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %55, i32 0, i32 4
  %57 = load %struct.TYPE_27__*, %struct.TYPE_27__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %58, align 8
  %60 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 2
  store %struct.TYPE_24__* %59, %struct.TYPE_24__** %62, align 8
  %63 = load i32, i32* @NGX_ERROR_ERR, align 4
  %64 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 8
  %67 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %67, i32 0, i32 0
  %69 = call i64 @ngx_event_connect_peer(%struct.TYPE_22__* %68)
  store i64 %69, i64* %5, align 8
  %70 = load i64, i64* %5, align 8
  %71 = load i64, i64* @NGX_ERROR, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %81, label %73

73:                                               ; preds = %30
  %74 = load i64, i64* %5, align 8
  %75 = load i64, i64* @NGX_BUSY, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = load i64, i64* %5, align 8
  %79 = load i64, i64* @NGX_DECLINED, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %77, %73, %30
  %82 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %83 = call i32 @ngx_mail_proxy_internal_server_error(%struct.TYPE_30__* %82)
  br label %195

84:                                               ; preds = %77
  %85 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_29__*, %struct.TYPE_29__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %89, align 8
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @ngx_add_timer(%struct.TYPE_23__* %90, i32 %93)
  %95 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %96 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_29__*, %struct.TYPE_29__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %99, i32 0, i32 3
  store %struct.TYPE_30__* %95, %struct.TYPE_30__** %100, align 8
  %101 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %101, i32 0, i32 4
  %103 = load %struct.TYPE_27__*, %struct.TYPE_27__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_29__*, %struct.TYPE_29__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %109, i32 0, i32 2
  store i32 %105, i32* %110, align 8
  %111 = load i32, i32* @ngx_mail_proxy_block_read, align 4
  %112 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %112, i32 0, i32 4
  %114 = load %struct.TYPE_27__*, %struct.TYPE_27__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_25__*, %struct.TYPE_25__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %116, i32 0, i32 0
  store i32 %111, i32* %117, align 4
  %118 = load i32, i32* @ngx_mail_proxy_dummy_handler, align 4
  %119 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_29__*, %struct.TYPE_29__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_26__*, %struct.TYPE_26__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %124, i32 0, i32 0
  store i32 %118, i32* %125, align 4
  %126 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %127 = load i32, i32* @ngx_mail_proxy_module, align 4
  %128 = call i8* @ngx_mail_get_module_srv_conf(%struct.TYPE_30__* %126, i32 %127)
  %129 = bitcast i8* %128 to %struct.TYPE_32__*
  store %struct.TYPE_32__* %129, %struct.TYPE_32__** %7, align 8
  %130 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %130, i32 0, i32 4
  %132 = load %struct.TYPE_27__*, %struct.TYPE_27__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32* @ngx_create_temp_buf(i32 %134, i32 %137)
  %139 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %139, i32 0, i32 3
  %141 = load %struct.TYPE_31__*, %struct.TYPE_31__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %141, i32 0, i32 1
  store i32* %138, i32** %142, align 8
  %143 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %143, i32 0, i32 3
  %145 = load %struct.TYPE_31__*, %struct.TYPE_31__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = icmp eq i32* %147, null
  br i1 %148, label %149, label %152

149:                                              ; preds = %84
  %150 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %151 = call i32 @ngx_mail_proxy_internal_server_error(%struct.TYPE_30__* %150)
  br label %195

152:                                              ; preds = %84
  %153 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %154, i32 0, i32 0
  store i64 0, i64* %155, align 8
  %156 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  switch i32 %158, label %183 [
    i32 128, label %159
    i32 129, label %171
  ]

159:                                              ; preds = %152
  %160 = load i32, i32* @ngx_mail_proxy_pop3_handler, align 4
  %161 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_29__*, %struct.TYPE_29__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_23__*, %struct.TYPE_23__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %166, i32 0, i32 0
  store i32 %160, i32* %167, align 4
  %168 = load i32, i32* @ngx_pop3_start, align 4
  %169 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 4
  br label %195

171:                                              ; preds = %152
  %172 = load i32, i32* @ngx_mail_proxy_imap_handler, align 4
  %173 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_29__*, %struct.TYPE_29__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_23__*, %struct.TYPE_23__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %178, i32 0, i32 0
  store i32 %172, i32* %179, align 4
  %180 = load i32, i32* @ngx_imap_start, align 4
  %181 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %181, i32 0, i32 1
  store i32 %180, i32* %182, align 4
  br label %195

183:                                              ; preds = %152
  %184 = load i32, i32* @ngx_mail_proxy_smtp_handler, align 4
  %185 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_29__*, %struct.TYPE_29__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_23__*, %struct.TYPE_23__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %190, i32 0, i32 0
  store i32 %184, i32* %191, align 4
  %192 = load i32, i32* @ngx_smtp_start, align 4
  %193 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %193, i32 0, i32 1
  store i32 %192, i32* %194, align 4
  br label %195

195:                                              ; preds = %27, %81, %149, %183, %171, %159
  ret void
}

declare dso_local i8* @ngx_mail_get_module_srv_conf(%struct.TYPE_30__*, i32) #1

declare dso_local %struct.TYPE_31__* @ngx_pcalloc(i32, i32) #1

declare dso_local i32 @ngx_mail_session_internal_server_error(%struct.TYPE_30__*) #1

declare dso_local i64 @ngx_event_connect_peer(%struct.TYPE_22__*) #1

declare dso_local i32 @ngx_mail_proxy_internal_server_error(%struct.TYPE_30__*) #1

declare dso_local i32 @ngx_add_timer(%struct.TYPE_23__*, i32) #1

declare dso_local i32* @ngx_create_temp_buf(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
