; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/tokentest/extr_tokentest.c_GetFromToken.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/tokentest/extr_tokentest.c_GetFromToken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [59 x i8] c"GetFromToken() failed for TOKEN_INFORMATION_CLASS(%d): %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @GetFromToken(i32 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %8, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @GetTokenInformation(i32 %9, i32 %10, i64 0, i32 0, i32* %7)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = call i32 (...) @GetLastError()
  %16 = sext i32 %15 to i64
  %17 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i64 0, i64* %3, align 8
  br label %37

20:                                               ; preds = %14, %2
  %21 = load i32, i32* %7, align 4
  %22 = call i64 @malloc(i32 %21)
  store i64 %22, i64* %8, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i64, i64* %8, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @GetTokenInformation(i32 %23, i32 %24, i64 %25, i32 %26, i32* %7)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %20
  %30 = load i32, i32* %5, align 4
  %31 = call i32 (...) @GetLastError()
  %32 = call i32 @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31)
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @free(i64 %33)
  store i64 0, i64* %3, align 8
  br label %37

35:                                               ; preds = %20
  %36 = load i64, i64* %8, align 8
  store i64 %36, i64* %3, align 8
  br label %37

37:                                               ; preds = %35, %29, %19
  %38 = load i64, i64* %3, align 8
  ret i64 %38
}

declare dso_local i64 @GetTokenInformation(i32, i32, i64, i32, i32*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
