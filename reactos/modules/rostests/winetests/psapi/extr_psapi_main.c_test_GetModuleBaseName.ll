; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/psapi/extr_psapi_main.c_test_GetModuleBaseName.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/psapi/extr_psapi_main.c_test_GetModuleBaseName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@ERROR_INVALID_HANDLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"expected error=ERROR_INVALID_HANDLE but got %d\0A\00", align 1
@hpQI = common dso_local global i32* null, align 8
@ERROR_ACCESS_DENIED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"expected error=ERROR_ACCESS_DENIED but got %d\0A\00", align 1
@hpQV = common dso_local global i32* null, align 8
@hBad = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"szModBaseName=\22%s\22 ret=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"szModPath=\22%s\22 szModBaseName=\22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetModuleBaseName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetModuleBaseName() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = call i32* @GetModuleHandleA(i32* null)
  store i32* %7, i32** %1, align 8
  %8 = load i32, i32* @MAX_PATH, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %2, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %3, align 8
  %12 = load i32, i32* @MAX_PATH, align 4
  %13 = zext i32 %12 to i64
  %14 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %4, align 8
  %15 = call i32 @SetLastError(i32 -559038737)
  %16 = load i32*, i32** %1, align 8
  %17 = trunc i64 %13 to i32
  %18 = call i64 @GetModuleBaseNameA(i32* null, i32* %16, i8* %14, i32 %17)
  %19 = call i64 (...) @GetLastError()
  %20 = load i64, i64* @ERROR_INVALID_HANDLE, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i64 (...) @GetLastError()
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 (i32, i8*, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = call i32 @SetLastError(i32 -559038737)
  %27 = load i32*, i32** @hpQI, align 8
  %28 = load i32*, i32** %1, align 8
  %29 = trunc i64 %13 to i32
  %30 = call i64 @GetModuleBaseNameA(i32* %27, i32* %28, i8* %14, i32 %29)
  %31 = call i64 (...) @GetLastError()
  %32 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i64 (...) @GetLastError()
  %36 = inttoptr i64 %35 to i8*
  %37 = call i32 (i32, i8*, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  %38 = call i32 @SetLastError(i32 -559038737)
  %39 = load i32*, i32** @hpQV, align 8
  %40 = load i32*, i32** @hBad, align 8
  %41 = trunc i64 %13 to i32
  %42 = call i64 @GetModuleBaseNameA(i32* %39, i32* %40, i8* %14, i32 %41)
  %43 = call i64 (...) @GetLastError()
  %44 = load i64, i64* @ERROR_INVALID_HANDLE, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i64 (...) @GetLastError()
  %48 = inttoptr i64 %47 to i8*
  %49 = call i32 (i32, i8*, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %48)
  %50 = load i32*, i32** @hpQV, align 8
  %51 = trunc i64 %13 to i32
  %52 = call i64 @GetModuleBaseNameA(i32* %50, i32* null, i8* %14, i32 %51)
  store i64 %52, i64* %5, align 8
  %53 = load i64, i64* %5, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %0
  store i32 1, i32* %6, align 4
  br label %72

56:                                               ; preds = %0
  %57 = load i64, i64* %5, align 8
  %58 = call i64 @strlen(i8* %14)
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = load i64, i64* %5, align 8
  %62 = call i32 (i32, i8*, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %14, i64 %61)
  %63 = trunc i64 %9 to i32
  %64 = call i32 @GetModuleFileNameA(i32* null, i8* %11, i32 %63)
  %65 = call i64 @strrchr(i8* %11, i8 signext 92)
  %66 = add nsw i64 %65, 1
  %67 = call i32 @strcmp(i64 %66, i8* %14)
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = call i32 (i32, i8*, i8*, ...) @ok(i32 %70, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %11, i8* %14)
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %56, %55
  %73 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %73)
  %74 = load i32, i32* %6, align 4
  switch i32 %74, label %76 [
    i32 0, label %75
    i32 1, label %75
  ]

75:                                               ; preds = %72, %72
  ret void

76:                                               ; preds = %72
  unreachable
}

declare dso_local i32* @GetModuleHandleA(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i64 @GetModuleBaseNameA(i32*, i32*, i8*, i32) #1

declare dso_local i32 @ok(i32, i8*, i8*, ...) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @GetModuleFileNameA(i32*, i8*, i32) #1

declare dso_local i32 @strcmp(i64, i8*) #1

declare dso_local i64 @strrchr(i8*, i8 signext) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
