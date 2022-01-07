; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_install.c_file_matches_data.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_install.c_file_matches_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GENERIC_READ = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"failed to open %s (%u)\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @file_matches_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_matches_data(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [128 x i8], align 16
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @strlen(i32 %10)
  store i64 %11, i64* %7, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @GENERIC_READ, align 4
  %14 = load i32, i32* @FILE_SHARE_READ, align 4
  %15 = load i32, i32* @OPEN_EXISTING, align 4
  %16 = call i64 @CreateFileA(i32 %12, i32 %13, i32 %14, i32* null, i32 %15, i32 0, i32* null)
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %19 = icmp ne i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* %4, align 4
  %22 = call i32 (...) @GetLastError()
  %23 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  %24 = load i64, i64* %8, align 8
  %25 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %26 = call i64 @ReadFile(i64 %24, i8* %25, i32 128, i64* %6, i32* null)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %2
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp sge i64 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %28
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @CloseHandle(i64 %33)
  %35 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %36 = load i32, i32* %5, align 4
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @memcmp(i8* %35, i32 %36, i64 %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %3, align 4
  br label %46

42:                                               ; preds = %28, %2
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @CloseHandle(i64 %43)
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %42, %32
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @strlen(i32) #1

declare dso_local i64 @CreateFileA(i32, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i64 @ReadFile(i64, i8*, i32, i64*, i32*) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i32 @memcmp(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
