; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/Strn/extr_tester.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/Strn/extr_tester.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"world\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"1: result=[%s] should be=[%s]\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"hellowo\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"testing\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"2: overwrote buffer\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c" still\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"3: overwrote buffer\0A\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"4: result=[%s] should be=[%s] len1=%d len2=%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"5: overwrote buffer\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"6: overwrote buffer\0A\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"this is a test\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"7a: fail\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"7b: fail\0A\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"7c: fail\0A\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"7d: fail\0A\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"so is this\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"7e: fail\0A\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"this is a test and so is this\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"7f: fail\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [8 x i8], align 1
  %7 = alloca [32 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca [37 x i8], align 16
  %10 = alloca [23 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %16 = call i8* @Strncpy(i8* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 8)
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i8* @Strncat(i8* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 8)
  store i8* %18, i8** %8, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %21

21:                                               ; preds = %29, %2
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ult i64 %23, 37
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [37 x i8], [37 x i8]* %9, i64 0, i64 %27
  store i8 88, i8* %28, align 1
  br label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %11, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %11, align 4
  br label %21

32:                                               ; preds = %21
  %33 = getelementptr inbounds [37 x i8], [37 x i8]* %9, i64 0, i64 0
  %34 = call i8* @Strncpy(i8* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 35)
  store i8* %34, i8** %8, align 8
  store i32 35, i32* %11, align 4
  br label %35

35:                                               ; preds = %49, %32
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = icmp ult i64 %37, 37
  br i1 %38, label %39, label %52

39:                                               ; preds = %35
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [37 x i8], [37 x i8]* %9, i64 0, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 88
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %52

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %11, align 4
  br label %35

52:                                               ; preds = %46, %35
  store i32 0, i32* %11, align 4
  br label %53

53:                                               ; preds = %61, %52
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = icmp ult i64 %55, 37
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [37 x i8], [37 x i8]* %9, i64 0, i64 %59
  store i8 88, i8* %60, align 1
  br label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %11, align 4
  br label %53

64:                                               ; preds = %53
  %65 = getelementptr inbounds [37 x i8], [37 x i8]* %9, i64 0, i64 0
  %66 = call i8* @Strncpy(i8* %65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 35)
  store i8* %66, i8** %8, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = call i8* @Strncat(i8* %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 35)
  store i8* %68, i8** %8, align 8
  store i32 35, i32* %11, align 4
  br label %69

69:                                               ; preds = %83, %64
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = icmp ult i64 %71, 37
  br i1 %72, label %73, label %86

73:                                               ; preds = %69
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [37 x i8], [37 x i8]* %9, i64 0, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %78, 88
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  br label %86

82:                                               ; preds = %73
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %11, align 4
  br label %69

86:                                               ; preds = %80, %69
  %87 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %88 = call i8* @Strnpcpy(i8* %87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 8)
  store i8* %88, i8** %8, align 8
  %89 = load i8*, i8** %8, align 8
  %90 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %91 = ptrtoint i8* %89 to i64
  %92 = ptrtoint i8* %90 to i64
  %93 = sub i64 %91, %92
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %12, align 4
  %95 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %96 = call i8* @Strnpcat(i8* %95, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 8)
  store i8* %96, i8** %8, align 8
  %97 = load i8*, i8** %8, align 8
  %98 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %99 = ptrtoint i8* %97 to i64
  %100 = ptrtoint i8* %98 to i64
  %101 = sub i64 %99, %100
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %13, align 4
  %103 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* %13, align 4
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0), i8* %103, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %104, i32 %105)
  store i32 0, i32* %11, align 4
  br label %107

107:                                              ; preds = %115, %86
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = icmp ult i64 %109, 37
  br i1 %110, label %111, label %118

111:                                              ; preds = %107
  %112 = load i32, i32* %11, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [37 x i8], [37 x i8]* %9, i64 0, i64 %113
  store i8 88, i8* %114, align 1
  br label %115

115:                                              ; preds = %111
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %11, align 4
  br label %107

118:                                              ; preds = %107
  %119 = getelementptr inbounds [37 x i8], [37 x i8]* %9, i64 0, i64 0
  %120 = call i8* @Strnpcpy(i8* %119, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 35)
  store i8* %120, i8** %8, align 8
  store i32 35, i32* %11, align 4
  br label %121

121:                                              ; preds = %135, %118
  %122 = load i32, i32* %11, align 4
  %123 = sext i32 %122 to i64
  %124 = icmp ult i64 %123, 37
  br i1 %124, label %125, label %138

125:                                              ; preds = %121
  %126 = load i32, i32* %11, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [37 x i8], [37 x i8]* %9, i64 0, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp ne i32 %130, 88
  br i1 %131, label %132, label %134

132:                                              ; preds = %125
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  br label %138

134:                                              ; preds = %125
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %11, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %11, align 4
  br label %121

138:                                              ; preds = %132, %121
  store i32 0, i32* %11, align 4
  br label %139

139:                                              ; preds = %147, %138
  %140 = load i32, i32* %11, align 4
  %141 = sext i32 %140 to i64
  %142 = icmp ult i64 %141, 37
  br i1 %142, label %143, label %150

143:                                              ; preds = %139
  %144 = load i32, i32* %11, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [37 x i8], [37 x i8]* %9, i64 0, i64 %145
  store i8 88, i8* %146, align 1
  br label %147

147:                                              ; preds = %143
  %148 = load i32, i32* %11, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %11, align 4
  br label %139

150:                                              ; preds = %139
  %151 = getelementptr inbounds [37 x i8], [37 x i8]* %9, i64 0, i64 0
  %152 = call i8* @Strnpcpy(i8* %151, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 35)
  store i8* %152, i8** %8, align 8
  %153 = getelementptr inbounds [37 x i8], [37 x i8]* %9, i64 0, i64 0
  %154 = call i8* @Strnpcat(i8* %153, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 35)
  store i8* %154, i8** %8, align 8
  store i32 35, i32* %11, align 4
  br label %155

155:                                              ; preds = %169, %150
  %156 = load i32, i32* %11, align 4
  %157 = sext i32 %156 to i64
  %158 = icmp ult i64 %157, 37
  br i1 %158, label %159, label %172

159:                                              ; preds = %155
  %160 = load i32, i32* %11, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [37 x i8], [37 x i8]* %9, i64 0, i64 %161
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp ne i32 %164, 88
  br i1 %165, label %166, label %168

166:                                              ; preds = %159
  %167 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  br label %172

168:                                              ; preds = %159
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %11, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %11, align 4
  br label %155

172:                                              ; preds = %166, %155
  store i8* null, i8** %14, align 8
  %173 = call i32* (i8**, i8*, i8*, ...) @Dynscat(i8** %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8* null)
  %174 = icmp eq i32* %173, null
  br i1 %174, label %175, label %177

175:                                              ; preds = %172
  %176 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  br label %184

177:                                              ; preds = %172
  %178 = load i8*, i8** %14, align 8
  %179 = call i64 @strcmp(i8* %178, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %177
  %182 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  br label %183

183:                                              ; preds = %181, %177
  br label %184

184:                                              ; preds = %183, %175
  %185 = load i8*, i8** %14, align 8
  %186 = call i32 @free(i8* %185)
  store i8* null, i8** %14, align 8
  %187 = call i32* (i8**, i8*, i8*, ...) @Dynscat(i8** %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8* null)
  %188 = icmp eq i32* %187, null
  br i1 %188, label %189, label %191

189:                                              ; preds = %184
  %190 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  br label %211

191:                                              ; preds = %184
  %192 = load i8*, i8** %14, align 8
  %193 = call i64 @strcmp(i8* %192, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %191
  %196 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  br label %210

197:                                              ; preds = %191
  %198 = call i32* (i8**, i8*, i8*, ...) @Dynscat(i8** %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i32 0)
  %199 = icmp eq i32* %198, null
  br i1 %199, label %200, label %202

200:                                              ; preds = %197
  %201 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0))
  br label %209

202:                                              ; preds = %197
  %203 = load i8*, i8** %14, align 8
  %204 = call i64 @strcmp(i8* %203, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i64 0, i64 0))
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %202
  %207 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0))
  br label %208

208:                                              ; preds = %206, %202
  br label %209

209:                                              ; preds = %208, %200
  br label %210

210:                                              ; preds = %209, %195
  br label %211

211:                                              ; preds = %210, %189
  %212 = load i8*, i8** %14, align 8
  %213 = call i32 @free(i8* %212)
  %214 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i8* @Strncpy(i8*, i8*, i32) #1

declare dso_local i8* @Strncat(i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @Strnpcpy(i8*, i8*, i32) #1

declare dso_local i8* @Strnpcat(i8*, i8*, i32) #1

declare dso_local i32* @Dynscat(i8**, i8*, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
