; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_timer.c_ngx_http_lua_log_timer_error.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_timer.c_ngx_http_lua_log_timer_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { %struct.TYPE_7__*, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [10 x i8] c" while %s\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"ctx = %p\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c", context: ngx.timer\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c", client: %V\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c", server: %V\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_9__*, i32*, i64)* @ngx_http_lua_log_timer_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ngx_http_lua_log_timer_error(%struct.TYPE_9__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = icmp ne %struct.TYPE_8__* %11, null
  br i1 %12, label %13, label %29

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = call i32* (i32*, i64, i8*, ...) @ngx_snprintf(i32* %14, i64 %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__* %18)
  store i32* %19, i32** %7, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = ptrtoint i32* %20 to i64
  %23 = ptrtoint i32* %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 4
  %26 = load i64, i64* %6, align 8
  %27 = sub i64 %26, %25
  store i64 %27, i64* %6, align 8
  %28 = load i32*, i32** %7, align 8
  store i32* %28, i32** %5, align 8
  br label %29

29:                                               ; preds = %13, %3
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  store %struct.TYPE_10__* %32, %struct.TYPE_10__** %8, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %34 = call i32 @dd(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_10__* %33)
  %35 = load i32*, i32** %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i32* (i32*, i64, i8*, ...) @ngx_snprintf(i32* %35, i64 %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i32* %37, i32** %7, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = ptrtoint i32* %38 to i64
  %41 = ptrtoint i32* %39 to i64
  %42 = sub i64 %40, %41
  %43 = sdiv exact i64 %42, 4
  %44 = load i64, i64* %6, align 8
  %45 = sub i64 %44, %43
  store i64 %45, i64* %6, align 8
  %46 = load i32*, i32** %7, align 8
  store i32* %46, i32** %5, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %29
  %53 = load i32*, i32** %5, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = call i32* (i32*, i64, i8*, ...) @ngx_snprintf(i32* %53, i64 %54, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_8__* %56)
  store i32* %57, i32** %7, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = ptrtoint i32* %58 to i64
  %61 = ptrtoint i32* %59 to i64
  %62 = sub i64 %60, %61
  %63 = sdiv exact i64 %62, 4
  %64 = load i64, i64* %6, align 8
  %65 = sub i64 %64, %63
  store i64 %65, i64* %6, align 8
  %66 = load i32*, i32** %7, align 8
  store i32* %66, i32** %5, align 8
  br label %67

67:                                               ; preds = %52, %29
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %69 = icmp ne %struct.TYPE_10__* %68, null
  br i1 %69, label %70, label %92

70:                                               ; preds = %67
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = icmp ne %struct.TYPE_7__* %73, null
  br i1 %74, label %75, label %92

75:                                               ; preds = %70
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %75
  %84 = load i32*, i32** %5, align 8
  %85 = load i64, i64* %6, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = call i32* (i32*, i64, i8*, ...) @ngx_snprintf(i32* %84, i64 %85, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_8__* %89)
  store i32* %90, i32** %7, align 8
  %91 = load i32*, i32** %7, align 8
  store i32* %91, i32** %5, align 8
  br label %92

92:                                               ; preds = %83, %75, %70, %67
  %93 = load i32*, i32** %5, align 8
  ret i32* %93
}

declare dso_local i32* @ngx_snprintf(i32*, i64, i8*, ...) #1

declare dso_local i32 @dd(i8*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
