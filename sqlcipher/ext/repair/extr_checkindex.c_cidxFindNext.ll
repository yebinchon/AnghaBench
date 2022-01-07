; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/repair/extr_checkindex.c_cidxFindNext.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/repair/extr_checkindex.c_cidxFindNext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CIDX_PARSE_EOF = common dso_local global i32 0, align 4
@CIDX_PARSE_OPEN = common dso_local global i32 0, align 4
@CIDX_PARSE_CLOSE = common dso_local global i32 0, align 4
@CIDX_PARSE_COMMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i32*)* @cidxFindNext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cidxFindNext(i8* %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %8, align 8
  br label %11

11:                                               ; preds = %3, %175
  br label %12

12:                                               ; preds = %17, %11
  %13 = load i8*, i8** %8, align 8
  %14 = load i8, i8* %13, align 1
  %15 = call i64 @cidx_isspace(i8 signext %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i8*, i8** %8, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %8, align 8
  br label %12

20:                                               ; preds = %12
  %21 = load i8*, i8** %8, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 45
  br i1 %25, label %26, label %67

26:                                               ; preds = %20
  %27 = load i8*, i8** %8, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 45
  br i1 %31, label %32, label %67

32:                                               ; preds = %26
  %33 = load i8*, i8** %8, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 2
  store i8* %34, i8** %8, align 8
  br label %35

35:                                               ; preds = %49, %32
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 10
  br i1 %40, label %41, label %52

41:                                               ; preds = %35
  %42 = load i8*, i8** %8, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @CIDX_PARSE_EOF, align 4
  store i32 %48, i32* %4, align 4
  br label %176

49:                                               ; preds = %41
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %8, align 8
  br label %35

52:                                               ; preds = %35
  br label %53

53:                                               ; preds = %58, %52
  %54 = load i8*, i8** %8, align 8
  %55 = load i8, i8* %54, align 1
  %56 = call i64 @cidx_isspace(i8 signext %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i8*, i8** %8, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %8, align 8
  br label %53

61:                                               ; preds = %53
  %62 = load i32*, i32** %7, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i32*, i32** %7, align 8
  store i32 1, i32* %65, align 4
  br label %66

66:                                               ; preds = %64, %61
  br label %175

67:                                               ; preds = %26, %20
  %68 = load i8*, i8** %8, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 47
  br i1 %72, label %73, label %110

73:                                               ; preds = %67
  %74 = load i8*, i8** %8, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 42
  br i1 %78, label %79, label %110

79:                                               ; preds = %73
  %80 = load i8*, i8** %8, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 2
  store i8* %81, i8** %8, align 8
  br label %82

82:                                               ; preds = %104, %79
  %83 = load i8*, i8** %8, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 42
  br i1 %87, label %94, label %88

88:                                               ; preds = %82
  %89 = load i8*, i8** %8, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 1
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 47
  br label %94

94:                                               ; preds = %88, %82
  %95 = phi i1 [ true, %82 ], [ %93, %88 ]
  br i1 %95, label %96, label %107

96:                                               ; preds = %94
  %97 = load i8*, i8** %8, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 1
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = load i32, i32* @CIDX_PARSE_EOF, align 4
  store i32 %103, i32* %4, align 4
  br label %176

104:                                              ; preds = %96
  %105 = load i8*, i8** %8, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %8, align 8
  br label %82

107:                                              ; preds = %94
  %108 = load i8*, i8** %8, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 2
  store i8* %109, i8** %8, align 8
  br label %174

110:                                              ; preds = %73, %67
  %111 = load i8*, i8** %8, align 8
  %112 = load i8**, i8*** %6, align 8
  store i8* %111, i8** %112, align 8
  %113 = load i32*, i32** %7, align 8
  %114 = icmp eq i32* %113, null
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = load i32, i32* @CIDX_PARSE_EOF, align 4
  store i32 %116, i32* %4, align 4
  br label %176

117:                                              ; preds = %110
  %118 = load i8*, i8** %8, align 8
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  switch i32 %120, label %169 [
    i32 0, label %121
    i32 40, label %123
    i32 41, label %125
    i32 44, label %127
    i32 34, label %129
    i32 39, label %129
    i32 96, label %129
    i32 91, label %160
  ]

121:                                              ; preds = %117
  %122 = load i32, i32* @CIDX_PARSE_EOF, align 4
  store i32 %122, i32* %4, align 4
  br label %176

123:                                              ; preds = %117
  %124 = load i32, i32* @CIDX_PARSE_OPEN, align 4
  store i32 %124, i32* %4, align 4
  br label %176

125:                                              ; preds = %117
  %126 = load i32, i32* @CIDX_PARSE_CLOSE, align 4
  store i32 %126, i32* %4, align 4
  br label %176

127:                                              ; preds = %117
  %128 = load i32, i32* @CIDX_PARSE_COMMA, align 4
  store i32 %128, i32* %4, align 4
  br label %176

129:                                              ; preds = %117, %117, %117
  %130 = load i8*, i8** %8, align 8
  %131 = load i8, i8* %130, align 1
  store i8 %131, i8* %9, align 1
  %132 = load i8*, i8** %8, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %8, align 8
  br label %134

134:                                              ; preds = %156, %129
  %135 = load i8*, i8** %8, align 8
  %136 = load i8, i8* %135, align 1
  %137 = icmp ne i8 %136, 0
  br i1 %137, label %138, label %159

138:                                              ; preds = %134
  %139 = load i8*, i8** %8, align 8
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = load i8, i8* %9, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp eq i32 %141, %143
  br i1 %144, label %145, label %156

145:                                              ; preds = %138
  %146 = load i8*, i8** %8, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %8, align 8
  %148 = load i8*, i8** %8, align 8
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = load i8, i8* %9, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp ne i32 %150, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %145
  br label %159

155:                                              ; preds = %145
  br label %156

156:                                              ; preds = %155, %138
  %157 = load i8*, i8** %8, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %8, align 8
  br label %134

159:                                              ; preds = %154, %134
  br label %172

160:                                              ; preds = %117
  br label %161

161:                                              ; preds = %167, %160
  %162 = load i8*, i8** %8, align 8
  %163 = getelementptr inbounds i8, i8* %162, i32 1
  store i8* %163, i8** %8, align 8
  %164 = load i8, i8* %162, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp ne i32 %165, 93
  br i1 %166, label %167, label %168

167:                                              ; preds = %161
  br label %161

168:                                              ; preds = %161
  br label %172

169:                                              ; preds = %117
  %170 = load i8*, i8** %8, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %8, align 8
  br label %172

172:                                              ; preds = %169, %168, %159
  %173 = load i32*, i32** %7, align 8
  store i32 0, i32* %173, align 4
  br label %174

174:                                              ; preds = %172, %107
  br label %175

175:                                              ; preds = %174, %66
  br label %11

176:                                              ; preds = %127, %125, %123, %121, %115, %102, %47
  %177 = load i32, i32* %4, align 4
  ret i32 %177
}

declare dso_local i64 @cidx_isspace(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
