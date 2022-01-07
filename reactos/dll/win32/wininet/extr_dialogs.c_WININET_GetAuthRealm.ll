; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_dialogs.c_WININET_GetAuthRealm.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_dialogs.c_WININET_GetAuthRealm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WININET_GetAuthRealm.szRealm = internal constant [7 x i8] c"realm=\00", align 1
@HTTP_QUERY_PROXY_AUTHENTICATE = common dso_local global i64 0, align 8
@HTTP_QUERY_WWW_AUTHENTICATE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"response wrong? (%s)\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*, i64, i64)* @WININET_GetAuthRealm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @WININET_GetAuthRealm(i32 %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i64, i64* %9, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i64, i64* @HTTP_QUERY_PROXY_AUTHENTICATE, align 8
  store i64 %17, i64* %13, align 8
  br label %20

18:                                               ; preds = %4
  %19 = load i64, i64* @HTTP_QUERY_WWW_AUTHENTICATE, align 8
  store i64 %19, i64* %13, align 8
  br label %20

20:                                               ; preds = %18, %16
  store i64 0, i64* %12, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i64, i64* %13, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @HttpQueryInfoW(i32 %21, i64 %22, i8* %23, i64* %8, i64* %12)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  %27 = load i64, i64* @FALSE, align 8
  store i64 %27, i64* %5, align 8
  br label %66

28:                                               ; preds = %20
  %29 = load i8*, i8** %7, align 8
  %30 = call i8* @strchrW(i8* %29, i8 signext 32)
  store i8* %30, i8** %10, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i8*, i8** %10, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = call i32 @strlenW(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @WININET_GetAuthRealm.szRealm, i64 0, i64 0))
  %37 = call i64 @strncmpW(i8* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @WININET_GetAuthRealm.szRealm, i64 0, i64 0), i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %33, %28
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @debugstr_w(i8* %40)
  %42 = call i32 @ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i64, i64* @FALSE, align 8
  store i64 %43, i64* %5, align 8
  br label %66

44:                                               ; preds = %33
  %45 = load i8*, i8** %10, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 7
  store i8* %46, i8** %10, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 34
  br i1 %50, label %51, label %61

51:                                               ; preds = %44
  %52 = load i8*, i8** %10, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %10, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = call i8* @strrchrW(i8* %54, i8 signext 34)
  store i8* %55, i8** %11, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i8*, i8** %11, align 8
  store i8 0, i8* %59, align 1
  br label %60

60:                                               ; preds = %58, %51
  br label %61

61:                                               ; preds = %60, %44
  %62 = load i8*, i8** %7, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = call i32 @strcpyW(i8* %62, i8* %63)
  %65 = load i64, i64* @TRUE, align 8
  store i64 %65, i64* %5, align 8
  br label %66

66:                                               ; preds = %61, %39, %26
  %67 = load i64, i64* %5, align 8
  ret i64 %67
}

declare dso_local i32 @HttpQueryInfoW(i32, i64, i8*, i64*, i64*) #1

declare dso_local i8* @strchrW(i8*, i8 signext) #1

declare dso_local i64 @strncmpW(i8*, i8*, i32) #1

declare dso_local i32 @strlenW(i8*) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local i8* @strrchrW(i8*, i8 signext) #1

declare dso_local i32 @strcpyW(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
