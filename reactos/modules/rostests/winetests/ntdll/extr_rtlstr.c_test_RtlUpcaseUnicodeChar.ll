; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_rtlstr.c_test_RtlUpcaseUnicodeChar.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_rtlstr.c_test_RtlUpcaseUnicodeChar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [81 x i8] c"RtlUpcaseUnicodeChar('%c'[=0x%x]) has result '%c'[=0x%x], expected: '%c'[=0x%x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_RtlUpcaseUnicodeChar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_RtlUpcaseUnicodeChar() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %66, %0
  %6 = load i32, i32* %1, align 4
  %7 = icmp sle i32 %6, 255
  br i1 %7, label %8, label %69

8:                                                ; preds = %5
  %9 = load i32, i32* %1, align 4
  %10 = trunc i32 %9 to i8
  store i8 %10, i8* %2, align 1
  %11 = load i8, i8* %2, align 1
  %12 = call signext i8 @pRtlUpcaseUnicodeChar(i8 signext %11)
  store i8 %12, i8* %3, align 1
  %13 = load i8, i8* %2, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp sge i32 %14, 97
  br i1 %15, label %16, label %26

16:                                               ; preds = %8
  %17 = load i8, i8* %2, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp sle i32 %18, 122
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load i8, i8* %2, align 1
  %22 = sext i8 %21 to i32
  %23 = sub nsw i32 %22, 97
  %24 = add nsw i32 %23, 65
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %4, align 1
  br label %52

26:                                               ; preds = %16, %8
  %27 = load i8, i8* %2, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp sge i32 %28, 224
  br i1 %29, label %30, label %43

30:                                               ; preds = %26
  %31 = load i8, i8* %2, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp sle i32 %32, 254
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load i8, i8* %2, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 247
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load i8, i8* %2, align 1
  %40 = sext i8 %39 to i32
  %41 = sub nsw i32 %40, 32
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %4, align 1
  br label %51

43:                                               ; preds = %34, %30, %26
  %44 = load i8, i8* %2, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 255
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i8 120, i8* %4, align 1
  br label %50

48:                                               ; preds = %43
  %49 = load i8, i8* %2, align 1
  store i8 %49, i8* %4, align 1
  br label %50

50:                                               ; preds = %48, %47
  br label %51

51:                                               ; preds = %50, %38
  br label %52

52:                                               ; preds = %51, %20
  %53 = load i8, i8* %3, align 1
  %54 = sext i8 %53 to i32
  %55 = load i8, i8* %4, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %54, %56
  %58 = zext i1 %57 to i32
  %59 = load i8, i8* %2, align 1
  %60 = load i8, i8* %2, align 1
  %61 = load i8, i8* %3, align 1
  %62 = load i8, i8* %3, align 1
  %63 = load i8, i8* %4, align 1
  %64 = load i8, i8* %4, align 1
  %65 = call i32 @ok(i32 %58, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i8 signext %59, i8 signext %60, i8 signext %61, i8 signext %62, i8 signext %63, i8 signext %64)
  br label %66

66:                                               ; preds = %52
  %67 = load i32, i32* %1, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %1, align 4
  br label %5

69:                                               ; preds = %5
  ret void
}

declare dso_local signext i8 @pRtlUpcaseUnicodeChar(i8 signext) #1

declare dso_local i32 @ok(i32, i8*, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
