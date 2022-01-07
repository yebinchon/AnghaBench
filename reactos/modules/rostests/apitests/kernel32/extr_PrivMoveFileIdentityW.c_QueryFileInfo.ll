; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/kernel32/extr_PrivMoveFileIdentityW.c_QueryFileInfo.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/kernel32/extr_PrivMoveFileIdentityW.c_QueryFileInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FILE_READ_ATTRIBUTES = common dso_local global i32 0, align 4
@SYNCHRONIZE = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@FILE_SYNCHRONOUS_IO_NONALERT = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@FileBasicInformation = common dso_local global i32 0, align 4
@FileStandardInformation = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @QueryFileInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @QueryFileInfo(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @FILE_READ_ATTRIBUTES, align 4
  %13 = load i32, i32* @SYNCHRONIZE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @FILE_SHARE_READ, align 4
  %16 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @OPEN_EXISTING, align 4
  %19 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %20 = load i32, i32* @FILE_SYNCHRONOUS_IO_NONALERT, align 4
  %21 = or i32 %19, %20
  %22 = call i64 @CreateFileW(i32 %11, i32 %14, i32 %17, i32* null, i32 %18, i32 %21, i32* null)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %4, align 4
  br label %49

28:                                               ; preds = %3
  %29 = load i64, i64* %8, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @FileBasicInformation, align 4
  %32 = call i32 @NtQueryInformationFile(i64 %29, i32* %9, i32 %30, i32 4, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @NT_SUCCESS(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %28
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @CloseHandle(i64 %37)
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* %4, align 4
  br label %49

40:                                               ; preds = %28
  %41 = load i64, i64* %8, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @FileStandardInformation, align 4
  %44 = call i32 @NtQueryInformationFile(i64 %41, i32* %9, i32 %42, i32 4, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @CloseHandle(i64 %45)
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @NT_SUCCESS(i32 %47)
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %40, %36, %26
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i64 @CreateFileW(i32, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @NtQueryInformationFile(i64, i32*, i32, i32, i32) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @CloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
