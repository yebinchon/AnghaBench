; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_core_module.c_ngx_http_core_open_file_cache.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_core_module.c_ngx_http_core_open_file_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_10__ = type { i32* }

@NGX_CONF_UNSET_PTR = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"is duplicate\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"max=\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"inactive=\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"invalid \22open_file_cache\22 parameter \22%V\22\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_CONF_OK = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [48 x i8] c"\22open_file_cache\22 must have the \22max\22 parameter\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_11__*, i32*, i8*)* @ngx_http_core_open_file_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_core_open_file_cache(%struct.TYPE_11__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_9__, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %8, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32*, i32** @NGX_CONF_UNSET_PTR, align 8
  %20 = icmp ne i32* %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %147

22:                                               ; preds = %3
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %10, align 8
  store i64 0, i64* %12, align 8
  store i32 60, i32* %9, align 4
  store i64 1, i64* %13, align 8
  br label %28

28:                                               ; preds = %112, %22
  %29 = load i64, i64* %13, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ult i64 %29, %34
  br i1 %35, label %36, label %115

36:                                               ; preds = %28
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %38 = load i64, i64* %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @ngx_strncmp(i64 %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %36
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %46 = load i64, i64* %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %52 = load i64, i64* %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %55, 4
  %57 = call i64 @ngx_atoi(i64 %50, i64 %56)
  store i64 %57, i64* %12, align 8
  %58 = load i64, i64* %12, align 8
  %59 = icmp sle i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %44
  br label %104

61:                                               ; preds = %44
  br label %112

62:                                               ; preds = %36
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %64 = load i64, i64* %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @ngx_strncmp(i64 %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 9)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %92

70:                                               ; preds = %62
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %72 = load i64, i64* %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = sub nsw i64 %75, 9
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  store i64 %76, i64* %77, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %79 = load i64, i64* %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, 9
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  store i64 %83, i64* %84, align 8
  %85 = call i32 @ngx_parse_time(%struct.TYPE_9__* %11, i32 1)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load i64, i64* @NGX_ERROR, align 8
  %88 = trunc i64 %87 to i32
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %70
  br label %104

91:                                               ; preds = %70
  br label %112

92:                                               ; preds = %62
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %94 = load i64, i64* %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i64 @ngx_strcmp(i64 %97, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %92
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  store i32* null, i32** %102, align 8
  br label %112

103:                                              ; preds = %92
  br label %104

104:                                              ; preds = %103, %90, %60
  %105 = load i32, i32* @NGX_LOG_EMERG, align 4
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %108 = load i64, i64* %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i64 %108
  %110 = call i32 (i32, %struct.TYPE_11__*, i32, i8*, ...) @ngx_conf_log_error(i32 %105, %struct.TYPE_11__* %106, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_9__* %109)
  %111 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %111, i8** %4, align 8
  br label %147

112:                                              ; preds = %100, %91, %61
  %113 = load i64, i64* %13, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %13, align 8
  br label %28

115:                                              ; preds = %28
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = icmp eq i32* %118, null
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  %121 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %121, i8** %4, align 8
  br label %147

122:                                              ; preds = %115
  %123 = load i64, i64* %12, align 8
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %122
  %126 = load i32, i32* @NGX_LOG_EMERG, align 4
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %128 = call i32 (i32, %struct.TYPE_11__*, i32, i8*, ...) @ngx_conf_log_error(i32 %126, %struct.TYPE_11__* %127, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %129 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %129, i8** %4, align 8
  br label %147

130:                                              ; preds = %122
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i64, i64* %12, align 8
  %135 = load i32, i32* %9, align 4
  %136 = call i32* @ngx_open_file_cache_init(i32 %133, i64 %134, i32 %135)
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  store i32* %136, i32** %138, align 8
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %145

143:                                              ; preds = %130
  %144 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %144, i8** %4, align 8
  br label %147

145:                                              ; preds = %130
  %146 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %146, i8** %4, align 8
  br label %147

147:                                              ; preds = %145, %143, %125, %120, %104, %21
  %148 = load i8*, i8** %4, align 8
  ret i8* %148
}

declare dso_local i64 @ngx_strncmp(i64, i8*, i32) #1

declare dso_local i64 @ngx_atoi(i64, i64) #1

declare dso_local i32 @ngx_parse_time(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @ngx_strcmp(i64, i8*) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_11__*, i32, i8*, ...) #1

declare dso_local i32* @ngx_open_file_cache_init(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
