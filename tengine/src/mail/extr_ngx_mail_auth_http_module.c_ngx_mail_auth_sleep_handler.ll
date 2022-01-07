; ModuleID = '/home/carl/AnghaBench/tengine/src/mail/extr_ngx_mail_auth_http_module.c_ngx_mail_auth_sleep_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/src/mail/extr_ngx_mail_auth_http_module.c_ngx_mail_auth_sleep_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i32 (%struct.TYPE_19__*)*, i64, i64, %struct.TYPE_20__*, i32 }
%struct.TYPE_20__ = type { i64, i32, %struct.TYPE_16__*, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { i8* }
%struct.TYPE_17__ = type { i32, i64, i64 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_19__*)* }

@NGX_LOG_DEBUG_MAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"mail auth sleep handler\00", align 1
@ngx_mail_core_module = common dso_local global i32 0, align 4
@NGX_MAIL_AUTH_PLAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"in auth state\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*)* @ngx_mail_auth_sleep_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_mail_auth_sleep_handler(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %6 = load i32, i32* @NGX_LOG_DEBUG_MAIL, align 4
  %7 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @ngx_log_debug0(i32 %6, i32 %9, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 4
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  store %struct.TYPE_20__* %13, %struct.TYPE_20__** %3, align 8
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  store %struct.TYPE_17__* %16, %struct.TYPE_17__** %4, align 8
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %87

21:                                               ; preds = %1
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 3
  store i64 0, i64* %23, align 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %32 = call i32 @ngx_mail_auth_http_init(%struct.TYPE_17__* %31)
  br label %101

33:                                               ; preds = %21
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %35 = load i32, i32* @ngx_mail_core_module, align 4
  %36 = call %struct.TYPE_18__* @ngx_mail_get_module_srv_conf(%struct.TYPE_17__* %34, i32 %35)
  store %struct.TYPE_18__* %36, %struct.TYPE_18__** %5, align 8
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load i32 (%struct.TYPE_19__*)*, i32 (%struct.TYPE_19__*)** %40, align 8
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 1
  store i32 (%struct.TYPE_19__*)* %41, i32 (%struct.TYPE_19__*)** %43, align 8
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* @NGX_MAIL_AUTH_PLAIN, align 4
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %52, align 8
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @ngx_mail_send(i32 %55)
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %33
  br label %101

62:                                               ; preds = %33
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @ngx_add_timer(%struct.TYPE_19__* %63, i32 %66)
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %62
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 1
  %75 = load i32 (%struct.TYPE_19__*)*, i32 (%struct.TYPE_19__*)** %74, align 8
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %77 = call i32 %75(%struct.TYPE_19__* %76)
  br label %101

78:                                               ; preds = %62
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %80 = call i64 @ngx_handle_read_event(%struct.TYPE_19__* %79, i32 0)
  %81 = load i64, i64* @NGX_OK, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %85 = call i32 @ngx_mail_close_connection(%struct.TYPE_20__* %84)
  br label %86

86:                                               ; preds = %83, %78
  br label %101

87:                                               ; preds = %1
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %87
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %94 = call i64 @ngx_handle_read_event(%struct.TYPE_19__* %93, i32 0)
  %95 = load i64, i64* @NGX_OK, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %99 = call i32 @ngx_mail_close_connection(%struct.TYPE_20__* %98)
  br label %100

100:                                              ; preds = %97, %92
  br label %101

101:                                              ; preds = %28, %61, %72, %86, %100, %87
  ret void
}

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_mail_auth_http_init(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_18__* @ngx_mail_get_module_srv_conf(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @ngx_mail_send(i32) #1

declare dso_local i32 @ngx_add_timer(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @ngx_handle_read_event(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @ngx_mail_close_connection(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
