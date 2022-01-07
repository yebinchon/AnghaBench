; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_parser.c_replace_char.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_parser.c_replace_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @replace_char(i8* %0, i8 signext %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8* %2, i8** %7, align 8
  store i64 0, i64* %11, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i64 @safe_strlen(i8* %15)
  store i64 %16, i64* %12, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i64 @safe_strlen(i8* %17)
  store i64 %18, i64* %13, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i8*, i8** %7, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %3
  store i8* null, i8** %4, align 8
  br label %108

25:                                               ; preds = %21
  store i64 0, i64* %8, align 8
  br label %26

26:                                               ; preds = %43, %25
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %12, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %26
  %31 = load i8*, i8** %5, align 8
  %32 = load i64, i64* %8, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = load i8, i8* %6, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i64, i64* %11, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %11, align 8
  br label %42

42:                                               ; preds = %39, %30
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %8, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %8, align 8
  br label %26

46:                                               ; preds = %26
  %47 = load i64, i64* %12, align 8
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* %13, align 8
  %50 = mul i64 %48, %49
  %51 = add i64 %47, %50
  %52 = add i64 %51, 1
  %53 = call i64 @malloc(i64 %52)
  %54 = inttoptr i64 %53 to i8*
  store i8* %54, i8** %14, align 8
  %55 = load i8*, i8** %14, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %46
  store i8* null, i8** %4, align 8
  br label %108

58:                                               ; preds = %46
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %59

59:                                               ; preds = %100, %58
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* %12, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %103

63:                                               ; preds = %59
  %64 = load i8*, i8** %5, align 8
  %65 = load i64, i64* %8, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = load i8, i8* %6, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %90

72:                                               ; preds = %63
  store i64 0, i64* %10, align 8
  br label %73

73:                                               ; preds = %86, %72
  %74 = load i64, i64* %10, align 8
  %75 = load i64, i64* %13, align 8
  %76 = icmp ult i64 %74, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %73
  %78 = load i8*, i8** %7, align 8
  %79 = load i64, i64* %10, align 8
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = load i8*, i8** %14, align 8
  %83 = load i64, i64* %9, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %9, align 8
  %85 = getelementptr inbounds i8, i8* %82, i64 %83
  store i8 %81, i8* %85, align 1
  br label %86

86:                                               ; preds = %77
  %87 = load i64, i64* %10, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %10, align 8
  br label %73

89:                                               ; preds = %73
  br label %99

90:                                               ; preds = %63
  %91 = load i8*, i8** %5, align 8
  %92 = load i64, i64* %8, align 8
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = load i8*, i8** %14, align 8
  %96 = load i64, i64* %9, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %9, align 8
  %98 = getelementptr inbounds i8, i8* %95, i64 %96
  store i8 %94, i8* %98, align 1
  br label %99

99:                                               ; preds = %90, %89
  br label %100

100:                                              ; preds = %99
  %101 = load i64, i64* %8, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %8, align 8
  br label %59

103:                                              ; preds = %59
  %104 = load i8*, i8** %14, align 8
  %105 = load i64, i64* %9, align 8
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  store i8 0, i8* %106, align 1
  %107 = load i8*, i8** %14, align 8
  store i8* %107, i8** %4, align 8
  br label %108

108:                                              ; preds = %103, %57, %24
  %109 = load i8*, i8** %4, align 8
  ret i8* %109
}

declare dso_local i64 @safe_strlen(i8*) #1

declare dso_local i64 @malloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
