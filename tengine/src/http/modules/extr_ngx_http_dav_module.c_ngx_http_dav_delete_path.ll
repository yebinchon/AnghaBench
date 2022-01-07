; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_dav_module.c_ngx_http_dav_delete_path.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_dav_module.c_ngx_http_dav_delete_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i64, i32*, i8*, i32, i32, i8*, i32* }

@ngx_http_dav_delete_file = common dso_local global i8* null, align 8
@ngx_http_dav_noop = common dso_local global i32 0, align 4
@ngx_http_dav_delete_dir = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i64 0, align 8
@NGX_FILE_ERROR = common dso_local global i64 0, align 8
@ngx_delete_dir_n = common dso_local global i8* null, align 8
@ngx_delete_file_n = common dso_local global i8* null, align 8
@ngx_errno = common dso_local global i32 0, align 4
@NGX_HTTP_NOT_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_12__*, %struct.TYPE_11__*, i64)* @ngx_http_dav_delete_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_dav_delete_path(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_10__, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %47

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 7
  store i32* null, i32** %13, align 8
  %14 = load i8*, i8** @ngx_http_dav_delete_file, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 6
  store i8* %14, i8** %15, align 8
  %16 = load i32, i32* @ngx_http_dav_noop, align 4
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 5
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @ngx_http_dav_delete_dir, align 4
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 4
  store i32 %18, i32* %19, align 8
  %20 = load i8*, i8** @ngx_http_dav_delete_file, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 3
  store i8* %20, i8** %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 2
  store i32* null, i32** %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  store i32 %28, i32* %29, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %31 = call i64 @ngx_walk_tree(%struct.TYPE_10__* %9, %struct.TYPE_11__* %30)
  %32 = load i64, i64* @NGX_OK, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %12
  %35 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %35, i64* %4, align 8
  br label %71

36:                                               ; preds = %12
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @ngx_delete_dir(i32 %39)
  %41 = load i64, i64* @NGX_FILE_ERROR, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i64, i64* @NGX_OK, align 8
  store i64 %44, i64* %4, align 8
  br label %71

45:                                               ; preds = %36
  %46 = load i8*, i8** @ngx_delete_dir_n, align 8
  store i8* %46, i8** %8, align 8
  br label %58

47:                                               ; preds = %3
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @ngx_delete_file(i32 %50)
  %52 = load i64, i64* @NGX_FILE_ERROR, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i64, i64* @NGX_OK, align 8
  store i64 %55, i64* %4, align 8
  br label %71

56:                                               ; preds = %47
  %57 = load i8*, i8** @ngx_delete_file_n, align 8
  store i8* %57, i8** %8, align 8
  br label %58

58:                                               ; preds = %56, %45
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @ngx_errno, align 4
  %65 = load i32, i32* @NGX_HTTP_NOT_FOUND, align 4
  %66 = load i8*, i8** %8, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @ngx_http_dav_error(i32 %63, i32 %64, i32 %65, i8* %66, i32 %69)
  store i64 %70, i64* %4, align 8
  br label %71

71:                                               ; preds = %58, %54, %43, %34
  %72 = load i64, i64* %4, align 8
  ret i64 %72
}

declare dso_local i64 @ngx_walk_tree(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i64 @ngx_delete_dir(i32) #1

declare dso_local i64 @ngx_delete_file(i32) #1

declare dso_local i64 @ngx_http_dav_error(i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
