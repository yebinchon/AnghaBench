; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http.c_ngx_http_init_static_location_trees.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http.c_ngx_http_init_static_location_trees.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_5__*, %struct.TYPE_5__* }

@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_5__*)* @ngx_http_init_static_location_trees to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_init_static_location_trees(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i64, i64* @NGX_OK, align 8
  store i64 %16, i64* %3, align 8
  br label %85

17:                                               ; preds = %2
  %18 = load i32*, i32** %7, align 8
  %19 = call i64 @ngx_queue_empty(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i64, i64* @NGX_OK, align 8
  store i64 %22, i64* %3, align 8
  br label %85

23:                                               ; preds = %17
  %24 = load i32*, i32** %7, align 8
  %25 = call i32* @ngx_queue_head(i32* %24)
  store i32* %25, i32** %6, align 8
  br label %26

26:                                               ; preds = %56, %23
  %27 = load i32*, i32** %6, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call i32* @ngx_queue_sentinel(i32* %28)
  %30 = icmp ne i32* %27, %29
  br i1 %30, label %31, label %59

31:                                               ; preds = %26
  %32 = load i32*, i32** %6, align 8
  %33 = bitcast i32* %32 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %33, %struct.TYPE_4__** %9, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = icmp ne %struct.TYPE_5__* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  br label %46

42:                                               ; preds = %31
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  br label %46

46:                                               ; preds = %42, %38
  %47 = phi %struct.TYPE_5__* [ %41, %38 ], [ %45, %42 ]
  store %struct.TYPE_5__* %47, %struct.TYPE_5__** %8, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %50 = call i64 @ngx_http_init_static_location_trees(i32* %48, %struct.TYPE_5__* %49)
  %51 = load i64, i64* @NGX_OK, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i64, i64* @NGX_ERROR, align 8
  store i64 %54, i64* %3, align 8
  br label %85

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55
  %57 = load i32*, i32** %6, align 8
  %58 = call i32* @ngx_queue_next(i32* %57)
  store i32* %58, i32** %6, align 8
  br label %26

59:                                               ; preds = %26
  %60 = load i32*, i32** %4, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = call i64 @ngx_http_join_exact_locations(i32* %60, i32* %61)
  %63 = load i64, i64* @NGX_OK, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i64, i64* @NGX_ERROR, align 8
  store i64 %66, i64* %3, align 8
  br label %85

67:                                               ; preds = %59
  %68 = load i32*, i32** %7, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = call i32* @ngx_queue_head(i32* %69)
  %71 = call i32 @ngx_http_create_locations_list(i32* %68, i32* %70)
  %72 = load i32*, i32** %4, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = call i32* @ngx_http_create_locations_tree(i32* %72, i32* %73, i32 0)
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store i32* %74, i32** %76, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = icmp eq i32* %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %67
  %82 = load i64, i64* @NGX_ERROR, align 8
  store i64 %82, i64* %3, align 8
  br label %85

83:                                               ; preds = %67
  %84 = load i64, i64* @NGX_OK, align 8
  store i64 %84, i64* %3, align 8
  br label %85

85:                                               ; preds = %83, %81, %65, %53, %21, %15
  %86 = load i64, i64* %3, align 8
  ret i64 %86
}

declare dso_local i64 @ngx_queue_empty(i32*) #1

declare dso_local i32* @ngx_queue_head(i32*) #1

declare dso_local i32* @ngx_queue_sentinel(i32*) #1

declare dso_local i32* @ngx_queue_next(i32*) #1

declare dso_local i64 @ngx_http_join_exact_locations(i32*, i32*) #1

declare dso_local i32 @ngx_http_create_locations_list(i32*, i32*) #1

declare dso_local i32* @ngx_http_create_locations_tree(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
