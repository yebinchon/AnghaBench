; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_ordinal.c_test_SHGetIniString.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_ordinal.c_test_SHGetIniString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_SHGetIniString.TestAppW = internal constant [8 x i8] c"TestApp\00", align 1
@test_SHGetIniString.AKeyW = internal constant [5 x i8] c"AKey\00", align 1
@test_SHGetIniString.AnotherKeyW = internal constant [11 x i8] c"AnotherKey\00", align 1
@test_SHGetIniString.JunkKeyW = internal constant [8 x i8] c"JunkKey\00", align 1
@test_SHGetIniString.testpathW = internal constant [12 x i8] c"C:\\test.ini\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"SHGetIniStringW should have given 0, instead: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"SHGetIniStringW should have given 4, instead: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Expected %s, got: %s, %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"SHGetIniStringW should have given 1, instead: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Expected L\221\22, got: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"asdf\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Expected L\22asdf\22, got: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Expected L\22\22, got: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SHGetIniString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SHGetIniString() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [64 x i8], align 16
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = bitcast [64 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 64, i1 false)
  %7 = load i32, i32* @MAX_PATH, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = call i32 @lstrcpyW(i8* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_SHGetIniString.testpathW, i64 0, i64 0))
  %12 = call i32 @write_inifile(i8* %10)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %0
  store i32 1, i32* %5, align 4
  br label %97

15:                                               ; preds = %0
  %16 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %17 = call i32 @pSHGetIniStringW(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_SHGetIniString.TestAppW, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_SHGetIniString.AKeyW, i64 0, i64 0), i8* %16, i32 0, i8* %10)
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* %1, align 4
  %22 = call i32 (i32, i8*, i32, ...) @ok(i32 %20, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  store i8 0, i8* %23, align 16
  %24 = call i32 @SetLastError(i32 -559038737)
  %25 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %26 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %27 = call i32 @ARRAY_SIZE(i8* %26)
  %28 = call i32 @pSHGetIniStringW(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_SHGetIniString.TestAppW, i64 0, i64 0), i8* null, i8* %25, i32 %27, i8* %10)
  store i32 %28, i32* %1, align 4
  %29 = load i32, i32* %1, align 4
  %30 = icmp eq i32 %29, 4
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* %1, align 4
  %33 = call i32 (i32, i8*, i32, ...) @ok(i32 %31, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %35 = call i32 @lstrcmpW(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_SHGetIniString.AKeyW, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @wine_dbgstr_w(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_SHGetIniString.AKeyW, i64 0, i64 0))
  %40 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %41 = call i32 @wine_dbgstr_w(i8* %40)
  %42 = call i32 (...) @GetLastError()
  %43 = call i32 (i32, i8*, i32, ...) @ok(i32 %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %39, i32 %41, i32 %42)
  %44 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %45 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %46 = call i32 @ARRAY_SIZE(i8* %45)
  %47 = call i32 @pSHGetIniStringW(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_SHGetIniString.TestAppW, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_SHGetIniString.AKeyW, i64 0, i64 0), i8* %44, i32 %46, i8* %10)
  store i32 %47, i32* %1, align 4
  %48 = load i32, i32* %1, align 4
  %49 = icmp eq i32 %48, 1
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* %1, align 4
  %52 = call i32 (i32, i8*, i32, ...) @ok(i32 %50, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  %53 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %54 = call i32 @strcmp_wa(i8* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %59 = call i32 @wine_dbgstr_w(i8* %58)
  %60 = call i32 (i32, i8*, i32, ...) @ok(i32 %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %59)
  %61 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %62 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %63 = call i32 @ARRAY_SIZE(i8* %62)
  %64 = call i32 @pSHGetIniStringW(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_SHGetIniString.TestAppW, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_SHGetIniString.AnotherKeyW, i64 0, i64 0), i8* %61, i32 %63, i8* %10)
  store i32 %64, i32* %1, align 4
  %65 = load i32, i32* %1, align 4
  %66 = icmp eq i32 %65, 4
  %67 = zext i1 %66 to i32
  %68 = load i32, i32* %1, align 4
  %69 = call i32 (i32, i8*, i32, ...) @ok(i32 %67, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %71 = call i32 @strcmp_wa(i8* %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %76 = call i32 @wine_dbgstr_w(i8* %75)
  %77 = call i32 (i32, i8*, i32, ...) @ok(i32 %74, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %76)
  %78 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  store i8 1, i8* %78, align 16
  %79 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %80 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %81 = call i32 @ARRAY_SIZE(i8* %80)
  %82 = call i32 @pSHGetIniStringW(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_SHGetIniString.TestAppW, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_SHGetIniString.JunkKeyW, i64 0, i64 0), i8* %79, i32 %81, i8* %10)
  store i32 %82, i32* %1, align 4
  %83 = load i32, i32* %1, align 4
  %84 = icmp eq i32 %83, 0
  %85 = zext i1 %84 to i32
  %86 = load i32, i32* %1, align 4
  %87 = call i32 (i32, i8*, i32, ...) @ok(i32 %85, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %86)
  %88 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %89 = load i8, i8* %88, align 16
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 0
  %92 = zext i1 %91 to i32
  %93 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %94 = call i32 @wine_dbgstr_w(i8* %93)
  %95 = call i32 (i32, i8*, i32, ...) @ok(i32 %92, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %94)
  %96 = call i32 @DeleteFileW(i8* %10)
  store i32 0, i32* %5, align 4
  br label %97

97:                                               ; preds = %15, %14
  %98 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %98)
  %99 = load i32, i32* %5, align 4
  switch i32 %99, label %101 [
    i32 0, label %100
    i32 1, label %100
  ]

100:                                              ; preds = %97, %97
  ret void

101:                                              ; preds = %97
  unreachable
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @lstrcpyW(i8*, i8*) #3

declare dso_local i32 @write_inifile(i8*) #3

declare dso_local i32 @pSHGetIniStringW(i8*, i8*, i8*, i32, i8*) #3

declare dso_local i32 @ok(i32, i8*, i32, ...) #3

declare dso_local i32 @SetLastError(i32) #3

declare dso_local i32 @ARRAY_SIZE(i8*) #3

declare dso_local i32 @lstrcmpW(i8*, i8*) #3

declare dso_local i32 @wine_dbgstr_w(i8*) #3

declare dso_local i32 @GetLastError(...) #3

declare dso_local i32 @strcmp_wa(i8*, i8*) #3

declare dso_local i32 @DeleteFileW(i8*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
