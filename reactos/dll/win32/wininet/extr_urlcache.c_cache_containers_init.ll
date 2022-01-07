; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_urlcache.c_cache_containers_init.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_urlcache.c_cache_containers_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i8*, i8*, i32 }

@cache_containers_init.UrlSuffix = internal constant [12 x i8] c"Content.IE5\00", align 1
@cache_containers_init.HistorySuffix = internal constant [12 x i8] c"History.IE5\00", align 1
@cache_containers_init.CookieSuffix = internal constant [1 x i8] zeroinitializer, align 1
@cache_containers_init.UserProfile = internal constant [12 x i8] c"USERPROFILE\00", align 1
@cache_containers_init.DefaultContainerData = internal constant [3 x %struct.anon] [%struct.anon { i32 130, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @cache_containers_init.UrlSuffix, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i32 129 }, %struct.anon { i32 131, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @cache_containers_init.HistorySuffix, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 128 }, %struct.anon { i32 132, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @cache_containers_init.CookieSuffix, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 133 }], align 16
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Visited:\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Cookie:\00", align 1
@ERROR_ENVVAR_NOT_FOUND = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [52 x i8] c"Environment variable 'USERPROFILE' does not exist!\0A\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"Couldn't get path for default container %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Path too long\0A\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@WC_NO_BEST_FIT_CHARS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [58 x i8] c"Can't create container path accessible by ANSI functions\0A\00", align 1
@bDefaultContainersAdded = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cache_containers_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_containers_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = call i64 @GetEnvironmentVariableW(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @cache_containers_init.UserProfile, i64 0, i64 0), i32* null, i32 0)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %0
  %14 = call i64 (...) @GetLastError()
  %15 = load i64, i64* @ERROR_ENVVAR_NOT_FOUND, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  br label %154

19:                                               ; preds = %13, %0
  store i32 0, i32* %1, align 4
  br label %20

20:                                               ; preds = %151, %19
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp ult i64 %22, 3
  br i1 %23, label %24, label %154

24:                                               ; preds = %20
  %25 = load i32, i32* @MAX_PATH, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %2, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %3, align 8
  %29 = load i32, i32* @MAX_PATH, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %4, align 8
  %32 = load i32, i32* %1, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @cache_containers_init.DefaultContainerData, i64 0, i64 %33
  %35 = getelementptr inbounds %struct.anon, %struct.anon* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 16
  %37 = load i32, i32* @TRUE, align 4
  %38 = call i32 @SHGetSpecialFolderPathW(i32* null, i8* %28, i32 %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %24
  %41 = load i32, i32* %1, align 4
  %42 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %41)
  store i32 4, i32* %8, align 4
  br label %147

43:                                               ; preds = %24
  %44 = call i32 @strlenW(i8* %28)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %1, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @cache_containers_init.DefaultContainerData, i64 0, i64 %46
  %48 = getelementptr inbounds %struct.anon, %struct.anon* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @strlenW(i8* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %51, %52
  %54 = add nsw i32 %53, 2
  %55 = load i32, i32* @MAX_PATH, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %43
  %58 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  store i32 4, i32* %8, align 4
  br label %147

59:                                               ; preds = %43
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %28, i64 %61
  store i8 92, i8* %62, align 1
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %28, i64 %65
  store i8 0, i8* %66, align 1
  %67 = call i32 @strcpyW(i8* %31, i8* %28)
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %98

70:                                               ; preds = %59
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %28, i64 %72
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  %75 = load i32, i32* %1, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @cache_containers_init.DefaultContainerData, i64 0, i64 %76
  %78 = getelementptr inbounds %struct.anon, %struct.anon* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = mul i64 %82, 1
  %84 = trunc i64 %83 to i32
  %85 = call i32 @memcpy(i8* %74, i8* %79, i32 %84)
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %86, %87
  %89 = add nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %28, i64 %90
  store i8 92, i8* %91, align 1
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %92, %93
  %95 = add nsw i32 %94, 2
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %28, i64 %96
  store i8 0, i8* %97, align 1
  br label %98

98:                                               ; preds = %70, %59
  %99 = load i32, i32* @CP_ACP, align 4
  %100 = load i32, i32* @WC_NO_BEST_FIT_CHARS, align 4
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @WideCharToMultiByte(i32 %99, i32 %100, i8* %28, i32 %101, i32* null, i32 0, i32* null, i64* %7)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  %105 = load i64, i64* %7, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %135

107:                                              ; preds = %104, %98
  %108 = load i32, i32* @MAX_PATH, align 4
  %109 = zext i32 %108 to i64
  %110 = call i8* @llvm.stacksave()
  store i8* %110, i8** %9, align 8
  %111 = alloca i8, i64 %109, align 16
  store i64 %109, i64* %10, align 8
  %112 = load i32, i32* @MAX_PATH, align 4
  %113 = call i32 @GetShortPathNameW(i8* %28, i8* %111, i32 %112)
  store i32 %113, i32* %5, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %124

115:                                              ; preds = %107
  %116 = load i32, i32* @CP_ACP, align 4
  %117 = load i32, i32* @WC_NO_BEST_FIT_CHARS, align 4
  %118 = load i32, i32* %5, align 4
  %119 = call i32 @WideCharToMultiByte(i32 %116, i32 %117, i8* %111, i32 %118, i32* null, i32 0, i32* null, i64* %7)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %115
  %122 = load i64, i64* %7, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %121, %115, %107
  %125 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0))
  br label %133

126:                                              ; preds = %121
  %127 = load i32, i32* %5, align 4
  %128 = add nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = mul i64 %129, 1
  %131 = trunc i64 %130 to i32
  %132 = call i32 @memcpy(i8* %28, i8* %111, i32 %131)
  br label %133

133:                                              ; preds = %126, %124
  %134 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %134)
  br label %135

135:                                              ; preds = %133, %104
  %136 = load i32, i32* %1, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @cache_containers_init.DefaultContainerData, i64 0, i64 %137
  %139 = getelementptr inbounds %struct.anon, %struct.anon* %138, i32 0, i32 2
  %140 = load i8*, i8** %139, align 16
  %141 = load i32, i32* %1, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @cache_containers_init.DefaultContainerData, i64 0, i64 %142
  %144 = getelementptr inbounds %struct.anon, %struct.anon* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @cache_containers_add(i8* %140, i8* %28, i32 %145, i8* %31)
  store i32 0, i32* %8, align 4
  br label %147

147:                                              ; preds = %135, %57, %40
  %148 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %148)
  %149 = load i32, i32* %8, align 4
  switch i32 %149, label %155 [
    i32 0, label %150
    i32 4, label %151
  ]

150:                                              ; preds = %147
  br label %151

151:                                              ; preds = %150, %147
  %152 = load i32, i32* %1, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %1, align 4
  br label %20

154:                                              ; preds = %17, %20
  ret void

155:                                              ; preds = %147
  unreachable
}

declare dso_local i64 @GetEnvironmentVariableW(i8*, i32*, i32) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @ERR(i8*, ...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @SHGetSpecialFolderPathW(i32*, i8*, i32, i32) #1

declare dso_local i32 @strlenW(i8*) #1

declare dso_local i32 @strcpyW(i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @WideCharToMultiByte(i32, i32, i8*, i32, i32*, i32, i32*, i64*) #1

declare dso_local i32 @GetShortPathNameW(i8*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @cache_containers_add(i8*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
