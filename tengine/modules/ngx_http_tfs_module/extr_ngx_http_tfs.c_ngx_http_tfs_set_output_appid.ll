; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs.c_ngx_http_tfs_set_output_appid.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs.c_ngx_http_tfs_set_output_appid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_6__* }

@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_http_tfs_set_output_appid(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_6__**, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32* @ngx_http_tfs_json_init(i32 %10, i32 %13)
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store i32* %14, i32** %16, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @NGX_ERROR, align 4
  store i32 %22, i32* %3, align 4
  br label %53

23:                                               ; preds = %2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %6, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  store %struct.TYPE_6__** %28, %struct.TYPE_6__*** %7, align 8
  br label %29

29:                                               ; preds = %35, %23
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %31 = icmp ne %struct.TYPE_6__* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store %struct.TYPE_6__** %34, %struct.TYPE_6__*** %7, align 8
  br label %35

35:                                               ; preds = %32
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %6, align 8
  br label %29

39:                                               ; preds = %29
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call %struct.TYPE_6__* @ngx_http_tfs_json_appid(i32* %42, i32 %43)
  store %struct.TYPE_6__* %44, %struct.TYPE_6__** %6, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %46 = icmp eq %struct.TYPE_6__* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* @NGX_ERROR, align 4
  store i32 %48, i32* %3, align 4
  br label %53

49:                                               ; preds = %39
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %51 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  store %struct.TYPE_6__* %50, %struct.TYPE_6__** %51, align 8
  %52 = load i32, i32* @NGX_OK, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %49, %47, %21
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32* @ngx_http_tfs_json_init(i32, i32) #1

declare dso_local %struct.TYPE_6__* @ngx_http_tfs_json_appid(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
