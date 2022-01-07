; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/reg/extr_reg.c_import_reg.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/reg/extr_reg.c_import_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CP_UTF8 = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"reg import test.reg\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"test.reg\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"DeleteFile failed: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*, i64, i32*)* @import_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @import_reg(i32 %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @strlen(i8* %15)
  store i32 %16, i32* %10, align 4
  %17 = load i64, i64* %8, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %48

19:                                               ; preds = %4
  %20 = load i32, i32* @CP_UTF8, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @MultiByteToWideChar(i32 %20, i32 0, i8* %21, i32 %22, i8* null, i32 0)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 1
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %13, align 4
  %28 = call i32 (...) @GetProcessHeap()
  %29 = load i32, i32* %13, align 4
  %30 = call i8* @HeapAlloc(i32 %28, i32 0, i32 %29)
  store i8* %30, i8** %14, align 8
  %31 = load i8*, i8** %14, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %19
  %34 = load i64, i64* @FALSE, align 8
  store i64 %34, i64* %5, align 8
  br label %65

35:                                               ; preds = %19
  %36 = load i32, i32* @CP_UTF8, align 4
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i8*, i8** %14, align 8
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @MultiByteToWideChar(i32 %36, i32 0, i8* %37, i32 %38, i8* %39, i32 %40)
  %42 = load i8*, i8** %14, align 8
  %43 = load i32, i32* %13, align 4
  %44 = call i64 @write_file(i8* %42, i32 %43)
  store i64 %44, i64* %11, align 8
  %45 = call i32 (...) @GetProcessHeap()
  %46 = load i8*, i8** %14, align 8
  %47 = call i32 @HeapFree(i32 %45, i32 0, i8* %46)
  br label %52

48:                                               ; preds = %4
  %49 = load i8*, i8** %7, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i64 @write_file(i8* %49, i32 %50)
  store i64 %51, i64* %11, align 8
  br label %52

52:                                               ; preds = %48, %35
  %53 = load i64, i64* %11, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  %56 = load i64, i64* @FALSE, align 8
  store i64 %56, i64* %5, align 8
  br label %65

57:                                               ; preds = %52
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @run_reg_exe(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32* %58)
  %60 = call i64 @DeleteFileA(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i64 %60, i64* %11, align 8
  %61 = load i64, i64* %11, align 8
  %62 = call i32 (...) @GetLastError()
  %63 = call i32 @lok(i64 %61, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = load i64, i64* %11, align 8
  store i64 %64, i64* %5, align 8
  br label %65

65:                                               ; preds = %57, %55, %33
  %66 = load i64, i64* %5, align 8
  ret i64 %66
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i8*, i32) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @write_file(i8*, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

declare dso_local i32 @run_reg_exe(i8*, i32*) #1

declare dso_local i64 @DeleteFileA(i8*) #1

declare dso_local i32 @lok(i64, i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
