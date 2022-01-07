; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_dialogs.c_WININET_GetSetPassword.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_dialogs.c_WININET_GetSetPassword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WININET_GetSetPassword.szColon = internal constant [2 x i8] c":\00", align 1
@WININET_GetSetPassword.szbs = internal constant [2 x i8] c"/\00", align 1
@IDC_USERNAME = common dso_local global i32 0, align 4
@IDC_PASSWORD = common dso_local global i32 0, align 4
@WN_SUCCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*, i32)* @WININET_GetSetPassword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WININET_GetSetPassword(i32 %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [128 x i8], align 16
  %11 = alloca [64 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 19, i64* %16, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @IDC_USERNAME, align 4
  %22 = call i32 @GetDlgItem(i32 %20, i32 %21)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @IDC_PASSWORD, align 4
  %25 = call i32 @GetDlgItem(i32 %23, i32 %24)
  store i32 %25, i32* %14, align 4
  %26 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @lstrcpyW(i8* %26, i8* %27)
  %29 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %30 = call i32 @lstrcatW(i8* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @WININET_GetSetPassword.szbs, i64 0, i64 0))
  %31 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @lstrcatW(i8* %31, i8* %32)
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %79

36:                                               ; preds = %4
  %37 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  store i8 0, i8* %37, align 16
  %38 = load i32, i32* %13, align 4
  %39 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %40 = call i32 @GetWindowTextW(i32 %38, i8* %39, i32 63)
  %41 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %42 = call i32 @lstrcatW(i8* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @WININET_GetSetPassword.szColon, i64 0, i64 0))
  %43 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %44 = call i32 @strlenW(i8* %43)
  store i32 %44, i32* %18, align 4
  %45 = load i32, i32* %14, align 4
  %46 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %47 = load i32, i32* %18, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i32, i32* %18, align 4
  %51 = sext i32 %50 to i64
  %52 = sub i64 64, %51
  %53 = trunc i64 %52 to i32
  %54 = call i32 @GetWindowTextW(i32 %45, i8* %49, i32 %53)
  %55 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %56 = call i32 @strlenW(i8* %55)
  %57 = add nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 1
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %17, align 4
  %61 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %62 = call i32 @strlenW(i8* %61)
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = mul i64 %64, 1
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %18, align 4
  %67 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %68 = bitcast i8* %67 to i32*
  %69 = load i32, i32* %17, align 4
  %70 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %71 = bitcast i8* %70 to i32*
  %72 = load i32, i32* %18, align 4
  %73 = load i64, i64* %16, align 8
  %74 = call i64 @WNetCachePassword(i32* %68, i32 %69, i32* %71, i32 %72, i64 %73, i32 0)
  store i64 %74, i64* %15, align 8
  %75 = load i64, i64* %15, align 8
  %76 = load i64, i64* @WN_SUCCESS, align 8
  %77 = icmp eq i64 %75, %76
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %5, align 4
  br label %114

79:                                               ; preds = %4
  store i32 64, i32* %19, align 4
  %80 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %81 = call i32 @strlenW(i8* %80)
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = mul i64 %83, 1
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %17, align 4
  %86 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %87 = bitcast i8* %86 to i32*
  %88 = load i32, i32* %17, align 4
  %89 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %90 = bitcast i8* %89 to i32*
  %91 = load i64, i64* %16, align 8
  %92 = call i64 @WNetGetCachedPassword(i32* %87, i32 %88, i32* %90, i32* %19, i64 %91)
  store i64 %92, i64* %15, align 8
  %93 = load i64, i64* %15, align 8
  %94 = load i64, i64* @WN_SUCCESS, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %79
  %97 = load i32, i32* @FALSE, align 4
  store i32 %97, i32* %5, align 4
  br label %114

98:                                               ; preds = %79
  %99 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %100 = call i8* @strchrW(i8* %99, i8 signext 58)
  store i8* %100, i8** %12, align 8
  %101 = load i8*, i8** %12, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %112

103:                                              ; preds = %98
  %104 = load i8*, i8** %12, align 8
  store i8 0, i8* %104, align 1
  %105 = load i32, i32* %13, align 4
  %106 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %107 = call i32 @SetWindowTextW(i32 %105, i8* %106)
  %108 = load i32, i32* %14, align 4
  %109 = load i8*, i8** %12, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 1
  %111 = call i32 @SetWindowTextW(i32 %108, i8* %110)
  br label %112

112:                                              ; preds = %103, %98
  %113 = load i32, i32* @TRUE, align 4
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %112, %96, %36
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @lstrcpyW(i8*, i8*) #1

declare dso_local i32 @lstrcatW(i8*, i8*) #1

declare dso_local i32 @GetWindowTextW(i32, i8*, i32) #1

declare dso_local i32 @strlenW(i8*) #1

declare dso_local i64 @WNetCachePassword(i32*, i32, i32*, i32, i64, i32) #1

declare dso_local i64 @WNetGetCachedPassword(i32*, i32, i32*, i32*, i64) #1

declare dso_local i8* @strchrW(i8*, i8 signext) #1

declare dso_local i32 @SetWindowTextW(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
