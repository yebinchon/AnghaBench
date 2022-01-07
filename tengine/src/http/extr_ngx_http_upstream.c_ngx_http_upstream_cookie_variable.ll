; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_upstream.c_ngx_http_upstream_cookie_variable.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_upstream.c_ngx_http_upstream_cookie_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i64, i64 }
%struct.TYPE_12__ = type { i32, i64 }

@NGX_OK = common dso_local global i32 0, align 4
@NGX_DECLINED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_13__*, i64)* @ngx_http_upstream_cookie_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_upstream_cookie_variable(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_12__, align 8
  %10 = alloca %struct.TYPE_12__, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %8, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %16 = icmp eq %struct.TYPE_11__* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load i32, i32* @NGX_OK, align 4
  store i32 %20, i32* %4, align 4
  br label %63

21:                                               ; preds = %3
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = sub i64 %24, 16
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  store i64 %25, i64* %26, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = add i64 %30, 17
  %32 = sub i64 %31, 1
  %33 = trunc i64 %32 to i32
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  store i32 %33, i32* %34, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = call i64 @ngx_http_parse_set_cookie_lines(i32* %39, %struct.TYPE_12__* %10, %struct.TYPE_12__* %9)
  %41 = load i64, i64* @NGX_DECLINED, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %21
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load i32, i32* @NGX_OK, align 4
  store i32 %46, i32* %4, align 4
  br label %63

47:                                               ; preds = %21
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 4
  store i64 %49, i64* %51, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  store i32 1, i32* %53, align 4
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 3
  store i64 0, i64* %55, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  store i32 0, i32* %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* @NGX_OK, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %47, %43, %17
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i64 @ngx_http_parse_set_cookie_lines(i32*, %struct.TYPE_12__*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
