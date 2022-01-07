; ModuleID = '/home/carl/AnghaBench/tengine/src/mail/extr_ngx_mail_smtp_handler.c_ngx_mail_smtp_invalid_pipelining.c'
source_filename = "/home/carl/AnghaBench/tengine/src/mail/extr_ngx_mail_smtp_handler.c_ngx_mail_smtp_invalid_pipelining.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, %struct.TYPE_16__*, %struct.TYPE_17__*, %struct.TYPE_19__* }
%struct.TYPE_16__ = type { i8* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32, i32* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_18__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"in delay pipelining state\00", align 1
@NGX_LOG_DEBUG_MAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"delay greeting\00", align 1
@ngx_mail_core_module = common dso_local global i32 0, align 4
@ngx_mail_smtp_init_protocol = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@ngx_mail_smtp_module = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"invalid pipelining\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"client was rejected before greeting: \22%V\22\00", align 1
@smtp_invalid_pipelining = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*)* @ngx_mail_smtp_invalid_pipelining to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_mail_smtp_invalid_pipelining(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  %7 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  store %struct.TYPE_22__* %9, %struct.TYPE_22__** %3, align 8
  %10 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  store %struct.TYPE_19__* %12, %struct.TYPE_19__** %4, align 8
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %64

21:                                               ; preds = %1
  %22 = load i32, i32* @NGX_LOG_DEBUG_MAIL, align 4
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %26 = call i32 @ngx_log_debug0(i32 %22, %struct.TYPE_16__* %25, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %30 = load i32, i32* @ngx_mail_core_module, align 4
  %31 = call i8* @ngx_mail_get_module_srv_conf(%struct.TYPE_19__* %29, i32 %30)
  %32 = bitcast i8* %31 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %32, %struct.TYPE_20__** %5, align 8
  %33 = load i32, i32* @ngx_mail_smtp_init_protocol, align 4
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  store i32 %33, i32* %37, align 4
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %39, align 8
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ngx_add_timer(%struct.TYPE_17__* %40, i32 %43)
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %46, align 8
  %48 = call i64 @ngx_handle_read_event(%struct.TYPE_17__* %47, i32 0)
  %49 = load i64, i64* @NGX_OK, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %21
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %53 = call i32 @ngx_mail_close_connection(%struct.TYPE_22__* %52)
  br label %101

54:                                               ; preds = %21
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %56 = load i32, i32* @ngx_mail_smtp_module, align 4
  %57 = call i8* @ngx_mail_get_module_srv_conf(%struct.TYPE_19__* %55, i32 %56)
  %58 = bitcast i8* %57 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %58, %struct.TYPE_18__** %6, align 8
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  br label %96

64:                                               ; preds = %1
  %65 = load i32, i32* @NGX_LOG_DEBUG_MAIL, align 4
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %67, align 8
  %69 = call i32 @ngx_log_debug0(i32 %65, %struct.TYPE_16__* %68, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %82

74:                                               ; preds = %64
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %77 = call i64 @ngx_mail_smtp_create_buffer(%struct.TYPE_19__* %75, %struct.TYPE_22__* %76)
  %78 = load i64, i64* @NGX_OK, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %101

81:                                               ; preds = %74
  br label %82

82:                                               ; preds = %81, %64
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %85 = call i64 @ngx_mail_smtp_discard_command(%struct.TYPE_19__* %83, %struct.TYPE_22__* %84, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %86 = load i64, i64* @NGX_OK, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %101

89:                                               ; preds = %82
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 1
  %92 = load i32, i32* @smtp_invalid_pipelining, align 4
  %93 = call i32 @ngx_str_set(i32* %91, i32 %92)
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 0
  store i32 1, i32* %95, align 8
  br label %96

96:                                               ; preds = %89, %54
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @ngx_mail_send(i32 %99)
  br label %101

101:                                              ; preds = %96, %88, %80, %51
  ret void
}

declare dso_local i32 @ngx_log_debug0(i32, %struct.TYPE_16__*, i32, i8*) #1

declare dso_local i8* @ngx_mail_get_module_srv_conf(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @ngx_add_timer(%struct.TYPE_17__*, i32) #1

declare dso_local i64 @ngx_handle_read_event(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @ngx_mail_close_connection(%struct.TYPE_22__*) #1

declare dso_local i64 @ngx_mail_smtp_create_buffer(%struct.TYPE_19__*, %struct.TYPE_22__*) #1

declare dso_local i64 @ngx_mail_smtp_discard_command(%struct.TYPE_19__*, %struct.TYPE_22__*, i8*) #1

declare dso_local i32 @ngx_str_set(i32*, i32) #1

declare dso_local i32 @ngx_mail_send(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
