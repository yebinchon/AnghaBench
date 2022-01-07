; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_set_content_length.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_set_content_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i8, i32, %struct.TYPE_16__*, %struct.TYPE_15__, %struct.TYPE_14__*, i64, i64, i64, %struct.TYPE_13__, i32 }
%struct.TYPE_16__ = type { i8* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_13__ = type { i8, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_14__, i64, i32, i32, i64, i64 }

@set_content_length.szChunked = internal constant [8 x i8] c"chunked\00", align 1
@set_content_length.headW = internal constant [5 x i8] c"HEAD\00", align 1
@HTTP_STATUS_NO_CONTENT = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@HTTP_QUERY_FLAG_NUMBER = common dso_local global i32 0, align 4
@HTTP_QUERY_CONTENT_LENGTH = common dso_local global i32 0, align 4
@HTTP_QUERY_TRANSFER_ENCODING = common dso_local global i32 0, align 4
@ERROR_OUTOFMEMORY = common dso_local global i64 0, align 8
@chunked_stream_vtbl = common dso_local global i32 0, align 4
@CHUNKED_STREAM_STATE_READING_CHUNK_SIZE = common dso_local global i32 0, align 4
@set_content_length.deflateW = internal constant [8 x i8] c"deflate\00", align 1
@set_content_length.gzipW = internal constant [5 x i8] c"gzip\00", align 1
@szContent_Encoding = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_17__*)* @set_content_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_content_length(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca [20 x i8], align 16
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @HTTP_STATUS_NO_CONTENT, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 10
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @strcmpW(i32 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @set_content_length.headW, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %13, %1
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 9
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  store i8 0, i8* %22, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 1
  store i8 0, i8* %24, align 8
  %25 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %25, i64* %2, align 8
  br label %181

26:                                               ; preds = %13
  store i64 1, i64* %5, align 8
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %28 = load i32, i32* @HTTP_QUERY_FLAG_NUMBER, align 4
  %29 = load i32, i32* @HTTP_QUERY_CONTENT_LENGTH, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 1
  %33 = call i64 @HTTP_HttpQueryInfoW(%struct.TYPE_17__* %27, i32 %30, i8* %32, i64* %5, i32* null)
  %34 = load i64, i64* @ERROR_SUCCESS, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 1
  store i8 -1, i8* %38, align 8
  br label %39

39:                                               ; preds = %36, %26
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 1
  %42 = load i8, i8* %41, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 9
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  store i8 %42, i8* %45, align 8
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 7
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 9
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  store i64 %48, i64* %51, align 8
  store i64 20, i64* %5, align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %53 = load i32, i32* @HTTP_QUERY_TRANSFER_ENCODING, align 4
  %54 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %55 = call i64 @HTTP_HttpQueryInfoW(%struct.TYPE_17__* %52, i32 %53, i8* %54, i64* %5, i32* null)
  %56 = load i64, i64* @ERROR_SUCCESS, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %116

58:                                               ; preds = %39
  %59 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %60 = call i32 @strcmpiW(i8* %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @set_content_length.szChunked, i64 0, i64 0))
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %116, label %62

62:                                               ; preds = %58
  %63 = call %struct.TYPE_18__* @heap_alloc(i32 40)
  store %struct.TYPE_18__* %63, %struct.TYPE_18__** %6, align 8
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %65 = icmp ne %struct.TYPE_18__* %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %62
  %67 = load i64, i64* @ERROR_OUTOFMEMORY, align 8
  store i64 %67, i64* %2, align 8
  br label %181

68:                                               ; preds = %62
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  store i32* @chunked_stream_vtbl, i32** %71, align 8
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 5
  store i64 0, i64* %73, align 8
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 1
  store i64 0, i64* %75, align 8
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 4
  store i64 0, i64* %77, align 8
  %78 = load i32, i32* @CHUNKED_STREAM_STATE_READING_CHUNK_SIZE, align 4
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 4
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 7
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %109

85:                                               ; preds = %68
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 8
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 6
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %91, %94
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 7
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @memcpy(i32 %88, i64 %95, i64 %98)
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 7
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 1
  store i64 %102, i64* %104, align 8
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 6
  store i64 0, i64* %106, align 8
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 7
  store i64 0, i64* %108, align 8
  br label %109

109:                                              ; preds = %85, %68
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 5
  store %struct.TYPE_14__* %111, %struct.TYPE_14__** %113, align 8
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 1
  store i8 -1, i8* %115, align 8
  br label %116

116:                                              ; preds = %109, %58, %39
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %179

122:                                              ; preds = %116
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 2
  %125 = call i32 @EnterCriticalSection(i32* %124)
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %127 = load i32, i32* @szContent_Encoding, align 4
  %128 = load i32, i32* @FALSE, align 4
  %129 = call i32 @HTTP_GetCustomHeaderIndex(%struct.TYPE_17__* %126, i32 %127, i32 0, i32 %128)
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* %7, align 4
  %131 = icmp ne i32 %130, -1
  br i1 %131, label %132, label %175

132:                                              ; preds = %122
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 3
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %134, align 8
  %136 = load i32, i32* %7, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @strcmpiW(i8* %140, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @set_content_length.gzipW, i64 0, i64 0))
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %153, label %143

143:                                              ; preds = %132
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %145 = load i32, i32* %7, align 4
  %146 = call i32 @HTTP_DeleteCustomHeader(%struct.TYPE_17__* %144, i32 %145)
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 2
  %149 = call i32 @LeaveCriticalSection(i32* %148)
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %151 = load i32, i32* @TRUE, align 4
  %152 = call i64 @init_gzip_stream(%struct.TYPE_17__* %150, i32 %151)
  store i64 %152, i64* %2, align 8
  br label %181

153:                                              ; preds = %132
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 3
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %155, align 8
  %157 = load i32, i32* %7, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @strcmpiW(i8* %161, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @set_content_length.deflateW, i64 0, i64 0))
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %174, label %164

164:                                              ; preds = %153
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %166 = load i32, i32* %7, align 4
  %167 = call i32 @HTTP_DeleteCustomHeader(%struct.TYPE_17__* %165, i32 %166)
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 2
  %170 = call i32 @LeaveCriticalSection(i32* %169)
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %172 = load i32, i32* @FALSE, align 4
  %173 = call i64 @init_gzip_stream(%struct.TYPE_17__* %171, i32 %172)
  store i64 %173, i64* %2, align 8
  br label %181

174:                                              ; preds = %153
  br label %175

175:                                              ; preds = %174, %122
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 2
  %178 = call i32 @LeaveCriticalSection(i32* %177)
  br label %179

179:                                              ; preds = %175, %116
  %180 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %180, i64* %2, align 8
  br label %181

181:                                              ; preds = %179, %164, %143, %66, %19
  %182 = load i64, i64* %2, align 8
  ret i64 %182
}

declare dso_local i32 @strcmpW(i32, i8*) #1

declare dso_local i64 @HTTP_HttpQueryInfoW(%struct.TYPE_17__*, i32, i8*, i64*, i32*) #1

declare dso_local i32 @strcmpiW(i8*, i8*) #1

declare dso_local %struct.TYPE_18__* @heap_alloc(i32) #1

declare dso_local i32 @memcpy(i32, i64, i64) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @HTTP_GetCustomHeaderIndex(%struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i32 @HTTP_DeleteCustomHeader(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local i64 @init_gzip_stream(%struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
