; ModuleID = '/home/carl/AnghaBench/scrcpy/app/src/extr_str_util.c_xstrjoin.c'
source_filename = "/home/carl/AnghaBench/scrcpy/app/src/extr_str_util.c_xstrjoin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @xstrjoin(i8* %0, i8** %1, i8 signext %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8 %2, i8* %8, align 1
  store i64 %3, i64* %9, align 8
  %14 = load i8**, i8*** %7, align 8
  store i8** %14, i8*** %10, align 8
  %15 = load i8**, i8*** %10, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i32 1
  store i8** %16, i8*** %10, align 8
  %17 = load i8*, i8** %15, align 8
  store i8* %17, i8** %11, align 8
  store i64 0, i64* %12, align 8
  br label %18

18:                                               ; preds = %50, %4
  %19 = load i8*, i8** %11, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %57

21:                                               ; preds = %18
  %22 = load i64, i64* %12, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = load i8, i8* %8, align 1
  %26 = load i8*, i8** %6, align 8
  %27 = load i64, i64* %12, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %12, align 8
  %29 = getelementptr inbounds i8, i8* %26, i64 %27
  store i8 %25, i8* %29, align 1
  %30 = load i64, i64* %12, align 8
  %31 = load i64, i64* %9, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %59

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34, %21
  %36 = load i8*, i8** %6, align 8
  %37 = load i64, i64* %12, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = load i8*, i8** %11, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* %12, align 8
  %42 = sub i64 %40, %41
  %43 = call i64 @xstrncpy(i8* %38, i8* %39, i64 %42)
  store i64 %43, i64* %13, align 8
  %44 = load i64, i64* %13, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* %12, align 8
  %47 = sub i64 %45, %46
  %48 = icmp uge i64 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %35
  br label %59

50:                                               ; preds = %35
  %51 = load i64, i64* %13, align 8
  %52 = load i64, i64* %12, align 8
  %53 = add i64 %52, %51
  store i64 %53, i64* %12, align 8
  %54 = load i8**, i8*** %10, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i32 1
  store i8** %55, i8*** %10, align 8
  %56 = load i8*, i8** %54, align 8
  store i8* %56, i8** %11, align 8
  br label %18

57:                                               ; preds = %18
  %58 = load i64, i64* %12, align 8
  store i64 %58, i64* %5, align 8
  br label %65

59:                                               ; preds = %49, %33
  %60 = load i8*, i8** %6, align 8
  %61 = load i64, i64* %9, align 8
  %62 = sub i64 %61, 1
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  store i8 0, i8* %63, align 1
  %64 = load i64, i64* %9, align 8
  store i64 %64, i64* %5, align 8
  br label %65

65:                                               ; preds = %59, %57
  %66 = load i64, i64* %5, align 8
  ret i64 %66
}

declare dso_local i64 @xstrncpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
