; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_resource.c_test_find_resource.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_resource.c_test_find_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RT_MENU = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"resource not found\0A\00", align 1
@LANG_NEUTRAL = common dso_local global i32 0, align 4
@SUBLANG_NEUTRAL = common dso_local global i32 0, align 4
@LANG_GERMAN = common dso_local global i32 0, align 4
@SUBLANG_DEFAULT = common dso_local global i32 0, align 4
@RT_DIALOG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"resource found\0A\00", align 1
@ERROR_RESOURCE_TYPE_NOT_FOUND = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"wrong error %u\0A\00", align 1
@ERROR_RESOURCE_NAME_NOT_FOUND = common dso_local global i64 0, align 8
@LANG_ENGLISH = common dso_local global i32 0, align 4
@ERROR_RESOURCE_LANG_NOT_FOUND = common dso_local global i64 0, align 8
@LANG_FRENCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_find_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_find_resource() #0 {
  %1 = alloca i64, align 8
  %2 = call i32 @GetModuleHandleW(i32* null)
  %3 = call i32 @MAKEINTRESOURCEW(i32 1)
  %4 = load i64, i64* @RT_MENU, align 8
  %5 = trunc i64 %4 to i32
  %6 = call i64 @FindResourceW(i32 %2, i32 %3, i32 %5)
  store i64 %6, i64* %1, align 8
  %7 = load i64, i64* %1, align 8
  %8 = icmp ne i64 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 (i32, i8*, ...) @ok(i32 %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @GetModuleHandleW(i32* null)
  %12 = load i64, i64* @RT_MENU, align 8
  %13 = trunc i64 %12 to i32
  %14 = call i32 @MAKEINTRESOURCEW(i32 1)
  %15 = load i32, i32* @LANG_NEUTRAL, align 4
  %16 = load i32, i32* @SUBLANG_NEUTRAL, align 4
  %17 = call i32 @MAKELANGID(i32 %15, i32 %16)
  %18 = call i64 @FindResourceExW(i32 %11, i32 %13, i32 %14, i32 %17)
  store i64 %18, i64* %1, align 8
  %19 = load i64, i64* %1, align 8
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 @GetModuleHandleW(i32* null)
  %24 = load i64, i64* @RT_MENU, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 @MAKEINTRESOURCEW(i32 1)
  %27 = load i32, i32* @LANG_GERMAN, align 4
  %28 = load i32, i32* @SUBLANG_DEFAULT, align 4
  %29 = call i32 @MAKELANGID(i32 %27, i32 %28)
  %30 = call i64 @FindResourceExW(i32 %23, i32 %25, i32 %26, i32 %29)
  store i64 %30, i64* %1, align 8
  %31 = load i64, i64* %1, align 8
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %35 = call i32 @SetLastError(i32 -559038737)
  %36 = call i32 @GetModuleHandleW(i32* null)
  %37 = call i32 @MAKEINTRESOURCEW(i32 1)
  %38 = load i64, i64* @RT_DIALOG, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i64 @FindResourceW(i32 %36, i32 %37, i32 %39)
  store i64 %40, i64* %1, align 8
  %41 = load i64, i64* %1, align 8
  %42 = icmp ne i64 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %46 = call i64 (...) @GetLastError()
  %47 = load i64, i64* @ERROR_RESOURCE_TYPE_NOT_FOUND, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i64 (...) @GetLastError()
  %51 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 %50)
  %52 = call i32 @SetLastError(i32 -559038737)
  %53 = call i32 @GetModuleHandleW(i32* null)
  %54 = call i32 @MAKEINTRESOURCEW(i32 2)
  %55 = load i64, i64* @RT_MENU, align 8
  %56 = trunc i64 %55 to i32
  %57 = call i64 @FindResourceW(i32 %53, i32 %54, i32 %56)
  store i64 %57, i64* %1, align 8
  %58 = load i64, i64* %1, align 8
  %59 = icmp ne i64 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %63 = call i64 (...) @GetLastError()
  %64 = load i64, i64* @ERROR_RESOURCE_NAME_NOT_FOUND, align 8
  %65 = icmp eq i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i64 (...) @GetLastError()
  %68 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 %67)
  %69 = call i32 @SetLastError(i32 -559038737)
  %70 = call i32 @GetModuleHandleW(i32* null)
  %71 = load i64, i64* @RT_MENU, align 8
  %72 = trunc i64 %71 to i32
  %73 = call i32 @MAKEINTRESOURCEW(i32 1)
  %74 = load i32, i32* @LANG_ENGLISH, align 4
  %75 = load i32, i32* @SUBLANG_DEFAULT, align 4
  %76 = call i32 @MAKELANGID(i32 %74, i32 %75)
  %77 = call i64 @FindResourceExW(i32 %70, i32 %72, i32 %73, i32 %76)
  store i64 %77, i64* %1, align 8
  %78 = load i64, i64* %1, align 8
  %79 = icmp ne i64 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %83 = call i64 (...) @GetLastError()
  %84 = load i64, i64* @ERROR_RESOURCE_LANG_NOT_FOUND, align 8
  %85 = icmp eq i64 %83, %84
  %86 = zext i1 %85 to i32
  %87 = call i64 (...) @GetLastError()
  %88 = call i32 (i32, i8*, ...) @ok(i32 %86, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 %87)
  %89 = call i32 @SetLastError(i32 -559038737)
  %90 = call i32 @GetModuleHandleW(i32* null)
  %91 = load i64, i64* @RT_MENU, align 8
  %92 = trunc i64 %91 to i32
  %93 = call i32 @MAKEINTRESOURCEW(i32 1)
  %94 = load i32, i32* @LANG_FRENCH, align 4
  %95 = load i32, i32* @SUBLANG_DEFAULT, align 4
  %96 = call i32 @MAKELANGID(i32 %94, i32 %95)
  %97 = call i64 @FindResourceExW(i32 %90, i32 %92, i32 %93, i32 %96)
  store i64 %97, i64* %1, align 8
  %98 = load i64, i64* %1, align 8
  %99 = icmp ne i64 %98, 0
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  %102 = call i32 (i32, i8*, ...) @ok(i32 %101, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %103 = call i64 (...) @GetLastError()
  %104 = load i64, i64* @ERROR_RESOURCE_LANG_NOT_FOUND, align 8
  %105 = icmp eq i64 %103, %104
  %106 = zext i1 %105 to i32
  %107 = call i64 (...) @GetLastError()
  %108 = call i32 (i32, i8*, ...) @ok(i32 %106, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 %107)
  ret void
}

declare dso_local i64 @FindResourceW(i32, i32, i32) #1

declare dso_local i32 @GetModuleHandleW(i32*) #1

declare dso_local i32 @MAKEINTRESOURCEW(i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @FindResourceExW(i32, i32, i32, i32) #1

declare dso_local i32 @MAKELANGID(i32, i32) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i64 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
