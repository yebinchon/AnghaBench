; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/bdf/extr_bdflib.c__bdf_atoul.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/bdf/extr_bdflib.c__bdf_atoul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ddigits = common dso_local global i32 0, align 4
@FT_ULONG_MAX = common dso_local global i32 0, align 4
@a2i = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @_bdf_atoul to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_bdf_atoul(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7, %1
  store i64 0, i64* %2, align 8
  br label %47

13:                                               ; preds = %7
  store i64 0, i64* %4, align 8
  br label %14

14:                                               ; preds = %42, %13
  %15 = load i32, i32* @ddigits, align 4
  %16 = load i8*, i8** %3, align 8
  %17 = load i8, i8* %16, align 1
  %18 = call i64 @sbitset(i32 %15, i8 signext %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %45

20:                                               ; preds = %14
  %21 = load i64, i64* %4, align 8
  %22 = load i32, i32* @FT_ULONG_MAX, align 4
  %23 = sub nsw i32 %22, 9
  %24 = sdiv i32 %23, 10
  %25 = sext i32 %24 to i64
  %26 = icmp ult i64 %21, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %20
  %28 = load i64, i64* %4, align 8
  %29 = mul i64 %28, 10
  %30 = load i64*, i64** @a2i, align 8
  %31 = load i8*, i8** %3, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %30, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %29, %36
  store i64 %37, i64* %4, align 8
  br label %41

38:                                               ; preds = %20
  %39 = load i32, i32* @FT_ULONG_MAX, align 4
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %4, align 8
  br label %45

41:                                               ; preds = %27
  br label %42

42:                                               ; preds = %41
  %43 = load i8*, i8** %3, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %3, align 8
  br label %14

45:                                               ; preds = %38, %14
  %46 = load i64, i64* %4, align 8
  store i64 %46, i64* %2, align 8
  br label %47

47:                                               ; preds = %45, %12
  %48 = load i64, i64* %2, align 8
  ret i64 %48
}

declare dso_local i64 @sbitset(i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
