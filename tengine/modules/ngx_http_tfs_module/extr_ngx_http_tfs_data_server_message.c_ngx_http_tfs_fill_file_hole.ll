; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_data_server_message.c_ngx_http_tfs_fill_file_hole.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_data_server_message.c_ngx_http_tfs_fill_file_hole.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32*, i32*, i32*, i32* }

@NGX_HTTP_TFS_DATA_SERVER = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_MAX_FRAGMENT_SIZE = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"fill file hole once, size: %uL\00", align 1
@NGX_HTTP_TFS_ZERO_BUF_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"fill file hole, size: %z, remain hole size: %uL\00", align 1
@NGX_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_http_tfs_fill_file_hole(%struct.TYPE_8__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = load i64, i64* @NGX_HTTP_TFS_DATA_SERVER, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %8, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %55

20:                                               ; preds = %2
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @NGX_HTTP_TFS_MAX_FRAGMENT_SIZE, align 4
  %25 = call i32* @ngx_palloc(i32 %23, i32 %24)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 2
  store i32* %25, i32** %27, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %20
  %33 = load i64, i64* @NGX_ERROR, align 8
  store i64 %33, i64* %3, align 8
  br label %151

34:                                               ; preds = %20
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  store i32* %37, i32** %39, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 3
  store i32* %42, i32** %44, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* @NGX_HTTP_TFS_MAX_FRAGMENT_SIZE, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 4
  store i32* %50, i32** %52, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  br label %55

55:                                               ; preds = %34, %2
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 4
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = ptrtoint i32* %58 to i64
  %63 = ptrtoint i32* %61 to i64
  %64 = sub i64 %62, %63
  %65 = sdiv exact i64 %64, 4
  store i64 %65, i64* %6, align 8
  %66 = load i64, i64* %5, align 8
  %67 = load i64, i64* %6, align 8
  %68 = icmp ule i64 %66, %67
  br i1 %68, label %69, label %103

69:                                               ; preds = %55
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* %5, align 8
  %74 = call i32 @ngx_memzero(i32* %72, i64 %73)
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %76 = load i64, i64* %5, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 3
  %79 = load i32*, i32** %78, align 8
  %80 = call i64 @ngx_http_tfs_copy_body_buffer(%struct.TYPE_8__* %75, i64 %76, i32* %79)
  store i64 %80, i64* %7, align 8
  %81 = load i64, i64* %7, align 8
  %82 = load i64, i64* @NGX_ERROR, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %69
  %85 = load i64, i64* %7, align 8
  store i64 %85, i64* %3, align 8
  br label %151

86:                                               ; preds = %69
  %87 = load i64, i64* %5, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 %87
  store i32* %91, i32** %89, align 8
  %92 = load i64, i64* %5, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 %92
  store i32* %96, i32** %94, align 8
  %97 = load i32, i32* @NGX_LOG_DEBUG, align 4
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i64, i64* %5, align 8
  %102 = call i32 (i32, i32, i32, i8*, i64, ...) @ngx_log_error(i32 %97, i32 %100, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %101)
  br label %149

103:                                              ; preds = %55
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i64, i64* @NGX_HTTP_TFS_ZERO_BUF_SIZE, align 8
  %108 = call %struct.TYPE_9__* @ngx_create_temp_buf(i32 %106, i64 %107)
  store %struct.TYPE_9__* %108, %struct.TYPE_9__** %9, align 8
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %110 = icmp eq %struct.TYPE_9__* %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %103
  %112 = load i64, i64* @NGX_ERROR, align 8
  store i64 %112, i64* %3, align 8
  br label %151

113:                                              ; preds = %103
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = load i64, i64* @NGX_HTTP_TFS_ZERO_BUF_SIZE, align 8
  %118 = call i32 @ngx_memzero(i32* %116, i64 %117)
  br label %119

119:                                              ; preds = %137, %113
  %120 = load i64, i64* %5, align 8
  %121 = icmp ugt i64 %120, 0
  br i1 %121, label %122, label %148

122:                                              ; preds = %119
  %123 = load i64, i64* @NGX_HTTP_TFS_ZERO_BUF_SIZE, align 8
  %124 = load i64, i64* %5, align 8
  %125 = call i64 @ngx_min(i64 %123, i64 %124)
  store i64 %125, i64* %6, align 8
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %127 = load i64, i64* %6, align 8
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = call i64 @ngx_http_tfs_copy_body_buffer(%struct.TYPE_8__* %126, i64 %127, i32* %130)
  store i64 %131, i64* %7, align 8
  %132 = load i64, i64* %7, align 8
  %133 = load i64, i64* @NGX_ERROR, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %122
  %136 = load i64, i64* %7, align 8
  store i64 %136, i64* %3, align 8
  br label %151

137:                                              ; preds = %122
  %138 = load i64, i64* %6, align 8
  %139 = load i64, i64* %5, align 8
  %140 = sub i64 %139, %138
  store i64 %140, i64* %5, align 8
  %141 = load i32, i32* @NGX_LOG_DEBUG, align 4
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i64, i64* %6, align 8
  %146 = load i64, i64* %5, align 8
  %147 = call i32 (i32, i32, i32, i8*, i64, ...) @ngx_log_error(i32 %141, i32 %144, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %145, i64 %146)
  br label %119

148:                                              ; preds = %119
  br label %149

149:                                              ; preds = %148, %86
  %150 = load i64, i64* @NGX_OK, align 8
  store i64 %150, i64* %3, align 8
  br label %151

151:                                              ; preds = %149, %135, %111, %84, %32
  %152 = load i64, i64* %3, align 8
  ret i64 %152
}

declare dso_local i32* @ngx_palloc(i32, i32) #1

declare dso_local i32 @ngx_memzero(i32*, i64) #1

declare dso_local i64 @ngx_http_tfs_copy_body_buffer(%struct.TYPE_8__*, i64, i32*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i64, ...) #1

declare dso_local %struct.TYPE_9__* @ngx_create_temp_buf(i32, i64) #1

declare dso_local i64 @ngx_min(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
