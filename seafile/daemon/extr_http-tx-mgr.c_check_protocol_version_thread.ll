; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_check_protocol_version_thread.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_check_protocol_version_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_10__ = type { i32, i8*, i8*, i32, i32 }
%struct.TYPE_9__ = type { i8*, i32* }

@seaf = common dso_local global %struct.TYPE_11__* null, align 8
@.str = private unnamed_addr constant [47 x i8] c"Failed to create connection pool for host %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to get connection to host %s.\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"%s/seafhttp/protocol-version\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"%s/protocol-version\00", align 1
@TRUE = common dso_local global i8* null, align 8
@HTTP_OK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Bad response code for GET %s: %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @check_protocol_version_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @check_protocol_version_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %4, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** @seaf, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %5, align 8
  store i8* null, i8** %11, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32* @find_connection_pool(i32* %21, i32 %24)
  store i32* %25, i32** %6, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %1
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 (i8*, i8*, ...) @seaf_warning(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = load i8*, i8** %3, align 8
  store i8* %35, i8** %2, align 8
  br label %128

36:                                               ; preds = %1
  %37 = load i32*, i32** %6, align 8
  %38 = call %struct.TYPE_9__* @connection_pool_get_connection(i32* %37)
  store %struct.TYPE_9__* %38, %struct.TYPE_9__** %7, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %40 = icmp ne %struct.TYPE_9__* %39, null
  br i1 %40, label %49, label %41

41:                                               ; preds = %36
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i8*
  %47 = call i32 (i8*, i8*, ...) @seaf_warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  %48 = load i8*, i8** %3, align 8
  store i8* %48, i8** %2, align 8
  br label %128

49:                                               ; preds = %36
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %8, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %49
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call i8* @g_strdup_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  store i8* %61, i8** %9, align 8
  br label %67

62:                                               ; preds = %49
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = call i8* @g_strdup_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  store i8* %66, i8** %9, align 8
  br label %67

67:                                               ; preds = %62, %57
  %68 = load i32*, i32** %8, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = load i8*, i8** @TRUE, align 8
  %71 = call i64 @http_get(i32* %68, i8* %69, i32* null, i32* %10, i8** %11, i64* %12, i32* null, i32* null, i8* %70, i32* %13)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %67
  %74 = load i8*, i8** @TRUE, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @curl_error_to_http_task_error(i32 %77)
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  br label %119

81:                                               ; preds = %67
  %82 = load i8*, i8** @TRUE, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 2
  store i8* %82, i8** %84, align 8
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @HTTP_OK, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %107

88:                                               ; preds = %81
  %89 = load i64, i64* %12, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i8*, i8** @TRUE, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  br label %106

95:                                               ; preds = %88
  %96 = load i8*, i8** %11, align 8
  %97 = load i64, i64* %12, align 8
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %99 = call i64 @parse_protocol_version(i8* %96, i64 %97, %struct.TYPE_10__* %98)
  %100 = icmp slt i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = load i8*, i8** @TRUE, align 8
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  store i8* %102, i8** %104, align 8
  br label %105

105:                                              ; preds = %101, %95
  br label %106

106:                                              ; preds = %105, %91
  br label %118

107:                                              ; preds = %81
  %108 = load i8*, i8** %9, align 8
  %109 = load i32, i32* %10, align 4
  %110 = call i32 (i8*, i8*, ...) @seaf_warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %108, i32 %109)
  %111 = load i8*, i8** @TRUE, align 8
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 1
  store i8* %111, i8** %113, align 8
  %114 = load i32, i32* %10, align 4
  %115 = call i32 @http_error_to_http_task_error(i32 %114)
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  br label %118

118:                                              ; preds = %107, %106
  br label %119

119:                                              ; preds = %118, %73
  %120 = load i8*, i8** %9, align 8
  %121 = call i32 @g_free(i8* %120)
  %122 = load i8*, i8** %11, align 8
  %123 = call i32 @g_free(i8* %122)
  %124 = load i32*, i32** %6, align 8
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %126 = call i32 @connection_pool_return_connection(i32* %124, %struct.TYPE_9__* %125)
  %127 = load i8*, i8** %3, align 8
  store i8* %127, i8** %2, align 8
  br label %128

128:                                              ; preds = %119, %41, %28
  %129 = load i8*, i8** %2, align 8
  ret i8* %129
}

declare dso_local i32* @find_connection_pool(i32*, i32) #1

declare dso_local i32 @seaf_warning(i8*, i8*, ...) #1

declare dso_local %struct.TYPE_9__* @connection_pool_get_connection(i32*) #1

declare dso_local i8* @g_strdup_printf(i8*, i32) #1

declare dso_local i64 @http_get(i32*, i8*, i32*, i32*, i8**, i64*, i32*, i32*, i8*, i32*) #1

declare dso_local i32 @curl_error_to_http_task_error(i32) #1

declare dso_local i64 @parse_protocol_version(i8*, i64, %struct.TYPE_10__*) #1

declare dso_local i32 @http_error_to_http_task_error(i32) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @connection_pool_return_connection(i32*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
