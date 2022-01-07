; ModuleID = '/home/carl/AnghaBench/tengine/src/mail/extr_ngx_mail_smtp_handler.c_ngx_mail_smtp_resolve_addr_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/src/mail/extr_ngx_mail_smtp_handler.c_ngx_mail_smtp_resolve_addr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32* }
%struct.TYPE_17__ = type { i64, %struct.TYPE_21__, %struct.TYPE_18__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_20__, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_22__*, %struct.TYPE_16__*, i32, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_16__ = type { i8* }

@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"%V could not be resolved (%i: %s)\00", align 1
@NGX_RESOLVE_NXDOMAIN = common dso_local global i64 0, align 8
@smtp_unavailable = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@smtp_tempunavail = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"in resolving client hostname\00", align 1
@NGX_LOG_DEBUG_MAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"address resolved: %V\00", align 1
@ngx_mail_smtp_resolve_name = common dso_local global i32 0, align 4
@ngx_posted_events = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*)* @ngx_mail_smtp_resolve_addr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_mail_smtp_resolve_addr_handler(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %5 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 2
  %7 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_18__* %7, %struct.TYPE_18__** %4, align 8
  %8 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  store %struct.TYPE_19__* %10, %struct.TYPE_19__** %3, align 8
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %51

15:                                               ; preds = %1
  %16 = load i32, i32* @NGX_LOG_ERR, align 4
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @ngx_resolver_strerror(i64 %27)
  %29 = call i32 @ngx_log_error(i32 %16, %struct.TYPE_16__* %19, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32* %21, i64 %24, i32 %28)
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @NGX_RESOLVE_NXDOMAIN, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %15
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = bitcast %struct.TYPE_20__* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 bitcast (%struct.TYPE_20__* @smtp_unavailable to i8*), i64 16, i1 false)
  br label %43

39:                                               ; preds = %15
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %42 = bitcast %struct.TYPE_20__* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 bitcast (%struct.TYPE_20__* @smtp_tempunavail to i8*), i64 16, i1 false)
  br label %43

43:                                               ; preds = %39, %35
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %45 = call i32 @ngx_resolve_addr_done(%struct.TYPE_17__* %44)
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %48, align 8
  %50 = call i32 @ngx_mail_smtp_greeting(%struct.TYPE_18__* %46, %struct.TYPE_19__* %49)
  br label %101

51:                                               ; preds = %1
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8** %55, align 8
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 1
  %61 = call i32* @ngx_pstrdup(i32 %58, %struct.TYPE_21__* %60)
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 1
  store i32* %61, i32** %64, align 8
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %51
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %72 = call i32 @ngx_resolve_addr_done(%struct.TYPE_17__* %71)
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %74 = call i32 @ngx_mail_close_connection(%struct.TYPE_19__* %73)
  br label %101

75:                                               ; preds = %51
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 8
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %84 = call i32 @ngx_resolve_addr_done(%struct.TYPE_17__* %83)
  %85 = load i32, i32* @NGX_LOG_DEBUG_MAIL, align 4
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %87, align 8
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 0
  %91 = call i32 @ngx_log_debug1(i32 %85, %struct.TYPE_16__* %88, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_20__* %90)
  %92 = load i32, i32* @ngx_mail_smtp_resolve_name, align 4
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 0
  store i32 %92, i32* %96, align 4
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %98, align 8
  %100 = call i32 @ngx_post_event(%struct.TYPE_22__* %99, i32* @ngx_posted_events)
  br label %101

101:                                              ; preds = %75, %70, %43
  ret void
}

declare dso_local i32 @ngx_log_error(i32, %struct.TYPE_16__*, i32, i8*, i32*, i64, i32) #1

declare dso_local i32 @ngx_resolver_strerror(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ngx_resolve_addr_done(%struct.TYPE_17__*) #1

declare dso_local i32 @ngx_mail_smtp_greeting(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32* @ngx_pstrdup(i32, %struct.TYPE_21__*) #1

declare dso_local i32 @ngx_mail_close_connection(%struct.TYPE_19__*) #1

declare dso_local i32 @ngx_log_debug1(i32, %struct.TYPE_16__*, i32, i8*, %struct.TYPE_20__*) #1

declare dso_local i32 @ngx_post_event(%struct.TYPE_22__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
