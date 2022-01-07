; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/locale/extr_locale.c_compare_info.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/locale/extr_locale.c_compare_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOCALE_NOUSEROVERRIDE = common dso_local global i32 0, align 4
@MAX_ELEM_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i8*, i64)* @compare_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_info(i32 %0, i32 %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load i8*, i8** %10, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %56

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 0, i8* %20, align 1
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @LOCALE_NOUSEROVERRIDE, align 4
  %24 = or i32 %22, %23
  %25 = load i8*, i8** %9, align 8
  %26 = load i32, i32* @MAX_ELEM_LEN, align 4
  %27 = call i32 @GetLocaleInfoA(i32 %21, i32 %24, i8* %25, i32 %26)
  %28 = load i8*, i8** %9, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = icmp ne i8 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  br label %56

33:                                               ; preds = %18
  %34 = load i8*, i8** %10, align 8
  %35 = call i32 @strlen(i8* %34)
  store i32 %35, i32* %12, align 4
  %36 = load i64, i64* %11, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %12, align 4
  %40 = icmp sle i32 %39, 3
  br i1 %40, label %41, label %48

41:                                               ; preds = %38, %33
  %42 = load i8*, i8** %10, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 @strcasecmp(i8* %42, i8* %43)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %6, align 4
  br label %56

48:                                               ; preds = %38
  %49 = load i8*, i8** %10, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @strncasecmp(i8* %49, i8* %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %48, %41, %32, %17
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i32 @GetLocaleInfoA(i32, i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
