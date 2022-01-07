; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http.c_ngx_http_join_exact_locations.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http.c_ngx_http_join_exact_locations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i32, i32, %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { i64, i32 }

@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"duplicate location \22%V\22 in %s:%ui\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*)* @ngx_http_join_exact_locations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_join_exact_locations(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32* @ngx_queue_head(i32* %10)
  store i32* %11, i32** %6, align 8
  br label %12

12:                                               ; preds = %97, %89, %2
  %13 = load i32*, i32** %6, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32* @ngx_queue_last(i32* %14)
  %16 = icmp ne i32* %13, %15
  br i1 %16, label %17, label %100

17:                                               ; preds = %12
  %18 = load i32*, i32** %6, align 8
  %19 = call i32* @ngx_queue_next(i32* %18)
  store i32* %19, i32** %7, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = bitcast i32* %20 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %8, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = bitcast i32* %22 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %9, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 3
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %28, %33
  br i1 %34, label %35, label %97

35:                                               ; preds = %17
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 3
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @ngx_filename_cmp(i32 %40, i32 %45, i64 %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %97

53:                                               ; preds = %35
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %58, %53
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %89

68:                                               ; preds = %63
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %89

73:                                               ; preds = %68, %58
  %74 = load i32, i32* @NGX_LOG_EMERG, align 4
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @ngx_log_error(i32 %74, i32 %77, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.TYPE_7__* %80, i32 %83, i32 %86)
  %88 = load i32, i32* @NGX_ERROR, align 4
  store i32 %88, i32* %3, align 4
  br label %102

89:                                               ; preds = %68, %63
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  %95 = load i32*, i32** %7, align 8
  %96 = call i32 @ngx_queue_remove(i32* %95)
  br label %12

97:                                               ; preds = %35, %17
  %98 = load i32*, i32** %6, align 8
  %99 = call i32* @ngx_queue_next(i32* %98)
  store i32* %99, i32** %6, align 8
  br label %12

100:                                              ; preds = %12
  %101 = load i32, i32* @NGX_OK, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %100, %73
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32* @ngx_queue_head(i32*) #1

declare dso_local i32* @ngx_queue_last(i32*) #1

declare dso_local i32* @ngx_queue_next(i32*) #1

declare dso_local i64 @ngx_filename_cmp(i32, i32, i64) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @ngx_queue_remove(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
