; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_util.c_ngx_http_lua_get_co_ctx.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_util.c_ngx_http_lua_get_co_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { %struct.TYPE_7__*, %struct.TYPE_10__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, %struct.TYPE_10__*, %struct.TYPE_8__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @ngx_http_lua_get_co_ctx(i32* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %9, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %3, align 8
  br label %68

18:                                               ; preds = %2
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = icmp eq %struct.TYPE_7__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %68

24:                                               ; preds = %18
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %7, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  store %struct.TYPE_10__* %31, %struct.TYPE_10__** %8, align 8
  store i64 0, i64* %6, align 8
  br label %32

32:                                               ; preds = %64, %24
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp uge i64 %33, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %32
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = icmp eq %struct.TYPE_8__* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %67

44:                                               ; preds = %38
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  store %struct.TYPE_8__* %47, %struct.TYPE_8__** %7, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  store %struct.TYPE_10__* %50, %struct.TYPE_10__** %8, align 8
  store i64 0, i64* %6, align 8
  br label %51

51:                                               ; preds = %44, %32
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %53 = load i64, i64* %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32*, i32** %4, align 8
  %58 = icmp eq i32* %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %51
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %61 = load i64, i64* %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i64 %61
  store %struct.TYPE_10__* %62, %struct.TYPE_10__** %3, align 8
  br label %68

63:                                               ; preds = %51
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %6, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %6, align 8
  br label %32

67:                                               ; preds = %43
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %68

68:                                               ; preds = %67, %59, %23, %15
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  ret %struct.TYPE_10__* %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
