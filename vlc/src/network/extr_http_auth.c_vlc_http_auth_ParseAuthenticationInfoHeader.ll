; ModuleID = '/home/carl/AnghaBench/vlc/src/network/extr_http_auth.c_vlc_http_auth_ParseAuthenticationInfoHeader.c'
source_filename = "/home/carl/AnghaBench/vlc/src/network/extr_http_auth.c_vlc_http_auth_ParseAuthenticationInfoHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i8*, i8* }

@.str = private unnamed_addr constant [10 x i8] c"nextnonce\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"qop\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"rspauth\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"cnonce\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"nc\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [87 x i8] c"HTTP Digest Access Authentication: server replied with a different client nonce value.\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [86 x i8] c"HTTP Digest Access Authentication: server replied with a different nonce count value.\00", align 1
@.str.7 = private unnamed_addr constant [99 x i8] c"HTTP Digest Access Authentication: server replied using a different 'quality of protection' option\00", align 1
@.str.8 = private unnamed_addr constant [104 x i8] c"HTTP Digest Access Authentication: server replied with an invalid response digest (expected value: %s).\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_http_auth_ParseAuthenticationInfoHeader(i32* %0, %struct.TYPE_4__* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = call i8* @AuthGetParam(i8* %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i8* %24, i8** %15, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = call i8* @AuthGetParamNoQuotes(i8* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i8* %26, i8** %16, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = call i8* @AuthGetParam(i8* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i8* %28, i8** %17, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = call i8* @AuthGetParam(i8* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i8* %30, i8** %18, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = call i8* @AuthGetParamNoQuotes(i8* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i8* %32, i8** %19, align 8
  store i8* null, i8** %20, align 8
  %33 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %33, i32* %21, align 4
  %34 = load i8*, i8** %18, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %102

36:                                               ; preds = %7
  %37 = load i8*, i8** %18, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @strcmp(i8* %37, i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 (i32*, i8*, ...) @msg_Err(i32* %44, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.5, i64 0, i64 0))
  %46 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %46, i32* %21, align 4
  br label %114

47:                                               ; preds = %36
  %48 = load i8*, i8** %19, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %63

50:                                               ; preds = %47
  %51 = load i8*, i8** %19, align 8
  %52 = call i32 @strtol(i8* %51, i32* null, i32 16)
  store i32 %52, i32* %22, align 4
  %53 = load i32, i32* %22, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %53, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %50
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 (i32*, i8*, ...) @msg_Err(i32* %59, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.6, i64 0, i64 0))
  %61 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %61, i32* %21, align 4
  br label %114

62:                                               ; preds = %50
  br label %63

63:                                               ; preds = %62, %47
  %64 = load i8*, i8** %16, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %81

66:                                               ; preds = %63
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %81

71:                                               ; preds = %66
  %72 = load i8*, i8** %16, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  %75 = load i8*, i8** %74, align 8
  %76 = call i64 @strcmp(i8* %72, i8* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load i32*, i32** %8, align 8
  %80 = call i32 @msg_Warn(i32* %79, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.7, i64 0, i64 0))
  br label %81

81:                                               ; preds = %78, %71, %66, %63
  %82 = load i32*, i32** %8, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %84 = load i8*, i8** %11, align 8
  %85 = load i8*, i8** %12, align 8
  %86 = load i8*, i8** %13, align 8
  %87 = load i8*, i8** %14, align 8
  %88 = call i8* @AuthDigest(i32* %82, %struct.TYPE_4__* %83, i8* %84, i8* %85, i8* %86, i8* %87)
  store i8* %88, i8** %20, align 8
  %89 = load i8*, i8** %20, align 8
  %90 = icmp eq i8* %89, null
  br i1 %90, label %96, label %91

91:                                               ; preds = %81
  %92 = load i8*, i8** %20, align 8
  %93 = load i8*, i8** %17, align 8
  %94 = call i64 @strcmp(i8* %92, i8* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %91, %81
  %97 = load i32*, i32** %8, align 8
  %98 = load i8*, i8** %20, align 8
  %99 = call i32 (i32*, i8*, ...) @msg_Err(i32* %97, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.8, i64 0, i64 0), i8* %98)
  %100 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %100, i32* %21, align 4
  br label %114

101:                                              ; preds = %91
  br label %102

102:                                              ; preds = %101, %7
  %103 = load i8*, i8** %15, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %113

105:                                              ; preds = %102
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 3
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @free(i8* %108)
  %110 = load i8*, i8** %15, align 8
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 3
  store i8* %110, i8** %112, align 8
  store i8* null, i8** %15, align 8
  br label %113

113:                                              ; preds = %105, %102
  br label %114

114:                                              ; preds = %113, %96, %58, %43
  %115 = load i8*, i8** %15, align 8
  %116 = call i32 @free(i8* %115)
  %117 = load i8*, i8** %16, align 8
  %118 = call i32 @free(i8* %117)
  %119 = load i8*, i8** %17, align 8
  %120 = call i32 @free(i8* %119)
  %121 = load i8*, i8** %18, align 8
  %122 = call i32 @free(i8* %121)
  %123 = load i8*, i8** %19, align 8
  %124 = call i32 @free(i8* %123)
  %125 = load i8*, i8** %20, align 8
  %126 = call i32 @free(i8* %125)
  %127 = load i32, i32* %21, align 4
  ret i32 %127
}

declare dso_local i8* @AuthGetParam(i8*, i8*) #1

declare dso_local i8* @AuthGetParamNoQuotes(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @msg_Err(i32*, i8*, ...) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @msg_Warn(i32*, i8*) #1

declare dso_local i8* @AuthDigest(i32*, %struct.TYPE_4__*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
