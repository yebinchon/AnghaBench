; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-util.c_clean_path.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-util.c_clean_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @clean_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @clean_path(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = call i8* @skip_scheme(i8* %8)
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i8* @skip_authority(i8* %10)
  store i8* %11, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 47
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %7, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  store i8* %21, i8** %5, align 8
  store i8* %21, i8** %4, align 8
  store i8* %21, i8** %3, align 8
  br label %22

22:                                               ; preds = %139, %1
  %23 = load i8*, i8** %3, align 8
  %24 = load i8, i8* %23, align 1
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %26, label %140

26:                                               ; preds = %22
  %27 = load i8*, i8** %3, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 47
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i8*, i8** %3, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %3, align 8
  br label %139

35:                                               ; preds = %26
  %36 = load i8*, i8** %3, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 46
  br i1 %40, label %41, label %50

41:                                               ; preds = %35
  %42 = load i8*, i8** %3, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = load i8, i8* %43, align 1
  %45 = call i64 @SEP(i8 signext %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i8*, i8** %3, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  store i8* %49, i8** %3, align 8
  br label %138

50:                                               ; preds = %41, %35
  %51 = load i8*, i8** %3, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 46
  br i1 %55, label %56, label %107

56:                                               ; preds = %50
  %57 = load i8*, i8** %3, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 46
  br i1 %61, label %62, label %107

62:                                               ; preds = %56
  %63 = load i8*, i8** %3, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 2
  %65 = load i8, i8* %64, align 1
  %66 = call i64 @SEP(i8 signext %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %107

68:                                               ; preds = %62
  %69 = load i8*, i8** %3, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 2
  store i8* %70, i8** %3, align 8
  %71 = load i8*, i8** %4, align 8
  %72 = load i8*, i8** %5, align 8
  %73 = icmp ugt i8* %71, %72
  br i1 %73, label %74, label %89

74:                                               ; preds = %68
  br label %75

75:                                               ; preds = %87, %74
  %76 = load i8*, i8** %4, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 -1
  store i8* %77, i8** %4, align 8
  %78 = load i8*, i8** %5, align 8
  %79 = icmp ugt i8* %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load i8*, i8** %4, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 47
  br label %85

85:                                               ; preds = %80, %75
  %86 = phi i1 [ false, %75 ], [ %84, %80 ]
  br i1 %86, label %87, label %88

87:                                               ; preds = %85
  br label %75

88:                                               ; preds = %85
  br label %106

89:                                               ; preds = %68
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %105, label %92

92:                                               ; preds = %89
  %93 = load i8*, i8** %4, align 8
  %94 = load i8*, i8** %6, align 8
  %95 = icmp ne i8* %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = load i8*, i8** %4, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %4, align 8
  store i8 47, i8* %97, align 1
  br label %99

99:                                               ; preds = %96, %92
  %100 = load i8*, i8** %4, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %4, align 8
  store i8 46, i8* %100, align 1
  %102 = load i8*, i8** %4, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %4, align 8
  store i8 46, i8* %102, align 1
  %104 = load i8*, i8** %4, align 8
  store i8* %104, i8** %5, align 8
  br label %105

105:                                              ; preds = %99, %89
  br label %106

106:                                              ; preds = %105, %88
  br label %137

107:                                              ; preds = %62, %56, %50
  %108 = load i8*, i8** %4, align 8
  %109 = load i8*, i8** %6, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  %113 = icmp ne i8* %108, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %107
  %115 = load i8*, i8** %4, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %4, align 8
  store i8 47, i8* %115, align 1
  br label %117

117:                                              ; preds = %114, %107
  br label %118

118:                                              ; preds = %131, %117
  %119 = load i8*, i8** %3, align 8
  %120 = load i8, i8* %119, align 1
  %121 = load i8*, i8** %4, align 8
  store i8 %120, i8* %121, align 1
  %122 = sext i8 %120 to i32
  %123 = icmp ne i32 %122, 47
  br i1 %123, label %124, label %129

124:                                              ; preds = %118
  %125 = load i8*, i8** %4, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp ne i32 %127, 0
  br label %129

129:                                              ; preds = %124, %118
  %130 = phi i1 [ false, %118 ], [ %128, %124 ]
  br i1 %130, label %131, label %136

131:                                              ; preds = %129
  %132 = load i8*, i8** %3, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %3, align 8
  %134 = load i8*, i8** %4, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %4, align 8
  br label %118

136:                                              ; preds = %129
  br label %137

137:                                              ; preds = %136, %106
  br label %138

138:                                              ; preds = %137, %47
  br label %139

139:                                              ; preds = %138, %32
  br label %22

140:                                              ; preds = %22
  %141 = load i8*, i8** %4, align 8
  %142 = load i8*, i8** %6, align 8
  %143 = icmp eq i8* %141, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %140
  %145 = load i8*, i8** %4, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %4, align 8
  store i8 46, i8* %145, align 1
  br label %147

147:                                              ; preds = %144, %140
  %148 = load i8*, i8** %4, align 8
  store i8 0, i8* %148, align 1
  %149 = load i8*, i8** %2, align 8
  ret i8* %149
}

declare dso_local i8* @skip_scheme(i8*) #1

declare dso_local i8* @skip_authority(i8*) #1

declare dso_local i64 @SEP(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
