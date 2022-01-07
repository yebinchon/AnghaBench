; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_resource.c_update_empty_exe.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_resource.c_update_empty_exe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@filename = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"failed to create file\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@ERROR_FILE_INVALID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"BeginUpdateResource failed\0A\00", align 1
@GENERIC_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"EndUpdateResource failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Can't update resource in empty file\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @update_empty_exe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_empty_exe() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load i32, i32* @filename, align 4
  %6 = load i32, i32* @GENERIC_WRITE, align 4
  %7 = load i32, i32* @CREATE_ALWAYS, align 4
  %8 = call i64 @CreateFileA(i32 %5, i32 %6, i32 0, i32* null, i32 %7, i32 0, i32 0)
  store i64 %8, i64* %1, align 8
  %9 = load i64, i64* %1, align 8
  %10 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %11 = icmp ne i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @ok(i32 %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %14 = load i64, i64* %1, align 8
  %15 = call i32 @CloseHandle(i64 %14)
  %16 = load i32, i32* @filename, align 4
  %17 = load i64, i64* @TRUE, align 8
  %18 = call i64 @BeginUpdateResourceA(i32 %16, i64 %17)
  store i64 %18, i64* %2, align 8
  %19 = load i64, i64* %2, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = icmp ne i8* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %0
  %23 = call i64 (...) @GetLastError()
  %24 = load i64, i64* @ERROR_FILE_INVALID, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %51

26:                                               ; preds = %22, %0
  %27 = load i64, i64* %2, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = icmp ne i8* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @ok(i32 %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @filename, align 4
  %33 = load i32, i32* @GENERIC_READ, align 4
  %34 = load i32, i32* @OPEN_EXISTING, align 4
  %35 = call i64 @CreateFileA(i32 %32, i32 %33, i32 0, i32* null, i32 %34, i32 0, i32 0)
  store i64 %35, i64* %3, align 8
  %36 = load i64, i64* %3, align 8
  %37 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %38 = icmp ne i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @ok(i32 %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %41 = load i64, i64* %3, align 8
  %42 = call i32 @CloseHandle(i64 %41)
  %43 = load i64, i64* %2, align 8
  %44 = load i64, i64* @FALSE, align 8
  %45 = call i64 @EndUpdateResourceA(i64 %43, i64 %44)
  store i64 %45, i64* %4, align 8
  %46 = load i64, i64* %4, align 8
  %47 = load i64, i64* @FALSE, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @ok(i32 %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %53

51:                                               ; preds = %22
  %52 = call i32 @skip(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %26
  %54 = load i32, i32* @filename, align 4
  %55 = load i64, i64* @FALSE, align 8
  %56 = call i64 @BeginUpdateResourceA(i32 %54, i64 %55)
  store i64 %56, i64* %2, align 8
  %57 = load i64, i64* %2, align 8
  %58 = inttoptr i64 %57 to i8*
  %59 = icmp eq i8* %58, null
  %60 = zext i1 %59 to i32
  %61 = call i32 @ok(i32 %60, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i64 @CreateFileA(i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i64 @BeginUpdateResourceA(i32, i64) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i64 @EndUpdateResourceA(i64, i64) #1

declare dso_local i32 @skip(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
