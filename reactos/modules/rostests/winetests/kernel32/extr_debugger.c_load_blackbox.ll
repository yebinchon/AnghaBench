; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_debugger.c_load_blackbox.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_debugger.c_load_blackbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GENERIC_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"unable to open '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"ReadFile failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"wrong size for '%s': read=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @load_blackbox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_blackbox(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* @GENERIC_READ, align 4
  %13 = load i32, i32* @OPEN_EXISTING, align 4
  %14 = call i64 @CreateFileA(i8* %11, i32 %12, i32 0, i32* null, i32 %13, i32 0, i32 0)
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 (i32, i8*, i8*, ...) @ok(i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %19)
  store i32 0, i32* %4, align 4
  br label %41

21:                                               ; preds = %3
  %22 = call i32 @SetLastError(i32 -559038737)
  %23 = load i64, i64* %8, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @ReadFile(i64 %23, i8* %24, i32 %25, i32* %9, i32* null)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 (...) @GetLastError()
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i8*
  %31 = call i32 (i32, i8*, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 (i32, i8*, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %36, i32 %37)
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @CloseHandle(i64 %39)
  store i32 1, i32* %4, align 4
  br label %41

41:                                               ; preds = %21, %18
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i64 @CreateFileA(i8*, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i8*, ...) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @ReadFile(i64, i8*, i32, i32*, i32*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @CloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
