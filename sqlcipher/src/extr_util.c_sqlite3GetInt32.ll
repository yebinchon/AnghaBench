; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_util.c_sqlite3GetInt32.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_util.c_sqlite3GetInt32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3GetInt32(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 45
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  store i32 1, i32* %9, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %4, align 8
  br label %109

19:                                               ; preds = %2
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 43
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %4, align 8
  br label %108

28:                                               ; preds = %19
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 48
  br i1 %33, label %34, label %107

34:                                               ; preds = %28
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 120
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 88
  br i1 %45, label %46, label %107

46:                                               ; preds = %40, %34
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 2
  %49 = load i8, i8* %48, align 1
  %50 = call i64 @sqlite3Isxdigit(i8 signext %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %107

52:                                               ; preds = %46
  store i32 0, i32* %10, align 4
  %53 = load i8*, i8** %4, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 2
  store i8* %54, i8** %4, align 8
  br label %55

55:                                               ; preds = %61, %52
  %56 = load i8*, i8** %4, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 48
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i8*, i8** %4, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %4, align 8
  br label %55

64:                                               ; preds = %55
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %88, %64
  %66 = load i8*, i8** %4, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = call i64 @sqlite3Isxdigit(i8 signext %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %65
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %74, 8
  br label %76

76:                                               ; preds = %73, %65
  %77 = phi i1 [ false, %65 ], [ %75, %73 ]
  br i1 %77, label %78, label %91

78:                                               ; preds = %76
  %79 = load i32, i32* %10, align 4
  %80 = mul nsw i32 %79, 16
  %81 = load i8*, i8** %4, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = call i32 @sqlite3HexToInt(i8 signext %85)
  %87 = add nsw i32 %80, %86
  store i32 %87, i32* %10, align 4
  br label %88

88:                                               ; preds = %78
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %7, align 4
  br label %65

91:                                               ; preds = %76
  %92 = load i32, i32* %10, align 4
  %93 = and i32 %92, -2147483648
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %91
  %96 = load i8*, i8** %4, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = call i64 @sqlite3Isxdigit(i8 signext %100)
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %95
  %104 = load i32*, i32** %5, align 8
  %105 = call i32 @memcpy(i32* %104, i32* %10, i32 4)
  store i32 1, i32* %3, align 4
  br label %181

106:                                              ; preds = %95, %91
  store i32 0, i32* %3, align 4
  br label %181

107:                                              ; preds = %46, %40, %28
  br label %108

108:                                              ; preds = %107, %25
  br label %109

109:                                              ; preds = %108, %16
  %110 = load i8*, i8** %4, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 0
  %112 = load i8, i8* %111, align 1
  %113 = call i32 @sqlite3Isdigit(i8 signext %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %109
  store i32 0, i32* %3, align 4
  br label %181

116:                                              ; preds = %109
  br label %117

117:                                              ; preds = %123, %116
  %118 = load i8*, i8** %4, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 0
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 48
  br i1 %122, label %123, label %126

123:                                              ; preds = %117
  %124 = load i8*, i8** %4, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %4, align 8
  br label %117

126:                                              ; preds = %117
  store i32 0, i32* %7, align 4
  br label %127

127:                                              ; preds = %149, %126
  %128 = load i32, i32* %7, align 4
  %129 = icmp slt i32 %128, 11
  br i1 %129, label %130, label %142

130:                                              ; preds = %127
  %131 = load i8*, i8** %4, align 8
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = sub nsw i32 %136, 48
  store i32 %137, i32* %8, align 4
  %138 = icmp sge i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %130
  %140 = load i32, i32* %8, align 4
  %141 = icmp sle i32 %140, 9
  br label %142

142:                                              ; preds = %139, %130, %127
  %143 = phi i1 [ false, %130 ], [ false, %127 ], [ %141, %139 ]
  br i1 %143, label %144, label %152

144:                                              ; preds = %142
  %145 = load i32, i32* %6, align 4
  %146 = mul nsw i32 %145, 10
  %147 = load i32, i32* %8, align 4
  %148 = add nsw i32 %146, %147
  store i32 %148, i32* %6, align 4
  br label %149

149:                                              ; preds = %144
  %150 = load i32, i32* %7, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %7, align 4
  br label %127

152:                                              ; preds = %142
  %153 = load i32, i32* %7, align 4
  %154 = icmp eq i32 %153, 10
  %155 = zext i1 %154 to i32
  %156 = call i32 @testcase(i32 %155)
  %157 = load i32, i32* %7, align 4
  %158 = icmp sgt i32 %157, 10
  br i1 %158, label %159, label %160

159:                                              ; preds = %152
  store i32 0, i32* %3, align 4
  br label %181

160:                                              ; preds = %152
  %161 = load i32, i32* %6, align 4
  %162 = load i32, i32* %9, align 4
  %163 = sub nsw i32 %161, %162
  %164 = icmp eq i32 %163, 2147483647
  %165 = zext i1 %164 to i32
  %166 = call i32 @testcase(i32 %165)
  %167 = load i32, i32* %6, align 4
  %168 = load i32, i32* %9, align 4
  %169 = sub nsw i32 %167, %168
  %170 = icmp sgt i32 %169, 2147483647
  br i1 %170, label %171, label %172

171:                                              ; preds = %160
  store i32 0, i32* %3, align 4
  br label %181

172:                                              ; preds = %160
  %173 = load i32, i32* %9, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = load i32, i32* %6, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %6, align 4
  br label %178

178:                                              ; preds = %175, %172
  %179 = load i32, i32* %6, align 4
  %180 = load i32*, i32** %5, align 8
  store i32 %179, i32* %180, align 4
  store i32 1, i32* %3, align 4
  br label %181

181:                                              ; preds = %178, %171, %159, %115, %106, %103
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local i64 @sqlite3Isxdigit(i8 signext) #1

declare dso_local i32 @sqlite3HexToInt(i8 signext) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @sqlite3Isdigit(i8 signext) #1

declare dso_local i32 @testcase(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
