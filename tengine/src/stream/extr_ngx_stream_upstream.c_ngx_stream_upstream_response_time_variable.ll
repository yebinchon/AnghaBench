; ModuleID = '/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_upstream.c_ngx_stream_upstream_response_time_variable.c'
source_filename = "/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_upstream.c_ngx_stream_upstream_response_time_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32*, i64 }

@NGX_OK = common dso_local global i32 0, align 4
@NGX_TIME_T_LEN = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%T.%03M\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_10__*, i64)* @ngx_stream_upstream_response_time_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_stream_upstream_response_time_variable(%struct.TYPE_12__* %0, %struct.TYPE_10__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 4
  store i64 0, i64* %16, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  store i32 0, i32* %18, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = icmp eq %struct.TYPE_9__* %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %3
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23, %3
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  store i32 1, i32* %32, align 4
  %33 = load i32, i32* @NGX_OK, align 4
  store i32 %33, i32* %4, align 4
  br label %134

34:                                               ; preds = %23
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @NGX_TIME_T_LEN, align 4
  %41 = add nsw i32 %40, 4
  %42 = add nsw i32 %41, 2
  %43 = mul nsw i32 %39, %42
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %9, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i64, i64* %9, align 8
  %51 = call i32* @ngx_pnalloc(i32 %49, i64 %50)
  store i32* %51, i32** %8, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %34
  %55 = load i32, i32* @NGX_ERROR, align 4
  store i32 %55, i32* %4, align 4
  br label %134

56:                                               ; preds = %34
  %57 = load i32*, i32** %8, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 3
  store i32* %57, i32** %59, align 8
  store i64 0, i64* %10, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  store %struct.TYPE_11__* %64, %struct.TYPE_11__** %12, align 8
  br label %65

65:                                               ; preds = %116, %56
  %66 = load i64, i64* %7, align 8
  %67 = icmp eq i64 %66, 1
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %70 = load i64, i64* %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %11, align 4
  br label %90

74:                                               ; preds = %65
  %75 = load i64, i64* %7, align 8
  %76 = icmp eq i64 %75, 2
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %79 = load i64, i64* %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %11, align 4
  br label %89

83:                                               ; preds = %74
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %85 = load i64, i64* %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %83, %77
  br label %90

90:                                               ; preds = %89, %68
  %91 = load i32, i32* %11, align 4
  %92 = icmp ne i32 %91, -1
  br i1 %92, label %93, label %102

93:                                               ; preds = %90
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @ngx_max(i32 %94, i32 0)
  store i32 %95, i32* %11, align 4
  %96 = load i32*, i32** %8, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sdiv i32 %97, 1000
  %99 = load i32, i32* %11, align 4
  %100 = srem i32 %99, 1000
  %101 = call i32* @ngx_sprintf(i32* %96, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %98, i32 %100)
  store i32* %101, i32** %8, align 8
  br label %105

102:                                              ; preds = %90
  %103 = load i32*, i32** %8, align 8
  %104 = getelementptr inbounds i32, i32* %103, i32 1
  store i32* %104, i32** %8, align 8
  store i32 45, i32* %103, align 4
  br label %105

105:                                              ; preds = %102, %93
  %106 = load i64, i64* %10, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %10, align 8
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = icmp eq i64 %107, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %105
  br label %121

116:                                              ; preds = %105
  %117 = load i32*, i32** %8, align 8
  %118 = getelementptr inbounds i32, i32* %117, i32 1
  store i32* %118, i32** %8, align 8
  store i32 44, i32* %117, align 4
  %119 = load i32*, i32** %8, align 8
  %120 = getelementptr inbounds i32, i32* %119, i32 1
  store i32* %120, i32** %8, align 8
  store i32 32, i32* %119, align 4
  br label %65

121:                                              ; preds = %115
  %122 = load i32*, i32** %8, align 8
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 3
  %125 = load i32*, i32** %124, align 8
  %126 = ptrtoint i32* %122 to i64
  %127 = ptrtoint i32* %125 to i64
  %128 = sub i64 %126, %127
  %129 = sdiv exact i64 %128, 4
  %130 = trunc i64 %129 to i32
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 8
  %133 = load i32, i32* @NGX_OK, align 4
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %121, %54, %30
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i32* @ngx_pnalloc(i32, i64) #1

declare dso_local i32 @ngx_max(i32, i32) #1

declare dso_local i32* @ngx_sprintf(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
