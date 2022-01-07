; ModuleID = '/home/carl/AnghaBench/tengine/src/mail/extr_ngx_mail_smtp_handler.c_ngx_mail_smtp_create_buffer.c'
source_filename = "/home/carl/AnghaBench/tengine/src/mail/extr_ngx_mail_smtp_handler.c_ngx_mail_smtp_create_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_mail_smtp_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_10__*, %struct.TYPE_11__*)* @ngx_mail_smtp_create_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_mail_smtp_create_buffer(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @ngx_array_init(i32* %8, i32 %11, i32 2, i32 4)
  %13 = load i64, i64* @NGX_ERROR, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = call i32 @ngx_mail_session_internal_server_error(%struct.TYPE_10__* %16)
  %18 = load i64, i64* @NGX_ERROR, align 8
  store i64 %18, i64* %3, align 8
  br label %42

19:                                               ; preds = %2
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = load i32, i32* @ngx_mail_smtp_module, align 4
  %22 = call %struct.TYPE_9__* @ngx_mail_get_module_srv_conf(%struct.TYPE_10__* %20, i32 %21)
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %6, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32* @ngx_create_temp_buf(i32 %25, i32 %28)
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  store i32* %29, i32** %31, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %19
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %38 = call i32 @ngx_mail_session_internal_server_error(%struct.TYPE_10__* %37)
  %39 = load i64, i64* @NGX_ERROR, align 8
  store i64 %39, i64* %3, align 8
  br label %42

40:                                               ; preds = %19
  %41 = load i64, i64* @NGX_OK, align 8
  store i64 %41, i64* %3, align 8
  br label %42

42:                                               ; preds = %40, %36, %15
  %43 = load i64, i64* %3, align 8
  ret i64 %43
}

declare dso_local i64 @ngx_array_init(i32*, i32, i32, i32) #1

declare dso_local i32 @ngx_mail_session_internal_server_error(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_9__* @ngx_mail_get_module_srv_conf(%struct.TYPE_10__*, i32) #1

declare dso_local i32* @ngx_create_temp_buf(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
