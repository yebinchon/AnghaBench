; ModuleID = '/home/carl/AnghaBench/vlc/compat/extr_getdelim.c_getdelim.c'
source_filename = "/home/carl/AnghaBench/vlc/compat/extr_getdelim.c_getdelim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getdelim(i8** noalias %0, i64* noalias %1, i32 %2, i32* noalias %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load i8**, i8*** %6, align 8
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %10, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i64*, i64** %7, align 8
  %20 = load i64, i64* %19, align 8
  br label %22

21:                                               ; preds = %4
  br label %22

22:                                               ; preds = %21, %18
  %23 = phi i64 [ %20, %18 ], [ 0, %21 ]
  store i64 %23, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %24

24:                                               ; preds = %75, %22
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* %12, align 8
  %27 = sub i64 %25, %26
  %28 = icmp ule i64 %27, 2
  br i1 %28, label %29, label %50

29:                                               ; preds = %24
  %30 = load i64, i64* %11, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i64, i64* %11, align 8
  %34 = mul i64 %33, 2
  br label %36

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35, %32
  %37 = phi i64 [ %34, %32 ], [ 256, %35 ]
  store i64 %37, i64* %11, align 8
  %38 = load i8**, i8*** %6, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = load i64, i64* %11, align 8
  %41 = call i8* @realloc(i8* %39, i64 %40)
  store i8* %41, i8** %10, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i32 -1, i32* %5, align 4
  br label %82

45:                                               ; preds = %36
  %46 = load i8*, i8** %10, align 8
  %47 = load i8**, i8*** %6, align 8
  store i8* %46, i8** %47, align 8
  %48 = load i64, i64* %11, align 8
  %49 = load i64*, i64** %7, align 8
  store i64 %48, i64* %49, align 8
  br label %50

50:                                               ; preds = %45, %24
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @fgetc(i32* %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %64

55:                                               ; preds = %50
  %56 = load i64, i64* %12, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  %59 = load i32*, i32** %9, align 8
  %60 = call i64 @ferror(i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58, %55
  store i32 -1, i32* %5, align 4
  br label %82

63:                                               ; preds = %58
  br label %76

64:                                               ; preds = %50
  %65 = load i32, i32* %13, align 4
  %66 = trunc i32 %65 to i8
  %67 = load i8*, i8** %10, align 8
  %68 = load i64, i64* %12, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %12, align 8
  %70 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8 %66, i8* %70, align 1
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  br label %76

75:                                               ; preds = %64
  br label %24

76:                                               ; preds = %74, %63
  %77 = load i8*, i8** %10, align 8
  %78 = load i64, i64* %12, align 8
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  store i8 0, i8* %79, align 1
  %80 = load i64, i64* %12, align 8
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %76, %62, %44
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @fgetc(i32*) #1

declare dso_local i64 @ferror(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
