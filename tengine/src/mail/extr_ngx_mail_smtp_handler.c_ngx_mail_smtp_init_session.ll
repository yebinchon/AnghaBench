; ModuleID = '/home/carl/AnghaBench/tengine/src/mail/extr_ngx_mail_smtp_handler.c_ngx_mail_smtp_init_session.c'
source_filename = "/home/carl/AnghaBench/tengine/src/mail/extr_ngx_mail_smtp_handler.c_ngx_mail_smtp_init_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_22__*, i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_23__*, i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_25__ = type { %struct.TYPE_21__*, i32, %struct.TYPE_19__*, %struct.TYPE_18__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_18__ = type { i8* }
%struct.TYPE_24__ = type { i32, i32* }

@ngx_mail_core_module = common dso_local global i32 0, align 4
@smtp_unavailable = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"in resolving client address\00", align 1
@ngx_mail_smtp_resolve_addr_handler = common dso_local global i32 0, align 4
@ngx_mail_smtp_block_reading = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@AF_UNIX = common dso_local global i64 0, align 8
@smtp_tempunavail = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_mail_smtp_init_session(%struct.TYPE_23__* %0, %struct.TYPE_25__* %1) #0 {
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %4, align 8
  %7 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %8 = load i32, i32* @ngx_mail_core_module, align 4
  %9 = call %struct.TYPE_24__* @ngx_mail_get_module_srv_conf(%struct.TYPE_23__* %7, i32 %8)
  store %struct.TYPE_24__* %9, %struct.TYPE_24__** %6, align 8
  %10 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load i32, i32* @smtp_unavailable, align 4
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %20 = call i32 @ngx_mail_smtp_greeting(%struct.TYPE_23__* %18, %struct.TYPE_25__* %19)
  br label %74

21:                                               ; preds = %2
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8** %25, align 8
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = call %struct.TYPE_22__* @ngx_resolve_start(i32* %28, i32* null)
  store %struct.TYPE_22__* %29, %struct.TYPE_22__** %5, align 8
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %31 = icmp eq %struct.TYPE_22__* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %21
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %34 = call i32 @ngx_mail_close_connection(%struct.TYPE_25__* %33)
  br label %74

35:                                               ; preds = %21
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %37, align 8
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 1
  store %struct.TYPE_19__* %38, %struct.TYPE_19__** %41, align 8
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  %48 = load i32, i32* @ngx_mail_smtp_resolve_addr_handler, align 4
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 1
  store %struct.TYPE_23__* %51, %struct.TYPE_23__** %53, align 8
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 0
  store %struct.TYPE_22__* %59, %struct.TYPE_22__** %61, align 8
  %62 = load i32, i32* @ngx_mail_smtp_block_reading, align 4
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 0
  store i32 %62, i32* %66, align 4
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %68 = call i64 @ngx_resolve_addr(%struct.TYPE_22__* %67)
  %69 = load i64, i64* @NGX_OK, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %35
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %73 = call i32 @ngx_mail_close_connection(%struct.TYPE_25__* %72)
  br label %74

74:                                               ; preds = %14, %32, %71, %35
  ret void
}

declare dso_local %struct.TYPE_24__* @ngx_mail_get_module_srv_conf(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @ngx_mail_smtp_greeting(%struct.TYPE_23__*, %struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_22__* @ngx_resolve_start(i32*, i32*) #1

declare dso_local i32 @ngx_mail_close_connection(%struct.TYPE_25__*) #1

declare dso_local i64 @ngx_resolve_addr(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
