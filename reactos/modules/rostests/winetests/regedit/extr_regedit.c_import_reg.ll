; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/regedit/extr_regedit.c_import_reg.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/regedit/extr_regedit.c_import_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CP_UTF8 = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"regedit.exe /s test.reg\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"test.reg\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"DeleteFile failed: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*, i64)* @import_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @import_reg(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @strlen(i8* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i64, i64* %7, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %46

17:                                               ; preds = %3
  %18 = load i32, i32* @CP_UTF8, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @MultiByteToWideChar(i32 %18, i32 0, i8* %19, i32 %20, i8* null, i32 0)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 1
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %11, align 4
  %26 = call i32 (...) @GetProcessHeap()
  %27 = load i32, i32* %11, align 4
  %28 = call i8* @HeapAlloc(i32 %26, i32 0, i32 %27)
  store i8* %28, i8** %12, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %17
  %32 = load i64, i64* @FALSE, align 8
  store i64 %32, i64* %4, align 8
  br label %62

33:                                               ; preds = %17
  %34 = load i32, i32* @CP_UTF8, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i8*, i8** %12, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @MultiByteToWideChar(i32 %34, i32 0, i8* %35, i32 %36, i8* %37, i32 %38)
  %40 = load i8*, i8** %12, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i64 @write_file(i8* %40, i32 %41)
  store i64 %42, i64* %9, align 8
  %43 = call i32 (...) @GetProcessHeap()
  %44 = load i8*, i8** %12, align 8
  %45 = call i32 @HeapFree(i32 %43, i32 0, i8* %44)
  br label %50

46:                                               ; preds = %3
  %47 = load i8*, i8** %6, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i64 @write_file(i8* %47, i32 %48)
  store i64 %49, i64* %9, align 8
  br label %50

50:                                               ; preds = %46, %33
  %51 = load i64, i64* %9, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = load i64, i64* @FALSE, align 8
  store i64 %54, i64* %4, align 8
  br label %62

55:                                               ; preds = %50
  %56 = call i32 @run_regedit_exe(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %57 = call i64 @DeleteFileA(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i64 %57, i64* %9, align 8
  %58 = load i64, i64* %9, align 8
  %59 = call i32 (...) @GetLastError()
  %60 = call i32 @lok(i64 %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  %61 = load i64, i64* %9, align 8
  store i64 %61, i64* %4, align 8
  br label %62

62:                                               ; preds = %55, %53, %31
  %63 = load i64, i64* %4, align 8
  ret i64 %63
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i8*, i32) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @write_file(i8*, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

declare dso_local i32 @run_regedit_exe(i8*) #1

declare dso_local i64 @DeleteFileA(i8*) #1

declare dso_local i32 @lok(i64, i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
