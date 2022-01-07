; ModuleID = '/home/carl/AnghaBench/tengine/src/mail/extr_ngx_mail_imap_handler.c_ngx_mail_imap_init_protocol.c'
source_filename = "/home/carl/AnghaBench/tengine/src/mail/extr_ngx_mail_imap_handler.c_ngx_mail_imap_init_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_14__*, i32, %struct.TYPE_15__*, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_17__*)* }
%struct.TYPE_15__ = type { i32, i32*, i32 }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_16__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"in auth state\00", align 1
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@NGX_ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"client timed out\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_mail_imap_module = common dso_local global i32 0, align 4
@ngx_imap_start = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_mail_imap_init_protocol(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %6 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  store %struct.TYPE_18__* %8, %struct.TYPE_18__** %3, align 8
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 4
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %1
  %18 = load i32, i32* @NGX_LOG_INFO, align 4
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 4
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %22 = load i32, i32* @NGX_ETIMEDOUT, align 4
  %23 = call i32 @ngx_log_error(i32 %18, %struct.TYPE_13__* %21, i32 %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %27 = call i32 @ngx_mail_close_connection(%struct.TYPE_18__* %26)
  br label %79

28:                                               ; preds = %1
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 3
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %30, align 8
  store %struct.TYPE_15__* %31, %struct.TYPE_15__** %4, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %69

36:                                               ; preds = %28
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @ngx_array_init(i32* %38, i32 %41, i32 2, i32 4)
  %43 = load i64, i64* @NGX_ERROR, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %47 = call i32 @ngx_mail_session_internal_server_error(%struct.TYPE_15__* %46)
  br label %79

48:                                               ; preds = %36
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %50 = load i32, i32* @ngx_mail_imap_module, align 4
  %51 = call %struct.TYPE_16__* @ngx_mail_get_module_srv_conf(%struct.TYPE_15__* %49, i32 %50)
  store %struct.TYPE_16__* %51, %struct.TYPE_16__** %5, align 8
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32* @ngx_create_temp_buf(i32 %54, i32 %57)
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  store i32* %58, i32** %60, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %48
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %67 = call i32 @ngx_mail_session_internal_server_error(%struct.TYPE_15__* %66)
  br label %79

68:                                               ; preds = %48
  br label %69

69:                                               ; preds = %68, %28
  %70 = load i32, i32* @ngx_imap_start, align 4
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  store i32 (%struct.TYPE_17__*)* @ngx_mail_imap_auth_state, i32 (%struct.TYPE_17__*)** %76, align 8
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %78 = call i32 @ngx_mail_imap_auth_state(%struct.TYPE_17__* %77)
  br label %79

79:                                               ; preds = %69, %65, %45, %17
  ret void
}

declare dso_local i32 @ngx_log_error(i32, %struct.TYPE_13__*, i32, i8*) #1

declare dso_local i32 @ngx_mail_close_connection(%struct.TYPE_18__*) #1

declare dso_local i64 @ngx_array_init(i32*, i32, i32, i32) #1

declare dso_local i32 @ngx_mail_session_internal_server_error(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_16__* @ngx_mail_get_module_srv_conf(%struct.TYPE_15__*, i32) #1

declare dso_local i32* @ngx_create_temp_buf(i32, i32) #1

declare dso_local i32 @ngx_mail_imap_auth_state(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
