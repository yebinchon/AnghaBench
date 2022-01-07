; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_string.c_fz_cleanname.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_string.c_fz_cleanname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fz_cleanname(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 47
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %6, align 4
  %13 = load i8*, i8** %2, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  store i8* %16, i8** %5, align 8
  store i8* %16, i8** %4, align 8
  store i8* %16, i8** %3, align 8
  br label %17

17:                                               ; preds = %134, %1
  %18 = load i8*, i8** %3, align 8
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %21, label %135

21:                                               ; preds = %17
  %22 = load i8*, i8** %3, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 47
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i8*, i8** %3, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %3, align 8
  br label %134

30:                                               ; preds = %21
  %31 = load i8*, i8** %3, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 46
  br i1 %35, label %36, label %45

36:                                               ; preds = %30
  %37 = load i8*, i8** %3, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8, i8* %38, align 1
  %40 = call i64 @SEP(i8 signext %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i8*, i8** %3, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  store i8* %44, i8** %3, align 8
  br label %133

45:                                               ; preds = %36, %30
  %46 = load i8*, i8** %3, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 46
  br i1 %50, label %51, label %102

51:                                               ; preds = %45
  %52 = load i8*, i8** %3, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 46
  br i1 %56, label %57, label %102

57:                                               ; preds = %51
  %58 = load i8*, i8** %3, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 2
  %60 = load i8, i8* %59, align 1
  %61 = call i64 @SEP(i8 signext %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %102

63:                                               ; preds = %57
  %64 = load i8*, i8** %3, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 2
  store i8* %65, i8** %3, align 8
  %66 = load i8*, i8** %4, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = icmp ugt i8* %66, %67
  br i1 %68, label %69, label %84

69:                                               ; preds = %63
  br label %70

70:                                               ; preds = %82, %69
  %71 = load i8*, i8** %4, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 -1
  store i8* %72, i8** %4, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = icmp ugt i8* %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load i8*, i8** %4, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %78, 47
  br label %80

80:                                               ; preds = %75, %70
  %81 = phi i1 [ false, %70 ], [ %79, %75 ]
  br i1 %81, label %82, label %83

82:                                               ; preds = %80
  br label %70

83:                                               ; preds = %80
  br label %101

84:                                               ; preds = %63
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %100, label %87

87:                                               ; preds = %84
  %88 = load i8*, i8** %4, align 8
  %89 = load i8*, i8** %2, align 8
  %90 = icmp ne i8* %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load i8*, i8** %4, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %4, align 8
  store i8 47, i8* %92, align 1
  br label %94

94:                                               ; preds = %91, %87
  %95 = load i8*, i8** %4, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %4, align 8
  store i8 46, i8* %95, align 1
  %97 = load i8*, i8** %4, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %4, align 8
  store i8 46, i8* %97, align 1
  %99 = load i8*, i8** %4, align 8
  store i8* %99, i8** %5, align 8
  br label %100

100:                                              ; preds = %94, %84
  br label %101

101:                                              ; preds = %100, %83
  br label %132

102:                                              ; preds = %57, %51, %45
  %103 = load i8*, i8** %4, align 8
  %104 = load i8*, i8** %2, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = icmp ne i8* %103, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %102
  %110 = load i8*, i8** %4, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %4, align 8
  store i8 47, i8* %110, align 1
  br label %112

112:                                              ; preds = %109, %102
  br label %113

113:                                              ; preds = %126, %112
  %114 = load i8*, i8** %3, align 8
  %115 = load i8, i8* %114, align 1
  %116 = load i8*, i8** %4, align 8
  store i8 %115, i8* %116, align 1
  %117 = sext i8 %115 to i32
  %118 = icmp ne i32 %117, 47
  br i1 %118, label %119, label %124

119:                                              ; preds = %113
  %120 = load i8*, i8** %4, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp ne i32 %122, 0
  br label %124

124:                                              ; preds = %119, %113
  %125 = phi i1 [ false, %113 ], [ %123, %119 ]
  br i1 %125, label %126, label %131

126:                                              ; preds = %124
  %127 = load i8*, i8** %3, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %3, align 8
  %129 = load i8*, i8** %4, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %4, align 8
  br label %113

131:                                              ; preds = %124
  br label %132

132:                                              ; preds = %131, %101
  br label %133

133:                                              ; preds = %132, %42
  br label %134

134:                                              ; preds = %133, %27
  br label %17

135:                                              ; preds = %17
  %136 = load i8*, i8** %4, align 8
  %137 = load i8*, i8** %2, align 8
  %138 = icmp eq i8* %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  %140 = load i8*, i8** %4, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %4, align 8
  store i8 46, i8* %140, align 1
  br label %142

142:                                              ; preds = %139, %135
  %143 = load i8*, i8** %4, align 8
  store i8 0, i8* %143, align 1
  %144 = load i8*, i8** %2, align 8
  ret i8* %144
}

declare dso_local i64 @SEP(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
