; ModuleID = '/home/carl/AnghaBench/seafile/lib/extr_utils.c_strsplit_by_char.c'
source_filename = "/home/carl/AnghaBench/seafile/lib/extr_utils.c_strsplit_by_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @strsplit_by_char(i8* %0, i32* %1, i8 signext %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i8**, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8 %2, i8* %7, align 1
  store i32 8, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17, %3
  %24 = load i32*, i32** %6, align 8
  store i32 0, i32* %24, align 4
  store i8** null, i8*** %4, align 8
  br label %108

25:                                               ; preds = %17
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 8, %27
  %29 = trunc i64 %28 to i32
  %30 = call i8** @malloc(i32 %29)
  store i8** %30, i8*** %13, align 8
  %31 = load i8**, i8*** %13, align 8
  %32 = icmp eq i8** %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i8** null, i8*** %4, align 8
  br label %108

34:                                               ; preds = %25
  %35 = load i8*, i8** %5, align 8
  store i8* %35, i8** %8, align 8
  br label %36

36:                                               ; preds = %97, %34
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br i1 %39, label %40, label %100

40:                                               ; preds = %36
  %41 = load i8*, i8** %8, align 8
  store i8* %41, i8** %9, align 8
  br label %42

42:                                               ; preds = %57, %40
  %43 = load i8*, i8** %9, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = load i8, i8* %7, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load i8*, i8** %9, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 0
  br label %54

54:                                               ; preds = %49, %42
  %55 = phi i1 [ false, %42 ], [ %53, %49 ]
  br i1 %55, label %56, label %60

56:                                               ; preds = %54
  br label %57

57:                                               ; preds = %56
  %58 = load i8*, i8** %9, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %9, align 8
  br label %42

60:                                               ; preds = %54
  %61 = load i8*, i8** %9, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i32 1, i32* %12, align 4
  br label %68

66:                                               ; preds = %60
  %67 = load i8*, i8** %9, align 8
  store i8 0, i8* %67, align 1
  br label %68

68:                                               ; preds = %66, %65
  %69 = load i8*, i8** %8, align 8
  %70 = load i8**, i8*** %13, align 8
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %11, align 4
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i8*, i8** %70, i64 %73
  store i8* %69, i8** %74, align 8
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %97, label %77

77:                                               ; preds = %68
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %97

81:                                               ; preds = %77
  %82 = load i32, i32* %10, align 4
  %83 = shl i32 %82, 1
  store i32 %83, i32* %10, align 4
  %84 = load i8**, i8*** %13, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = mul i64 8, %86
  %88 = trunc i64 %87 to i32
  %89 = call i8** @realloc(i8** %84, i32 %88)
  store i8** %89, i8*** %14, align 8
  %90 = load i8**, i8*** %14, align 8
  %91 = icmp eq i8** %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %81
  %93 = load i8**, i8*** %13, align 8
  %94 = call i32 @free(i8** %93)
  store i8** null, i8*** %4, align 8
  br label %108

95:                                               ; preds = %81
  %96 = load i8**, i8*** %14, align 8
  store i8** %96, i8*** %13, align 8
  br label %97

97:                                               ; preds = %95, %77, %68
  %98 = load i8*, i8** %9, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 1
  store i8* %99, i8** %8, align 8
  br label %36

100:                                              ; preds = %36
  %101 = load i32*, i32** %6, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i32, i32* %11, align 4
  %105 = load i32*, i32** %6, align 8
  store i32 %104, i32* %105, align 4
  br label %106

106:                                              ; preds = %103, %100
  %107 = load i8**, i8*** %13, align 8
  store i8** %107, i8*** %4, align 8
  br label %108

108:                                              ; preds = %106, %92, %33, %23
  %109 = load i8**, i8*** %4, align 8
  ret i8** %109
}

declare dso_local i8** @malloc(i32) #1

declare dso_local i8** @realloc(i8**, i32) #1

declare dso_local i32 @free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
