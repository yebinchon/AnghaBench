; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_check_module/extr_ngx_http_upstream_check_module.c_ngx_http_upstream_check_fastcgi_process_record.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_check_module/extr_ngx_http_upstream_check_module.c_ngx_http_upstream_check_fastcgi_process_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i64 }
%struct.TYPE_10__ = type { i32*, i32* }
%struct.TYPE_9__ = type { i32 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@ngx_cycle = common dso_local global %struct.TYPE_11__* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"http fastcgi record byte: %02Xd\00", align 1
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"upstream sent unsupported FastCGI protocol version: %d\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"upstream sent invalid FastCGI record type: %d\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"upstream sent unexpected FastCGI request id high byte: %d\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"upstream sent unexpected FastCGI request id low byte: %d\00", align 1
@NGX_OK = common dso_local global i32 0, align 4
@NGX_AGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_10__*, %struct.TYPE_9__*)* @ngx_http_upstream_check_fastcgi_process_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_upstream_check_fastcgi_process_record(%struct.TYPE_8__* %0, %struct.TYPE_10__* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %10, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %9, align 8
  br label %17

17:                                               ; preds = %114, %3
  %18 = load i32*, i32** %9, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ult i32* %18, %21
  br i1 %22, label %23, label %117

23:                                               ; preds = %17
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ngx_cycle, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @ngx_log_debug1(i32 %26, i32 %29, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %10, align 4
  switch i32 %32, label %113 [
    i32 128, label %33
    i32 129, label %45
    i32 132, label %60
    i32 131, label %72
    i32 137, label %84
    i32 136, label %89
    i32 133, label %98
    i32 130, label %103
    i32 135, label %112
    i32 134, label %112
  ]

33:                                               ; preds = %23
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load i32, i32* @NGX_LOG_ERR, align 4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ngx_cycle, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @ngx_log_error(i32 %37, i32 %40, i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @NGX_ERROR, align 4
  store i32 %43, i32* %4, align 4
  br label %122

44:                                               ; preds = %33
  store i32 129, i32* %10, align 4
  br label %113

45:                                               ; preds = %23
  %46 = load i32, i32* %8, align 4
  switch i32 %46, label %51 [
    i32 138, label %47
    i32 139, label %47
    i32 140, label %47
  ]

47:                                               ; preds = %45, %45, %45
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  br label %59

51:                                               ; preds = %45
  %52 = load i32, i32* @NGX_LOG_ERR, align 4
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ngx_cycle, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @ngx_log_error(i32 %52, i32 %55, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @NGX_ERROR, align 4
  store i32 %58, i32* %4, align 4
  br label %122

59:                                               ; preds = %47
  store i32 132, i32* %10, align 4
  br label %113

60:                                               ; preds = %23
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load i32, i32* @NGX_LOG_ERR, align 4
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ngx_cycle, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @ngx_log_error(i32 %64, i32 %67, i32 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @NGX_ERROR, align 4
  store i32 %70, i32* %4, align 4
  br label %122

71:                                               ; preds = %60
  store i32 131, i32* %10, align 4
  br label %113

72:                                               ; preds = %23
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 1
  br i1 %74, label %75, label %83

75:                                               ; preds = %72
  %76 = load i32, i32* @NGX_LOG_ERR, align 4
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ngx_cycle, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @ngx_log_error(i32 %76, i32 %79, i32 0, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @NGX_ERROR, align 4
  store i32 %82, i32* %4, align 4
  br label %122

83:                                               ; preds = %72
  store i32 137, i32* %10, align 4
  br label %113

84:                                               ; preds = %23
  %85 = load i32, i32* %8, align 4
  %86 = shl i32 %85, 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  store i32 136, i32* %10, align 4
  br label %113

89:                                               ; preds = %23
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = or i64 %95, %91
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %93, align 4
  store i32 133, i32* %10, align 4
  br label %113

98:                                               ; preds = %23
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 2
  store i64 %100, i64* %102, align 8
  store i32 130, i32* %10, align 4
  br label %113

103:                                              ; preds = %23
  store i32 135, i32* %10, align 4
  %104 = load i32*, i32** %9, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  store i32* %105, i32** %107, align 8
  %108 = load i32, i32* %10, align 4
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* @NGX_OK, align 4
  store i32 %111, i32* %4, align 4
  br label %122

112:                                              ; preds = %23, %23
  br label %113

113:                                              ; preds = %23, %112, %98, %89, %84, %83, %71, %59, %44
  br label %114

114:                                              ; preds = %113
  %115 = load i32*, i32** %9, align 8
  %116 = getelementptr inbounds i32, i32* %115, i32 1
  store i32* %116, i32** %9, align 8
  br label %17

117:                                              ; preds = %17
  %118 = load i32, i32* %10, align 4
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  %121 = load i32, i32* @NGX_AGAIN, align 4
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %117, %103, %75, %63, %51, %36
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
