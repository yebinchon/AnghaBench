; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_sqldiff.c_gobble_token.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_sqldiff.c_gobble_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @gobble_token(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** %9, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %14, i64 %17
  store i8* %18, i8** %10, align 8
  store i8 0, i8* %11, align 1
  %19 = load i8*, i8** %8, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %121

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %28, %22
  %24 = load i8*, i8** %8, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 32
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %8, align 8
  br label %23

31:                                               ; preds = %23
  %32 = load i8*, i8** %8, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  switch i32 %34, label %39 [
    i32 34, label %35
    i32 39, label %36
    i32 96, label %37
    i32 91, label %38
  ]

35:                                               ; preds = %31
  store i8 34, i8* %11, align 1
  br label %39

36:                                               ; preds = %31
  store i8 39, i8* %11, align 1
  br label %39

37:                                               ; preds = %31
  store i8 96, i8* %11, align 1
  br label %39

38:                                               ; preds = %31
  store i8 93, i8* %11, align 1
  br label %39

39:                                               ; preds = %31, %38, %37, %36, %35
  %40 = load i8, i8* %11, align 1
  %41 = icmp ne i8 %40, 0
  br i1 %41, label %42, label %87

42:                                               ; preds = %39
  %43 = load i8*, i8** %8, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %8, align 8
  br label %45

45:                                               ; preds = %83, %42
  %46 = load i8*, i8** %8, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i8*, i8** %9, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = icmp ult i8* %51, %52
  br label %54

54:                                               ; preds = %50, %45
  %55 = phi i1 [ false, %45 ], [ %53, %50 ]
  br i1 %55, label %56, label %86

56:                                               ; preds = %54
  %57 = load i8*, i8** %8, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = load i8, i8* %11, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %56
  %64 = load i8*, i8** %8, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %8, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = load i8, i8* %11, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %68, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  br label %86

73:                                               ; preds = %63
  br label %74

74:                                               ; preds = %73, %56
  %75 = load i8*, i8** %9, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = icmp ult i8* %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load i8*, i8** %8, align 8
  %80 = load i8, i8* %79, align 1
  %81 = load i8*, i8** %9, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %9, align 8
  store i8 %80, i8* %81, align 1
  br label %83

83:                                               ; preds = %78, %74
  %84 = load i8*, i8** %8, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %8, align 8
  br label %45

86:                                               ; preds = %72, %54
  br label %118

87:                                               ; preds = %39
  br label %88

88:                                               ; preds = %114, %87
  %89 = load i8*, i8** %8, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %88
  %94 = load i8*, i8** %8, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp ne i32 %96, 32
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load i8*, i8** %8, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp ne i32 %101, 40
  br label %103

103:                                              ; preds = %98, %93, %88
  %104 = phi i1 [ false, %93 ], [ false, %88 ], [ %102, %98 ]
  br i1 %104, label %105, label %117

105:                                              ; preds = %103
  %106 = load i8*, i8** %9, align 8
  %107 = load i8*, i8** %10, align 8
  %108 = icmp ult i8* %106, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %105
  %110 = load i8*, i8** %8, align 8
  %111 = load i8, i8* %110, align 1
  %112 = load i8*, i8** %9, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %9, align 8
  store i8 %111, i8* %112, align 1
  br label %114

114:                                              ; preds = %109, %105
  %115 = load i8*, i8** %8, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %8, align 8
  br label %88

117:                                              ; preds = %103
  br label %118

118:                                              ; preds = %117, %86
  %119 = load i8*, i8** %9, align 8
  store i8 0, i8* %119, align 1
  %120 = load i8*, i8** %8, align 8
  store i8* %120, i8** %4, align 8
  br label %121

121:                                              ; preds = %118, %21
  %122 = load i8*, i8** %4, align 8
  ret i8* %122
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
