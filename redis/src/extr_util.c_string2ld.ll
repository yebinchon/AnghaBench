; ModuleID = '/home/carl/AnghaBench/redis/src/extr_util.c_string2ld.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_util.c_string2ld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_LONG_DOUBLE_CHARS = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@HUGE_VAL = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@EINVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @string2ld(i8* %0, i64 %1, x86_fp80* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca x86_fp80*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca x86_fp80, align 16
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store x86_fp80* %2, x86_fp80** %7, align 8
  %13 = load i32, i32* @MAX_LONG_DOUBLE_CHARS, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp uge i64 %17, %14
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %69

20:                                               ; preds = %3
  %21 = load i8*, i8** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @memcpy(i8* %16, i8* %21, i64 %22)
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds i8, i8* %16, i64 %24
  store i8 0, i8* %25, align 1
  store i64 0, i64* @errno, align 8
  %26 = call x86_fp80 @strtold(i8* %16, i8** %11)
  store x86_fp80 %26, x86_fp80* %10, align 16
  %27 = getelementptr inbounds i8, i8* %16, i64 0
  %28 = load i8, i8* %27, align 16
  %29 = call i64 @isspace(i8 signext %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %61, label %31

31:                                               ; preds = %20
  %32 = load i8*, i8** %11, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %61, label %37

37:                                               ; preds = %31
  %38 = load i64, i64* @errno, align 8
  %39 = load i64, i64* @ERANGE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = load x86_fp80, x86_fp80* %10, align 16
  %43 = load x86_fp80, x86_fp80* @HUGE_VAL, align 16
  %44 = fcmp oeq x86_fp80 %42, %43
  br i1 %44, label %61, label %45

45:                                               ; preds = %41
  %46 = load x86_fp80, x86_fp80* %10, align 16
  %47 = load x86_fp80, x86_fp80* @HUGE_VAL, align 16
  %48 = fneg x86_fp80 %47
  %49 = fcmp oeq x86_fp80 %46, %48
  br i1 %49, label %61, label %50

50:                                               ; preds = %45
  %51 = load x86_fp80, x86_fp80* %10, align 16
  %52 = fcmp oeq x86_fp80 %51, 0xK00000000000000000000
  br i1 %52, label %61, label %53

53:                                               ; preds = %50, %37
  %54 = load i64, i64* @errno, align 8
  %55 = load i64, i64* @EINVAL, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load x86_fp80, x86_fp80* %10, align 16
  %59 = call i64 @isnan(x86_fp80 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57, %53, %50, %45, %41, %31, %20
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %69

62:                                               ; preds = %57
  %63 = load x86_fp80*, x86_fp80** %7, align 8
  %64 = icmp ne x86_fp80* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load x86_fp80, x86_fp80* %10, align 16
  %67 = load x86_fp80*, x86_fp80** %7, align 8
  store x86_fp80 %66, x86_fp80* %67, align 16
  br label %68

68:                                               ; preds = %65, %62
  store i32 1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %69

69:                                               ; preds = %68, %61, %19
  %70 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %70)
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local x86_fp80 @strtold(i8*, i8**) #2

declare dso_local i64 @isspace(i8 signext) #2

declare dso_local i64 @isnan(x86_fp80) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
