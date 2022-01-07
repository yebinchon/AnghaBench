; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/unarr/common/extr_conv.c_ar_conv_dos_to_utf8.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/unarr/common/extr_conv.c_ar_conv_dos_to_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gCp437 = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ar_conv_dos_to_utf8(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [4 x i8], align 1
  store i8* %0, i8** %3, align 8
  store i64 0, i64* %7, align 8
  %9 = load i8*, i8** %3, align 8
  store i8* %9, i8** %6, align 8
  br label %10

10:                                               ; preds = %25, %1
  %11 = load i8*, i8** %6, align 8
  %12 = load i8, i8* %11, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = load i32*, i32** @gCp437, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i64
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %22 = call i64 @ar_conv_rune_to_utf8(i32 %20, i8* %21, i32 4)
  %23 = load i64, i64* %7, align 8
  %24 = add i64 %23, %22
  store i64 %24, i64* %7, align 8
  br label %25

25:                                               ; preds = %14
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %6, align 8
  br label %10

28:                                               ; preds = %10
  %29 = load i64, i64* %7, align 8
  %30 = icmp eq i64 %29, -1
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i8* null, i8** %2, align 8
  br label %71

32:                                               ; preds = %28
  %33 = load i64, i64* %7, align 8
  %34 = add i64 %33, 1
  %35 = call i8* @malloc(i64 %34)
  store i8* %35, i8** %4, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  store i8* null, i8** %2, align 8
  br label %71

39:                                               ; preds = %32
  %40 = load i8*, i8** %3, align 8
  store i8* %40, i8** %6, align 8
  %41 = load i8*, i8** %4, align 8
  store i8* %41, i8** %5, align 8
  br label %42

42:                                               ; preds = %65, %39
  %43 = load i8*, i8** %6, align 8
  %44 = load i8, i8* %43, align 1
  %45 = icmp ne i8 %44, 0
  br i1 %45, label %46, label %68

46:                                               ; preds = %42
  %47 = load i32*, i32** @gCp437, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** %5, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = load i64, i64* %7, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  %57 = load i8*, i8** %5, align 8
  %58 = ptrtoint i8* %56 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = trunc i64 %60 to i32
  %62 = call i64 @ar_conv_rune_to_utf8(i32 %52, i8* %53, i32 %61)
  %63 = load i8*, i8** %5, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 %62
  store i8* %64, i8** %5, align 8
  br label %65

65:                                               ; preds = %46
  %66 = load i8*, i8** %6, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %6, align 8
  br label %42

68:                                               ; preds = %42
  %69 = load i8*, i8** %5, align 8
  store i8 0, i8* %69, align 1
  %70 = load i8*, i8** %4, align 8
  store i8* %70, i8** %2, align 8
  br label %71

71:                                               ; preds = %68, %38, %31
  %72 = load i8*, i8** %2, align 8
  ret i8* %72
}

declare dso_local i64 @ar_conv_rune_to_utf8(i32, i8*, i32) #1

declare dso_local i8* @malloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
