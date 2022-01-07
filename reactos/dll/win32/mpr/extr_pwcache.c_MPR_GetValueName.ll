; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mpr/extr_pwcache.c_MPR_GetValueName.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mpr/extr_pwcache.c_MPR_GetValueName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"X-%02X-\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Value is %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i32*, i32, i32)* @MPR_GetValueName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @MPR_GetValueName(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = call i32 (...) @GetProcessHeap()
  %11 = load i32, i32* %6, align 4
  %12 = mul nsw i32 %11, 2
  %13 = add nsw i32 6, %12
  %14 = call i64* @HeapAlloc(i32 %10, i32 0, i32 %13)
  store i64* %14, i64** %8, align 8
  %15 = load i64*, i64** %8, align 8
  %16 = icmp ne i64* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i64* null, i64** %4, align 8
  br label %67

18:                                               ; preds = %3
  %19 = load i64*, i64** %8, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @sprintf(i64* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %20)
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %54, %18
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %57

26:                                               ; preds = %22
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 240
  %33 = ashr i32 %32, 4
  %34 = call i64 @hex(i32 %33)
  %35 = load i64*, i64** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = mul nsw i32 %36, 2
  %38 = add nsw i32 5, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %35, i64 %39
  store i64 %34, i64* %40, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 15
  %47 = call i64 @hex(i32 %46)
  %48 = load i64*, i64** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = mul nsw i32 %49, 2
  %51 = add nsw i32 6, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %48, i64 %52
  store i64 %47, i64* %53, align 8
  br label %54

54:                                               ; preds = %26
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %22

57:                                               ; preds = %22
  %58 = load i64*, i64** %8, align 8
  %59 = load i32, i32* %9, align 4
  %60 = mul nsw i32 %59, 2
  %61 = add nsw i32 5, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %58, i64 %62
  store i64 0, i64* %63, align 8
  %64 = load i64*, i64** %8, align 8
  %65 = call i32 @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64* %64)
  %66 = load i64*, i64** %8, align 8
  store i64* %66, i64** %4, align 8
  br label %67

67:                                               ; preds = %57, %17
  %68 = load i64*, i64** %4, align 8
  ret i64* %68
}

declare dso_local i64* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @sprintf(i64*, i8*, i32) #1

declare dso_local i64 @hex(i32) #1

declare dso_local i32 @TRACE(i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
