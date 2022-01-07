; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_http.c_send_http_request.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_http.c_send_http_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32, i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_15__ = type { i32 }

@__const.send_http_request.send_buffer = private unnamed_addr constant %struct.TYPE_16__ { i32 28, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, align 4
@BINDVERB_GET = common dso_local global i64 0, align 8
@STREAM_SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Unsupported This->base.bind_info.stgmedData.tymed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*)* @send_http_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_http_request(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_16__, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_15__, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %6 = bitcast %struct.TYPE_16__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.TYPE_16__* @__const.send_http_request.send_buffer to i8*), i64 28, i1 false)
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 4
  store i32 %9, i32* %10, align 4
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @strlenW(i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 6
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @BINDVERB_GET, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %94

24:                                               ; preds = %1
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %85 [
    i32 129, label %31
    i32 128, label %47
  ]

31:                                               ; preds = %24
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 2
  store i32 %38, i32* %39, align 4
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 5
  store i32 %44, i32* %45, align 4
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  br label %93

47:                                               ; preds = %24
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 5
  store i32 %52, i32* %53, align 4
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %75, label %59

59:                                               ; preds = %47
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 1
  store i64 %66, i64* %69, align 8
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @IStream_AddRef(i64 %73)
  br label %75

75:                                               ; preds = %59, %47
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  store i32 0, i32* %76, align 4
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* @STREAM_SEEK_SET, align 4
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @IStream_Seek(i64 %80, i32 %83, i32 %81, i32* null)
  br label %93

85:                                               ; preds = %24
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @FIXME(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %85, %75, %31
  br label %94

94:                                               ; preds = %93, %1
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %94
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @HttpSendRequestExW(i32 %104, %struct.TYPE_16__* %3, i32* null, i32 0, i32 0)
  store i64 %105, i64* %4, align 8
  br label %120

106:                                              ; preds = %94
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @HttpSendRequestW(i32 %110, i32 %112, i32 %114, i32 %116, i32 %118)
  store i64 %119, i64* %4, align 8
  br label %120

120:                                              ; preds = %106, %100
  %121 = load i64, i64* %4, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  br label %126

124:                                              ; preds = %120
  %125 = call i32 (...) @GetLastError()
  br label %126

126:                                              ; preds = %124, %123
  %127 = phi i32 [ 0, %123 ], [ %125, %124 ]
  ret i32 %127
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strlenW(i32) #2

declare dso_local i32 @IStream_AddRef(i64) #2

declare dso_local i32 @IStream_Seek(i64, i32, i32, i32*) #2

declare dso_local i32 @FIXME(i8*, i32) #2

declare dso_local i64 @HttpSendRequestExW(i32, %struct.TYPE_16__*, i32*, i32, i32) #2

declare dso_local i64 @HttpSendRequestW(i32, i32, i32, i32, i32) #2

declare dso_local i32 @GetLastError(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
