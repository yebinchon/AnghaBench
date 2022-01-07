; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_file_cache.c_ngx_http_file_cache_add_file.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_file_cache.c_ngx_http_file_cache_add_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i8* }
%struct.TYPE_13__ = type { i64, i32, i8* }

@NGX_HTTP_CACHE_KEY_LEN = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_LOG_CRIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"cache file \22%s\22 is too small\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_10__*, %struct.TYPE_11__*)* @ngx_http_file_cache_add_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_file_cache_add_file(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @NGX_HTTP_CACHE_KEY_LEN, align 4
  %15 = mul nsw i32 2, %14
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i64, i64* @NGX_ERROR, align 8
  store i64 %18, i64* %3, align 8
  br label %120

19:                                               ; preds = %2
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @NGX_HTTP_CACHE_KEY_LEN, align 4
  %24 = mul nsw i32 2, %23
  %25 = add nsw i32 %24, 1
  %26 = add nsw i32 %25, 10
  %27 = icmp sge i32 %22, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %19
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %34, 10
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %31, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 46
  br i1 %41, label %42, label %44

42:                                               ; preds = %28
  %43 = load i64, i64* @NGX_OK, align 8
  store i64 %43, i64* %3, align 8
  br label %120

44:                                               ; preds = %28, %19
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp slt i64 %47, 4
  br i1 %48, label %49, label %59

49:                                               ; preds = %44
  %50 = load i32, i32* @NGX_LOG_CRIT, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @ngx_log_error(i32 %50, i32 %53, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %56)
  %58 = load i64, i64* @NGX_ERROR, align 8
  store i64 %58, i64* %3, align 8
  br label %120

59:                                               ; preds = %44
  %60 = call i32 @ngx_memzero(%struct.TYPE_13__* %9, i32 24)
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %62, align 8
  store %struct.TYPE_12__* %63, %struct.TYPE_12__** %10, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  store i64 %66, i64* %67, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %70, %73
  %75 = sub nsw i32 %74, 1
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = sdiv i32 %75, %78
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 1
  store i32 %79, i32* %80, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @NGX_HTTP_CACHE_KEY_LEN, align 4
  %88 = mul nsw i32 2, %87
  %89 = sub nsw i32 %86, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %83, i64 %90
  store i8* %91, i8** %6, align 8
  store i32 0, i32* %8, align 4
  br label %92

92:                                               ; preds = %114, %59
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @NGX_HTTP_CACHE_KEY_LEN, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %117

96:                                               ; preds = %92
  %97 = load i8*, i8** %6, align 8
  %98 = call i64 @ngx_hextoi(i8* %97, i32 2)
  store i64 %98, i64* %7, align 8
  %99 = load i64, i64* %7, align 8
  %100 = load i64, i64* @NGX_ERROR, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = load i64, i64* @NGX_ERROR, align 8
  store i64 %103, i64* %3, align 8
  br label %120

104:                                              ; preds = %96
  %105 = load i8*, i8** %6, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 2
  store i8* %106, i8** %6, align 8
  %107 = load i64, i64* %7, align 8
  %108 = trunc i64 %107 to i8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 2
  %110 = load i8*, i8** %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  store i8 %108, i8* %113, align 1
  br label %114

114:                                              ; preds = %104
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %8, align 4
  br label %92

117:                                              ; preds = %92
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %119 = call i64 @ngx_http_file_cache_add(%struct.TYPE_12__* %118, %struct.TYPE_13__* %9)
  store i64 %119, i64* %3, align 8
  br label %120

120:                                              ; preds = %117, %102, %49, %42, %17
  %121 = load i64, i64* %3, align 8
  ret i64 %121
}

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @ngx_hextoi(i8*, i32) #1

declare dso_local i64 @ngx_http_file_cache_add(%struct.TYPE_12__*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
