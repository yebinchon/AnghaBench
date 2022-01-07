; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_tfs_common.c_ngx_http_tfs_chain_get_free_buf.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_tfs_common.c_ngx_http_tfs_chain_get_free_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @ngx_http_tfs_chain_get_free_buf(i32* %0, %struct.TYPE_6__** %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__**, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_6__** %1, %struct.TYPE_6__*** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = icmp ne %struct.TYPE_6__* %10, null
  br i1 %11, label %12, label %37

12:                                               ; preds = %3
  %13 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %8, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %19, %24
  %26 = load i64, i64* %7, align 8
  %27 = icmp uge i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %12
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %32, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %34, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %35, %struct.TYPE_6__** %4, align 8
  br label %58

36:                                               ; preds = %12
  br label %37

37:                                               ; preds = %36, %3
  %38 = load i32*, i32** %5, align 8
  %39 = call %struct.TYPE_6__* @ngx_alloc_chain_link(i32* %38)
  store %struct.TYPE_6__* %39, %struct.TYPE_6__** %8, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %41 = icmp eq %struct.TYPE_6__* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %58

43:                                               ; preds = %37
  %44 = load i32*, i32** %5, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call %struct.TYPE_7__* @ngx_create_temp_buf(i32* %44, i64 %45)
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  store %struct.TYPE_7__* %46, %struct.TYPE_7__** %48, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = icmp eq %struct.TYPE_7__* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %58

54:                                               ; preds = %43
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %56, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %57, %struct.TYPE_6__** %4, align 8
  br label %58

58:                                               ; preds = %54, %53, %42, %28
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  ret %struct.TYPE_6__* %59
}

declare dso_local %struct.TYPE_6__* @ngx_alloc_chain_link(i32*) #1

declare dso_local %struct.TYPE_7__* @ngx_create_temp_buf(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
