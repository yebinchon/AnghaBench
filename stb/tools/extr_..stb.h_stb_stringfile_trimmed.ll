; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_stringfile_trimmed.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_stringfile_trimmed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @stb_stringfile_trimmed(i8* %0, i32* %1, i8 signext %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8 %2, i8* %7, align 1
  store i32 0, i32* %10, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = call i8** @stb_stringfile(i8* %13, i32* %9)
  store i8** %14, i8*** %11, align 8
  %15 = load i8**, i8*** %11, align 8
  %16 = icmp eq i8** %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i8** null, i8*** %4, align 8
  br label %64

18:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %49, %18
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %52

23:                                               ; preds = %19
  %24 = load i8**, i8*** %11, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = call i8* @stb_skipwhite(i8* %28)
  store i8* %29, i8** %12, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %23
  %35 = load i8*, i8** %12, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = load i8, i8* %7, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %34
  %42 = load i8*, i8** %12, align 8
  %43 = load i8**, i8*** %11, align 8
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %10, align 4
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i8*, i8** %43, i64 %46
  store i8* %42, i8** %47, align 8
  br label %48

48:                                               ; preds = %41, %34, %23
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %19

52:                                               ; preds = %19
  %53 = load i8**, i8*** %11, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  store i8* null, i8** %56, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load i32, i32* %10, align 4
  %61 = load i32*, i32** %6, align 8
  store i32 %60, i32* %61, align 4
  br label %62

62:                                               ; preds = %59, %52
  %63 = load i8**, i8*** %11, align 8
  store i8** %63, i8*** %4, align 8
  br label %64

64:                                               ; preds = %62, %17
  %65 = load i8**, i8*** %4, align 8
  ret i8** %65
}

declare dso_local i8** @stb_stringfile(i8*, i32*) #1

declare dso_local i8* @stb_skipwhite(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
