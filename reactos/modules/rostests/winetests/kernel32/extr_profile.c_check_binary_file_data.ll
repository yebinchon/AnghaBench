; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_profile.c_check_binary_file_data.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_profile.c_check_binary_file_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i64)* @check_binary_file_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_binary_file_data(i32 %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i32, i32* @MAX_PATH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %9, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %10, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @GENERIC_READ, align 4
  %19 = load i32, i32* @FILE_SHARE_READ, align 4
  %20 = load i32, i32* @OPEN_EXISTING, align 4
  %21 = call i64 @CreateFileA(i32 %17, i32 %18, i32 %19, i32* null, i32 %20, i32 0, i32 0)
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %53

27:                                               ; preds = %3
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i64 @GetFileSize(i64 %29, i32* null)
  %31 = icmp ne i64 %28, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @CloseHandle(i64 %33)
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %53

36:                                               ; preds = %27
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @ReadFile(i64 %37, i32* %16, i64 %38, i64* %7, i32* null)
  store i32 %39, i32* %11, align 4
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @CloseHandle(i64 %40)
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %36
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %53

46:                                               ; preds = %36
  %47 = load i32*, i32** %6, align 8
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @memcmp(i32* %16, i32* %47, i64 %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %53

53:                                               ; preds = %46, %44, %32, %25
  %54 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %54)
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @CreateFileA(i32, i32, i32, i32*, i32, i32, i32) #2

declare dso_local i64 @GetFileSize(i64, i32*) #2

declare dso_local i32 @CloseHandle(i64) #2

declare dso_local i32 @ReadFile(i64, i32*, i64, i64*, i32*) #2

declare dso_local i32 @memcmp(i32*, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
