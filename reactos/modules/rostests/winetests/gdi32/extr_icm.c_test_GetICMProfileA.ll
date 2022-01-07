; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_icm.c_test_GetICMProfileA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_icm.c_test_GetICMProfileA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@ERROR_CALL_NOT_IMPLEMENTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"GetICMProfileA is not implemented\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"GetICMProfileA succeeded\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"got %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"expected size > 0\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Expected filename to be empty\0A\00", align 1
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [44 x i8] c"got %d, expected ERROR_INSUFFICIENT_BUFFER\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"GetICMProfileA failed %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_GetICMProfileA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetICMProfileA(i32* %0) #0 {
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
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = call i32 @SetLastError(i32 -559038737)
  %14 = call i32 @GetICMProfileA(i32* null, i64* null, i8* null)
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
  br label %110

23:                                               ; preds = %17, %1
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @GetICMProfileA(i32* %29, i64* null, i8* null)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @MAX_PATH, align 4
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %4, align 8
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @GetICMProfileA(i32* %38, i64* %4, i8* null)
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i64, i64* %4, align 8
  %46 = icmp sgt i64 %45, 0
  %47 = zext i1 %46 to i32
  %48 = load i64, i64* %4, align 8
  %49 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %48)
  store i64 0, i64* %4, align 8
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @GetICMProfileA(i32* %50, i64* %4, i8* null)
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %3, align 4
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i64, i64* %4, align 8
  %58 = icmp sgt i64 %57, 0
  %59 = zext i1 %58 to i32
  %60 = load i64, i64* %4, align 8
  %61 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %60)
  %62 = load i32, i32* @MAX_PATH, align 4
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %4, align 8
  %64 = call i32 @GetICMProfileA(i32* null, i64* %4, i8* %12)
  store i32 %64, i32* %3, align 4
  %65 = load i32, i32* %3, align 4
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = call i32 (i32, i8*, ...) @ok(i32 %68, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  %70 = getelementptr inbounds i8, i8* %12, i64 0
  store i8 0, i8* %70, align 16
  %71 = call i32 @SetLastError(i32 -559038737)
  %72 = load i32*, i32** %2, align 8
  %73 = call i32 @GetICMProfileA(i32* %72, i64* %4, i8* %12)
  store i32 %73, i32* %3, align 4
  %74 = call i64 (...) @GetLastError()
  store i64 %74, i64* %5, align 8
  %75 = load i32, i32* %3, align 4
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = call i32 (i32, i8*, ...) @ok(i32 %78, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %80 = load i64, i64* %4, align 8
  %81 = trunc i64 %80 to i32
  %82 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %83 = getelementptr inbounds i8, i8* %12, i64 0
  %84 = load i8, i8* %83, align 16
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 0
  %87 = zext i1 %86 to i32
  %88 = call i32 (i32, i8*, ...) @ok(i32 %87, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %89 = load i64, i64* %5, align 8
  %90 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %91 = icmp eq i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = load i64, i64* %5, align 8
  %94 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i64 %93)
  %95 = load i32*, i32** %2, align 8
  %96 = call i32 @GetICMProfileA(i32* %95, i64* null, i8* %12)
  store i32 %96, i32* %3, align 4
  %97 = load i32, i32* %3, align 4
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %102 = load i32, i32* @MAX_PATH, align 4
  %103 = sext i32 %102 to i64
  store i64 %103, i64* %4, align 8
  %104 = load i32*, i32** %2, align 8
  %105 = call i32 @GetICMProfileA(i32* %104, i64* %4, i8* %12)
  store i32 %105, i32* %3, align 4
  %106 = load i32, i32* %3, align 4
  %107 = call i64 (...) @GetLastError()
  %108 = call i32 (i32, i8*, ...) @ok(i32 %106, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i64 %107)
  %109 = call i32 @trace(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %12)
  store i32 0, i32* %8, align 4
  br label %110

110:                                              ; preds = %23, %21
  %111 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %111)
  %112 = load i32, i32* %8, align 4
  switch i32 %112, label %114 [
    i32 0, label %113
    i32 1, label %113
  ]

113:                                              ; preds = %110, %110
  ret void

114:                                              ; preds = %110
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @GetICMProfileA(i32*, i64*, i8*) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i32 @win_skip(i8*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @trace(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
