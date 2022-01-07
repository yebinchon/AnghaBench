; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_http_tx_manager_get_head_commit_ids.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_http_tx_manager_get_head_commit_ids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_7__ = type { i32, i32* }

@seaf = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [47 x i8] c"Failed to create connection pool for host %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to get connection to host %s.\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"%s/seafhttp/repo/head-commits-multi/\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"%s/repo/head-commits-multi/\00", align 1
@TRUE = common dso_local global i32 0, align 4
@HTTP_OK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Bad response code for POST %s: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @http_tx_manager_get_head_commit_ids(i32* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** @seaf, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %10, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %18, align 8
  store i32* null, i32** %20, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i32* @find_connection_pool(i32* %26, i8* %27)
  store i32* %28, i32** %11, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %4
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 (i8*, i8*, ...) @seaf_warning(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %32)
  store i32* null, i32** %5, align 8
  br label %93

34:                                               ; preds = %4
  %35 = load i32*, i32** %11, align 8
  %36 = call %struct.TYPE_7__* @connection_pool_get_connection(i32* %35)
  store %struct.TYPE_7__* %36, %struct.TYPE_7__** %12, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %38 = icmp ne %struct.TYPE_7__* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 (i8*, i8*, ...) @seaf_warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  store i32* null, i32** %5, align 8
  br label %93

42:                                               ; preds = %34
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %13, align 8
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = load i8*, i8** %7, align 8
  %50 = call i8* @g_strdup_printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  store i8* %50, i8** %14, align 8
  br label %54

51:                                               ; preds = %42
  %52 = load i8*, i8** %7, align 8
  %53 = call i8* @g_strdup_printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %52)
  store i8* %53, i8** %14, align 8
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i32*, i32** %9, align 8
  %56 = call i8* @repo_id_list_to_json(i32* %55)
  store i8* %56, i8** %15, align 8
  %57 = load i8*, i8** %15, align 8
  %58 = call i32 @strlen(i8* %57)
  store i32 %58, i32* %16, align 4
  %59 = load i32*, i32** %13, align 8
  %60 = load i8*, i8** %14, align 8
  %61 = load i8*, i8** %15, align 8
  %62 = load i32, i32* %16, align 4
  %63 = load i32, i32* @TRUE, align 4
  %64 = call i64 @http_post(i32* %59, i8* %60, i32* null, i8* %61, i32 %62, i32* %17, i8** %18, i32* %19, i32 %63, i32* null)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %54
  %67 = load i32, i32* @TRUE, align 4
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  br label %82

70:                                               ; preds = %54
  %71 = load i32, i32* %17, align 4
  %72 = load i32, i32* @HTTP_OK, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i8*, i8** %14, align 8
  %76 = load i32, i32* %17, align 4
  %77 = call i32 (i8*, i8*, ...) @seaf_warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %75, i32 %76)
  br label %82

78:                                               ; preds = %70
  %79 = load i8*, i8** %18, align 8
  %80 = load i32, i32* %19, align 4
  %81 = call i32* @repo_head_commit_map_from_json(i8* %79, i32 %80)
  store i32* %81, i32** %20, align 8
  br label %82

82:                                               ; preds = %78, %74, %66
  %83 = load i8*, i8** %14, align 8
  %84 = call i32 @g_free(i8* %83)
  %85 = load i32*, i32** %11, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %87 = call i32 @connection_pool_return_connection(i32* %85, %struct.TYPE_7__* %86)
  %88 = load i8*, i8** %15, align 8
  %89 = call i32 @free(i8* %88)
  %90 = load i8*, i8** %18, align 8
  %91 = call i32 @g_free(i8* %90)
  %92 = load i32*, i32** %20, align 8
  store i32* %92, i32** %5, align 8
  br label %93

93:                                               ; preds = %82, %39, %31
  %94 = load i32*, i32** %5, align 8
  ret i32* %94
}

declare dso_local i32* @find_connection_pool(i32*, i8*) #1

declare dso_local i32 @seaf_warning(i8*, i8*, ...) #1

declare dso_local %struct.TYPE_7__* @connection_pool_get_connection(i32*) #1

declare dso_local i8* @g_strdup_printf(i8*, i8*) #1

declare dso_local i8* @repo_id_list_to_json(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @http_post(i32*, i8*, i32*, i8*, i32, i32*, i8**, i32*, i32, i32*) #1

declare dso_local i32* @repo_head_commit_map_from_json(i8*, i32) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @connection_pool_return_connection(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
