; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2_porter.c_porter_stemmer.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2_porter.c_porter_stemmer.c"
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
  %11 = alloca i32, align 4
  %12 = alloca [28 x i8], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 3
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp uge i64 %19, 21
  br i1 %20, label %21, label %27

21:                                               ; preds = %17, %4
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @copy_stemmer(i8* %22, i32 %23, i8* %24, i32* %25)
  br label %622

27:                                               ; preds = %17
  store i32 0, i32* %9, align 4
  store i32 22, i32* %10, align 4
  br label %28

28:                                               ; preds = %72, %27
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %77

32:                                               ; preds = %28
  %33 = load i8*, i8** %5, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp sge i32 %39, 65
  br i1 %40, label %41, label %52

41:                                               ; preds = %32
  %42 = load i32, i32* %11, align 4
  %43 = icmp sle i32 %42, 90
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, 97
  %47 = sub nsw i32 %46, 65
  %48 = trunc i32 %47 to i8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [28 x i8], [28 x i8]* %12, i64 0, i64 %50
  store i8 %48, i8* %51, align 1
  br label %71

52:                                               ; preds = %41, %32
  %53 = load i32, i32* %11, align 4
  %54 = icmp sge i32 %53, 97
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = load i32, i32* %11, align 4
  %57 = icmp sle i32 %56, 122
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load i32, i32* %11, align 4
  %60 = trunc i32 %59 to i8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [28 x i8], [28 x i8]* %12, i64 0, i64 %62
  store i8 %60, i8* %63, align 1
  br label %70

64:                                               ; preds = %55, %52
  %65 = load i8*, i8** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load i8*, i8** %7, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = call i32 @copy_stemmer(i8* %65, i32 %66, i8* %67, i32* %68)
  br label %622

70:                                               ; preds = %58
  br label %71

71:                                               ; preds = %70, %44
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %10, align 4
  br label %28

77:                                               ; preds = %28
  %78 = getelementptr inbounds [28 x i8], [28 x i8]* %12, i64 0, i64 23
  %79 = call i32 @memset(i8* %78, i32 0, i32 5)
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [28 x i8], [28 x i8]* %12, i64 0, i64 %82
  store i8* %83, i8** %13, align 8
  %84 = load i8*, i8** %13, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 0
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 115
  br i1 %88, label %89, label %102

89:                                               ; preds = %77
  %90 = call i64 @stem(i8** %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 (i8*)* null)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %101, label %92

92:                                               ; preds = %89
  %93 = call i64 @stem(i8** %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i64 (i8*)* null)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %92
  %96 = call i64 @stem(i8** %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 (i8*)* null)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = load i8*, i8** %13, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %13, align 8
  br label %101

101:                                              ; preds = %98, %95, %92, %89
  br label %102

102:                                              ; preds = %101, %77
  %103 = load i8*, i8** %13, align 8
  store i8* %103, i8** %14, align 8
  %104 = call i64 @stem(i8** %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i64 (i8*)* @m_gt_0)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  br label %164

107:                                              ; preds = %102
  %108 = call i64 @stem(i8** %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i64 (i8*)* @hasVowel)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %107
  %111 = call i64 @stem(i8** %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i64 (i8*)* @hasVowel)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %163

113:                                              ; preds = %110, %107
  %114 = load i8*, i8** %13, align 8
  %115 = load i8*, i8** %14, align 8
  %116 = icmp ne i8* %114, %115
  br i1 %116, label %117, label %163

117:                                              ; preds = %113
  %118 = call i64 @stem(i8** %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i64 (i8*)* null)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %126, label %120

120:                                              ; preds = %117
  %121 = call i64 @stem(i8** %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 (i8*)* null)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %120
  %124 = call i64 @stem(i8** %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i64 (i8*)* null)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %123, %120, %117
  br label %162

127:                                              ; preds = %123
  %128 = load i8*, i8** %13, align 8
  %129 = call i64 @doubleConsonant(i8* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %149

131:                                              ; preds = %127
  %132 = load i8*, i8** %13, align 8
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp ne i32 %134, 108
  br i1 %135, label %136, label %149

136:                                              ; preds = %131
  %137 = load i8*, i8** %13, align 8
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp ne i32 %139, 115
  br i1 %140, label %141, label %149

141:                                              ; preds = %136
  %142 = load i8*, i8** %13, align 8
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp ne i32 %144, 122
  br i1 %145, label %146, label %149

146:                                              ; preds = %141
  %147 = load i8*, i8** %13, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %13, align 8
  br label %161

149:                                              ; preds = %141, %136, %131, %127
  %150 = load i8*, i8** %13, align 8
  %151 = call i64 @m_eq_1(i8* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %149
  %154 = load i8*, i8** %13, align 8
  %155 = call i64 @star_oh(i8* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %153
  %158 = load i8*, i8** %13, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 -1
  store i8* %159, i8** %13, align 8
  store i8 101, i8* %159, align 1
  br label %160

160:                                              ; preds = %157, %153, %149
  br label %161

161:                                              ; preds = %160, %146
  br label %162

162:                                              ; preds = %161, %126
  br label %163

163:                                              ; preds = %162, %113, %110
  br label %164

164:                                              ; preds = %163, %106
  %165 = load i8*, i8** %13, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 0
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp eq i32 %168, 121
  br i1 %169, label %170, label %178

170:                                              ; preds = %164
  %171 = load i8*, i8** %13, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 1
  %173 = call i64 @hasVowel(i8* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %170
  %176 = load i8*, i8** %13, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 0
  store i8 105, i8* %177, align 1
  br label %178

178:                                              ; preds = %175, %170, %164
  %179 = load i8*, i8** %13, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 1
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  switch i32 %182, label %262 [
    i32 97, label %183
    i32 99, label %192
    i32 101, label %201
    i32 103, label %203
    i32 108, label %205
    i32 111, label %223
    i32 115, label %235
    i32 116, label %250
  ]

183:                                              ; preds = %178
  %184 = call i64 @stem(i8** %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i64 (i8*)* @m_gt_0)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %189, label %186

186:                                              ; preds = %183
  %187 = call i64 @stem(i8** %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i64 (i8*)* @m_gt_0)
  %188 = icmp ne i64 %187, 0
  br label %189

189:                                              ; preds = %186, %183
  %190 = phi i1 [ true, %183 ], [ %188, %186 ]
  %191 = zext i1 %190 to i32
  br label %262

192:                                              ; preds = %178
  %193 = call i64 @stem(i8** %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i64 (i8*)* @m_gt_0)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %198, label %195

195:                                              ; preds = %192
  %196 = call i64 @stem(i8** %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i64 (i8*)* @m_gt_0)
  %197 = icmp ne i64 %196, 0
  br label %198

198:                                              ; preds = %195, %192
  %199 = phi i1 [ true, %192 ], [ %197, %195 ]
  %200 = zext i1 %199 to i32
  br label %262

201:                                              ; preds = %178
  %202 = call i64 @stem(i8** %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i64 (i8*)* @m_gt_0)
  br label %262

203:                                              ; preds = %178
  %204 = call i64 @stem(i8** %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i64 (i8*)* @m_gt_0)
  br label %262

205:                                              ; preds = %178
  %206 = call i64 @stem(i8** %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 (i8*)* @m_gt_0)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %220, label %208

208:                                              ; preds = %205
  %209 = call i64 @stem(i8** %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i64 (i8*)* @m_gt_0)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %220, label %211

211:                                              ; preds = %208
  %212 = call i64 @stem(i8** %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0), i64 (i8*)* @m_gt_0)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %220, label %214

214:                                              ; preds = %211
  %215 = call i64 @stem(i8** %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), i64 (i8*)* @m_gt_0)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %220, label %217

217:                                              ; preds = %214
  %218 = call i64 @stem(i8** %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0), i64 (i8*)* @m_gt_0)
  %219 = icmp ne i64 %218, 0
  br label %220

220:                                              ; preds = %217, %214, %211, %208, %205
  %221 = phi i1 [ true, %214 ], [ true, %211 ], [ true, %208 ], [ true, %205 ], [ %219, %217 ]
  %222 = zext i1 %221 to i32
  br label %262

223:                                              ; preds = %178
  %224 = call i64 @stem(i8** %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i64 (i8*)* @m_gt_0)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %232, label %226

226:                                              ; preds = %223
  %227 = call i64 @stem(i8** %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i64 (i8*)* @m_gt_0)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %232, label %229

229:                                              ; preds = %226
  %230 = call i64 @stem(i8** %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i64 (i8*)* @m_gt_0)
  %231 = icmp ne i64 %230, 0
  br label %232

232:                                              ; preds = %229, %226, %223
  %233 = phi i1 [ true, %226 ], [ true, %223 ], [ %231, %229 ]
  %234 = zext i1 %233 to i32
  br label %262

235:                                              ; preds = %178
  %236 = call i64 @stem(i8** %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i64 (i8*)* @m_gt_0)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %247, label %238

238:                                              ; preds = %235
  %239 = call i64 @stem(i8** %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0), i64 (i8*)* @m_gt_0)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %247, label %241

241:                                              ; preds = %238
  %242 = call i64 @stem(i8** %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i64 0, i64 0), i64 (i8*)* @m_gt_0)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %247, label %244

244:                                              ; preds = %241
  %245 = call i64 @stem(i8** %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0), i64 (i8*)* @m_gt_0)
  %246 = icmp ne i64 %245, 0
  br label %247

247:                                              ; preds = %244, %241, %238, %235
  %248 = phi i1 [ true, %241 ], [ true, %238 ], [ true, %235 ], [ %246, %244 ]
  %249 = zext i1 %248 to i32
  br label %262

250:                                              ; preds = %178
  %251 = call i64 @stem(i8** %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i64 (i8*)* @m_gt_0)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %259, label %253

253:                                              ; preds = %250
  %254 = call i64 @stem(i8** %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0), i64 (i8*)* @m_gt_0)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %259, label %256

256:                                              ; preds = %253
  %257 = call i64 @stem(i8** %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 (i8*)* @m_gt_0)
  %258 = icmp ne i64 %257, 0
  br label %259

259:                                              ; preds = %256, %253, %250
  %260 = phi i1 [ true, %253 ], [ true, %250 ], [ %258, %256 ]
  %261 = zext i1 %260 to i32
  br label %262

262:                                              ; preds = %178, %259, %247, %232, %220, %203, %201, %198, %189
  %263 = load i8*, i8** %13, align 8
  %264 = getelementptr inbounds i8, i8* %263, i64 0
  %265 = load i8, i8* %264, align 1
  %266 = sext i8 %265 to i32
  switch i32 %266, label %292 [
    i32 101, label %267
    i32 105, label %279
    i32 108, label %281
    i32 115, label %290
  ]

267:                                              ; preds = %262
  %268 = call i64 @stem(i8** %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0), i64 (i8*)* @m_gt_0)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %276, label %270

270:                                              ; preds = %267
  %271 = call i64 @stem(i8** %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i64 (i8*)* @m_gt_0)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %276, label %273

273:                                              ; preds = %270
  %274 = call i64 @stem(i8** %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i64 (i8*)* @m_gt_0)
  %275 = icmp ne i64 %274, 0
  br label %276

276:                                              ; preds = %273, %270, %267
  %277 = phi i1 [ true, %270 ], [ true, %267 ], [ %275, %273 ]
  %278 = zext i1 %277 to i32
  br label %292

279:                                              ; preds = %262
  %280 = call i64 @stem(i8** %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0), i64 (i8*)* @m_gt_0)
  br label %292

281:                                              ; preds = %262
  %282 = call i64 @stem(i8** %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0), i64 (i8*)* @m_gt_0)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %287, label %284

284:                                              ; preds = %281
  %285 = call i64 @stem(i8** %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i64 (i8*)* @m_gt_0)
  %286 = icmp ne i64 %285, 0
  br label %287

287:                                              ; preds = %284, %281
  %288 = phi i1 [ true, %281 ], [ %286, %284 ]
  %289 = zext i1 %288 to i32
  br label %292

290:                                              ; preds = %262
  %291 = call i64 @stem(i8** %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i64 (i8*)* @m_gt_0)
  br label %292

292:                                              ; preds = %262, %290, %287, %279, %276
  %293 = load i8*, i8** %13, align 8
  %294 = getelementptr inbounds i8, i8* %293, i64 1
  %295 = load i8, i8* %294, align 1
  %296 = sext i8 %295 to i32
  switch i32 %296, label %553 [
    i32 97, label %297
    i32 99, label %312
    i32 101, label %345
    i32 105, label %360
    i32 108, label %375
    i32 110, label %408
    i32 111, label %450
    i32 115, label %481
    i32 116, label %502
    i32 117, label %511
    i32 118, label %532
    i32 122, label %532
  ]

297:                                              ; preds = %292
  %298 = load i8*, i8** %13, align 8
  %299 = getelementptr inbounds i8, i8* %298, i64 0
  %300 = load i8, i8* %299, align 1
  %301 = sext i8 %300 to i32
  %302 = icmp eq i32 %301, 108
  br i1 %302, label %303, label %311

303:                                              ; preds = %297
  %304 = load i8*, i8** %13, align 8
  %305 = getelementptr inbounds i8, i8* %304, i64 2
  %306 = call i64 @m_gt_1(i8* %305)
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %311

308:                                              ; preds = %303
  %309 = load i8*, i8** %13, align 8
  %310 = getelementptr inbounds i8, i8* %309, i64 2
  store i8* %310, i8** %13, align 8
  br label %311

311:                                              ; preds = %308, %303, %297
  br label %553

312:                                              ; preds = %292
  %313 = load i8*, i8** %13, align 8
  %314 = getelementptr inbounds i8, i8* %313, i64 0
  %315 = load i8, i8* %314, align 1
  %316 = sext i8 %315 to i32
  %317 = icmp eq i32 %316, 101
  br i1 %317, label %318, label %344

318:                                              ; preds = %312
  %319 = load i8*, i8** %13, align 8
  %320 = getelementptr inbounds i8, i8* %319, i64 2
  %321 = load i8, i8* %320, align 1
  %322 = sext i8 %321 to i32
  %323 = icmp eq i32 %322, 110
  br i1 %323, label %324, label %344

324:                                              ; preds = %318
  %325 = load i8*, i8** %13, align 8
  %326 = getelementptr inbounds i8, i8* %325, i64 3
  %327 = load i8, i8* %326, align 1
  %328 = sext i8 %327 to i32
  %329 = icmp eq i32 %328, 97
  br i1 %329, label %336, label %330

330:                                              ; preds = %324
  %331 = load i8*, i8** %13, align 8
  %332 = getelementptr inbounds i8, i8* %331, i64 3
  %333 = load i8, i8* %332, align 1
  %334 = sext i8 %333 to i32
  %335 = icmp eq i32 %334, 101
  br i1 %335, label %336, label %344

336:                                              ; preds = %330, %324
  %337 = load i8*, i8** %13, align 8
  %338 = getelementptr inbounds i8, i8* %337, i64 4
  %339 = call i64 @m_gt_1(i8* %338)
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %344

341:                                              ; preds = %336
  %342 = load i8*, i8** %13, align 8
  %343 = getelementptr inbounds i8, i8* %342, i64 4
  store i8* %343, i8** %13, align 8
  br label %344

344:                                              ; preds = %341, %336, %330, %318, %312
  br label %553

345:                                              ; preds = %292
  %346 = load i8*, i8** %13, align 8
  %347 = getelementptr inbounds i8, i8* %346, i64 0
  %348 = load i8, i8* %347, align 1
  %349 = sext i8 %348 to i32
  %350 = icmp eq i32 %349, 114
  br i1 %350, label %351, label %359

351:                                              ; preds = %345
  %352 = load i8*, i8** %13, align 8
  %353 = getelementptr inbounds i8, i8* %352, i64 2
  %354 = call i64 @m_gt_1(i8* %353)
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %359

356:                                              ; preds = %351
  %357 = load i8*, i8** %13, align 8
  %358 = getelementptr inbounds i8, i8* %357, i64 2
  store i8* %358, i8** %13, align 8
  br label %359

359:                                              ; preds = %356, %351, %345
  br label %553

360:                                              ; preds = %292
  %361 = load i8*, i8** %13, align 8
  %362 = getelementptr inbounds i8, i8* %361, i64 0
  %363 = load i8, i8* %362, align 1
  %364 = sext i8 %363 to i32
  %365 = icmp eq i32 %364, 99
  br i1 %365, label %366, label %374

366:                                              ; preds = %360
  %367 = load i8*, i8** %13, align 8
  %368 = getelementptr inbounds i8, i8* %367, i64 2
  %369 = call i64 @m_gt_1(i8* %368)
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %371, label %374

371:                                              ; preds = %366
  %372 = load i8*, i8** %13, align 8
  %373 = getelementptr inbounds i8, i8* %372, i64 2
  store i8* %373, i8** %13, align 8
  br label %374

374:                                              ; preds = %371, %366, %360
  br label %553

375:                                              ; preds = %292
  %376 = load i8*, i8** %13, align 8
  %377 = getelementptr inbounds i8, i8* %376, i64 0
  %378 = load i8, i8* %377, align 1
  %379 = sext i8 %378 to i32
  %380 = icmp eq i32 %379, 101
  br i1 %380, label %381, label %407

381:                                              ; preds = %375
  %382 = load i8*, i8** %13, align 8
  %383 = getelementptr inbounds i8, i8* %382, i64 2
  %384 = load i8, i8* %383, align 1
  %385 = sext i8 %384 to i32
  %386 = icmp eq i32 %385, 98
  br i1 %386, label %387, label %407

387:                                              ; preds = %381
  %388 = load i8*, i8** %13, align 8
  %389 = getelementptr inbounds i8, i8* %388, i64 3
  %390 = load i8, i8* %389, align 1
  %391 = sext i8 %390 to i32
  %392 = icmp eq i32 %391, 97
  br i1 %392, label %399, label %393

393:                                              ; preds = %387
  %394 = load i8*, i8** %13, align 8
  %395 = getelementptr inbounds i8, i8* %394, i64 3
  %396 = load i8, i8* %395, align 1
  %397 = sext i8 %396 to i32
  %398 = icmp eq i32 %397, 105
  br i1 %398, label %399, label %407

399:                                              ; preds = %393, %387
  %400 = load i8*, i8** %13, align 8
  %401 = getelementptr inbounds i8, i8* %400, i64 4
  %402 = call i64 @m_gt_1(i8* %401)
  %403 = icmp ne i64 %402, 0
  br i1 %403, label %404, label %407

404:                                              ; preds = %399
  %405 = load i8*, i8** %13, align 8
  %406 = getelementptr inbounds i8, i8* %405, i64 4
  store i8* %406, i8** %13, align 8
  br label %407

407:                                              ; preds = %404, %399, %393, %381, %375
  br label %553

408:                                              ; preds = %292
  %409 = load i8*, i8** %13, align 8
  %410 = getelementptr inbounds i8, i8* %409, i64 0
  %411 = load i8, i8* %410, align 1
  %412 = sext i8 %411 to i32
  %413 = icmp eq i32 %412, 116
  br i1 %413, label %414, label %449

414:                                              ; preds = %408
  %415 = load i8*, i8** %13, align 8
  %416 = getelementptr inbounds i8, i8* %415, i64 2
  %417 = load i8, i8* %416, align 1
  %418 = sext i8 %417 to i32
  %419 = icmp eq i32 %418, 97
  br i1 %419, label %420, label %429

420:                                              ; preds = %414
  %421 = load i8*, i8** %13, align 8
  %422 = getelementptr inbounds i8, i8* %421, i64 3
  %423 = call i64 @m_gt_1(i8* %422)
  %424 = icmp ne i64 %423, 0
  br i1 %424, label %425, label %428

425:                                              ; preds = %420
  %426 = load i8*, i8** %13, align 8
  %427 = getelementptr inbounds i8, i8* %426, i64 3
  store i8* %427, i8** %13, align 8
  br label %428

428:                                              ; preds = %425, %420
  br label %448

429:                                              ; preds = %414
  %430 = load i8*, i8** %13, align 8
  %431 = getelementptr inbounds i8, i8* %430, i64 2
  %432 = load i8, i8* %431, align 1
  %433 = sext i8 %432 to i32
  %434 = icmp eq i32 %433, 101
  br i1 %434, label %435, label %447

435:                                              ; preds = %429
  %436 = call i64 @stem(i8** %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i64 (i8*)* @m_gt_1)
  %437 = icmp ne i64 %436, 0
  br i1 %437, label %444, label %438

438:                                              ; preds = %435
  %439 = call i64 @stem(i8** %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i64 (i8*)* @m_gt_1)
  %440 = icmp ne i64 %439, 0
  br i1 %440, label %444, label %441

441:                                              ; preds = %438
  %442 = call i64 @stem(i8** %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i64 (i8*)* @m_gt_1)
  %443 = icmp ne i64 %442, 0
  br label %444

444:                                              ; preds = %441, %438, %435
  %445 = phi i1 [ true, %438 ], [ true, %435 ], [ %443, %441 ]
  %446 = zext i1 %445 to i32
  br label %447

447:                                              ; preds = %444, %429
  br label %448

448:                                              ; preds = %447, %428
  br label %449

449:                                              ; preds = %448, %408
  br label %553

450:                                              ; preds = %292
  %451 = load i8*, i8** %13, align 8
  %452 = getelementptr inbounds i8, i8* %451, i64 0
  %453 = load i8, i8* %452, align 1
  %454 = sext i8 %453 to i32
  %455 = icmp eq i32 %454, 117
  br i1 %455, label %456, label %465

456:                                              ; preds = %450
  %457 = load i8*, i8** %13, align 8
  %458 = getelementptr inbounds i8, i8* %457, i64 2
  %459 = call i64 @m_gt_1(i8* %458)
  %460 = icmp ne i64 %459, 0
  br i1 %460, label %461, label %464

461:                                              ; preds = %456
  %462 = load i8*, i8** %13, align 8
  %463 = getelementptr inbounds i8, i8* %462, i64 2
  store i8* %463, i8** %13, align 8
  br label %464

464:                                              ; preds = %461, %456
  br label %480

465:                                              ; preds = %450
  %466 = load i8*, i8** %13, align 8
  %467 = getelementptr inbounds i8, i8* %466, i64 3
  %468 = load i8, i8* %467, align 1
  %469 = sext i8 %468 to i32
  %470 = icmp eq i32 %469, 115
  br i1 %470, label %477, label %471

471:                                              ; preds = %465
  %472 = load i8*, i8** %13, align 8
  %473 = getelementptr inbounds i8, i8* %472, i64 3
  %474 = load i8, i8* %473, align 1
  %475 = sext i8 %474 to i32
  %476 = icmp eq i32 %475, 116
  br i1 %476, label %477, label %479

477:                                              ; preds = %471, %465
  %478 = call i64 @stem(i8** %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i64 (i8*)* @m_gt_1)
  br label %479

479:                                              ; preds = %477, %471
  br label %480

480:                                              ; preds = %479, %464
  br label %553

481:                                              ; preds = %292
  %482 = load i8*, i8** %13, align 8
  %483 = getelementptr inbounds i8, i8* %482, i64 0
  %484 = load i8, i8* %483, align 1
  %485 = sext i8 %484 to i32
  %486 = icmp eq i32 %485, 109
  br i1 %486, label %487, label %501

487:                                              ; preds = %481
  %488 = load i8*, i8** %13, align 8
  %489 = getelementptr inbounds i8, i8* %488, i64 2
  %490 = load i8, i8* %489, align 1
  %491 = sext i8 %490 to i32
  %492 = icmp eq i32 %491, 105
  br i1 %492, label %493, label %501

493:                                              ; preds = %487
  %494 = load i8*, i8** %13, align 8
  %495 = getelementptr inbounds i8, i8* %494, i64 3
  %496 = call i64 @m_gt_1(i8* %495)
  %497 = icmp ne i64 %496, 0
  br i1 %497, label %498, label %501

498:                                              ; preds = %493
  %499 = load i8*, i8** %13, align 8
  %500 = getelementptr inbounds i8, i8* %499, i64 3
  store i8* %500, i8** %13, align 8
  br label %501

501:                                              ; preds = %498, %493, %487, %481
  br label %553

502:                                              ; preds = %292
  %503 = call i64 @stem(i8** %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i64 (i8*)* @m_gt_1)
  %504 = icmp ne i64 %503, 0
  br i1 %504, label %508, label %505

505:                                              ; preds = %502
  %506 = call i64 @stem(i8** %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i64 (i8*)* @m_gt_1)
  %507 = icmp ne i64 %506, 0
  br label %508

508:                                              ; preds = %505, %502
  %509 = phi i1 [ true, %502 ], [ %507, %505 ]
  %510 = zext i1 %509 to i32
  br label %553

511:                                              ; preds = %292
  %512 = load i8*, i8** %13, align 8
  %513 = getelementptr inbounds i8, i8* %512, i64 0
  %514 = load i8, i8* %513, align 1
  %515 = sext i8 %514 to i32
  %516 = icmp eq i32 %515, 115
  br i1 %516, label %517, label %531

517:                                              ; preds = %511
  %518 = load i8*, i8** %13, align 8
  %519 = getelementptr inbounds i8, i8* %518, i64 2
  %520 = load i8, i8* %519, align 1
  %521 = sext i8 %520 to i32
  %522 = icmp eq i32 %521, 111
  br i1 %522, label %523, label %531

523:                                              ; preds = %517
  %524 = load i8*, i8** %13, align 8
  %525 = getelementptr inbounds i8, i8* %524, i64 3
  %526 = call i64 @m_gt_1(i8* %525)
  %527 = icmp ne i64 %526, 0
  br i1 %527, label %528, label %531

528:                                              ; preds = %523
  %529 = load i8*, i8** %13, align 8
  %530 = getelementptr inbounds i8, i8* %529, i64 3
  store i8* %530, i8** %13, align 8
  br label %531

531:                                              ; preds = %528, %523, %517, %511
  br label %553

532:                                              ; preds = %292, %292
  %533 = load i8*, i8** %13, align 8
  %534 = getelementptr inbounds i8, i8* %533, i64 0
  %535 = load i8, i8* %534, align 1
  %536 = sext i8 %535 to i32
  %537 = icmp eq i32 %536, 101
  br i1 %537, label %538, label %552

538:                                              ; preds = %532
  %539 = load i8*, i8** %13, align 8
  %540 = getelementptr inbounds i8, i8* %539, i64 2
  %541 = load i8, i8* %540, align 1
  %542 = sext i8 %541 to i32
  %543 = icmp eq i32 %542, 105
  br i1 %543, label %544, label %552

544:                                              ; preds = %538
  %545 = load i8*, i8** %13, align 8
  %546 = getelementptr inbounds i8, i8* %545, i64 3
  %547 = call i64 @m_gt_1(i8* %546)
  %548 = icmp ne i64 %547, 0
  br i1 %548, label %549, label %552

549:                                              ; preds = %544
  %550 = load i8*, i8** %13, align 8
  %551 = getelementptr inbounds i8, i8* %550, i64 3
  store i8* %551, i8** %13, align 8
  br label %552

552:                                              ; preds = %549, %544, %538, %532
  br label %553

553:                                              ; preds = %292, %552, %531, %508, %501, %480, %449, %407, %374, %359, %344, %311
  %554 = load i8*, i8** %13, align 8
  %555 = getelementptr inbounds i8, i8* %554, i64 0
  %556 = load i8, i8* %555, align 1
  %557 = sext i8 %556 to i32
  %558 = icmp eq i32 %557, 101
  br i1 %558, label %559, label %582

559:                                              ; preds = %553
  %560 = load i8*, i8** %13, align 8
  %561 = getelementptr inbounds i8, i8* %560, i64 1
  %562 = call i64 @m_gt_1(i8* %561)
  %563 = icmp ne i64 %562, 0
  br i1 %563, label %564, label %567

564:                                              ; preds = %559
  %565 = load i8*, i8** %13, align 8
  %566 = getelementptr inbounds i8, i8* %565, i32 1
  store i8* %566, i8** %13, align 8
  br label %581

567:                                              ; preds = %559
  %568 = load i8*, i8** %13, align 8
  %569 = getelementptr inbounds i8, i8* %568, i64 1
  %570 = call i64 @m_eq_1(i8* %569)
  %571 = icmp ne i64 %570, 0
  br i1 %571, label %572, label %580

572:                                              ; preds = %567
  %573 = load i8*, i8** %13, align 8
  %574 = getelementptr inbounds i8, i8* %573, i64 1
  %575 = call i64 @star_oh(i8* %574)
  %576 = icmp ne i64 %575, 0
  br i1 %576, label %580, label %577

577:                                              ; preds = %572
  %578 = load i8*, i8** %13, align 8
  %579 = getelementptr inbounds i8, i8* %578, i32 1
  store i8* %579, i8** %13, align 8
  br label %580

580:                                              ; preds = %577, %572, %567
  br label %581

581:                                              ; preds = %580, %564
  br label %582

582:                                              ; preds = %581, %553
  %583 = load i8*, i8** %13, align 8
  %584 = call i64 @m_gt_1(i8* %583)
  %585 = icmp ne i64 %584, 0
  br i1 %585, label %586, label %601

586:                                              ; preds = %582
  %587 = load i8*, i8** %13, align 8
  %588 = getelementptr inbounds i8, i8* %587, i64 0
  %589 = load i8, i8* %588, align 1
  %590 = sext i8 %589 to i32
  %591 = icmp eq i32 %590, 108
  br i1 %591, label %592, label %601

592:                                              ; preds = %586
  %593 = load i8*, i8** %13, align 8
  %594 = getelementptr inbounds i8, i8* %593, i64 1
  %595 = load i8, i8* %594, align 1
  %596 = sext i8 %595 to i32
  %597 = icmp eq i32 %596, 108
  br i1 %597, label %598, label %601

598:                                              ; preds = %592
  %599 = load i8*, i8** %13, align 8
  %600 = getelementptr inbounds i8, i8* %599, i32 1
  store i8* %600, i8** %13, align 8
  br label %601

601:                                              ; preds = %598, %592, %586, %582
  %602 = load i8*, i8** %13, align 8
  %603 = call i32 @strlen(i8* %602)
  store i32 %603, i32* %9, align 4
  %604 = load i32*, i32** %8, align 8
  store i32 %603, i32* %604, align 4
  %605 = load i8*, i8** %7, align 8
  %606 = load i32, i32* %9, align 4
  %607 = sext i32 %606 to i64
  %608 = getelementptr inbounds i8, i8* %605, i64 %607
  store i8 0, i8* %608, align 1
  br label %609

609:                                              ; preds = %613, %601
  %610 = load i8*, i8** %13, align 8
  %611 = load i8, i8* %610, align 1
  %612 = icmp ne i8 %611, 0
  br i1 %612, label %613, label %622

613:                                              ; preds = %609
  %614 = load i8*, i8** %13, align 8
  %615 = getelementptr inbounds i8, i8* %614, i32 1
  store i8* %615, i8** %13, align 8
  %616 = load i8, i8* %614, align 1
  %617 = load i8*, i8** %7, align 8
  %618 = load i32, i32* %9, align 4
  %619 = add nsw i32 %618, -1
  store i32 %619, i32* %9, align 4
  %620 = sext i32 %619 to i64
  %621 = getelementptr inbounds i8, i8* %617, i64 %620
  store i8 %616, i8* %621, align 1
  br label %609

622:                                              ; preds = %21, %64, %609
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

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
