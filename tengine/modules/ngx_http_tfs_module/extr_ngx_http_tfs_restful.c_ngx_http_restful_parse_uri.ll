; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_restful.c_ngx_http_restful_parse_uri.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_restful.c_ngx_http_restful_parse_uri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__, %struct.TYPE_11__* }
%struct.TYPE_14__ = type { i8*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"version invalid %V \00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_12__*)* @ngx_http_restful_parse_uri to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_restful_parse_uri(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %13, i64 %18
  store i8* %19, i8** %8, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %6, align 8
  br label %24

24:                                               ; preds = %103, %2
  %25 = load i8*, i8** %6, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = icmp ult i8* %25, %26
  br i1 %27, label %28, label %106

28:                                               ; preds = %24
  %29 = load i8*, i8** %6, align 8
  %30 = load i8, i8* %29, align 1
  store i8 %30, i8* %7, align 1
  %31 = load i32, i32* %9, align 4
  switch i32 %31, label %102 [
    i32 0, label %32
    i32 1, label %33
    i32 2, label %49
    i32 3, label %72
  ]

32:                                               ; preds = %28
  store i32 1, i32* %9, align 4
  br label %102

33:                                               ; preds = %28
  %34 = load i8, i8* %7, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 118
  br i1 %36, label %37, label %48

37:                                               ; preds = %33
  %38 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = call i32 @ngx_log_debug1(i32 %38, i32 %43, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.TYPE_14__* %45)
  %47 = load i32, i32* @NGX_ERROR, align 4
  store i32 %47, i32* %3, align 4
  br label %108

48:                                               ; preds = %33
  store i32 2, i32* %9, align 4
  br label %102

49:                                               ; preds = %28
  %50 = load i8, i8* %7, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp slt i32 %51, 49
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load i8, i8* %7, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp sgt i32 %55, 57
  br i1 %56, label %57, label %59

57:                                               ; preds = %53, %49
  %58 = load i32, i32* @NGX_ERROR, align 4
  store i32 %58, i32* %3, align 4
  br label %108

59:                                               ; preds = %53
  %60 = load i8, i8* %7, align 1
  %61 = sext i8 %60 to i32
  %62 = sub nsw i32 %61, 48
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp sgt i32 %67, 2
  br i1 %68, label %69, label %71

69:                                               ; preds = %59
  %70 = load i32, i32* @NGX_ERROR, align 4
  store i32 %70, i32* %3, align 4
  br label %108

71:                                               ; preds = %59
  store i32 3, i32* %9, align 4
  br label %102

72:                                               ; preds = %28
  %73 = load i8, i8* %7, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %74, 47
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i32, i32* @NGX_ERROR, align 4
  store i32 %77, i32* %3, align 4
  br label %108

78:                                               ; preds = %72
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %6, align 8
  %88 = call i32 @ngx_http_restful_parse_raw(%struct.TYPE_13__* %84, %struct.TYPE_12__* %85, i8* %87)
  store i32 %88, i32* %3, align 4
  br label %108

89:                                               ; preds = %78
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 2
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %97 = load i8*, i8** %6, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %6, align 8
  %99 = call i32 @ngx_http_restful_parse_custom_name(%struct.TYPE_13__* %95, %struct.TYPE_12__* %96, i8* %98)
  store i32 %99, i32* %3, align 4
  br label %108

100:                                              ; preds = %89
  %101 = load i32, i32* @NGX_ERROR, align 4
  store i32 %101, i32* %3, align 4
  br label %108

102:                                              ; preds = %28, %71, %48, %32
  br label %103

103:                                              ; preds = %102
  %104 = load i8*, i8** %6, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %6, align 8
  br label %24

106:                                              ; preds = %24
  %107 = load i32, i32* @NGX_ERROR, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %106, %100, %94, %83, %76, %69, %57, %37
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, %struct.TYPE_14__*) #1

declare dso_local i32 @ngx_http_restful_parse_raw(%struct.TYPE_13__*, %struct.TYPE_12__*, i8*) #1

declare dso_local i32 @ngx_http_restful_parse_custom_name(%struct.TYPE_13__*, %struct.TYPE_12__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
