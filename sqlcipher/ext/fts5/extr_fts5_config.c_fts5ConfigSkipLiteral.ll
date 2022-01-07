; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_config.c_fts5ConfigSkipLiteral.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_config.c_fts5ConfigSkipLiteral.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"null\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @fts5ConfigSkipLiteral to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fts5ConfigSkipLiteral(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  store i8* %4, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  switch i32 %7, label %114 [
    i32 110, label %8
    i32 78, label %8
    i32 120, label %17
    i32 88, label %17
    i32 39, label %84
  ]

8:                                                ; preds = %1, %1
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @sqlite3_strnicmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %9, i32 4)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load i8*, i8** %3, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 4
  store i8* %14, i8** %3, align 8
  br label %16

15:                                               ; preds = %8
  store i8* null, i8** %3, align 8
  br label %16

16:                                               ; preds = %15, %12
  br label %165

17:                                               ; preds = %1, %1
  %18 = load i8*, i8** %3, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %3, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 39
  br i1 %23, label %24, label %82

24:                                               ; preds = %17
  %25 = load i8*, i8** %3, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %3, align 8
  br label %27

27:                                               ; preds = %61, %24
  %28 = load i8*, i8** %3, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp sge i32 %30, 97
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load i8*, i8** %3, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp sle i32 %35, 102
  br i1 %36, label %59, label %37

37:                                               ; preds = %32, %27
  %38 = load i8*, i8** %3, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp sge i32 %40, 65
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i8*, i8** %3, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp sle i32 %45, 70
  br i1 %46, label %59, label %47

47:                                               ; preds = %42, %37
  %48 = load i8*, i8** %3, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp sge i32 %50, 48
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load i8*, i8** %3, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp sle i32 %55, 57
  br label %57

57:                                               ; preds = %52, %47
  %58 = phi i1 [ false, %47 ], [ %56, %52 ]
  br label %59

59:                                               ; preds = %57, %42, %32
  %60 = phi i1 [ true, %42 ], [ true, %32 ], [ %58, %57 ]
  br i1 %60, label %61, label %64

61:                                               ; preds = %59
  %62 = load i8*, i8** %3, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %3, align 8
  br label %27

64:                                               ; preds = %59
  %65 = load i8*, i8** %3, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 39
  br i1 %68, label %69, label %80

69:                                               ; preds = %64
  %70 = load i8*, i8** %3, align 8
  %71 = load i8*, i8** %2, align 8
  %72 = ptrtoint i8* %70 to i64
  %73 = ptrtoint i8* %71 to i64
  %74 = sub i64 %72, %73
  %75 = srem i64 %74, 2
  %76 = icmp eq i64 0, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %69
  %78 = load i8*, i8** %3, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %3, align 8
  br label %81

80:                                               ; preds = %69, %64
  store i8* null, i8** %3, align 8
  br label %81

81:                                               ; preds = %80, %77
  br label %83

82:                                               ; preds = %17
  store i8* null, i8** %3, align 8
  br label %83

83:                                               ; preds = %82, %81
  br label %165

84:                                               ; preds = %1
  %85 = load i8*, i8** %3, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %3, align 8
  br label %87

87:                                               ; preds = %112, %84
  %88 = load i8*, i8** %3, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %113

90:                                               ; preds = %87
  %91 = load i8*, i8** %3, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 39
  br i1 %94, label %95, label %104

95:                                               ; preds = %90
  %96 = load i8*, i8** %3, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %3, align 8
  %98 = load i8*, i8** %3, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp ne i32 %100, 39
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  br label %113

103:                                              ; preds = %95
  br label %104

104:                                              ; preds = %103, %90
  %105 = load i8*, i8** %3, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %3, align 8
  %107 = load i8*, i8** %3, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  store i8* null, i8** %3, align 8
  br label %112

112:                                              ; preds = %111, %104
  br label %87

113:                                              ; preds = %102, %87
  br label %165

114:                                              ; preds = %1
  %115 = load i8*, i8** %3, align 8
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 43
  br i1 %118, label %124, label %119

119:                                              ; preds = %114
  %120 = load i8*, i8** %3, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 45
  br i1 %123, label %124, label %127

124:                                              ; preds = %119, %114
  %125 = load i8*, i8** %3, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %3, align 8
  br label %127

127:                                              ; preds = %124, %119
  br label %128

128:                                              ; preds = %133, %127
  %129 = load i8*, i8** %3, align 8
  %130 = load i8, i8* %129, align 1
  %131 = call i32 @fts5_isdigit(i8 signext %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load i8*, i8** %3, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %3, align 8
  br label %128

136:                                              ; preds = %128
  %137 = load i8*, i8** %3, align 8
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp eq i32 %139, 46
  br i1 %140, label %141, label %159

141:                                              ; preds = %136
  %142 = load i8*, i8** %3, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 1
  %144 = load i8, i8* %143, align 1
  %145 = call i32 @fts5_isdigit(i8 signext %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %159

147:                                              ; preds = %141
  %148 = load i8*, i8** %3, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 2
  store i8* %149, i8** %3, align 8
  br label %150

150:                                              ; preds = %155, %147
  %151 = load i8*, i8** %3, align 8
  %152 = load i8, i8* %151, align 1
  %153 = call i32 @fts5_isdigit(i8 signext %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %150
  %156 = load i8*, i8** %3, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %3, align 8
  br label %150

158:                                              ; preds = %150
  br label %159

159:                                              ; preds = %158, %141, %136
  %160 = load i8*, i8** %3, align 8
  %161 = load i8*, i8** %2, align 8
  %162 = icmp eq i8* %160, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %159
  store i8* null, i8** %3, align 8
  br label %164

164:                                              ; preds = %163, %159
  br label %165

165:                                              ; preds = %164, %113, %83, %16
  %166 = load i8*, i8** %3, align 8
  ret i8* %166
}

declare dso_local i32 @sqlite3_strnicmp(i8*, i8*, i32) #1

declare dso_local i32 @fts5_isdigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
