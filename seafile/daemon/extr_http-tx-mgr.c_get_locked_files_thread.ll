; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_get_locked_files_thread.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_get_locked_files_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_9__ = type { i32, i8*, i32, i32 }
%struct.TYPE_10__ = type { i8*, i32* }

@seaf = common dso_local global %struct.TYPE_11__* null, align 8
@.str = private unnamed_addr constant [47 x i8] c"Failed to create connection pool for host %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to get connection to host %s.\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"%s/seafhttp/repo/locked-files\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"%s/repo/locked-files\00", align 1
@TRUE = common dso_local global i8* null, align 8
@HTTP_OK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Bad response code for GET %s: %d.\0A\00", align 1
@http_locked_files_req_free = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @get_locked_files_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_locked_files_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %4, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** @seaf, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %5, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %12, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32* @find_connection_pool(i32* %21, i32 %24)
  store i32* %25, i32** %6, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %1
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 (i8*, i8*, ...) @seaf_warning(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = load i8*, i8** %3, align 8
  store i8* %35, i8** %2, align 8
  br label %125

36:                                               ; preds = %1
  %37 = load i32*, i32** %6, align 8
  %38 = call %struct.TYPE_10__* @connection_pool_get_connection(i32* %37)
  store %struct.TYPE_10__* %38, %struct.TYPE_10__** %7, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %40 = icmp ne %struct.TYPE_10__* %39, null
  br i1 %40, label %49, label %41

41:                                               ; preds = %36
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i8*
  %47 = call i32 (i8*, i8*, ...) @seaf_warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  %48 = load i8*, i8** %3, align 8
  store i8* %48, i8** %2, align 8
  br label %125

49:                                               ; preds = %36
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %8, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %49
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i8* @g_strdup_printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  store i8* %61, i8** %9, align 8
  br label %67

62:                                               ; preds = %49
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i8* @g_strdup_printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  store i8* %66, i8** %9, align 8
  br label %67

67:                                               ; preds = %62, %57
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i8* @compose_get_locked_files_request(i32 %70)
  store i8* %71, i8** %10, align 8
  %72 = load i8*, i8** %10, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %67
  br label %108

75:                                               ; preds = %67
  %76 = load i32*, i32** %8, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = load i8*, i8** %10, align 8
  %80 = call i32 @strlen(i8* %79)
  %81 = load i8*, i8** @TRUE, align 8
  %82 = call i64 @http_post(i32* %76, i8* %77, i32* null, i8* %78, i32 %80, i32* %11, i8** %12, i32* %13, i8* %81, i32* null)
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %75
  %85 = load i8*, i8** @TRUE, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  store i8* %85, i8** %87, align 8
  br label %108

88:                                               ; preds = %75
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* @HTTP_OK, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %103

92:                                               ; preds = %88
  %93 = load i8*, i8** %12, align 8
  %94 = load i32, i32* %13, align 4
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %96 = call i64 @parse_locked_files(i8* %93, i32 %94, %struct.TYPE_9__* %95)
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  br label %108

99:                                               ; preds = %92
  %100 = load i8*, i8** @TRUE, align 8
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  store i8* %100, i8** %102, align 8
  br label %107

103:                                              ; preds = %88
  %104 = load i8*, i8** %9, align 8
  %105 = load i32, i32* %11, align 4
  %106 = call i32 (i8*, i8*, ...) @seaf_warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %104, i32 %105)
  br label %107

107:                                              ; preds = %103, %99
  br label %108

108:                                              ; preds = %107, %98, %84, %74
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i64, i64* @http_locked_files_req_free, align 8
  %113 = trunc i64 %112 to i32
  %114 = call i32 @g_list_free_full(i32 %111, i32 %113)
  %115 = load i8*, i8** %9, align 8
  %116 = call i32 @g_free(i8* %115)
  %117 = load i8*, i8** %10, align 8
  %118 = call i32 @g_free(i8* %117)
  %119 = load i8*, i8** %12, align 8
  %120 = call i32 @g_free(i8* %119)
  %121 = load i32*, i32** %6, align 8
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %123 = call i32 @connection_pool_return_connection(i32* %121, %struct.TYPE_10__* %122)
  %124 = load i8*, i8** %3, align 8
  store i8* %124, i8** %2, align 8
  br label %125

125:                                              ; preds = %108, %41, %28
  %126 = load i8*, i8** %2, align 8
  ret i8* %126
}

declare dso_local i32* @find_connection_pool(i32*, i32) #1

declare dso_local i32 @seaf_warning(i8*, i8*, ...) #1

declare dso_local %struct.TYPE_10__* @connection_pool_get_connection(i32*) #1

declare dso_local i8* @g_strdup_printf(i8*, i32) #1

declare dso_local i8* @compose_get_locked_files_request(i32) #1

declare dso_local i64 @http_post(i32*, i8*, i32*, i8*, i32, i32*, i8**, i32*, i8*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @parse_locked_files(i8*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @g_list_free_full(i32, i32) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @connection_pool_return_connection(i32*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
