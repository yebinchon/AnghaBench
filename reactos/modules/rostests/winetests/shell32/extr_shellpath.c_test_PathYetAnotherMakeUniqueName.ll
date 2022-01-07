; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shellpath.c_test_PathYetAnotherMakeUniqueName.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shellpath.c_test_PathYetAnotherMakeUniqueName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_PathYetAnotherMakeUniqueName.shortW = internal constant [9 x float] [float 1.020000e+02, float 1.050000e+02, float 1.080000e+02, float 1.010000e+02, float 4.600000e+01, float 1.160000e+02, float 1.150000e+02, float 1.160000e+02, float 0.000000e+00], align 16
@test_PathYetAnotherMakeUniqueName.short2W = internal constant [13 x float] [float 1.020000e+02, float 1.050000e+02, float 1.080000e+02, float 1.010000e+02, float 3.200000e+01, float 4.000000e+01, float 5.000000e+01, float 4.100000e+01, float 4.600000e+01, float 1.160000e+02, float 1.150000e+02, float 1.160000e+02, float 0.000000e+00], align 16
@test_PathYetAnotherMakeUniqueName.tmpW = internal constant [4 x float] [float 1.160000e+02, float 1.090000e+02, float 1.120000e+02, float 0.000000e+00], align 16
@test_PathYetAnotherMakeUniqueName.longW = internal constant [5 x float] [float 1.100000e+02, float 9.700000e+01, float 1.090000e+02, float 1.010000e+02, float 0.000000e+00], align 16
@test_PathYetAnotherMakeUniqueName.long2W = internal constant [9 x float] [float 1.100000e+02, float 9.700000e+01, float 1.090000e+02, float 1.010000e+02, float 3.200000e+01, float 4.000000e+01, float 5.000000e+01, float 4.100000e+01, float 0.000000e+00], align 16
@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"got %s, expected %s\0A\00", align 1
@GENERIC_WRITE = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@FILE_FLAG_DELETE_ON_CLOSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"got %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_PathYetAnotherMakeUniqueName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_PathYetAnotherMakeUniqueName() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = load i32, i32* @MAX_PATH, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %1, align 8
  %10 = alloca float, i64 %8, align 16
  store i64 %8, i64* %2, align 8
  %11 = load i32, i32* @MAX_PATH, align 4
  %12 = zext i32 %11 to i64
  %13 = alloca float, i64 %12, align 16
  store i64 %12, i64* %3, align 8
  %14 = load i32, i32* @MAX_PATH, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca float, i64 %15, align 16
  store i64 %15, i64* %4, align 8
  %17 = call i32 @ARRAY_SIZE(float* %16)
  %18 = call i32 @GetTempPathW(i32 %17, float* %16)
  %19 = getelementptr inbounds float, float* %10, i64 0
  store float 0.000000e+00, float* %19, align 16
  %20 = call i32 @pPathYetAnotherMakeUniqueName(float* %10, float* %16, float* getelementptr inbounds ([9 x float], [9 x float]* @test_PathYetAnotherMakeUniqueName.shortW, i64 0, i64 0), float* null)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 (i32, i8*, i32, ...) @ok(i32 %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = call i32 @lstrcpyW(float* %13, float* %16)
  %25 = call i32 @lstrcatW(float* %13, float* getelementptr inbounds ([9 x float], [9 x float]* @test_PathYetAnotherMakeUniqueName.shortW, i64 0, i64 0))
  %26 = call i32 @lstrcmpW(float* %10, float* %13)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @wine_dbgstr_w(float* %10)
  %31 = call i32 @wine_dbgstr_w(float* %13)
  %32 = call i32 (i32, i8*, i32, ...) @ok(i32 %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %31)
  %33 = load i32, i32* @GENERIC_WRITE, align 4
  %34 = load i32, i32* @CREATE_ALWAYS, align 4
  %35 = load i32, i32* @FILE_FLAG_DELETE_ON_CLOSE, align 4
  %36 = call i32* @CreateFileW(float* %10, i32 %33, i32 0, i32* null, i32 %34, i32 %35, i32* null)
  store i32* %36, i32** %5, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = icmp ne i32* %37, null
  %39 = zext i1 %38 to i32
  %40 = load i32*, i32** %5, align 8
  %41 = ptrtoint i32* %40 to i32
  %42 = call i32 (i32, i8*, i32, ...) @ok(i32 %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = getelementptr inbounds float, float* %10, i64 0
  store float 0.000000e+00, float* %43, align 16
  %44 = call i32 @pPathYetAnotherMakeUniqueName(float* %10, float* %16, float* getelementptr inbounds ([9 x float], [9 x float]* @test_PathYetAnotherMakeUniqueName.shortW, i64 0, i64 0), float* null)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 (i32, i8*, i32, ...) @ok(i32 %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = call i32 @lstrcpyW(float* %13, float* %16)
  %49 = call i32 @lstrcatW(float* %13, float* getelementptr inbounds ([13 x float], [13 x float]* @test_PathYetAnotherMakeUniqueName.short2W, i64 0, i64 0))
  %50 = call i32 @lstrcmpW(float* %10, float* %13)
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i32 @wine_dbgstr_w(float* %10)
  %55 = call i32 @wine_dbgstr_w(float* %13)
  %56 = call i32 (i32, i8*, i32, ...) @ok(i32 %53, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %55)
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @CloseHandle(i32* %57)
  %59 = getelementptr inbounds float, float* %10, i64 0
  store float 0.000000e+00, float* %59, align 16
  %60 = call i32 @pPathYetAnotherMakeUniqueName(float* %10, float* %16, float* getelementptr inbounds ([4 x float], [4 x float]* @test_PathYetAnotherMakeUniqueName.tmpW, i64 0, i64 0), float* getelementptr inbounds ([5 x float], [5 x float]* @test_PathYetAnotherMakeUniqueName.longW, i64 0, i64 0))
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 (i32, i8*, i32, ...) @ok(i32 %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = call i32 @lstrcpyW(float* %13, float* %16)
  %65 = call i32 @lstrcatW(float* %13, float* getelementptr inbounds ([5 x float], [5 x float]* @test_PathYetAnotherMakeUniqueName.longW, i64 0, i64 0))
  %66 = call i32 @lstrcmpW(float* %10, float* %13)
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = call i32 @wine_dbgstr_w(float* %10)
  %71 = call i32 @wine_dbgstr_w(float* %13)
  %72 = call i32 (i32, i8*, i32, ...) @ok(i32 %69, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %70, i32 %71)
  %73 = load i32, i32* @GENERIC_WRITE, align 4
  %74 = load i32, i32* @CREATE_ALWAYS, align 4
  %75 = load i32, i32* @FILE_FLAG_DELETE_ON_CLOSE, align 4
  %76 = call i32* @CreateFileW(float* %10, i32 %73, i32 0, i32* null, i32 %74, i32 %75, i32* null)
  store i32* %76, i32** %5, align 8
  %77 = load i32*, i32** %5, align 8
  %78 = icmp ne i32* %77, null
  %79 = zext i1 %78 to i32
  %80 = load i32*, i32** %5, align 8
  %81 = ptrtoint i32* %80 to i32
  %82 = call i32 (i32, i8*, i32, ...) @ok(i32 %79, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  %83 = getelementptr inbounds float, float* %10, i64 0
  store float 0.000000e+00, float* %83, align 16
  %84 = call i32 @pPathYetAnotherMakeUniqueName(float* %10, float* %16, float* getelementptr inbounds ([4 x float], [4 x float]* @test_PathYetAnotherMakeUniqueName.tmpW, i64 0, i64 0), float* getelementptr inbounds ([5 x float], [5 x float]* @test_PathYetAnotherMakeUniqueName.longW, i64 0, i64 0))
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = call i32 (i32, i8*, i32, ...) @ok(i32 %85, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %86)
  %88 = call i32 @lstrcpyW(float* %13, float* %16)
  %89 = call i32 @lstrcatW(float* %13, float* getelementptr inbounds ([9 x float], [9 x float]* @test_PathYetAnotherMakeUniqueName.long2W, i64 0, i64 0))
  %90 = call i32 @lstrcmpW(float* %10, float* %13)
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = call i32 @wine_dbgstr_w(float* %10)
  %95 = call i32 @wine_dbgstr_w(float* %13)
  %96 = call i32 (i32, i8*, i32, ...) @ok(i32 %93, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %94, i32 %95)
  %97 = load i32*, i32** %5, align 8
  %98 = call i32 @CloseHandle(i32* %97)
  %99 = getelementptr inbounds float, float* %10, i64 0
  store float 0.000000e+00, float* %99, align 16
  %100 = call i32 @pPathYetAnotherMakeUniqueName(float* %10, float* %16, float* null, float* getelementptr inbounds ([5 x float], [5 x float]* @test_PathYetAnotherMakeUniqueName.longW, i64 0, i64 0))
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = call i32 (i32, i8*, i32, ...) @ok(i32 %101, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %102)
  %104 = call i32 @lstrcpyW(float* %13, float* %16)
  %105 = call i32 @lstrcatW(float* %13, float* getelementptr inbounds ([5 x float], [5 x float]* @test_PathYetAnotherMakeUniqueName.longW, i64 0, i64 0))
  %106 = call i32 @lstrcmpW(float* %10, float* %13)
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i32
  %110 = call i32 @wine_dbgstr_w(float* %10)
  %111 = call i32 @wine_dbgstr_w(float* %13)
  %112 = call i32 (i32, i8*, i32, ...) @ok(i32 %109, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %110, i32 %111)
  %113 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %113)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetTempPathW(i32, float*) #2

declare dso_local i32 @ARRAY_SIZE(float*) #2

declare dso_local i32 @pPathYetAnotherMakeUniqueName(float*, float*, float*, float*) #2

declare dso_local i32 @ok(i32, i8*, i32, ...) #2

declare dso_local i32 @lstrcpyW(float*, float*) #2

declare dso_local i32 @lstrcatW(float*, float*) #2

declare dso_local i32 @lstrcmpW(float*, float*) #2

declare dso_local i32 @wine_dbgstr_w(float*) #2

declare dso_local i32* @CreateFileW(float*, i32, i32, i32*, i32, i32, i32*) #2

declare dso_local i32 @CloseHandle(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
