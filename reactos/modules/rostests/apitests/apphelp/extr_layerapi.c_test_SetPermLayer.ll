; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/apphelp/extr_layerapi.c_test_SetPermLayer.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/apphelp/extr_layerapi.c_test_SetPermLayer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"test_file.exe\00", align 1
@GENERIC_WRITE = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"CreateFile failed for '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"Running these tests is useless without a file present\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [90 x i8] c"Skipping SetPermLayerStateLevel tests for User, because I cannot prepare the environment\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [100 x i8] c"Skipping SetPermLayerStateLevel tests for Machine (HKLM), because I cannot prepare the environment\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"DeleteFile failed....\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SetPermLayer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SetPermLayer() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @MAX_PATH, align 4
  %7 = add nsw i32 %6, 20
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %1, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %2, align 8
  %11 = load i32, i32* @MAX_PATH, align 4
  %12 = add nsw i32 %11, 20
  %13 = zext i32 %12 to i64
  %14 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %3, align 8
  %15 = load i32, i32* @MAX_PATH, align 4
  %16 = call i32 @GetTempPathA(i32 %15, i8* %14)
  %17 = trunc i64 %8 to i32
  %18 = call i32 @GetLongPathNameA(i8* %14, i8* %10, i32 %17)
  %19 = call i32 @PathAppendA(i8* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @GENERIC_WRITE, align 4
  %21 = load i32, i32* @CREATE_ALWAYS, align 4
  %22 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %23 = call i64 @CreateFileA(i8* %10, i32 %20, i32 0, i32* null, i32 %21, i32 %22, i32* null)
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %26 = icmp ne i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %10)
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %0
  %33 = call i32 @skip(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %61

34:                                               ; preds = %0
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @CloseHandle(i64 %35)
  %37 = load i32, i32* @FALSE, align 4
  %38 = call i64 @setLayerValue(i32 %37, i8* %10, i32* null)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load i32, i32* @FALSE, align 4
  %42 = call i32 @test_SdbSetPermLayerKeysLevel(i32 %41, i8* %10)
  %43 = load i32, i32* @FALSE, align 4
  %44 = call i32 @test_SetPermLayerStateLevel(i32 %43, i8* %10)
  br label %47

45:                                               ; preds = %34
  %46 = call i32 @skip(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.3, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %40
  %48 = load i32, i32* @TRUE, align 4
  %49 = call i64 @setLayerValue(i32 %48, i8* %10, i32* null)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i32, i32* @TRUE, align 4
  %53 = call i32 @test_SdbSetPermLayerKeysLevel(i32 %52, i8* %10)
  %54 = load i32, i32* @TRUE, align 4
  %55 = call i32 @test_SetPermLayerStateLevel(i32 %54, i8* %10)
  br label %58

56:                                               ; preds = %47
  %57 = call i32 @skip(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.4, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %51
  %59 = call i32 @DeleteFileA(i8* %10)
  %60 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %58, %32
  %62 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %62)
  %63 = load i32, i32* %5, align 4
  switch i32 %63, label %65 [
    i32 0, label %64
    i32 1, label %64
  ]

64:                                               ; preds = %61, %61
  ret void

65:                                               ; preds = %61
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetTempPathA(i32, i8*) #2

declare dso_local i32 @GetLongPathNameA(i8*, i8*, i32) #2

declare dso_local i32 @PathAppendA(i8*, i8*) #2

declare dso_local i64 @CreateFileA(i8*, i32, i32, i32*, i32, i32, i32*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @skip(i8*) #2

declare dso_local i32 @CloseHandle(i64) #2

declare dso_local i64 @setLayerValue(i32, i8*, i32*) #2

declare dso_local i32 @test_SdbSetPermLayerKeysLevel(i32, i8*) #2

declare dso_local i32 @test_SetPermLayerStateLevel(i32, i8*) #2

declare dso_local i32 @DeleteFileA(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
