; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_script.c_ngx_http_test_required_predicates.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_script.c_ngx_http_test_required_predicates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32* }
%struct.TYPE_5__ = type { i32, i32* }

@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_DECLINED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_http_test_required_predicates(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %10 = icmp eq %struct.TYPE_6__* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i64, i64* @NGX_OK, align 8
  store i64 %12, i64* %3, align 8
  br label %55

13:                                               ; preds = %2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %8, align 8
  store i64 0, i64* %7, align 8
  br label %17

17:                                               ; preds = %50, %13
  %18 = load i64, i64* %7, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %18, %21
  br i1 %22, label %23, label %53

23:                                               ; preds = %17
  %24 = load i32*, i32** %4, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = call i64 @ngx_http_complex_value(i32* %24, i32* %27, %struct.TYPE_5__* %6)
  %29 = load i64, i64* @NGX_OK, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i64, i64* @NGX_ERROR, align 8
  store i64 %32, i64* %3, align 8
  br label %55

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 48
  br i1 %46, label %47, label %49

47:                                               ; preds = %41, %33
  %48 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %48, i64* %3, align 8
  br label %55

49:                                               ; preds = %41, %37
  br label %50

50:                                               ; preds = %49
  %51 = load i64, i64* %7, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %7, align 8
  br label %17

53:                                               ; preds = %17
  %54 = load i64, i64* @NGX_OK, align 8
  store i64 %54, i64* %3, align 8
  br label %55

55:                                               ; preds = %53, %47, %31, %11
  %56 = load i64, i64* %3, align 8
  ret i64 %56
}

declare dso_local i64 @ngx_http_complex_value(i32*, i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
