; ModuleID = '/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_access_module.c_ngx_stream_access_inet.c'
source_filename = "/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_access_module.c_ngx_stream_access_inet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32 }

@NGX_LOG_DEBUG_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"access: %08XD %08XD %08XD\00", align 1
@NGX_DECLINED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_12__*, i32)* @ngx_stream_access_inet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_stream_access_inet(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %9, align 8
  store i64 0, i64* %8, align 8
  br label %15

15:                                               ; preds = %64, %3
  %16 = load i64, i64* %8, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %16, %21
  br i1 %22, label %23, label %67

23:                                               ; preds = %15
  %24 = load i32, i32* @NGX_LOG_DEBUG_STREAM, align 4
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %32 = load i64, i64* %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ngx_log_debug3(i32 %24, i32 %29, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %35, i32 %40)
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %44 = load i64, i64* %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %42, %47
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %50 = load i64, i64* %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %48, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %23
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %58 = load i64, i64* %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ngx_stream_access_found(%struct.TYPE_11__* %56, i32 %61)
  store i32 %62, i32* %4, align 4
  br label %69

63:                                               ; preds = %23
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %8, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %8, align 8
  br label %15

67:                                               ; preds = %15
  %68 = load i32, i32* @NGX_DECLINED, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %67, %55
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @ngx_log_debug3(i32, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @ngx_stream_access_found(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
