; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_update_branch.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_update_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32* }

@.str = private unnamed_addr constant [41 x i8] c"%s/seafhttp/repo/%s/commit/HEAD/?head=%s\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"%s/repo/%s/commit/HEAD/?head=%s\00", align 1
@TRUE = common dso_local global i32 0, align 4
@HTTP_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Bad response code for PUT %s: %d.\0A\00", align 1
@HTTP_FORBIDDEN = common dso_local global i32 0, align 4
@gchar = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_9__*)* @update_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_branch(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  store i8* null, i8** %9, align 8
  store i32 0, i32* %11, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %5, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %2
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @g_strdup_printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26, i32 %29)
  store i8* %30, i8** %6, align 8
  br label %42

31:                                               ; preds = %2
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @g_strdup_printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %37, i32 %40)
  store i8* %41, i8** %6, align 8
  br label %42

42:                                               ; preds = %31, %20
  %43 = load i32*, i32** %5, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @TRUE, align 4
  %49 = call i64 @http_put(i32* %43, i8* %44, i32 %47, i32* null, i32 0, i32* null, i32* null, i32* %7, i8** %8, i32* %10, i32 %48, i32* %12)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %42
  %52 = load i32, i32* @TRUE, align 4
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @handle_curl_errors(%struct.TYPE_8__* %55, i32 %56)
  store i32 -1, i32* %11, align 4
  br label %90

58:                                               ; preds = %42
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @HTTP_OK, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %89

62:                                               ; preds = %58
  %63 = load i8*, i8** %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 (i8*, i8*, ...) @seaf_warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %63, i32 %64)
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @handle_http_errors(%struct.TYPE_8__* %66, i32 %67)
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @HTTP_FORBIDDEN, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %88

72:                                               ; preds = %62
  %73 = load i32, i32* @gchar, align 4
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  %76 = call i8* @g_new0(i32 %73, i32 %75)
  store i8* %76, i8** %9, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @memcpy(i8* %77, i8* %78, i32 %79)
  %81 = load i8*, i8** %9, align 8
  %82 = call i32 (i8*, i8*, ...) @seaf_warning(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %81)
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = call i32 @notify_permission_error(%struct.TYPE_8__* %83, i8* %84)
  %86 = load i8*, i8** %9, align 8
  %87 = call i32 @g_free(i8* %86)
  br label %88

88:                                               ; preds = %72, %62
  store i32 -1, i32* %11, align 4
  br label %89

89:                                               ; preds = %88, %58
  br label %90

90:                                               ; preds = %89, %51
  %91 = load i8*, i8** %6, align 8
  %92 = call i32 @g_free(i8* %91)
  %93 = load i8*, i8** %8, align 8
  %94 = call i32 @g_free(i8* %93)
  %95 = load i32*, i32** %5, align 8
  %96 = call i32 @curl_easy_reset(i32* %95)
  %97 = load i32, i32* %11, align 4
  ret i32 %97
}

declare dso_local i8* @g_strdup_printf(i8*, i32, i32, i32) #1

declare dso_local i64 @http_put(i32*, i8*, i32, i32*, i32, i32*, i32*, i32*, i8**, i32*, i32, i32*) #1

declare dso_local i32 @handle_curl_errors(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @seaf_warning(i8*, i8*, ...) #1

declare dso_local i32 @handle_http_errors(%struct.TYPE_8__*, i32) #1

declare dso_local i8* @g_new0(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @notify_permission_error(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @curl_easy_reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
