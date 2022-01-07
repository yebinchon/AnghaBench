; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_icm.c_test_GetICMProfileW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_icm.c_test_GetICMProfileW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@ERROR_CALL_NOT_IMPLEMENTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"GetICMProfileW is not implemented\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"GetICMProfileW succeeded\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"got %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"expected size > 0\0A\00", align 1
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [44 x i8] c"got %d, expected ERROR_INSUFFICIENT_BUFFER\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"GetICMProfileW failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_GetICMProfileW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetICMProfileW(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %9 = load i32, i32* @MAX_PATH, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = call i32 @SetLastError(i32 -559038737)
  %14 = call i32 @GetICMProfileW(i32* null, i64* null, i32* null)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = call i64 (...) @GetLastError()
  %19 = load i64, i64* @ERROR_CALL_NOT_IMPLEMENTED, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = call i32 @win_skip(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %88

23:                                               ; preds = %17, %1
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @GetICMProfileW(i32* %29, i64* null, i32* null)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @GetICMProfileW(i32* %36, i64* null, i32* %12)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @MAX_PATH, align 4
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %4, align 8
  %45 = call i32 @GetICMProfileW(i32* null, i64* %4, i32* %12)
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* %3, align 4
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  %51 = load i32*, i32** %2, align 8
  %52 = call i32 @GetICMProfileW(i32* %51, i64* %4, i32* null)
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* %3, align 4
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i64, i64* %4, align 8
  %59 = icmp sgt i64 %58, 0
  %60 = zext i1 %59 to i32
  %61 = load i64, i64* %4, align 8
  %62 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %61)
  store i64 0, i64* %4, align 8
  %63 = call i32 @SetLastError(i32 -559038737)
  %64 = load i32*, i32** %2, align 8
  %65 = call i32 @GetICMProfileW(i32* %64, i64* %4, i32* %12)
  store i32 %65, i32* %3, align 4
  %66 = call i64 (...) @GetLastError()
  store i64 %66, i64* %5, align 8
  %67 = load i32, i32* %3, align 4
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = call i32 (i32, i8*, ...) @ok(i32 %70, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i64, i64* %4, align 8
  %73 = trunc i64 %72 to i32
  %74 = call i32 (i32, i8*, ...) @ok(i32 %73, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %75 = load i64, i64* %5, align 8
  %76 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %77 = icmp eq i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = load i64, i64* %5, align 8
  %80 = call i32 (i32, i8*, ...) @ok(i32 %78, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i64 %79)
  %81 = load i32, i32* @MAX_PATH, align 4
  %82 = sext i32 %81 to i64
  store i64 %82, i64* %4, align 8
  %83 = load i32*, i32** %2, align 8
  %84 = call i32 @GetICMProfileW(i32* %83, i64* %4, i32* %12)
  store i32 %84, i32* %3, align 4
  %85 = load i32, i32* %3, align 4
  %86 = call i64 (...) @GetLastError()
  %87 = call i32 (i32, i8*, ...) @ok(i32 %85, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i64 %86)
  store i32 0, i32* %8, align 4
  br label %88

88:                                               ; preds = %23, %21
  %89 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %89)
  %90 = load i32, i32* %8, align 4
  switch i32 %90, label %92 [
    i32 0, label %91
    i32 1, label %91
  ]

91:                                               ; preds = %88, %88
  ret void

92:                                               ; preds = %88
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @GetICMProfileW(i32*, i64*, i32*) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i32 @win_skip(i8*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
