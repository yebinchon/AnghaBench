; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_tokenizer.c_sqlite3Fts3NextToken.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_tokenizer.c_sqlite3Fts3NextToken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sqlite3Fts3NextToken(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* null, i8** %7, align 8
  %9 = load i8*, i8** %4, align 8
  store i8* %9, i8** %6, align 8
  br label %10

10:                                               ; preds = %96, %2
  %11 = load i8*, i8** %7, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %97

13:                                               ; preds = %10
  %14 = load i8*, i8** %6, align 8
  %15 = load i8, i8* %14, align 1
  store i8 %15, i8* %8, align 1
  %16 = load i8, i8* %8, align 1
  %17 = sext i8 %16 to i32
  switch i32 %17, label %75 [
    i32 0, label %18
    i32 39, label %19
    i32 34, label %19
    i32 96, label %19
    i32 91, label %48
  ]

18:                                               ; preds = %13
  store i8* null, i8** %3, align 8
  br label %106

19:                                               ; preds = %13, %13, %13
  %20 = load i8*, i8** %6, align 8
  store i8* %20, i8** %7, align 8
  br label %21

21:                                               ; preds = %46, %19
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %7, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %21
  %28 = load i8*, i8** %7, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = load i8, i8* %8, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %30, %32
  br i1 %33, label %42, label %34

34:                                               ; preds = %27
  %35 = load i8*, i8** %7, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %7, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = load i8, i8* %8, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %38, %40
  br label %42

42:                                               ; preds = %34, %27
  %43 = phi i1 [ true, %27 ], [ %41, %34 ]
  br label %44

44:                                               ; preds = %42, %21
  %45 = phi i1 [ false, %21 ], [ %43, %42 ]
  br i1 %45, label %46, label %47

46:                                               ; preds = %44
  br label %21

47:                                               ; preds = %44
  br label %96

48:                                               ; preds = %13
  %49 = load i8*, i8** %6, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  store i8* %50, i8** %7, align 8
  br label %51

51:                                               ; preds = %64, %48
  %52 = load i8*, i8** %7, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 93
  br label %62

62:                                               ; preds = %56, %51
  %63 = phi i1 [ false, %51 ], [ %61, %56 ]
  br i1 %63, label %64, label %67

64:                                               ; preds = %62
  %65 = load i8*, i8** %7, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %7, align 8
  br label %51

67:                                               ; preds = %62
  %68 = load i8*, i8** %7, align 8
  %69 = load i8, i8* %68, align 1
  %70 = icmp ne i8 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i8*, i8** %7, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %7, align 8
  br label %74

74:                                               ; preds = %71, %67
  br label %96

75:                                               ; preds = %13
  %76 = load i8*, i8** %6, align 8
  %77 = load i8, i8* %76, align 1
  %78 = call i32 @sqlite3Fts3IsIdChar(i8 signext %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %75
  %81 = load i8*, i8** %6, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  store i8* %82, i8** %7, align 8
  br label %83

83:                                               ; preds = %88, %80
  %84 = load i8*, i8** %7, align 8
  %85 = load i8, i8* %84, align 1
  %86 = call i32 @sqlite3Fts3IsIdChar(i8 signext %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i8*, i8** %7, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %7, align 8
  br label %83

91:                                               ; preds = %83
  br label %95

92:                                               ; preds = %75
  %93 = load i8*, i8** %6, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %6, align 8
  br label %95

95:                                               ; preds = %92, %91
  br label %96

96:                                               ; preds = %95, %74, %47
  br label %10

97:                                               ; preds = %10
  %98 = load i8*, i8** %7, align 8
  %99 = load i8*, i8** %6, align 8
  %100 = ptrtoint i8* %98 to i64
  %101 = ptrtoint i8* %99 to i64
  %102 = sub i64 %100, %101
  %103 = trunc i64 %102 to i32
  %104 = load i32*, i32** %5, align 8
  store i32 %103, i32* %104, align 4
  %105 = load i8*, i8** %6, align 8
  store i8* %105, i8** %3, align 8
  br label %106

106:                                              ; preds = %97, %18
  %107 = load i8*, i8** %3, align 8
  ret i8* %107
}

declare dso_local i32 @sqlite3Fts3IsIdChar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
