; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msctf/extr_inputprocessor.c_add_userkey.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msctf/extr_inputprocessor.c_add_userkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@szwFullLangfmt = common dso_local global i32 0, align 4
@szwSystemTIPKey = common dso_local global i8* null, align 8
@szwLngp = common dso_local global i32 0, align 4
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@KEY_WRITE = common dso_local global i32 0, align 4
@REG_CREATED_NEW_KEY = common dso_local global i64 0, align 8
@szwEnable = common dso_local global i32 0, align 4
@REG_DWORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @add_userkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_userkey(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [39 x i32], align 16
  %9 = alloca [39 x i32], align 16
  %10 = alloca [168 x i32], align 16
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %11, align 8
  %14 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* %4, align 4
  %16 = getelementptr inbounds [39 x i32], [39 x i32]* %8, i64 0, i64 0
  %17 = call i32 @StringFromGUID2(i32 %15, i32* %16, i32 39)
  %18 = load i32, i32* %6, align 4
  %19 = getelementptr inbounds [39 x i32], [39 x i32]* %9, i64 0, i64 0
  %20 = call i32 @StringFromGUID2(i32 %18, i32* %19, i32 39)
  %21 = getelementptr inbounds [168 x i32], [168 x i32]* %10, i64 0, i64 0
  %22 = load i32, i32* @szwFullLangfmt, align 4
  %23 = load i8*, i8** @szwSystemTIPKey, align 8
  %24 = getelementptr inbounds [39 x i32], [39 x i32]* %8, i64 0, i64 0
  %25 = load i32, i32* @szwLngp, align 4
  %26 = load i32, i32* %5, align 4
  %27 = getelementptr inbounds [39 x i32], [39 x i32]* %9, i64 0, i64 0
  %28 = call i32 @swprintf(i32* %21, i32 %22, i8* %23, i32* %24, i32 %25, i32 %26, i32* %27)
  %29 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %30 = getelementptr inbounds [168 x i32], [168 x i32]* %10, i64 0, i64 0
  %31 = load i32, i32* @KEY_READ, align 4
  %32 = load i32, i32* @KEY_WRITE, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @RegCreateKeyExW(i32 %29, i32* %30, i32 0, i32* null, i32 0, i32 %33, i32* null, i32* %7, i64* %11)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %3
  %38 = load i64, i64* %11, align 8
  %39 = load i64, i64* @REG_CREATED_NEW_KEY, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  store i64 0, i64* %13, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @szwEnable, align 4
  %44 = load i32, i32* @REG_DWORD, align 4
  %45 = ptrtoint i64* %13 to i32
  %46 = call i32 @RegSetValueExW(i32 %42, i32 %43, i32 0, i32 %44, i32 %45, i32 8)
  br label %47

47:                                               ; preds = %41, %37, %3
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @RegCloseKey(i32 %51)
  br label %53

53:                                               ; preds = %50, %47
  ret void
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @StringFromGUID2(i32, i32*, i32) #1

declare dso_local i32 @swprintf(i32*, i32, i8*, i32*, i32, i32, i32*) #1

declare dso_local i32 @RegCreateKeyExW(i32, i32*, i32, i32*, i32, i32, i32*, i32*, i64*) #1

declare dso_local i32 @RegSetValueExW(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
