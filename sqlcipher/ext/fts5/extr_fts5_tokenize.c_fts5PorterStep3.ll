; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_tokenize.c_fts5PorterStep3.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_tokenize.c_fts5PorterStep3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"ical\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ic\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"ness\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"icate\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"iciti\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ful\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"ative\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"alize\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"al\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @fts5PorterStep3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5PorterStep3(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = load i32, i32* %6, align 4
  %11 = sub nsw i32 %10, 2
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, i8* %9, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  switch i32 %15, label %205 [
    i32 97, label %16
    i32 115, label %46
    i32 116, label %69
    i32 117, label %129
    i32 118, label %152
    i32 122, label %175
  ]

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = icmp sgt i32 %17, 4
  br i1 %18, label %19, label %45

19:                                               ; preds = %16
  %20 = load i8*, i8** %3, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sub nsw i32 %21, 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %20, i64 %23
  %25 = call i32 @memcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %24, i32 4)
  %26 = icmp eq i32 0, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %19
  %28 = load i8*, i8** %3, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sub nsw i32 %29, 4
  %31 = call i32 @fts5Porter_MGt0(i8* %28, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %27
  %34 = load i8*, i8** %3, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sub nsw i32 %35, 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  %39 = call i32 @memcpy(i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %40 = load i32, i32* %6, align 4
  %41 = sub nsw i32 %40, 4
  %42 = add nsw i32 %41, 2
  %43 = load i32*, i32** %4, align 8
  store i32 %42, i32* %43, align 4
  br label %44

44:                                               ; preds = %33, %27
  br label %45

45:                                               ; preds = %44, %19, %16
  br label %205

46:                                               ; preds = %2
  %47 = load i32, i32* %6, align 4
  %48 = icmp sgt i32 %47, 4
  br i1 %48, label %49, label %68

49:                                               ; preds = %46
  %50 = load i8*, i8** %3, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sub nsw i32 %51, 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  %55 = call i32 @memcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %54, i32 4)
  %56 = icmp eq i32 0, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %49
  %58 = load i8*, i8** %3, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sub nsw i32 %59, 4
  %61 = call i32 @fts5Porter_MGt0(i8* %58, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load i32, i32* %6, align 4
  %65 = sub nsw i32 %64, 4
  %66 = load i32*, i32** %4, align 8
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %63, %57
  br label %68

68:                                               ; preds = %67, %49, %46
  br label %205

69:                                               ; preds = %2
  %70 = load i32, i32* %6, align 4
  %71 = icmp sgt i32 %70, 5
  br i1 %71, label %72, label %98

72:                                               ; preds = %69
  %73 = load i8*, i8** %3, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sub nsw i32 %74, 5
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %73, i64 %76
  %78 = call i32 @memcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %77, i32 5)
  %79 = icmp eq i32 0, %78
  br i1 %79, label %80, label %98

80:                                               ; preds = %72
  %81 = load i8*, i8** %3, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sub nsw i32 %82, 5
  %84 = call i32 @fts5Porter_MGt0(i8* %81, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %80
  %87 = load i8*, i8** %3, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sub nsw i32 %88, 5
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %87, i64 %90
  %92 = call i32 @memcpy(i8* %91, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %93 = load i32, i32* %6, align 4
  %94 = sub nsw i32 %93, 5
  %95 = add nsw i32 %94, 2
  %96 = load i32*, i32** %4, align 8
  store i32 %95, i32* %96, align 4
  br label %97

97:                                               ; preds = %86, %80
  br label %128

98:                                               ; preds = %72, %69
  %99 = load i32, i32* %6, align 4
  %100 = icmp sgt i32 %99, 5
  br i1 %100, label %101, label %127

101:                                              ; preds = %98
  %102 = load i8*, i8** %3, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sub nsw i32 %103, 5
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %102, i64 %105
  %107 = call i32 @memcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %106, i32 5)
  %108 = icmp eq i32 0, %107
  br i1 %108, label %109, label %127

109:                                              ; preds = %101
  %110 = load i8*, i8** %3, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sub nsw i32 %111, 5
  %113 = call i32 @fts5Porter_MGt0(i8* %110, i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %126

115:                                              ; preds = %109
  %116 = load i8*, i8** %3, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sub nsw i32 %117, 5
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %116, i64 %119
  %121 = call i32 @memcpy(i8* %120, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %122 = load i32, i32* %6, align 4
  %123 = sub nsw i32 %122, 5
  %124 = add nsw i32 %123, 2
  %125 = load i32*, i32** %4, align 8
  store i32 %124, i32* %125, align 4
  br label %126

126:                                              ; preds = %115, %109
  br label %127

127:                                              ; preds = %126, %101, %98
  br label %128

128:                                              ; preds = %127, %97
  br label %205

129:                                              ; preds = %2
  %130 = load i32, i32* %6, align 4
  %131 = icmp sgt i32 %130, 3
  br i1 %131, label %132, label %151

132:                                              ; preds = %129
  %133 = load i8*, i8** %3, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sub nsw i32 %134, 3
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %133, i64 %136
  %138 = call i32 @memcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %137, i32 3)
  %139 = icmp eq i32 0, %138
  br i1 %139, label %140, label %151

140:                                              ; preds = %132
  %141 = load i8*, i8** %3, align 8
  %142 = load i32, i32* %6, align 4
  %143 = sub nsw i32 %142, 3
  %144 = call i32 @fts5Porter_MGt0(i8* %141, i32 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %140
  %147 = load i32, i32* %6, align 4
  %148 = sub nsw i32 %147, 3
  %149 = load i32*, i32** %4, align 8
  store i32 %148, i32* %149, align 4
  br label %150

150:                                              ; preds = %146, %140
  br label %151

151:                                              ; preds = %150, %132, %129
  br label %205

152:                                              ; preds = %2
  %153 = load i32, i32* %6, align 4
  %154 = icmp sgt i32 %153, 5
  br i1 %154, label %155, label %174

155:                                              ; preds = %152
  %156 = load i8*, i8** %3, align 8
  %157 = load i32, i32* %6, align 4
  %158 = sub nsw i32 %157, 5
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %156, i64 %159
  %161 = call i32 @memcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %160, i32 5)
  %162 = icmp eq i32 0, %161
  br i1 %162, label %163, label %174

163:                                              ; preds = %155
  %164 = load i8*, i8** %3, align 8
  %165 = load i32, i32* %6, align 4
  %166 = sub nsw i32 %165, 5
  %167 = call i32 @fts5Porter_MGt0(i8* %164, i32 %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %163
  %170 = load i32, i32* %6, align 4
  %171 = sub nsw i32 %170, 5
  %172 = load i32*, i32** %4, align 8
  store i32 %171, i32* %172, align 4
  br label %173

173:                                              ; preds = %169, %163
  br label %174

174:                                              ; preds = %173, %155, %152
  br label %205

175:                                              ; preds = %2
  %176 = load i32, i32* %6, align 4
  %177 = icmp sgt i32 %176, 5
  br i1 %177, label %178, label %204

178:                                              ; preds = %175
  %179 = load i8*, i8** %3, align 8
  %180 = load i32, i32* %6, align 4
  %181 = sub nsw i32 %180, 5
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %179, i64 %182
  %184 = call i32 @memcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %183, i32 5)
  %185 = icmp eq i32 0, %184
  br i1 %185, label %186, label %204

186:                                              ; preds = %178
  %187 = load i8*, i8** %3, align 8
  %188 = load i32, i32* %6, align 4
  %189 = sub nsw i32 %188, 5
  %190 = call i32 @fts5Porter_MGt0(i8* %187, i32 %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %203

192:                                              ; preds = %186
  %193 = load i8*, i8** %3, align 8
  %194 = load i32, i32* %6, align 4
  %195 = sub nsw i32 %194, 5
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, i8* %193, i64 %196
  %198 = call i32 @memcpy(i8* %197, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 2)
  %199 = load i32, i32* %6, align 4
  %200 = sub nsw i32 %199, 5
  %201 = add nsw i32 %200, 2
  %202 = load i32*, i32** %4, align 8
  store i32 %201, i32* %202, align 4
  br label %203

203:                                              ; preds = %192, %186
  br label %204

204:                                              ; preds = %203, %178, %175
  br label %205

205:                                              ; preds = %2, %204, %174, %151, %128, %68, %45
  %206 = load i32, i32* %5, align 4
  ret i32 %206
}

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @fts5Porter_MGt0(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
