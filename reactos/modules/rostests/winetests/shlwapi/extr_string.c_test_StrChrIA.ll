; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_string.c_test_StrChrIA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_string.c_test_StrChrIA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"found char '%c' in wrong place\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"didn't find lowercase '%c'\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"found char not in the string\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_StrChrIA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_StrChrIA() #0 {
  %1 = alloca [129 x i8], align 16
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i32 32, i32* %2, align 4
  br label %5

5:                                                ; preds = %14, %0
  %6 = load i32, i32* %2, align 4
  %7 = icmp slt i32 %6, 128
  br i1 %7, label %8, label %17

8:                                                ; preds = %5
  %9 = load i32, i32* %2, align 4
  %10 = trunc i32 %9 to i8
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [129 x i8], [129 x i8]* %1, i64 0, i64 %12
  store i8 %10, i8* %13, align 1
  br label %14

14:                                               ; preds = %8
  %15 = load i32, i32* %2, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %2, align 4
  br label %5

17:                                               ; preds = %5
  %18 = getelementptr inbounds [129 x i8], [129 x i8]* %1, i64 0, i64 128
  store i8 0, i8* %18, align 16
  store i32 65, i32* %2, align 4
  br label %19

19:                                               ; preds = %45, %17
  %20 = load i32, i32* %2, align 4
  %21 = icmp sle i32 %20, 88
  br i1 %21, label %22, label %48

22:                                               ; preds = %19
  %23 = getelementptr inbounds [129 x i8], [129 x i8]* %1, i64 0, i64 0
  %24 = getelementptr inbounds i8, i8* %23, i64 32
  %25 = load i32, i32* %2, align 4
  %26 = call i8* @StrChrIA(i8* %24, i32 %25)
  store i8* %26, i8** %3, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = getelementptr inbounds [129 x i8], [129 x i8]* %1, i64 0, i64 0
  %29 = ptrtoint i8* %27 to i64
  %30 = ptrtoint i8* %28 to i64
  %31 = sub i64 %29, %30
  %32 = load i32, i32* %2, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp eq i64 %31, %33
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* %2, align 4
  %37 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i8*, i8** %3, align 8
  %39 = load i32, i32* %2, align 4
  %40 = call i8* @StrChrIA(i8* %38, i32 %39)
  %41 = icmp ne i8* %40, null
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %2, align 4
  %44 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %22
  %46 = load i32, i32* %2, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %2, align 4
  br label %19

48:                                               ; preds = %19
  store i32 97, i32* %2, align 4
  br label %49

49:                                               ; preds = %65, %48
  %50 = load i32, i32* %2, align 4
  %51 = icmp slt i32 %50, 122
  br i1 %51, label %52, label %68

52:                                               ; preds = %49
  %53 = getelementptr inbounds [129 x i8], [129 x i8]* %1, i64 0, i64 0
  %54 = load i32, i32* %2, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load i32, i32* %2, align 4
  %59 = call i8* @StrChrIA(i8* %57, i32 %58)
  store i8* %59, i8** %4, align 8
  %60 = load i8*, i8** %4, align 8
  %61 = icmp ne i8* %60, null
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %65

65:                                               ; preds = %52
  %66 = load i32, i32* %2, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %2, align 4
  br label %49

68:                                               ; preds = %49
  ret void
}

declare dso_local i8* @StrChrIA(i8*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
