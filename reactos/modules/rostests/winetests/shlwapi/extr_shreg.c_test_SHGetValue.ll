; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_shreg.c_test_SHGetValue.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_shreg.c_test_SHGetValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@sEmptyBuffer = common dso_local global i32 0, align 4
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@REG_TEST_KEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"Test1\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"SHGetValueA failed, ret=%u\0A\00", align 1
@sExpTestpath1 = common dso_local global i32 0, align 4
@sTestpath1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Comparing of (%s) with (%s) failed\0A\00", align 1
@REG_SZ = common dso_local global i32 0, align 4
@REG_EXPAND_SZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Expected REG_SZ, got (%u)\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Test2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SHGetValue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SHGetValue() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = load i32, i32* @MAX_PATH, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %4, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %5, align 8
  %10 = load i32, i32* @sEmptyBuffer, align 4
  %11 = call i32 @strcpy(i8* %9, i32 %10)
  %12 = load i32, i32* @MAX_PATH, align 4
  store i32 %12, i32* %1, align 4
  store i32 -1, i32* %2, align 4
  %13 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %14 = load i32, i32* @REG_TEST_KEY, align 4
  %15 = call i32 @SHGetValueA(i32 %13, i32 %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %2, i8* %9, i32* %1)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @ERROR_SUCCESS, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp eq i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = load i32, i32* %3, align 4
  %21 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @sExpTestpath1, align 4
  %23 = call i64 @strcmp(i32 %22, i8* %9)
  %24 = icmp eq i64 0, %23
  br i1 %24, label %32, label %25

25:                                               ; preds = %0
  %26 = load i32, i32* @sTestpath1, align 4
  %27 = call i64 @strcmp(i32 %26, i8* %9)
  %28 = icmp eq i64 0, %27
  %29 = zext i1 %28 to i32
  %30 = call i64 @broken(i32 %29)
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %25, %0
  %33 = phi i1 [ true, %0 ], [ %31, %25 ]
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* @sExpTestpath1, align 4
  %36 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %9, i32 %35)
  %37 = load i32, i32* @REG_SZ, align 4
  %38 = load i32, i32* %2, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %47, label %40

40:                                               ; preds = %32
  %41 = load i32, i32* @REG_EXPAND_SZ, align 4
  %42 = load i32, i32* %2, align 4
  %43 = icmp eq i32 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i64 @broken(i32 %44)
  %46 = icmp ne i64 %45, 0
  br label %47

47:                                               ; preds = %40, %32
  %48 = phi i1 [ true, %32 ], [ %46, %40 ]
  %49 = zext i1 %48 to i32
  %50 = load i32, i32* %2, align 4
  %51 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @sEmptyBuffer, align 4
  %53 = call i32 @strcpy(i8* %9, i32 %52)
  %54 = load i32, i32* @MAX_PATH, align 4
  store i32 %54, i32* %1, align 4
  store i32 -1, i32* %2, align 4
  %55 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %56 = load i32, i32* @REG_TEST_KEY, align 4
  %57 = call i32 @SHGetValueA(i32 %55, i32 %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32* %2, i8* %9, i32* %1)
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* @ERROR_SUCCESS, align 4
  %59 = load i32, i32* %3, align 4
  %60 = icmp eq i32 %58, %59
  %61 = zext i1 %60 to i32
  %62 = load i32, i32* %3, align 4
  %63 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @sTestpath1, align 4
  %65 = call i64 @strcmp(i32 %64, i8* %9)
  %66 = icmp eq i64 0, %65
  %67 = zext i1 %66 to i32
  %68 = load i32, i32* @sTestpath1, align 4
  %69 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %9, i32 %68)
  %70 = load i32, i32* @REG_SZ, align 4
  %71 = load i32, i32* %2, align 4
  %72 = icmp eq i32 %70, %71
  %73 = zext i1 %72 to i32
  %74 = load i32, i32* %2, align 4
  %75 = call i32 (i32, i8*, ...) @ok(i32 %73, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  %76 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %76)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strcpy(i8*, i32) #2

declare dso_local i32 @SHGetValueA(i32, i32, i8*, i32*, i8*, i32*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i64 @strcmp(i32, i8*) #2

declare dso_local i64 @broken(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
