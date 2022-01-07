; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_qsv.c_qsv_params_get_value.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_qsv.c_qsv_params_get_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32*, i64, i8*)* @qsv_params_get_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qsv_params_get_value(i8** %0, i32* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i8** %0, i8*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 0, i64* %10, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = icmp ne i8* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load i32*, i32** %7, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %5, align 4
  br label %50

22:                                               ; preds = %4
  %23 = load i64, i64* %8, align 8
  %24 = udiv i64 %23, 4
  store i64 %24, i64* %8, align 8
  store i64 0, i64* %11, align 8
  br label %25

25:                                               ; preds = %40, %22
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %25
  %30 = load i8*, i8** %9, align 8
  %31 = load i8**, i8*** %6, align 8
  %32 = load i64, i64* %11, align 8
  %33 = getelementptr inbounds i8*, i8** %31, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @strcmp(i8* %30, i8* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %29
  %38 = load i64, i64* %11, align 8
  store i64 %38, i64* %10, align 8
  br label %43

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %11, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %11, align 8
  br label %25

43:                                               ; preds = %37, %25
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 @free(i8* %44)
  %46 = load i32*, i32** %7, align 8
  %47 = load i64, i64* %10, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %43, %18
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
