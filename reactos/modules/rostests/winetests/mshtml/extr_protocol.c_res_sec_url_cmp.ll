; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_protocol.c_res_sec_url_cmp.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_protocol.c_res_sec_url_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@res_sec_url_cmp.fileW = internal constant [7 x float] [float 1.020000e+02, float 1.050000e+02, float 1.080000e+02, float 1.010000e+02, float 5.800000e+01, float 4.700000e+01, float 4.700000e+01], align 16
@.str = private unnamed_addr constant [20 x i8] c"wrong URL protocol\0A\00", align 1
@ERROR_CALL_NOT_IMPLEMENTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"SearchPathW is not implemented\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"SearchPath failed: %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"wrong size %u, expected %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"wrong file part %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i64)* @res_sec_url_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @res_sec_url_cmp(i64 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %11 = load i32, i32* @MAX_PATH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca float, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ult i64 %16, 7
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i64, i64* %4, align 8
  %20 = call i64 @memcmp(i64 %19, float* getelementptr inbounds ([7 x float], [7 x float]* @res_sec_url_cmp.fileW, i64 0, i64 0), i32 28)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18, %3
  %23 = call i32 (i32, i8*, ...) @ok(i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %64

24:                                               ; preds = %18
  %25 = call i32 @SetLastError(i32 -559038737)
  %26 = load i64, i64* %6, align 8
  %27 = mul nuw i64 4, %12
  %28 = udiv i64 %27, 4
  %29 = trunc i64 %28 to i32
  %30 = call i32 @SearchPathW(i32* null, i64 %26, i32* null, i32 %29, float* %14, i32* null)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %24
  %34 = call i64 (...) @GetLastError()
  %35 = load i64, i64* @ERROR_CALL_NOT_IMPLEMENTED, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = call i32 @win_skip(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %42

39:                                               ; preds = %33
  %40 = call i64 (...) @GetLastError()
  %41 = call i32 (i32, i8*, ...) @ok(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i64 %40)
  br label %42

42:                                               ; preds = %39, %37
  store i32 1, i32* %10, align 4
  br label %64

43:                                               ; preds = %24
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = add i64 %45, 8
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %52, i32 %53)
  %55 = load i64, i64* %4, align 8
  %56 = add i64 %55, 7
  %57 = call i32 @lstrcmpW(i64 %56, float* %14)
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = load i64, i64* %4, align 8
  %62 = call i64 @wine_dbgstr_w(i64 %61)
  %63 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i64 %62)
  store i32 0, i32* %10, align 4
  br label %64

64:                                               ; preds = %43, %42, %22
  %65 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %65)
  %66 = load i32, i32* %10, align 4
  switch i32 %66, label %68 [
    i32 0, label %67
    i32 1, label %67
  ]

67:                                               ; preds = %64, %64
  ret void

68:                                               ; preds = %64
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @memcmp(i64, float*, i32) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @SearchPathW(i32*, i64, i32*, i32, float*, i32*) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i32 @win_skip(i8*) #2

declare dso_local i32 @lstrcmpW(i64, float*) #2

declare dso_local i64 @wine_dbgstr_w(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
