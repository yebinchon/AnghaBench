; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_query.c_search_for_inf.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_query.c_search_for_inf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@MAX_PATH = common dso_local global i32 0, align 4
@search_for_inf.infW = internal constant [6 x i8] c"\\inf\\\00", align 1
@search_for_inf.system32W = internal constant [11 x i8] c"\\system32\\\00", align 1
@INFINFO_REVERSE_DEFAULT_SEARCH = common dso_local global i64 0, align 8
@INF_STYLE_OLDNT = common dso_local global i32 0, align 4
@INF_STYLE_WIN4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64)* @search_for_inf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @search_for_inf(i8* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  store i64 %10, i64* %6, align 8
  %11 = load i32, i32* @MAX_PATH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @INFINFO_REVERSE_DEFAULT_SEARCH, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %43

18:                                               ; preds = %2
  %19 = load i32, i32* @MAX_PATH, align 4
  %20 = call i32 @GetWindowsDirectoryW(i8* %14, i32 %19)
  %21 = call i32 @lstrcatW(i8* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @search_for_inf.system32W, i64 0, i64 0))
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @lstrcatW(i8* %14, i8* %22)
  %24 = load i32, i32* @INF_STYLE_OLDNT, align 4
  %25 = load i32, i32* @INF_STYLE_WIN4, align 4
  %26 = or i32 %24, %25
  %27 = call i64 @SetupOpenInfFileW(i8* %14, i32* null, i32 %26, i32* null)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %18
  %32 = load i64, i64* %6, align 8
  store i64 %32, i64* %3, align 8
  store i32 1, i32* %9, align 4
  br label %45

33:                                               ; preds = %18
  %34 = load i32, i32* @MAX_PATH, align 4
  %35 = call i32 @GetWindowsDirectoryW(i8* %14, i32 %34)
  %36 = call i32 @lstrcpyW(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @search_for_inf.infW, i64 0, i64 0))
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @lstrcatW(i8* %14, i8* %37)
  %39 = load i32, i32* @INF_STYLE_OLDNT, align 4
  %40 = load i32, i32* @INF_STYLE_WIN4, align 4
  %41 = or i32 %39, %40
  %42 = call i64 @SetupOpenInfFileW(i8* %14, i32* null, i32 %41, i32* null)
  store i64 %42, i64* %3, align 8
  store i32 1, i32* %9, align 4
  br label %45

43:                                               ; preds = %2
  %44 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  store i64 %44, i64* %3, align 8
  store i32 1, i32* %9, align 4
  br label %45

45:                                               ; preds = %43, %33, %31
  %46 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %46)
  %47 = load i64, i64* %3, align 8
  ret i64 %47
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetWindowsDirectoryW(i8*, i32) #2

declare dso_local i32 @lstrcatW(i8*, i8*) #2

declare dso_local i64 @SetupOpenInfFileW(i8*, i32*, i32, i32*) #2

declare dso_local i32 @lstrcpyW(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
