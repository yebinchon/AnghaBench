; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_upstream.c_ngx_http_upstream_copy_multi_header_lines.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_upstream.c_ngx_http_upstream_copy_multi_header_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32* }

@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*, i32*, i32)* @ngx_http_upstream_copy_multi_header_lines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_upstream_copy_multi_header_lines(%struct.TYPE_8__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = bitcast %struct.TYPE_7__* %12 to i8*
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  %17 = bitcast i8* %16 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %8, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %3
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @ngx_array_init(%struct.TYPE_9__* %23, i32 %26, i32 2, i32 8)
  %28 = load i64, i64* @NGX_OK, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i64, i64* @NGX_ERROR, align 8
  store i64 %31, i64* %4, align 8
  br label %56

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32, %3
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = call i32* @ngx_list_push(i32* %36)
  store i32* %37, i32** %9, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i64, i64* @NGX_ERROR, align 8
  store i64 %41, i64* %4, align 8
  br label %56

42:                                               ; preds = %33
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %9, align 8
  store i32 %44, i32* %45, align 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %47 = call i32** @ngx_array_push(%struct.TYPE_9__* %46)
  store i32** %47, i32*** %10, align 8
  %48 = load i32**, i32*** %10, align 8
  %49 = icmp eq i32** %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i64, i64* @NGX_ERROR, align 8
  store i64 %51, i64* %4, align 8
  br label %56

52:                                               ; preds = %42
  %53 = load i32*, i32** %9, align 8
  %54 = load i32**, i32*** %10, align 8
  store i32* %53, i32** %54, align 8
  %55 = load i64, i64* @NGX_OK, align 8
  store i64 %55, i64* %4, align 8
  br label %56

56:                                               ; preds = %52, %50, %40, %30
  %57 = load i64, i64* %4, align 8
  ret i64 %57
}

declare dso_local i64 @ngx_array_init(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32* @ngx_list_push(i32*) #1

declare dso_local i32** @ngx_array_push(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
