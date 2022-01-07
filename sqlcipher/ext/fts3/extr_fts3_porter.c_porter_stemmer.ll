; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_porter.c_porter_stemmer.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_porter.c_porter_stemmer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"sess\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ss\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"sei\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"dee\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"ee\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"gni\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"de\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"ta\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"ate\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"lb\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"ble\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"zi\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"ize\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"lanoita\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"lanoit\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"tion\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"icne\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"ence\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"icna\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"ance\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"rezi\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"igol\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"ilb\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"illa\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"al\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"iltne\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"ent\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"ile\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"ilsuo\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"ous\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"noitazi\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"noita\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"rota\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"msila\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"ssenevi\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"ive\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"ssenluf\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"ful\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"ssensuo\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"itila\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"itivi\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"itilib\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"etaci\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"ic\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"evita\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"ezila\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"itici\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"laci\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"luf\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"ssen\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"tneme\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"tnem\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"tne\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"noi\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"eta\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"iti\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, i32*)* @porter_stemmer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @porter_stemmer(i8* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [28 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 3
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* %6, align 4
  %19 = icmp sge i32 %18, 21
  br i1 %19, label %20, label %26

20:                                               ; preds = %17, %4
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @copy_stemmer(i8* %21, i32 %22, i8* %23, i32* %24)
  br label %595

26:                                               ; preds = %17
  store i32 0, i32* %9, align 4
  store i32 22, i32* %10, align 4
  br label %27

27:                                               ; preds = %74, %26
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %79

31:                                               ; preds = %27
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8, i8* %35, align 1
  store i8 %36, i8* %14, align 1
  %37 = load i8, i8* %14, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp sge i32 %38, 65
  br i1 %39, label %40, label %53

40:                                               ; preds = %31
  %41 = load i8, i8* %14, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp sle i32 %42, 90
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = load i8, i8* %14, align 1
  %46 = sext i8 %45 to i32
  %47 = add nsw i32 %46, 97
  %48 = sub nsw i32 %47, 65
  %49 = trunc i32 %48 to i8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [28 x i8], [28 x i8]* %11, i64 0, i64 %51
  store i8 %49, i8* %52, align 1
  br label %73

53:                                               ; preds = %40, %31
  %54 = load i8, i8* %14, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp sge i32 %55, 97
  br i1 %56, label %57, label %66

57:                                               ; preds = %53
  %58 = load i8, i8* %14, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp sle i32 %59, 122
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load i8, i8* %14, align 1
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [28 x i8], [28 x i8]* %11, i64 0, i64 %64
  store i8 %62, i8* %65, align 1
  br label %72

66:                                               ; preds = %57, %53
  %67 = load i8*, i8** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load i8*, i8** %7, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = call i32 @copy_stemmer(i8* %67, i32 %68, i8* %69, i32* %70)
  br label %595

72:                                               ; preds = %61
  br label %73

73:                                               ; preds = %72, %44
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %10, align 4
  br label %27

79:                                               ; preds = %27
  %80 = getelementptr inbounds [28 x i8], [28 x i8]* %11, i64 0, i64 23
  %81 = call i32 @memset(i8* %80, i32 0, i32 5)
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [28 x i8], [28 x i8]* %11, i64 0, i64 %84
  store i8* %85, i8** %12, align 8
  %86 = load i8*, i8** %12, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 0
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 115
  br i1 %90, label %91, label %104

91:                                               ; preds = %79
  %92 = call i64 @stem(i8** %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 (i8*)* null)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %103, label %94

94:                                               ; preds = %91
  %95 = call i64 @stem(i8** %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i64 (i8*)* null)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %94
  %98 = call i64 @stem(i8** %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 (i8*)* null)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = load i8*, i8** %12, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %12, align 8
  br label %103

103:                                              ; preds = %100, %97, %94, %91
  br label %104

104:                                              ; preds = %103, %79
  %105 = load i8*, i8** %12, align 8
  store i8* %105, i8** %13, align 8
  %106 = call i64 @stem(i8** %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i64 (i8*)* @m_gt_0)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  br label %166

109:                                              ; preds = %104
  %110 = call i64 @stem(i8** %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i64 (i8*)* @hasVowel)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %109
  %113 = call i64 @stem(i8** %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i64 (i8*)* @hasVowel)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %165

115:                                              ; preds = %112, %109
  %116 = load i8*, i8** %12, align 8
  %117 = load i8*, i8** %13, align 8
  %118 = icmp ne i8* %116, %117
  br i1 %118, label %119, label %165

119:                                              ; preds = %115
  %120 = call i64 @stem(i8** %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i64 (i8*)* null)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %119
  %123 = call i64 @stem(i8** %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 (i8*)* null)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %122
  %126 = call i64 @stem(i8** %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i64 (i8*)* null)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %125, %122, %119
  br label %164

129:                                              ; preds = %125
  %130 = load i8*, i8** %12, align 8
  %131 = call i64 @doubleConsonant(i8* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %151

133:                                              ; preds = %129
  %134 = load i8*, i8** %12, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp ne i32 %136, 108
  br i1 %137, label %138, label %151

138:                                              ; preds = %133
  %139 = load i8*, i8** %12, align 8
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp ne i32 %141, 115
  br i1 %142, label %143, label %151

143:                                              ; preds = %138
  %144 = load i8*, i8** %12, align 8
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp ne i32 %146, 122
  br i1 %147, label %148, label %151

148:                                              ; preds = %143
  %149 = load i8*, i8** %12, align 8
  %150 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %150, i8** %12, align 8
  br label %163

151:                                              ; preds = %143, %138, %133, %129
  %152 = load i8*, i8** %12, align 8
  %153 = call i64 @m_eq_1(i8* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %151
  %156 = load i8*, i8** %12, align 8
  %157 = call i64 @star_oh(i8* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %155
  %160 = load i8*, i8** %12, align 8
  %161 = getelementptr inbounds i8, i8* %160, i32 -1
  store i8* %161, i8** %12, align 8
  store i8 101, i8* %161, align 1
  br label %162

162:                                              ; preds = %159, %155, %151
  br label %163

163:                                              ; preds = %162, %148
  br label %164

164:                                              ; preds = %163, %128
  br label %165

165:                                              ; preds = %164, %115, %112
  br label %166

166:                                              ; preds = %165, %108
  %167 = load i8*, i8** %12, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 0
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp eq i32 %170, 121
  br i1 %171, label %172, label %180

172:                                              ; preds = %166
  %173 = load i8*, i8** %12, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 1
  %175 = call i64 @hasVowel(i8* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %172
  %178 = load i8*, i8** %12, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 0
  store i8 105, i8* %179, align 1
  br label %180

180:                                              ; preds = %177, %172, %166
  %181 = load i8*, i8** %12, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 1
  %183 = load i8, i8* %182, align 1
  %184 = sext i8 %183 to i32
  switch i32 %184, label %246 [
    i32 97, label %185
    i32 99, label %191
    i32 101, label %197
    i32 103, label %199
    i32 108, label %201
    i32 111, label %216
    i32 115, label %225
    i32 116, label %237
  ]

185:                                              ; preds = %180
  %186 = call i64 @stem(i8** %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i64 (i8*)* @m_gt_0)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %190, label %188

188:                                              ; preds = %185
  %189 = call i64 @stem(i8** %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i64 (i8*)* @m_gt_0)
  br label %190

190:                                              ; preds = %188, %185
  br label %246

191:                                              ; preds = %180
  %192 = call i64 @stem(i8** %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i64 (i8*)* @m_gt_0)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %196, label %194

194:                                              ; preds = %191
  %195 = call i64 @stem(i8** %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i64 (i8*)* @m_gt_0)
  br label %196

196:                                              ; preds = %194, %191
  br label %246

197:                                              ; preds = %180
  %198 = call i64 @stem(i8** %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i64 (i8*)* @m_gt_0)
  br label %246

199:                                              ; preds = %180
  %200 = call i64 @stem(i8** %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i64 (i8*)* @m_gt_0)
  br label %246

201:                                              ; preds = %180
  %202 = call i64 @stem(i8** %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 (i8*)* @m_gt_0)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %215, label %204

204:                                              ; preds = %201
  %205 = call i64 @stem(i8** %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i64 (i8*)* @m_gt_0)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %215, label %207

207:                                              ; preds = %204
  %208 = call i64 @stem(i8** %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0), i64 (i8*)* @m_gt_0)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %215, label %210

210:                                              ; preds = %207
  %211 = call i64 @stem(i8** %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), i64 (i8*)* @m_gt_0)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %215, label %213

213:                                              ; preds = %210
  %214 = call i64 @stem(i8** %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0), i64 (i8*)* @m_gt_0)
  br label %215

215:                                              ; preds = %213, %210, %207, %204, %201
  br label %246

216:                                              ; preds = %180
  %217 = call i64 @stem(i8** %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i64 (i8*)* @m_gt_0)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %224, label %219

219:                                              ; preds = %216
  %220 = call i64 @stem(i8** %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i64 (i8*)* @m_gt_0)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %224, label %222

222:                                              ; preds = %219
  %223 = call i64 @stem(i8** %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i64 (i8*)* @m_gt_0)
  br label %224

224:                                              ; preds = %222, %219, %216
  br label %246

225:                                              ; preds = %180
  %226 = call i64 @stem(i8** %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i64 (i8*)* @m_gt_0)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %236, label %228

228:                                              ; preds = %225
  %229 = call i64 @stem(i8** %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0), i64 (i8*)* @m_gt_0)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %236, label %231

231:                                              ; preds = %228
  %232 = call i64 @stem(i8** %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i64 0, i64 0), i64 (i8*)* @m_gt_0)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %236, label %234

234:                                              ; preds = %231
  %235 = call i64 @stem(i8** %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0), i64 (i8*)* @m_gt_0)
  br label %236

236:                                              ; preds = %234, %231, %228, %225
  br label %246

237:                                              ; preds = %180
  %238 = call i64 @stem(i8** %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i64 (i8*)* @m_gt_0)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %245, label %240

240:                                              ; preds = %237
  %241 = call i64 @stem(i8** %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0), i64 (i8*)* @m_gt_0)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %245, label %243

243:                                              ; preds = %240
  %244 = call i64 @stem(i8** %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 (i8*)* @m_gt_0)
  br label %245

245:                                              ; preds = %243, %240, %237
  br label %246

246:                                              ; preds = %180, %245, %236, %224, %215, %199, %197, %196, %190
  %247 = load i8*, i8** %12, align 8
  %248 = getelementptr inbounds i8, i8* %247, i64 0
  %249 = load i8, i8* %248, align 1
  %250 = sext i8 %249 to i32
  switch i32 %250, label %270 [
    i32 101, label %251
    i32 105, label %260
    i32 108, label %262
    i32 115, label %268
  ]

251:                                              ; preds = %246
  %252 = call i64 @stem(i8** %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0), i64 (i8*)* @m_gt_0)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %259, label %254

254:                                              ; preds = %251
  %255 = call i64 @stem(i8** %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i64 (i8*)* @m_gt_0)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %259, label %257

257:                                              ; preds = %254
  %258 = call i64 @stem(i8** %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i64 (i8*)* @m_gt_0)
  br label %259

259:                                              ; preds = %257, %254, %251
  br label %270

260:                                              ; preds = %246
  %261 = call i64 @stem(i8** %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0), i64 (i8*)* @m_gt_0)
  br label %270

262:                                              ; preds = %246
  %263 = call i64 @stem(i8** %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0), i64 (i8*)* @m_gt_0)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %267, label %265

265:                                              ; preds = %262
  %266 = call i64 @stem(i8** %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i64 (i8*)* @m_gt_0)
  br label %267

267:                                              ; preds = %265, %262
  br label %270

268:                                              ; preds = %246
  %269 = call i64 @stem(i8** %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i64 (i8*)* @m_gt_0)
  br label %270

270:                                              ; preds = %246, %268, %267, %260, %259
  %271 = load i8*, i8** %12, align 8
  %272 = getelementptr inbounds i8, i8* %271, i64 1
  %273 = load i8, i8* %272, align 1
  %274 = sext i8 %273 to i32
  switch i32 %274, label %525 [
    i32 97, label %275
    i32 99, label %290
    i32 101, label %323
    i32 105, label %338
    i32 108, label %353
    i32 110, label %386
    i32 111, label %425
    i32 115, label %456
    i32 116, label %477
    i32 117, label %483
    i32 118, label %504
    i32 122, label %504
  ]

275:                                              ; preds = %270
  %276 = load i8*, i8** %12, align 8
  %277 = getelementptr inbounds i8, i8* %276, i64 0
  %278 = load i8, i8* %277, align 1
  %279 = sext i8 %278 to i32
  %280 = icmp eq i32 %279, 108
  br i1 %280, label %281, label %289

281:                                              ; preds = %275
  %282 = load i8*, i8** %12, align 8
  %283 = getelementptr inbounds i8, i8* %282, i64 2
  %284 = call i64 @m_gt_1(i8* %283)
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %289

286:                                              ; preds = %281
  %287 = load i8*, i8** %12, align 8
  %288 = getelementptr inbounds i8, i8* %287, i64 2
  store i8* %288, i8** %12, align 8
  br label %289

289:                                              ; preds = %286, %281, %275
  br label %525

290:                                              ; preds = %270
  %291 = load i8*, i8** %12, align 8
  %292 = getelementptr inbounds i8, i8* %291, i64 0
  %293 = load i8, i8* %292, align 1
  %294 = sext i8 %293 to i32
  %295 = icmp eq i32 %294, 101
  br i1 %295, label %296, label %322

296:                                              ; preds = %290
  %297 = load i8*, i8** %12, align 8
  %298 = getelementptr inbounds i8, i8* %297, i64 2
  %299 = load i8, i8* %298, align 1
  %300 = sext i8 %299 to i32
  %301 = icmp eq i32 %300, 110
  br i1 %301, label %302, label %322

302:                                              ; preds = %296
  %303 = load i8*, i8** %12, align 8
  %304 = getelementptr inbounds i8, i8* %303, i64 3
  %305 = load i8, i8* %304, align 1
  %306 = sext i8 %305 to i32
  %307 = icmp eq i32 %306, 97
  br i1 %307, label %314, label %308

308:                                              ; preds = %302
  %309 = load i8*, i8** %12, align 8
  %310 = getelementptr inbounds i8, i8* %309, i64 3
  %311 = load i8, i8* %310, align 1
  %312 = sext i8 %311 to i32
  %313 = icmp eq i32 %312, 101
  br i1 %313, label %314, label %322

314:                                              ; preds = %308, %302
  %315 = load i8*, i8** %12, align 8
  %316 = getelementptr inbounds i8, i8* %315, i64 4
  %317 = call i64 @m_gt_1(i8* %316)
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %322

319:                                              ; preds = %314
  %320 = load i8*, i8** %12, align 8
  %321 = getelementptr inbounds i8, i8* %320, i64 4
  store i8* %321, i8** %12, align 8
  br label %322

322:                                              ; preds = %319, %314, %308, %296, %290
  br label %525

323:                                              ; preds = %270
  %324 = load i8*, i8** %12, align 8
  %325 = getelementptr inbounds i8, i8* %324, i64 0
  %326 = load i8, i8* %325, align 1
  %327 = sext i8 %326 to i32
  %328 = icmp eq i32 %327, 114
  br i1 %328, label %329, label %337

329:                                              ; preds = %323
  %330 = load i8*, i8** %12, align 8
  %331 = getelementptr inbounds i8, i8* %330, i64 2
  %332 = call i64 @m_gt_1(i8* %331)
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %337

334:                                              ; preds = %329
  %335 = load i8*, i8** %12, align 8
  %336 = getelementptr inbounds i8, i8* %335, i64 2
  store i8* %336, i8** %12, align 8
  br label %337

337:                                              ; preds = %334, %329, %323
  br label %525

338:                                              ; preds = %270
  %339 = load i8*, i8** %12, align 8
  %340 = getelementptr inbounds i8, i8* %339, i64 0
  %341 = load i8, i8* %340, align 1
  %342 = sext i8 %341 to i32
  %343 = icmp eq i32 %342, 99
  br i1 %343, label %344, label %352

344:                                              ; preds = %338
  %345 = load i8*, i8** %12, align 8
  %346 = getelementptr inbounds i8, i8* %345, i64 2
  %347 = call i64 @m_gt_1(i8* %346)
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %349, label %352

349:                                              ; preds = %344
  %350 = load i8*, i8** %12, align 8
  %351 = getelementptr inbounds i8, i8* %350, i64 2
  store i8* %351, i8** %12, align 8
  br label %352

352:                                              ; preds = %349, %344, %338
  br label %525

353:                                              ; preds = %270
  %354 = load i8*, i8** %12, align 8
  %355 = getelementptr inbounds i8, i8* %354, i64 0
  %356 = load i8, i8* %355, align 1
  %357 = sext i8 %356 to i32
  %358 = icmp eq i32 %357, 101
  br i1 %358, label %359, label %385

359:                                              ; preds = %353
  %360 = load i8*, i8** %12, align 8
  %361 = getelementptr inbounds i8, i8* %360, i64 2
  %362 = load i8, i8* %361, align 1
  %363 = sext i8 %362 to i32
  %364 = icmp eq i32 %363, 98
  br i1 %364, label %365, label %385

365:                                              ; preds = %359
  %366 = load i8*, i8** %12, align 8
  %367 = getelementptr inbounds i8, i8* %366, i64 3
  %368 = load i8, i8* %367, align 1
  %369 = sext i8 %368 to i32
  %370 = icmp eq i32 %369, 97
  br i1 %370, label %377, label %371

371:                                              ; preds = %365
  %372 = load i8*, i8** %12, align 8
  %373 = getelementptr inbounds i8, i8* %372, i64 3
  %374 = load i8, i8* %373, align 1
  %375 = sext i8 %374 to i32
  %376 = icmp eq i32 %375, 105
  br i1 %376, label %377, label %385

377:                                              ; preds = %371, %365
  %378 = load i8*, i8** %12, align 8
  %379 = getelementptr inbounds i8, i8* %378, i64 4
  %380 = call i64 @m_gt_1(i8* %379)
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %382, label %385

382:                                              ; preds = %377
  %383 = load i8*, i8** %12, align 8
  %384 = getelementptr inbounds i8, i8* %383, i64 4
  store i8* %384, i8** %12, align 8
  br label %385

385:                                              ; preds = %382, %377, %371, %359, %353
  br label %525

386:                                              ; preds = %270
  %387 = load i8*, i8** %12, align 8
  %388 = getelementptr inbounds i8, i8* %387, i64 0
  %389 = load i8, i8* %388, align 1
  %390 = sext i8 %389 to i32
  %391 = icmp eq i32 %390, 116
  br i1 %391, label %392, label %424

392:                                              ; preds = %386
  %393 = load i8*, i8** %12, align 8
  %394 = getelementptr inbounds i8, i8* %393, i64 2
  %395 = load i8, i8* %394, align 1
  %396 = sext i8 %395 to i32
  %397 = icmp eq i32 %396, 97
  br i1 %397, label %398, label %407

398:                                              ; preds = %392
  %399 = load i8*, i8** %12, align 8
  %400 = getelementptr inbounds i8, i8* %399, i64 3
  %401 = call i64 @m_gt_1(i8* %400)
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %403, label %406

403:                                              ; preds = %398
  %404 = load i8*, i8** %12, align 8
  %405 = getelementptr inbounds i8, i8* %404, i64 3
  store i8* %405, i8** %12, align 8
  br label %406

406:                                              ; preds = %403, %398
  br label %423

407:                                              ; preds = %392
  %408 = load i8*, i8** %12, align 8
  %409 = getelementptr inbounds i8, i8* %408, i64 2
  %410 = load i8, i8* %409, align 1
  %411 = sext i8 %410 to i32
  %412 = icmp eq i32 %411, 101
  br i1 %412, label %413, label %422

413:                                              ; preds = %407
  %414 = call i64 @stem(i8** %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i64 (i8*)* @m_gt_1)
  %415 = icmp ne i64 %414, 0
  br i1 %415, label %421, label %416

416:                                              ; preds = %413
  %417 = call i64 @stem(i8** %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i64 (i8*)* @m_gt_1)
  %418 = icmp ne i64 %417, 0
  br i1 %418, label %421, label %419

419:                                              ; preds = %416
  %420 = call i64 @stem(i8** %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i64 (i8*)* @m_gt_1)
  br label %421

421:                                              ; preds = %419, %416, %413
  br label %422

422:                                              ; preds = %421, %407
  br label %423

423:                                              ; preds = %422, %406
  br label %424

424:                                              ; preds = %423, %386
  br label %525

425:                                              ; preds = %270
  %426 = load i8*, i8** %12, align 8
  %427 = getelementptr inbounds i8, i8* %426, i64 0
  %428 = load i8, i8* %427, align 1
  %429 = sext i8 %428 to i32
  %430 = icmp eq i32 %429, 117
  br i1 %430, label %431, label %440

431:                                              ; preds = %425
  %432 = load i8*, i8** %12, align 8
  %433 = getelementptr inbounds i8, i8* %432, i64 2
  %434 = call i64 @m_gt_1(i8* %433)
  %435 = icmp ne i64 %434, 0
  br i1 %435, label %436, label %439

436:                                              ; preds = %431
  %437 = load i8*, i8** %12, align 8
  %438 = getelementptr inbounds i8, i8* %437, i64 2
  store i8* %438, i8** %12, align 8
  br label %439

439:                                              ; preds = %436, %431
  br label %455

440:                                              ; preds = %425
  %441 = load i8*, i8** %12, align 8
  %442 = getelementptr inbounds i8, i8* %441, i64 3
  %443 = load i8, i8* %442, align 1
  %444 = sext i8 %443 to i32
  %445 = icmp eq i32 %444, 115
  br i1 %445, label %452, label %446

446:                                              ; preds = %440
  %447 = load i8*, i8** %12, align 8
  %448 = getelementptr inbounds i8, i8* %447, i64 3
  %449 = load i8, i8* %448, align 1
  %450 = sext i8 %449 to i32
  %451 = icmp eq i32 %450, 116
  br i1 %451, label %452, label %454

452:                                              ; preds = %446, %440
  %453 = call i64 @stem(i8** %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i64 (i8*)* @m_gt_1)
  br label %454

454:                                              ; preds = %452, %446
  br label %455

455:                                              ; preds = %454, %439
  br label %525

456:                                              ; preds = %270
  %457 = load i8*, i8** %12, align 8
  %458 = getelementptr inbounds i8, i8* %457, i64 0
  %459 = load i8, i8* %458, align 1
  %460 = sext i8 %459 to i32
  %461 = icmp eq i32 %460, 109
  br i1 %461, label %462, label %476

462:                                              ; preds = %456
  %463 = load i8*, i8** %12, align 8
  %464 = getelementptr inbounds i8, i8* %463, i64 2
  %465 = load i8, i8* %464, align 1
  %466 = sext i8 %465 to i32
  %467 = icmp eq i32 %466, 105
  br i1 %467, label %468, label %476

468:                                              ; preds = %462
  %469 = load i8*, i8** %12, align 8
  %470 = getelementptr inbounds i8, i8* %469, i64 3
  %471 = call i64 @m_gt_1(i8* %470)
  %472 = icmp ne i64 %471, 0
  br i1 %472, label %473, label %476

473:                                              ; preds = %468
  %474 = load i8*, i8** %12, align 8
  %475 = getelementptr inbounds i8, i8* %474, i64 3
  store i8* %475, i8** %12, align 8
  br label %476

476:                                              ; preds = %473, %468, %462, %456
  br label %525

477:                                              ; preds = %270
  %478 = call i64 @stem(i8** %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i64 (i8*)* @m_gt_1)
  %479 = icmp ne i64 %478, 0
  br i1 %479, label %482, label %480

480:                                              ; preds = %477
  %481 = call i64 @stem(i8** %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i64 (i8*)* @m_gt_1)
  br label %482

482:                                              ; preds = %480, %477
  br label %525

483:                                              ; preds = %270
  %484 = load i8*, i8** %12, align 8
  %485 = getelementptr inbounds i8, i8* %484, i64 0
  %486 = load i8, i8* %485, align 1
  %487 = sext i8 %486 to i32
  %488 = icmp eq i32 %487, 115
  br i1 %488, label %489, label %503

489:                                              ; preds = %483
  %490 = load i8*, i8** %12, align 8
  %491 = getelementptr inbounds i8, i8* %490, i64 2
  %492 = load i8, i8* %491, align 1
  %493 = sext i8 %492 to i32
  %494 = icmp eq i32 %493, 111
  br i1 %494, label %495, label %503

495:                                              ; preds = %489
  %496 = load i8*, i8** %12, align 8
  %497 = getelementptr inbounds i8, i8* %496, i64 3
  %498 = call i64 @m_gt_1(i8* %497)
  %499 = icmp ne i64 %498, 0
  br i1 %499, label %500, label %503

500:                                              ; preds = %495
  %501 = load i8*, i8** %12, align 8
  %502 = getelementptr inbounds i8, i8* %501, i64 3
  store i8* %502, i8** %12, align 8
  br label %503

503:                                              ; preds = %500, %495, %489, %483
  br label %525

504:                                              ; preds = %270, %270
  %505 = load i8*, i8** %12, align 8
  %506 = getelementptr inbounds i8, i8* %505, i64 0
  %507 = load i8, i8* %506, align 1
  %508 = sext i8 %507 to i32
  %509 = icmp eq i32 %508, 101
  br i1 %509, label %510, label %524

510:                                              ; preds = %504
  %511 = load i8*, i8** %12, align 8
  %512 = getelementptr inbounds i8, i8* %511, i64 2
  %513 = load i8, i8* %512, align 1
  %514 = sext i8 %513 to i32
  %515 = icmp eq i32 %514, 105
  br i1 %515, label %516, label %524

516:                                              ; preds = %510
  %517 = load i8*, i8** %12, align 8
  %518 = getelementptr inbounds i8, i8* %517, i64 3
  %519 = call i64 @m_gt_1(i8* %518)
  %520 = icmp ne i64 %519, 0
  br i1 %520, label %521, label %524

521:                                              ; preds = %516
  %522 = load i8*, i8** %12, align 8
  %523 = getelementptr inbounds i8, i8* %522, i64 3
  store i8* %523, i8** %12, align 8
  br label %524

524:                                              ; preds = %521, %516, %510, %504
  br label %525

525:                                              ; preds = %270, %524, %503, %482, %476, %455, %424, %385, %352, %337, %322, %289
  %526 = load i8*, i8** %12, align 8
  %527 = getelementptr inbounds i8, i8* %526, i64 0
  %528 = load i8, i8* %527, align 1
  %529 = sext i8 %528 to i32
  %530 = icmp eq i32 %529, 101
  br i1 %530, label %531, label %554

531:                                              ; preds = %525
  %532 = load i8*, i8** %12, align 8
  %533 = getelementptr inbounds i8, i8* %532, i64 1
  %534 = call i64 @m_gt_1(i8* %533)
  %535 = icmp ne i64 %534, 0
  br i1 %535, label %536, label %539

536:                                              ; preds = %531
  %537 = load i8*, i8** %12, align 8
  %538 = getelementptr inbounds i8, i8* %537, i32 1
  store i8* %538, i8** %12, align 8
  br label %553

539:                                              ; preds = %531
  %540 = load i8*, i8** %12, align 8
  %541 = getelementptr inbounds i8, i8* %540, i64 1
  %542 = call i64 @m_eq_1(i8* %541)
  %543 = icmp ne i64 %542, 0
  br i1 %543, label %544, label %552

544:                                              ; preds = %539
  %545 = load i8*, i8** %12, align 8
  %546 = getelementptr inbounds i8, i8* %545, i64 1
  %547 = call i64 @star_oh(i8* %546)
  %548 = icmp ne i64 %547, 0
  br i1 %548, label %552, label %549

549:                                              ; preds = %544
  %550 = load i8*, i8** %12, align 8
  %551 = getelementptr inbounds i8, i8* %550, i32 1
  store i8* %551, i8** %12, align 8
  br label %552

552:                                              ; preds = %549, %544, %539
  br label %553

553:                                              ; preds = %552, %536
  br label %554

554:                                              ; preds = %553, %525
  %555 = load i8*, i8** %12, align 8
  %556 = call i64 @m_gt_1(i8* %555)
  %557 = icmp ne i64 %556, 0
  br i1 %557, label %558, label %573

558:                                              ; preds = %554
  %559 = load i8*, i8** %12, align 8
  %560 = getelementptr inbounds i8, i8* %559, i64 0
  %561 = load i8, i8* %560, align 1
  %562 = sext i8 %561 to i32
  %563 = icmp eq i32 %562, 108
  br i1 %563, label %564, label %573

564:                                              ; preds = %558
  %565 = load i8*, i8** %12, align 8
  %566 = getelementptr inbounds i8, i8* %565, i64 1
  %567 = load i8, i8* %566, align 1
  %568 = sext i8 %567 to i32
  %569 = icmp eq i32 %568, 108
  br i1 %569, label %570, label %573

570:                                              ; preds = %564
  %571 = load i8*, i8** %12, align 8
  %572 = getelementptr inbounds i8, i8* %571, i32 1
  store i8* %572, i8** %12, align 8
  br label %573

573:                                              ; preds = %570, %564, %558, %554
  %574 = load i8*, i8** %12, align 8
  %575 = call i64 @strlen(i8* %574)
  %576 = trunc i64 %575 to i32
  store i32 %576, i32* %9, align 4
  %577 = load i32*, i32** %8, align 8
  store i32 %576, i32* %577, align 4
  %578 = load i8*, i8** %7, align 8
  %579 = load i32, i32* %9, align 4
  %580 = sext i32 %579 to i64
  %581 = getelementptr inbounds i8, i8* %578, i64 %580
  store i8 0, i8* %581, align 1
  br label %582

582:                                              ; preds = %586, %573
  %583 = load i8*, i8** %12, align 8
  %584 = load i8, i8* %583, align 1
  %585 = icmp ne i8 %584, 0
  br i1 %585, label %586, label %595

586:                                              ; preds = %582
  %587 = load i8*, i8** %12, align 8
  %588 = getelementptr inbounds i8, i8* %587, i32 1
  store i8* %588, i8** %12, align 8
  %589 = load i8, i8* %587, align 1
  %590 = load i8*, i8** %7, align 8
  %591 = load i32, i32* %9, align 4
  %592 = add nsw i32 %591, -1
  store i32 %592, i32* %9, align 4
  %593 = sext i32 %592 to i64
  %594 = getelementptr inbounds i8, i8* %590, i64 %593
  store i8 %589, i8* %594, align 1
  br label %582

595:                                              ; preds = %20, %66, %582
  ret void
}

declare dso_local i32 @copy_stemmer(i8*, i32, i8*, i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @stem(i8**, i8*, i8*, i64 (i8*)*) #1

declare dso_local i64 @m_gt_0(i8*) #1

declare dso_local i64 @hasVowel(i8*) #1

declare dso_local i64 @doubleConsonant(i8*) #1

declare dso_local i64 @m_eq_1(i8*) #1

declare dso_local i64 @star_oh(i8*) #1

declare dso_local i64 @m_gt_1(i8*) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
