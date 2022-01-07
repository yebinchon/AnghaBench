; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/webvtt/extr_css_parser.c_vlc_css_unescape.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/webvtt/extr_css_parser.c_vlc_css_unescape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"nfr\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlc_css_unescape(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %145

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8
  store i8* %13, i8** %3, align 8
  %14 = load i8*, i8** %2, align 8
  store i8* %14, i8** %4, align 8
  br label %15

15:                                               ; preds = %142, %12
  %16 = load i8*, i8** %3, align 8
  %17 = load i8, i8* %16, align 1
  %18 = icmp ne i8 %17, 0
  br i1 %18, label %19, label %143

19:                                               ; preds = %15
  %20 = load i8*, i8** %3, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 92
  br i1 %23, label %24, label %136

24:                                               ; preds = %19
  %25 = load i8*, i8** %3, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %3, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %143

32:                                               ; preds = %24
  %33 = load i8*, i8** %3, align 8
  %34 = load i8, i8* %33, align 1
  %35 = call i64 @strchr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8 signext %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %75

37:                                               ; preds = %32
  %38 = load i8*, i8** %3, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  switch i32 %41, label %74 [
    i32 110, label %42
    i32 114, label %47
    i32 102, label %69
  ]

42:                                               ; preds = %37
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %4, align 8
  store i8 10, i8* %43, align 1
  %45 = load i8*, i8** %3, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %3, align 8
  br label %74

47:                                               ; preds = %37
  %48 = load i8*, i8** %4, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %4, align 8
  store i8 13, i8* %48, align 1
  %50 = load i8*, i8** %3, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %47
  %56 = load i8*, i8** %3, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 110
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load i8*, i8** %4, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %4, align 8
  store i8 10, i8* %62, align 1
  %64 = load i8*, i8** %3, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %3, align 8
  br label %66

66:                                               ; preds = %61, %55, %47
  %67 = load i8*, i8** %3, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %3, align 8
  br label %74

69:                                               ; preds = %37
  %70 = load i8*, i8** %4, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %4, align 8
  store i8 12, i8* %70, align 1
  %72 = load i8*, i8** %3, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %3, align 8
  br label %74

74:                                               ; preds = %37, %69, %66, %42
  br label %134

75:                                               ; preds = %32
  %76 = load i8*, i8** %3, align 8
  %77 = load i8, i8* %76, align 1
  %78 = call i64 @isxdigit(i8 signext %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %133

80:                                               ; preds = %75
  %81 = load i8*, i8** %3, align 8
  store i8* %81, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %82

82:                                               ; preds = %100, %80
  %83 = load i32, i32* %6, align 4
  %84 = icmp slt i32 %83, 6
  br i1 %84, label %85, label %95

85:                                               ; preds = %82
  %86 = load i8*, i8** %3, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load i8*, i8** %3, align 8
  %92 = load i8, i8* %91, align 1
  %93 = call i64 @isxdigit(i8 signext %92)
  %94 = icmp ne i64 %93, 0
  br label %95

95:                                               ; preds = %90, %85, %82
  %96 = phi i1 [ false, %85 ], [ false, %82 ], [ %94, %90 ]
  br i1 %96, label %97, label %103

97:                                               ; preds = %95
  %98 = load i8*, i8** %3, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %3, align 8
  br label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %6, align 4
  br label %82

103:                                              ; preds = %95
  %104 = load i8*, i8** %3, align 8
  %105 = load i8, i8* %104, align 1
  store i8 %105, i8* %7, align 1
  %106 = load i8*, i8** %3, align 8
  store i8 0, i8* %106, align 1
  %107 = load i8*, i8** %5, align 8
  %108 = call i32 @strtoul(i8* %107, i32* null, i32 16)
  store i32 %108, i32* %8, align 4
  %109 = load i8, i8* %7, align 1
  %110 = load i8*, i8** %3, align 8
  store i8 %109, i8* %110, align 1
  %111 = load i32, i32* %6, align 4
  %112 = icmp slt i32 %111, 6
  br i1 %112, label %113, label %126

113:                                              ; preds = %103
  %114 = load i8*, i8** %3, align 8
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %113
  %119 = load i8*, i8** %3, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 32
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  %124 = load i8*, i8** %3, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %3, align 8
  br label %126

126:                                              ; preds = %123, %118, %113, %103
  %127 = load i32, i32* %8, align 4
  %128 = load i8*, i8** %4, align 8
  %129 = call i32 @CodePointToUTF8(i32 %127, i8* %128)
  %130 = load i8*, i8** %4, align 8
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds i8, i8* %130, i64 %131
  store i8* %132, i8** %4, align 8
  br label %133

133:                                              ; preds = %126, %75
  br label %134

134:                                              ; preds = %133, %74
  br label %135

135:                                              ; preds = %134
  br label %142

136:                                              ; preds = %19
  %137 = load i8*, i8** %3, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %3, align 8
  %139 = load i8, i8* %137, align 1
  %140 = load i8*, i8** %4, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %4, align 8
  store i8 %139, i8* %140, align 1
  br label %142

142:                                              ; preds = %136, %135
  br label %15

143:                                              ; preds = %31, %15
  %144 = load i8*, i8** %4, align 8
  store i8 0, i8* %144, align 1
  br label %145

145:                                              ; preds = %143, %11
  ret void
}

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i64 @isxdigit(i8 signext) #1

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @CodePointToUTF8(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
