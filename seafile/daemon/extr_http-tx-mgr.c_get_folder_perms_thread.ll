; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_get_folder_perms_thread.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_get_folder_perms_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_12__ = type { %struct.TYPE_13__*, i8*, i32, i32 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i8*, i32* }

@seaf = common dso_local global %struct.TYPE_15__* null, align 8
@.str = private unnamed_addr constant [47 x i8] c"Failed to create connection pool for host %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to get connection to host %s.\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"%s/seafhttp/repo/folder-perm\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"%s/repo/folder-perm\00", align 1
@TRUE = common dso_local global i8* null, align 8
@HTTP_OK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Bad response code for GET %s: %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @get_folder_perms_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_folder_perms_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_13__*, align 8
  store i8* %0, i8** %3, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %4, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** @seaf, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %5, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %12, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32* @find_connection_pool(i32* %22, i32 %25)
  store i32* %26, i32** %6, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %1
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  %35 = call i32 (i8*, i8*, ...) @seaf_warning(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %34)
  %36 = load i8*, i8** %3, align 8
  store i8* %36, i8** %2, align 8
  br label %141

37:                                               ; preds = %1
  %38 = load i32*, i32** %6, align 8
  %39 = call %struct.TYPE_14__* @connection_pool_get_connection(i32* %38)
  store %struct.TYPE_14__* %39, %struct.TYPE_14__** %7, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %41 = icmp ne %struct.TYPE_14__* %40, null
  br i1 %41, label %50, label %42

42:                                               ; preds = %37
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i8*
  %48 = call i32 (i8*, i8*, ...) @seaf_warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  %49 = load i8*, i8** %3, align 8
  store i8* %49, i8** %2, align 8
  br label %141

50:                                               ; preds = %37
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %8, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %50
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i8* @g_strdup_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  store i8* %62, i8** %9, align 8
  br label %68

63:                                               ; preds = %50
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i8* @g_strdup_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  store i8* %67, i8** %9, align 8
  br label %68

68:                                               ; preds = %63, %58
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %70, align 8
  %72 = call i8* @compose_get_folder_perms_request(%struct.TYPE_13__* %71)
  store i8* %72, i8** %10, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %68
  br label %109

76:                                               ; preds = %68
  %77 = load i32*, i32** %8, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = load i8*, i8** %10, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = call i32 @strlen(i8* %80)
  %82 = load i8*, i8** @TRUE, align 8
  %83 = call i64 @http_post(i32* %77, i8* %78, i32* null, i8* %79, i32 %81, i32* %11, i8** %12, i32* %13, i8* %82, i32* null)
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %76
  %86 = load i8*, i8** @TRUE, align 8
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  store i8* %86, i8** %88, align 8
  br label %109

89:                                               ; preds = %76
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* @HTTP_OK, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %104

93:                                               ; preds = %89
  %94 = load i8*, i8** %12, align 8
  %95 = load i32, i32* %13, align 4
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %97 = call i64 @parse_folder_perms(i8* %94, i32 %95, %struct.TYPE_12__* %96)
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %109

100:                                              ; preds = %93
  %101 = load i8*, i8** @TRUE, align 8
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 1
  store i8* %101, i8** %103, align 8
  br label %108

104:                                              ; preds = %89
  %105 = load i8*, i8** %9, align 8
  %106 = load i32, i32* %11, align 4
  %107 = call i32 (i8*, i8*, ...) @seaf_warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %105, i32 %106)
  br label %108

108:                                              ; preds = %104, %100
  br label %109

109:                                              ; preds = %108, %99, %85, %75
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %111, align 8
  store %struct.TYPE_13__* %112, %struct.TYPE_13__** %14, align 8
  br label %113

113:                                              ; preds = %122, %109
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %115 = icmp ne %struct.TYPE_13__* %114, null
  br i1 %115, label %116, label %126

116:                                              ; preds = %113
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = inttoptr i64 %119 to i32*
  %121 = call i32 @http_folder_perm_req_free(i32* %120)
  br label %122

122:                                              ; preds = %116
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %124, align 8
  store %struct.TYPE_13__* %125, %struct.TYPE_13__** %14, align 8
  br label %113

126:                                              ; preds = %113
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %128, align 8
  %130 = call i32 @g_list_free(%struct.TYPE_13__* %129)
  %131 = load i8*, i8** %9, align 8
  %132 = call i32 @g_free(i8* %131)
  %133 = load i8*, i8** %10, align 8
  %134 = call i32 @g_free(i8* %133)
  %135 = load i8*, i8** %12, align 8
  %136 = call i32 @g_free(i8* %135)
  %137 = load i32*, i32** %6, align 8
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %139 = call i32 @connection_pool_return_connection(i32* %137, %struct.TYPE_14__* %138)
  %140 = load i8*, i8** %3, align 8
  store i8* %140, i8** %2, align 8
  br label %141

141:                                              ; preds = %126, %42, %29
  %142 = load i8*, i8** %2, align 8
  ret i8* %142
}

declare dso_local i32* @find_connection_pool(i32*, i32) #1

declare dso_local i32 @seaf_warning(i8*, i8*, ...) #1

declare dso_local %struct.TYPE_14__* @connection_pool_get_connection(i32*) #1

declare dso_local i8* @g_strdup_printf(i8*, i32) #1

declare dso_local i8* @compose_get_folder_perms_request(%struct.TYPE_13__*) #1

declare dso_local i64 @http_post(i32*, i8*, i32*, i8*, i32, i32*, i8**, i32*, i8*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @parse_folder_perms(i8*, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @http_folder_perm_req_free(i32*) #1

declare dso_local i32 @g_list_free(%struct.TYPE_13__*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @connection_pool_return_connection(i32*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
