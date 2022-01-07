; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_http_tx_manager_lock_file.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_http_tx_manager_lock_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_7__ = type { i32, i32* }

@seaf = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [47 x i8] c"Failed to create connection pool for host %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to get connection to host %s.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"%s/seafhttp/repo/%s/lock-file?p=%s\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"%s/repo/%s/lock-file?p=%s\00", align 1
@TRUE = common dso_local global i32 0, align 4
@HTTP_OK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Bad response code for PUT %s: %d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @http_tx_manager_lock_file(i32* %0, i8* %1, i32 %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** @seaf, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %14, align 8
  store i32 0, i32* %20, align 4
  %27 = load i32*, i32** %14, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = call i32* @find_connection_pool(i32* %27, i8* %28)
  store i32* %29, i32** %15, align 8
  %30 = load i32*, i32** %15, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %6
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 (i8*, i8*, ...) @seaf_warning(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %33)
  store i32 -1, i32* %7, align 4
  br label %91

35:                                               ; preds = %6
  %36 = load i32*, i32** %15, align 8
  %37 = call %struct.TYPE_7__* @connection_pool_get_connection(i32* %36)
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %16, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %39 = icmp ne %struct.TYPE_7__* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 (i8*, i8*, ...) @seaf_warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  store i32 -1, i32* %7, align 4
  br label %91

43:                                               ; preds = %35
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %17, align 8
  %47 = load i8*, i8** %13, align 8
  %48 = load i32, i32* @FALSE, align 4
  %49 = call i8* @g_uri_escape_string(i8* %47, i32* null, i32 %48)
  store i8* %49, i8** %21, align 8
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %43
  %53 = load i8*, i8** %9, align 8
  %54 = load i8*, i8** %12, align 8
  %55 = load i8*, i8** %21, align 8
  %56 = call i8* @g_strdup_printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %53, i8* %54, i8* %55)
  store i8* %56, i8** %18, align 8
  br label %62

57:                                               ; preds = %43
  %58 = load i8*, i8** %9, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = load i8*, i8** %21, align 8
  %61 = call i8* @g_strdup_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %58, i8* %59, i8* %60)
  store i8* %61, i8** %18, align 8
  br label %62

62:                                               ; preds = %57, %52
  %63 = load i8*, i8** %21, align 8
  %64 = call i32 @g_free(i8* %63)
  %65 = load i32*, i32** %17, align 8
  %66 = load i8*, i8** %18, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = load i32, i32* @TRUE, align 4
  %69 = call i64 @http_put(i32* %65, i8* %66, i8* %67, i32* null, i32 0, i32* null, i32* null, i32* %19, i32* null, i32* null, i32 %68, i32* null)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %62
  %72 = load i32, i32* @TRUE, align 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  store i32 -1, i32* %20, align 4
  br label %84

75:                                               ; preds = %62
  %76 = load i32, i32* %19, align 4
  %77 = load i32, i32* @HTTP_OK, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i8*, i8** %18, align 8
  %81 = load i32, i32* %19, align 4
  %82 = call i32 (i8*, i8*, ...) @seaf_warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %80, i32 %81)
  store i32 -1, i32* %20, align 4
  br label %83

83:                                               ; preds = %79, %75
  br label %84

84:                                               ; preds = %83, %71
  %85 = load i8*, i8** %18, align 8
  %86 = call i32 @g_free(i8* %85)
  %87 = load i32*, i32** %15, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %89 = call i32 @connection_pool_return_connection(i32* %87, %struct.TYPE_7__* %88)
  %90 = load i32, i32* %20, align 4
  store i32 %90, i32* %7, align 4
  br label %91

91:                                               ; preds = %84, %40, %32
  %92 = load i32, i32* %7, align 4
  ret i32 %92
}

declare dso_local i32* @find_connection_pool(i32*, i8*) #1

declare dso_local i32 @seaf_warning(i8*, i8*, ...) #1

declare dso_local %struct.TYPE_7__* @connection_pool_get_connection(i32*) #1

declare dso_local i8* @g_uri_escape_string(i8*, i32*, i32) #1

declare dso_local i8* @g_strdup_printf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i64 @http_put(i32*, i8*, i8*, i32*, i32, i32*, i32*, i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @connection_pool_return_connection(i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
