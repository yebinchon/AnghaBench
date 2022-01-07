; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_autoindex_module.c_ngx_http_autoindex_jsonp_callback.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_autoindex_module.c_ngx_http_autoindex_jsonp_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32* }

@.str = private unnamed_addr constant [9 x i8] c"callback\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"client sent too long callback name: \22%V\22\00", align 1
@NGX_DECLINED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"client sent invalid callback name: \22%V\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_11__*, %struct.TYPE_10__*)* @ngx_http_autoindex_jsonp_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_autoindex_jsonp_callback(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %12 = call i64 @ngx_http_arg(%struct.TYPE_11__* %10, i32* bitcast ([9 x i8]* @.str to i32*), i32 8, %struct.TYPE_10__* %11)
  %13 = load i64, i64* @NGX_OK, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = load i64, i64* @NGX_OK, align 8
  store i64 %18, i64* %3, align 8
  br label %86

19:                                               ; preds = %2
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sgt i32 %22, 128
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = load i32, i32* @NGX_LOG_INFO, align 4
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %32 = call i32 @ngx_log_error(i32 %25, i32 %30, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_10__* %31)
  %33 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %33, i64* %3, align 8
  br label %86

34:                                               ; preds = %19
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %6, align 8
  store i64 0, i64* %9, align 8
  br label %38

38:                                               ; preds = %81, %34
  %39 = load i64, i64* %9, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = icmp ult i64 %39, %43
  br i1 %44, label %45, label %84

45:                                               ; preds = %38
  %46 = load i32*, i32** %6, align 8
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %50, 32
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp sge i32 %52, 97
  br i1 %53, label %54, label %58

54:                                               ; preds = %45
  %55 = load i32, i32* %7, align 4
  %56 = icmp sle i32 %55, 122
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %81

58:                                               ; preds = %54, %45
  %59 = load i32, i32* %8, align 4
  %60 = icmp sge i32 %59, 48
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* %8, align 4
  %63 = icmp sle i32 %62, 57
  br i1 %63, label %70, label %64

64:                                               ; preds = %61, %58
  %65 = load i32, i32* %8, align 4
  %66 = icmp eq i32 %65, 95
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %8, align 4
  %69 = icmp eq i32 %68, 46
  br i1 %69, label %70, label %71

70:                                               ; preds = %67, %64, %61
  br label %81

71:                                               ; preds = %67
  %72 = load i32, i32* @NGX_LOG_INFO, align 4
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %79 = call i32 @ngx_log_error(i32 %72, i32 %77, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_10__* %78)
  %80 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %80, i64* %3, align 8
  br label %86

81:                                               ; preds = %70, %57
  %82 = load i64, i64* %9, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %9, align 8
  br label %38

84:                                               ; preds = %38
  %85 = load i64, i64* @NGX_OK, align 8
  store i64 %85, i64* %3, align 8
  br label %86

86:                                               ; preds = %84, %71, %24, %15
  %87 = load i64, i64* %3, align 8
  ret i64 %87
}

declare dso_local i64 @ngx_http_arg(%struct.TYPE_11__*, i32*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
