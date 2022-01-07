; ModuleID = '/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_realip_module.c_ngx_stream_realip_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_realip_module.c_ngx_stream_realip_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_12__, i32, i32 }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { i32* }

@ngx_stream_realip_module = common dso_local global i32 0, align 4
@NGX_DECLINED = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @ngx_stream_realip_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_stream_realip_handler(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_16__, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %8 = load i32, i32* @ngx_stream_realip_module, align 4
  %9 = call %struct.TYPE_14__* @ngx_stream_get_module_srv_conf(%struct.TYPE_13__* %7, i32 %8)
  store %struct.TYPE_14__* %9, %struct.TYPE_14__** %6, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @NGX_DECLINED, align 4
  store i32 %15, i32* %2, align 4
  br label %65

16:                                               ; preds = %1
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %5, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i32, i32* @NGX_DECLINED, align 4
  store i32 %26, i32* %2, align 4
  br label %65

27:                                               ; preds = %16
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i64 @ngx_cidr_match(i32 %30, i32* %33)
  %35 = load i64, i64* @NGX_OK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i32, i32* @NGX_DECLINED, align 4
  store i32 %38, i32* %2, align 4
  br label %65

39:                                               ; preds = %27
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @ngx_parse_addr(i32 %42, %struct.TYPE_16__* %4, i32 %46, i64 %50)
  %52 = load i64, i64* @NGX_OK, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %39
  %55 = load i32, i32* @NGX_DECLINED, align 4
  store i32 %55, i32* %2, align 4
  br label %65

56:                                               ; preds = %39
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @ngx_inet_set_port(i32 %58, i32 %61)
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %64 = call i32 @ngx_stream_realip_set_addr(%struct.TYPE_13__* %63, %struct.TYPE_16__* %4)
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %56, %54, %37, %25, %14
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.TYPE_14__* @ngx_stream_get_module_srv_conf(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @ngx_cidr_match(i32, i32*) #1

declare dso_local i64 @ngx_parse_addr(i32, %struct.TYPE_16__*, i32, i64) #1

declare dso_local i32 @ngx_inet_set_port(i32, i32) #1

declare dso_local i32 @ngx_stream_realip_set_addr(%struct.TYPE_13__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
