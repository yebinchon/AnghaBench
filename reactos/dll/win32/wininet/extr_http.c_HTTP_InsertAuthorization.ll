; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_HTTP_InsertAuthorization.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_HTTP_InsertAuthorization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.HttpAuthInfo = type { i8*, i8*, i64 }

@HTTP_InsertAuthorization.wszBasic = internal constant [6 x i8] c"Basic\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Inserting authorization: %s\0A\00", align 1
@HTTP_ADDHDR_FLAG_REQ = common dso_local global i32 0, align 4
@HTTP_ADDHDR_FLAG_REPLACE = common dso_local global i32 0, align 4
@HTTP_ADDREQ_FLAG_ADD = common dso_local global i32 0, align 4
@szAuthorization = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Found cached basic authorization for %s\0A\00", align 1
@HTTP_ADDHDR_FLAG_ADD = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.HttpAuthInfo*, i32)* @HTTP_InsertAuthorization to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HTTP_InsertAuthorization(i32* %0, %struct.HttpAuthInfo* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.HttpAuthInfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.HttpAuthInfo* %1, %struct.HttpAuthInfo** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* null, i8** %9, align 8
  %12 = load %struct.HttpAuthInfo*, %struct.HttpAuthInfo** %6, align 8
  %13 = icmp ne %struct.HttpAuthInfo* %12, null
  br i1 %13, label %14, label %64

14:                                               ; preds = %3
  %15 = load %struct.HttpAuthInfo*, %struct.HttpAuthInfo** %6, align 8
  %16 = getelementptr inbounds %struct.HttpAuthInfo, %struct.HttpAuthInfo* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %49

19:                                               ; preds = %14
  %20 = load %struct.HttpAuthInfo*, %struct.HttpAuthInfo** %6, align 8
  %21 = getelementptr inbounds %struct.HttpAuthInfo, %struct.HttpAuthInfo* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.HttpAuthInfo*, %struct.HttpAuthInfo** %6, align 8
  %24 = getelementptr inbounds %struct.HttpAuthInfo, %struct.HttpAuthInfo* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.HttpAuthInfo*, %struct.HttpAuthInfo** %6, align 8
  %27 = getelementptr inbounds %struct.HttpAuthInfo, %struct.HttpAuthInfo* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = call i8* @encode_auth_data(i8* %22, i8* %25, i64 %28)
  store i8* %29, i8** %9, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %19
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %4, align 4
  br label %114

33:                                               ; preds = %19
  %34 = load %struct.HttpAuthInfo*, %struct.HttpAuthInfo** %6, align 8
  %35 = getelementptr inbounds %struct.HttpAuthInfo, %struct.HttpAuthInfo* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @strcmpiW(i8* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @HTTP_InsertAuthorization.wszBasic, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %33
  %40 = load %struct.HttpAuthInfo*, %struct.HttpAuthInfo** %6, align 8
  %41 = getelementptr inbounds %struct.HttpAuthInfo, %struct.HttpAuthInfo* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @heap_free(i8* %42)
  %44 = load %struct.HttpAuthInfo*, %struct.HttpAuthInfo** %6, align 8
  %45 = getelementptr inbounds %struct.HttpAuthInfo, %struct.HttpAuthInfo* %44, i32 0, i32 1
  store i8* null, i8** %45, align 8
  %46 = load %struct.HttpAuthInfo*, %struct.HttpAuthInfo** %6, align 8
  %47 = getelementptr inbounds %struct.HttpAuthInfo, %struct.HttpAuthInfo* %46, i32 0, i32 2
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %39, %33
  br label %49

49:                                               ; preds = %48, %14
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @debugstr_w(i8* %50)
  %52 = call i32 @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i8*, i8** %9, align 8
  %56 = load i32, i32* @HTTP_ADDHDR_FLAG_REQ, align 4
  %57 = load i32, i32* @HTTP_ADDHDR_FLAG_REPLACE, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @HTTP_ADDREQ_FLAG_ADD, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @HTTP_ProcessHeader(i32* %53, i32 %54, i8* %55, i32 %60)
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 @heap_free(i8* %62)
  br label %112

64:                                               ; preds = %3
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @szAuthorization, align 4
  %67 = call i32 @strcmpW(i32 %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %111, label %69

69:                                               ; preds = %64
  %70 = load i32*, i32** %5, align 8
  %71 = call i8* @get_host_header(i32* %70)
  store i8* %71, i8** %8, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %111

73:                                               ; preds = %69
  %74 = load i8*, i8** %8, align 8
  %75 = call i64 @retrieve_cached_basic_authorization(i8* %74, i32* null, i8** %11)
  store i64 %75, i64* %10, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %108

77:                                               ; preds = %73
  %78 = load i8*, i8** %8, align 8
  %79 = call i32 @debugstr_w(i8* %78)
  %80 = call i32 @TRACE(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  %81 = load i8*, i8** %11, align 8
  %82 = load i64, i64* %10, align 8
  %83 = call i8* @encode_auth_data(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @HTTP_InsertAuthorization.wszBasic, i64 0, i64 0), i8* %81, i64 %82)
  store i8* %83, i8** %9, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %91, label %85

85:                                               ; preds = %77
  %86 = load i8*, i8** %11, align 8
  %87 = call i32 @heap_free(i8* %86)
  %88 = load i8*, i8** %8, align 8
  %89 = call i32 @heap_free(i8* %88)
  %90 = load i32, i32* @FALSE, align 4
  store i32 %90, i32* %4, align 4
  br label %114

91:                                               ; preds = %77
  %92 = load i8*, i8** %9, align 8
  %93 = call i32 @debugstr_w(i8* %92)
  %94 = call i32 @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %93)
  %95 = load i32*, i32** %5, align 8
  %96 = load i32, i32* %7, align 4
  %97 = load i8*, i8** %9, align 8
  %98 = load i32, i32* @HTTP_ADDHDR_FLAG_REQ, align 4
  %99 = load i32, i32* @HTTP_ADDHDR_FLAG_REPLACE, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @HTTP_ADDHDR_FLAG_ADD, align 4
  %102 = or i32 %100, %101
  %103 = call i32 @HTTP_ProcessHeader(i32* %95, i32 %96, i8* %97, i32 %102)
  %104 = load i8*, i8** %11, align 8
  %105 = call i32 @heap_free(i8* %104)
  %106 = load i8*, i8** %9, align 8
  %107 = call i32 @heap_free(i8* %106)
  br label %108

108:                                              ; preds = %91, %73
  %109 = load i8*, i8** %8, align 8
  %110 = call i32 @heap_free(i8* %109)
  br label %111

111:                                              ; preds = %108, %69, %64
  br label %112

112:                                              ; preds = %111, %49
  %113 = load i32, i32* @TRUE, align 4
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %112, %85, %31
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i8* @encode_auth_data(i8*, i8*, i64) #1

declare dso_local i64 @strcmpiW(i8*, i8*) #1

declare dso_local i32 @heap_free(i8*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local i32 @HTTP_ProcessHeader(i32*, i32, i8*, i32) #1

declare dso_local i32 @strcmpW(i32, i32) #1

declare dso_local i8* @get_host_header(i32*) #1

declare dso_local i64 @retrieve_cached_basic_authorization(i8*, i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
