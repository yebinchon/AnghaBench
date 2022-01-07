; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_HTTP_DealWithProxy.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_HTTP_DealWithProxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i64, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i8*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }

@HTTP_DealWithProxy.protoHttp = internal constant [5 x i8] c"http\00", align 1
@HTTP_DealWithProxy.szHttp = internal constant [8 x i8] c"http://\00", align 1
@HTTP_DealWithProxy.szNul = internal global [1 x i8] zeroinitializer, align 1
@__const.HTTP_DealWithProxy.UrlComponents = private unnamed_addr constant %struct.TYPE_12__ { i32 24, i32 0, i64 0, i32 0, i32 0 }, align 8
@FALSE = common dso_local global i32 0, align 4
@CSTR_EQUAL = common dso_local global i64 0, align 8
@LOCALE_SYSTEM_DEFAULT = common dso_local global i32 0, align 4
@NORM_IGNORECASE = common dso_local global i32 0, align 4
@INTERNET_SCHEME_HTTPS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"proxy server=%s port=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32*, %struct.TYPE_10__*)* @HTTP_DealWithProxy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HTTP_DealWithProxy(%struct.TYPE_11__* %0, i32* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_12__, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  %12 = bitcast %struct.TYPE_12__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.TYPE_12__* @__const.HTTP_DealWithProxy.UrlComponents to i8*), i64 24, i1 false)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %9, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @INTERNET_FindProxyForProtocol(i32 %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @HTTP_DealWithProxy.protoHttp, i64 0, i64 0))
  store i8* %16, i8** %10, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %4, align 4
  br label %105

21:                                               ; preds = %3
  %22 = load i64, i64* @CSTR_EQUAL, align 8
  %23 = load i32, i32* @LOCALE_SYSTEM_DEFAULT, align 4
  %24 = load i32, i32* @NORM_IGNORECASE, align 4
  %25 = load i8*, i8** %10, align 8
  %26 = call i32 @strlenW(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @HTTP_DealWithProxy.szHttp, i64 0, i64 0))
  %27 = call i32 @strlenW(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @HTTP_DealWithProxy.szHttp, i64 0, i64 0))
  %28 = call i64 @CompareStringW(i32 %23, i32 %24, i8* %25, i32 %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @HTTP_DealWithProxy.szHttp, i64 0, i64 0), i32 %27)
  %29 = icmp ne i64 %22, %28
  br i1 %29, label %30, label %53

30:                                               ; preds = %21
  %31 = load i8*, i8** %10, align 8
  %32 = call i32 @strlenW(i8* %31)
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 1
  %35 = add i64 %34, 8
  %36 = trunc i64 %35 to i32
  %37 = call i8* @heap_alloc(i32 %36)
  store i8* %37, i8** %11, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %30
  %41 = load i8*, i8** %10, align 8
  %42 = call i32 @heap_free(i8* %41)
  %43 = load i32, i32* @FALSE, align 4
  store i32 %43, i32* %4, align 4
  br label %105

44:                                               ; preds = %30
  %45 = load i8*, i8** %11, align 8
  %46 = call i32 @strcpyW(i8* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @HTTP_DealWithProxy.szHttp, i64 0, i64 0))
  %47 = load i8*, i8** %11, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = call i32 @strcatW(i8* %47, i8* %48)
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 @heap_free(i8* %50)
  %52 = load i8*, i8** %11, align 8
  store i8* %52, i8** %10, align 8
  br label %53

53:                                               ; preds = %44, %21
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  store i32 1, i32* %54, align 4
  %55 = load i8*, i8** %10, align 8
  %56 = call i64 @InternetCrackUrlW(i8* %55, i32 0, i32 0, %struct.TYPE_12__* %8)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %85

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %85

62:                                               ; preds = %58
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %62
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @HTTP_DealWithProxy.szNul, i64 0, i64 0), i8** %69, align 8
  br label %70

70:                                               ; preds = %67, %62
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @substr(i32 %72, i32 %74)
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @INTERNET_SCHEME_HTTPS, align 8
  %81 = icmp eq i64 %79, %80
  %82 = zext i1 %81 to i32
  %83 = load i32, i32* @TRUE, align 4
  %84 = call %struct.TYPE_9__* @get_server(i32 %75, i32 %77, i32 %82, i32 %83)
  store %struct.TYPE_9__* %84, %struct.TYPE_9__** %9, align 8
  br label %85

85:                                               ; preds = %70, %58, %53
  %86 = load i8*, i8** %10, align 8
  %87 = call i32 @heap_free(i8* %86)
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %89 = icmp ne %struct.TYPE_9__* %88, null
  br i1 %89, label %92, label %90

90:                                               ; preds = %85
  %91 = load i32, i32* @FALSE, align 4
  store i32 %91, i32* %4, align 4
  br label %105

92:                                               ; preds = %85
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  store %struct.TYPE_9__* %93, %struct.TYPE_9__** %95, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @debugstr_w(i32 %98)
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %99, i32 %102)
  %104 = load i32, i32* @TRUE, align 4
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %92, %90, %40, %19
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @INTERNET_FindProxyForProtocol(i32, i8*) #2

declare dso_local i64 @CompareStringW(i32, i32, i8*, i32, i8*, i32) #2

declare dso_local i32 @strlenW(i8*) #2

declare dso_local i8* @heap_alloc(i32) #2

declare dso_local i32 @heap_free(i8*) #2

declare dso_local i32 @strcpyW(i8*, i8*) #2

declare dso_local i32 @strcatW(i8*, i8*) #2

declare dso_local i64 @InternetCrackUrlW(i8*, i32, i32, %struct.TYPE_12__*) #2

declare dso_local %struct.TYPE_9__* @get_server(i32, i32, i32, i32) #2

declare dso_local i32 @substr(i32, i32) #2

declare dso_local i32 @TRACE(i8*, i32, i32) #2

declare dso_local i32 @debugstr_w(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
