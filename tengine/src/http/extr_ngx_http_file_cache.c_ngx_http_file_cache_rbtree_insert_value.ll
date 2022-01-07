; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_file_cache.c_ngx_http_file_cache_rbtree_insert_value.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_file_cache.c_ngx_http_file_cache_rbtree_insert_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }

@NGX_HTTP_CACHE_KEY_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_7__*)* @ngx_http_file_cache_rbtree_insert_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_file_cache_rbtree_insert_value(%struct.TYPE_7__* %0, %struct.TYPE_7__* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_7__**, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %6, align 8
  br label %10

10:                                               ; preds = %62, %3
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  store %struct.TYPE_7__** %20, %struct.TYPE_7__*** %7, align 8
  br label %56

21:                                               ; preds = %10
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %24, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  store %struct.TYPE_7__** %31, %struct.TYPE_7__*** %7, align 8
  br label %55

32:                                               ; preds = %21
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %34 = bitcast %struct.TYPE_7__* %33 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %8, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %36 = bitcast %struct.TYPE_7__* %35 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %36, %struct.TYPE_8__** %9, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* @NGX_HTTP_CACHE_KEY_LEN, align 8
  %44 = sub i64 %43, 4
  %45 = call i64 @ngx_memcmp(i32 %39, i32 %42, i64 %44)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %32
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 2
  br label %53

50:                                               ; preds = %32
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  br label %53

53:                                               ; preds = %50, %47
  %54 = phi %struct.TYPE_7__** [ %49, %47 ], [ %52, %50 ]
  store %struct.TYPE_7__** %54, %struct.TYPE_7__*** %7, align 8
  br label %55

55:                                               ; preds = %53, %29
  br label %56

56:                                               ; preds = %55, %18
  %57 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %60 = icmp eq %struct.TYPE_7__* %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %65

62:                                               ; preds = %56
  %63 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  store %struct.TYPE_7__* %64, %struct.TYPE_7__** %4, align 8
  br label %10

65:                                               ; preds = %61
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %67 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  store %struct.TYPE_7__* %66, %struct.TYPE_7__** %67, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 3
  store %struct.TYPE_7__* %68, %struct.TYPE_7__** %70, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  store %struct.TYPE_7__* %71, %struct.TYPE_7__** %73, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  store %struct.TYPE_7__* %74, %struct.TYPE_7__** %76, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %78 = call i32 @ngx_rbt_red(%struct.TYPE_7__* %77)
  ret void
}

declare dso_local i64 @ngx_memcmp(i32, i32, i64) #1

declare dso_local i32 @ngx_rbt_red(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
