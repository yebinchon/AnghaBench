; ModuleID = '/home/carl/AnghaBench/vlc/src/network/extr_http_auth.c_vlc_http_auth_ParseWwwAuthenticateHeader.c'
source_filename = "/home/carl/AnghaBench/vlc/src/network/extr_http_auth.c_vlc_http_auth_ParseWwwAuthenticateHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32*, i32*, i64, i8*, i8*, i8*, i8* }

@vlc_http_auth_ParseWwwAuthenticateHeader.psz_basic_prefix = internal constant [7 x i8] c"Basic \00", align 1
@vlc_http_auth_ParseWwwAuthenticateHeader.psz_digest_prefix = internal constant [8 x i8] c"Digest \00", align 1
@.str = private unnamed_addr constant [27 x i8] c"Using Basic Authentication\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"realm\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"Basic Authentication: Mandatory 'realm' parameter is missing\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Using Digest Access Authentication\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"domain\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"nonce\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"opaque\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"stale\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"algorithm\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"qop\00", align 1
@.str.10 = private unnamed_addr constant [69 x i8] c"Digest Access Authentication: Mandatory 'realm' parameter is missing\00", align 1
@.str.11 = private unnamed_addr constant [69 x i8] c"Digest Access Authentication: Mandatory 'nonce' parameter is missing\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"Unknown authentication scheme: '%*s'\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"Unknown authentication scheme: '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlc_http_auth_ParseWwwAuthenticateHeader(i32* %0, %struct.TYPE_3__* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call i64 @strncasecmp(i8* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @vlc_http_auth_ParseWwwAuthenticateHeader.psz_basic_prefix, i64 0, i64 0), i32 6)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %3
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @msg_Dbg(i32* %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 6
  store i8* %16, i8** %6, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i8* @AuthGetParam(i8* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %19 = bitcast i8* %18 to i32*
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  store i32* %19, i32** %21, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %12
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 (i32*, i8*, ...) @msg_Warn(i32* %27, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %12
  br label %129

30:                                               ; preds = %3
  %31 = load i8*, i8** %6, align 8
  %32 = call i64 @strncasecmp(i8* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @vlc_http_auth_ParseWwwAuthenticateHeader.psz_digest_prefix, i64 0, i64 0), i32 7)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %108

34:                                               ; preds = %30
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @msg_Dbg(i32* %35, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %129

42:                                               ; preds = %34
  %43 = load i8*, i8** %6, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 7
  store i8* %44, i8** %6, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = call i8* @AuthGetParam(i8* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %47 = bitcast i8* %46 to i32*
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  store i32* %47, i32** %49, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = call i8* @AuthGetParam(i8* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 7
  store i8* %51, i8** %53, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = call i8* @AuthGetParam(i8* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %56 = bitcast i8* %55 to i32*
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  store i32* %56, i32** %58, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = call i8* @AuthGetParam(i8* %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 6
  store i8* %60, i8** %62, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = call i8* @AuthGetParamNoQuotes(i8* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 5
  store i8* %64, i8** %66, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = call i8* @AuthGetParamNoQuotes(i8* %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 4
  store i8* %68, i8** %70, align 8
  %71 = load i8*, i8** %6, align 8
  %72 = call i8* @AuthGetParam(i8* %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 3
  store i64 0, i64* %76, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = icmp eq i32* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %42
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 (i32*, i8*, ...) @msg_Warn(i32* %82, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.10, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %42
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i32*, i32** %4, align 8
  %91 = call i32 (i32*, i8*, ...) @msg_Warn(i32* %90, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.11, i64 0, i64 0))
  br label %92

92:                                               ; preds = %89, %84
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %107

97:                                               ; preds = %92
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = call i8* @strchr(i8* %100, i8 signext 44)
  store i8* %101, i8** %7, align 8
  %102 = load i8*, i8** %7, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %106

104:                                              ; preds = %97
  %105 = load i8*, i8** %7, align 8
  store i8 0, i8* %105, align 1
  br label %106

106:                                              ; preds = %104, %97
  br label %107

107:                                              ; preds = %106, %92
  br label %128

108:                                              ; preds = %30
  %109 = load i8*, i8** %6, align 8
  %110 = call i8* @strchr(i8* %109, i8 signext 32)
  store i8* %110, i8** %8, align 8
  %111 = load i8*, i8** %8, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %123

113:                                              ; preds = %108
  %114 = load i32*, i32** %4, align 8
  %115 = load i8*, i8** %8, align 8
  %116 = load i8*, i8** %6, align 8
  %117 = ptrtoint i8* %115 to i64
  %118 = ptrtoint i8* %116 to i64
  %119 = sub i64 %117, %118
  %120 = trunc i64 %119 to i32
  %121 = load i8*, i8** %6, align 8
  %122 = call i32 (i32*, i8*, ...) @msg_Warn(i32* %114, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0), i32 %120, i8* %121)
  br label %127

123:                                              ; preds = %108
  %124 = load i32*, i32** %4, align 8
  %125 = load i8*, i8** %6, align 8
  %126 = call i32 (i32*, i8*, ...) @msg_Warn(i32* %124, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0), i8* %125)
  br label %127

127:                                              ; preds = %123, %113
  br label %128

128:                                              ; preds = %127, %107
  br label %129

129:                                              ; preds = %41, %128, %29
  ret void
}

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @msg_Dbg(i32*, i8*) #1

declare dso_local i8* @AuthGetParam(i8*, i8*) #1

declare dso_local i32 @msg_Warn(i32*, i8*, ...) #1

declare dso_local i8* @AuthGetParamNoQuotes(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
