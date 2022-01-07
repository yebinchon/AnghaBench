; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_getToken.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_getToken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TOKEN_EOF = common dso_local global i32 0, align 4
@TOKEN_SPACE = common dso_local global i32 0, align 4
@TOKEN_STRING = common dso_local global i32 0, align 4
@TOKEN_ID = common dso_local global i32 0, align 4
@TOKEN_PUNCT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @getToken to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getToken(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  switch i32 %11, label %102 [
    i32 0, label %12
    i32 32, label %15
    i32 9, label %15
    i32 10, label %15
    i32 12, label %15
    i32 13, label %15
    i32 96, label %32
    i32 39, label %32
    i32 34, label %32
    i32 91, label %76
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* @TOKEN_EOF, align 4
  %14 = load i32*, i32** %5, align 8
  store i32 %13, i32* %14, align 4
  store i32 0, i32* %3, align 4
  br label %128

15:                                               ; preds = %2, %2, %2, %2, %2
  store i32 1, i32* %6, align 4
  br label %16

16:                                               ; preds = %25, %15
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = call i32 @safe_isspace(i8 signext %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %16

28:                                               ; preds = %16
  %29 = load i32, i32* @TOKEN_SPACE, align 4
  %30 = load i32*, i32** %5, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %128

32:                                               ; preds = %2, %2, %2
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  store i32 %36, i32* %8, align 4
  store i32 1, i32* %6, align 4
  br label %37

37:                                               ; preds = %65, %32
  %38 = load i8*, i8** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  store i32 %43, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %68

45:                                               ; preds = %37
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %45
  %50 = load i8*, i8** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = load i32, i32* %8, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %49
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %63

62:                                               ; preds = %49
  br label %68

63:                                               ; preds = %59
  br label %64

64:                                               ; preds = %63, %45
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %37

68:                                               ; preds = %62, %37
  %69 = load i32, i32* @TOKEN_STRING, align 4
  %70 = load i32*, i32** %5, align 8
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i32
  %75 = add nsw i32 %71, %74
  store i32 %75, i32* %3, align 4
  br label %128

76:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  %77 = load i8*, i8** %4, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 0
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %95, %76
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 93
  br i1 %83, label %84, label %92

84:                                               ; preds = %81
  %85 = load i8*, i8** %4, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  store i32 %90, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br label %92

92:                                               ; preds = %84, %81
  %93 = phi i1 [ false, %81 ], [ %91, %84 ]
  br i1 %93, label %94, label %98

94:                                               ; preds = %92
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %6, align 4
  br label %81

98:                                               ; preds = %92
  %99 = load i32, i32* @TOKEN_ID, align 4
  %100 = load i32*, i32** %5, align 8
  store i32 %99, i32* %100, align 4
  %101 = load i32, i32* %6, align 4
  store i32 %101, i32* %3, align 4
  br label %128

102:                                              ; preds = %2
  %103 = load i8*, i8** %4, align 8
  %104 = load i8, i8* %103, align 1
  %105 = call i32 @IdChar(i8 signext %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %102
  br label %125

108:                                              ; preds = %102
  store i32 1, i32* %6, align 4
  br label %109

109:                                              ; preds = %118, %108
  %110 = load i8*, i8** %4, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = call i32 @IdChar(i8 signext %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %109
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %6, align 4
  br label %109

121:                                              ; preds = %109
  %122 = load i32, i32* @TOKEN_ID, align 4
  %123 = load i32*, i32** %5, align 8
  store i32 %122, i32* %123, align 4
  %124 = load i32, i32* %6, align 4
  store i32 %124, i32* %3, align 4
  br label %128

125:                                              ; preds = %107
  %126 = load i32, i32* @TOKEN_PUNCT, align 4
  %127 = load i32*, i32** %5, align 8
  store i32 %126, i32* %127, align 4
  store i32 1, i32* %3, align 4
  br label %128

128:                                              ; preds = %125, %121, %98, %68, %28, %12
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @safe_isspace(i8 signext) #1

declare dso_local i32 @IdChar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
