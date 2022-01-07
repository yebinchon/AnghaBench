; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_dav_module.c_ngx_http_dav_copy_dir.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_dav_module.c_ngx_http_dav_copy_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_9__ = type { i64, i32* }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"http copy dir: \22%s\22\00", align 1
@NGX_ABORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"http copy dir to: \22%s\22\00", align 1
@NGX_FILE_ERROR = common dso_local global i64 0, align 8
@ngx_errno = common dso_local global i32 0, align 4
@ngx_create_dir_n = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_9__*)* @ngx_http_dav_copy_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_dav_copy_dir(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %10 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @ngx_log_debug1(i32 %10, i32 %13, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32* %16)
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %9, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add i64 %24, %27
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = add i64 %29, 1
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32* @ngx_alloc(i64 %30, i32 %33)
  store i32* %34, i32** %7, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %2
  %38 = load i32, i32* @NGX_ABORT, align 4
  store i32 %38, i32* %3, align 4
  br label %93

39:                                               ; preds = %2
  %40 = load i32*, i32** %7, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32* @ngx_cpymem(i32* %40, i32 %44, i64 %48)
  store i32* %49, i32** %6, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = sub i64 %60, %63
  %65 = add i64 %64, 1
  %66 = call i32 @ngx_cpystrn(i32* %50, i32* %57, i64 %65)
  %67 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = call i32 @ngx_log_debug1(i32 %67, i32 %70, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32* %71)
  %73 = load i32*, i32** %7, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ngx_dir_access(i32 %76)
  %78 = call i64 @ngx_create_dir(i32* %73, i32 %77)
  %79 = load i64, i64* @NGX_FILE_ERROR, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %39
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @ngx_errno, align 4
  %86 = load i32, i32* @ngx_create_dir_n, align 4
  %87 = load i32*, i32** %7, align 8
  %88 = call i32 @ngx_http_dav_error(i32 %84, i32 %85, i32 0, i32 %86, i32* %87)
  br label %89

89:                                               ; preds = %81, %39
  %90 = load i32*, i32** %7, align 8
  %91 = call i32 @ngx_free(i32* %90)
  %92 = load i32, i32* @NGX_OK, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %89, %37
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32*) #1

declare dso_local i32* @ngx_alloc(i64, i32) #1

declare dso_local i32* @ngx_cpymem(i32*, i32, i64) #1

declare dso_local i32 @ngx_cpystrn(i32*, i32*, i64) #1

declare dso_local i64 @ngx_create_dir(i32*, i32) #1

declare dso_local i32 @ngx_dir_access(i32) #1

declare dso_local i32 @ngx_http_dav_error(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @ngx_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
