; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_upload_check_id_list_segment.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_upload_check_id_list_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i32, i32* }
%struct.TYPE_19__ = type { i8* }
%struct.TYPE_17__ = type { i32 }

@ID_LIST_SEGMENT_N = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Check %d ids for %s:%s.\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@HTTP_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Bad response code for POST %s: %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Invalid JSON response from the server: %s.\0A\00", align 1
@SYNC_ERROR_ID_SERVER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"%lu objects or blocks are needed for %s:%s.\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Invalid JSON response from the server.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_20__*, i8*, %struct.TYPE_19__**, %struct.TYPE_19__**)* @upload_check_id_list_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @upload_check_id_list_segment(%struct.TYPE_18__* %0, %struct.TYPE_20__* %1, i8* %2, %struct.TYPE_19__** %3, %struct.TYPE_19__** %4) #0 {
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_19__**, align 8
  %10 = alloca %struct.TYPE_19__**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_17__, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i32*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.TYPE_19__** %3, %struct.TYPE_19__*** %9, align 8
  store %struct.TYPE_19__** %4, %struct.TYPE_19__*** %10, align 8
  store i32 0, i32* %14, align 4
  store i8* null, i8** %15, align 8
  store i8* null, i8** %19, align 8
  store i32 0, i32* %21, align 4
  %26 = call i32* (...) @json_array()
  store i32* %26, i32** %11, align 8
  br label %27

27:                                               ; preds = %53, %5
  %28 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %9, align 8
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %28, align 8
  %30 = icmp ne %struct.TYPE_19__* %29, null
  br i1 %30, label %31, label %54

31:                                               ; preds = %27
  %32 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %9, align 8
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %13, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = load i8*, i8** %13, align 8
  %38 = call i32 @json_string(i8* %37)
  %39 = call i32 @json_array_append_new(i32* %36, i32 %38)
  %40 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %9, align 8
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %40, align 8
  %42 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %9, align 8
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %42, align 8
  %44 = call %struct.TYPE_19__* @g_list_delete_link(%struct.TYPE_19__* %41, %struct.TYPE_19__* %43)
  %45 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %9, align 8
  store %struct.TYPE_19__* %44, %struct.TYPE_19__** %45, align 8
  %46 = load i8*, i8** %13, align 8
  %47 = call i32 @g_free(i8* %46)
  %48 = load i32, i32* %14, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* @ID_LIST_SEGMENT_N, align 4
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %31
  br label %54

53:                                               ; preds = %31
  br label %27

54:                                               ; preds = %52, %27
  %55 = load i32, i32* %14, align 4
  %56 = sext i32 %55 to i64
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @seaf_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %56, i32 %59, i32 %62)
  %64 = load i32*, i32** %11, align 8
  %65 = call i8* @json_dumps(i32* %64, i32 0)
  store i8* %65, i8** %15, align 8
  %66 = load i8*, i8** %15, align 8
  %67 = call i32 @strlen(i8* %66)
  store i32 %67, i32* %16, align 4
  %68 = load i32*, i32** %11, align 8
  %69 = call i32 @json_decref(i32* %68)
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  store i32* %72, i32** %17, align 8
  %73 = load i32*, i32** %17, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load i8*, i8** %15, align 8
  %79 = load i32, i32* %16, align 4
  %80 = load i32, i32* @TRUE, align 4
  %81 = call i64 @http_post(i32* %73, i8* %74, i32 %77, i8* %78, i32 %79, i32* %18, i8** %19, i32* %20, i32 %80, i32* %22)
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %54
  %84 = load i32, i32* @TRUE, align 4
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %88 = load i32, i32* %22, align 4
  %89 = call i32 @handle_curl_errors(%struct.TYPE_18__* %87, i32 %88)
  store i32 -1, i32* %21, align 4
  br label %154

90:                                               ; preds = %54
  %91 = load i32, i32* %18, align 4
  %92 = load i32, i32* @HTTP_OK, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %90
  %95 = load i8*, i8** %8, align 8
  %96 = load i32, i32* %18, align 4
  %97 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %95, i32 %96)
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %99 = load i32, i32* %18, align 4
  %100 = call i32 @handle_http_errors(%struct.TYPE_18__* %98, i32 %99)
  store i32 -1, i32* %21, align 4
  br label %154

101:                                              ; preds = %90
  %102 = load i8*, i8** %19, align 8
  %103 = load i32, i32* %20, align 4
  %104 = call i32* @json_loadb(i8* %102, i32 %103, i32 0, %struct.TYPE_17__* %12)
  store i32* %104, i32** %11, align 8
  %105 = load i32*, i32** %11, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %114, label %107

107:                                              ; preds = %101
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* @SYNC_ERROR_ID_SERVER, align 4
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 4
  store i32 -1, i32* %21, align 4
  br label %154

114:                                              ; preds = %101
  %115 = load i32*, i32** %11, align 8
  %116 = call i64 @json_array_size(i32* %115)
  store i64 %116, i64* %24, align 8
  %117 = load i64, i64* %24, align 8
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @seaf_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i64 %117, i32 %120, i32 %123)
  store i32 0, i32* %23, align 4
  br label %125

125:                                              ; preds = %148, %114
  %126 = load i32, i32* %23, align 4
  %127 = sext i32 %126 to i64
  %128 = load i64, i64* %24, align 8
  %129 = icmp ult i64 %127, %128
  br i1 %129, label %130, label %151

130:                                              ; preds = %125
  %131 = load i32*, i32** %11, align 8
  %132 = load i32, i32* %23, align 4
  %133 = call i32* @json_array_get(i32* %131, i32 %132)
  store i32* %133, i32** %25, align 8
  %134 = load i32*, i32** %25, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %140, label %136

136:                                              ; preds = %130
  %137 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %138 = load i32*, i32** %11, align 8
  %139 = call i32 @json_decref(i32* %138)
  store i32 -1, i32* %21, align 4
  br label %154

140:                                              ; preds = %130
  %141 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %10, align 8
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %141, align 8
  %143 = load i32*, i32** %25, align 8
  %144 = call i32 @json_string_value(i32* %143)
  %145 = call i32 @g_strdup(i32 %144)
  %146 = call %struct.TYPE_19__* @g_list_prepend(%struct.TYPE_19__* %142, i32 %145)
  %147 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %10, align 8
  store %struct.TYPE_19__* %146, %struct.TYPE_19__** %147, align 8
  br label %148

148:                                              ; preds = %140
  %149 = load i32, i32* %23, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %23, align 4
  br label %125

151:                                              ; preds = %125
  %152 = load i32*, i32** %11, align 8
  %153 = call i32 @json_decref(i32* %152)
  br label %154

154:                                              ; preds = %151, %136, %107, %94, %83
  %155 = load i32*, i32** %17, align 8
  %156 = call i32 @curl_easy_reset(i32* %155)
  %157 = load i8*, i8** %15, align 8
  %158 = call i32 @g_free(i8* %157)
  %159 = load i8*, i8** %19, align 8
  %160 = call i32 @g_free(i8* %159)
  %161 = load i32, i32* %21, align 4
  ret i32 %161
}

declare dso_local i32* @json_array(...) #1

declare dso_local i32 @json_array_append_new(i32*, i32) #1

declare dso_local i32 @json_string(i8*) #1

declare dso_local %struct.TYPE_19__* @g_list_delete_link(%struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @seaf_debug(i8*, i64, i32, i32) #1

declare dso_local i8* @json_dumps(i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @json_decref(i32*) #1

declare dso_local i64 @http_post(i32*, i8*, i32, i8*, i32, i32*, i8**, i32*, i32, i32*) #1

declare dso_local i32 @handle_curl_errors(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @seaf_warning(i8*, ...) #1

declare dso_local i32 @handle_http_errors(%struct.TYPE_18__*, i32) #1

declare dso_local i32* @json_loadb(i8*, i32, i32, %struct.TYPE_17__*) #1

declare dso_local i64 @json_array_size(i32*) #1

declare dso_local i32* @json_array_get(i32*, i32) #1

declare dso_local %struct.TYPE_19__* @g_list_prepend(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @g_strdup(i32) #1

declare dso_local i32 @json_string_value(i32*) #1

declare dso_local i32 @curl_easy_reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
