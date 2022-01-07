; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsdump.c_pexpi.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsdump.c_pexpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i8*, double, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__* }

@.str = private unnamed_addr constant [5 x i8] c"%.9g\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"delete \00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"void \00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"typeof \00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"++\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"===\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"!==\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c">>>\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"*=\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"/=\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"%=\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"+=\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"-=\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"<<=\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c">>=\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c">>>=\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"&=\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"^=\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"|=\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c" instanceof \00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"new \00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"function \00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"<UNKNOWN>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.TYPE_9__*)* @pexpi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pexpi(i32 %0, i32 %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %6, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %10 = icmp ne %struct.TYPE_9__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  br label %439

12:                                               ; preds = %3
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @prec(i32 %15)
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = call i32 @pc(i8 signext 40)
  store i32 1, i32* %8, align 4
  br label %22

22:                                               ; preds = %20, %12
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %5, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %432 [
    i32 192, label %27
    i32 163, label %32
    i32 147, label %37
    i32 135, label %42
    i32 140, label %47
    i32 130, label %55
    i32 148, label %56
    i32 132, label %58
    i32 167, label %60
    i32 133, label %62
    i32 146, label %64
    i32 190, label %70
    i32 170, label %76
    i32 128, label %81
    i32 131, label %86
    i32 141, label %91
    i32 142, label %96
    i32 143, label %101
    i32 144, label %106
    i32 145, label %111
    i32 150, label %116
    i32 176, label %121
    i32 157, label %126
    i32 156, label %131
    i32 158, label %136
    i32 175, label %141
    i32 174, label %146
    i32 177, label %151
    i32 168, label %156
    i32 151, label %161
    i32 137, label %166
    i32 136, label %171
    i32 155, label %176
    i32 164, label %181
    i32 159, label %186
    i32 165, label %191
    i32 162, label %196
    i32 139, label %201
    i32 138, label %206
    i32 129, label %211
    i32 191, label %216
    i32 134, label %221
    i32 152, label %226
    i32 169, label %231
    i32 153, label %236
    i32 189, label %241
    i32 182, label %246
    i32 184, label %251
    i32 183, label %256
    i32 188, label %261
    i32 179, label %266
    i32 181, label %271
    i32 180, label %276
    i32 178, label %281
    i32 187, label %286
    i32 185, label %291
    i32 186, label %296
    i32 160, label %301
    i32 172, label %313
    i32 171, label %326
    i32 161, label %348
    i32 154, label %360
    i32 173, label %371
    i32 149, label %384
    i32 166, label %398
  ]

27:                                               ; preds = %22
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @ps(i8* %30)
  br label %434

32:                                               ; preds = %22
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @ps(i8* %35)
  br label %434

37:                                               ; preds = %22
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  %40 = load double, double* %39, align 8
  %41 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), double %40)
  br label %434

42:                                               ; preds = %22
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @pstr(i8* %45)
  br label %434

47:                                               ; preds = %22
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 2
  %53 = load double, double* %52, align 8
  %54 = call i32 @pregexp(i8* %50, double %53)
  br label %434

55:                                               ; preds = %22
  br label %434

56:                                               ; preds = %22
  %57 = call i32 @ps(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %434

58:                                               ; preds = %22
  %59 = call i32 @ps(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %434

60:                                               ; preds = %22
  %61 = call i32 @ps(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %434

62:                                               ; preds = %22
  %63 = call i32 @ps(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %434

64:                                               ; preds = %22
  %65 = load i32, i32* %4, align 4
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 5
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = call i32 @pobject(i32 %65, %struct.TYPE_9__* %68)
  br label %434

70:                                               ; preds = %22
  %71 = load i32, i32* %4, align 4
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 5
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = call i32 @parray(i32 %71, %struct.TYPE_9__* %74)
  br label %434

76:                                               ; preds = %22
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %80 = call i32 @puna(i32 %77, i32 %78, %struct.TYPE_9__* %79, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  br label %434

81:                                               ; preds = %22
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* %5, align 4
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %85 = call i32 @puna(i32 %82, i32 %83, %struct.TYPE_9__* %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  br label %434

86:                                               ; preds = %22
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* %5, align 4
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %90 = call i32 @puna(i32 %87, i32 %88, %struct.TYPE_9__* %89, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  br label %434

91:                                               ; preds = %22
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* %5, align 4
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %95 = call i32 @puna(i32 %92, i32 %93, %struct.TYPE_9__* %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  br label %434

96:                                               ; preds = %22
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* %5, align 4
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %100 = call i32 @puna(i32 %97, i32 %98, %struct.TYPE_9__* %99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  br label %434

101:                                              ; preds = %22
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* %5, align 4
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %105 = call i32 @puna(i32 %102, i32 %103, %struct.TYPE_9__* %104, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  br label %434

106:                                              ; preds = %22
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* %5, align 4
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %110 = call i32 @puna(i32 %107, i32 %108, %struct.TYPE_9__* %109, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  br label %434

111:                                              ; preds = %22
  %112 = load i32, i32* %4, align 4
  %113 = load i32, i32* %5, align 4
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %115 = call i32 @puna(i32 %112, i32 %113, %struct.TYPE_9__* %114, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  br label %434

116:                                              ; preds = %22
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* %5, align 4
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %120 = call i32 @puna(i32 %117, i32 %118, %struct.TYPE_9__* %119, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  br label %434

121:                                              ; preds = %22
  %122 = load i32, i32* %4, align 4
  %123 = load i32, i32* %5, align 4
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %125 = call i32 @puna(i32 %122, i32 %123, %struct.TYPE_9__* %124, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  br label %434

126:                                              ; preds = %22
  %127 = load i32, i32* %4, align 4
  %128 = load i32, i32* %5, align 4
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %130 = call i32 @puna(i32 %127, i32 %128, %struct.TYPE_9__* %129, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  br label %434

131:                                              ; preds = %22
  %132 = load i32, i32* %4, align 4
  %133 = load i32, i32* %5, align 4
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %135 = call i32 @pbin(i32 %132, i32 %133, %struct.TYPE_9__* %134, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  br label %434

136:                                              ; preds = %22
  %137 = load i32, i32* %4, align 4
  %138 = load i32, i32* %5, align 4
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %140 = call i32 @pbin(i32 %137, i32 %138, %struct.TYPE_9__* %139, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0))
  br label %434

141:                                              ; preds = %22
  %142 = load i32, i32* %4, align 4
  %143 = load i32, i32* %5, align 4
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %145 = call i32 @pbin(i32 %142, i32 %143, %struct.TYPE_9__* %144, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  br label %434

146:                                              ; preds = %22
  %147 = load i32, i32* %4, align 4
  %148 = load i32, i32* %5, align 4
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %150 = call i32 @pbin(i32 %147, i32 %148, %struct.TYPE_9__* %149, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  br label %434

151:                                              ; preds = %22
  %152 = load i32, i32* %4, align 4
  %153 = load i32, i32* %5, align 4
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %155 = call i32 @pbin(i32 %152, i32 %153, %struct.TYPE_9__* %154, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  br label %434

156:                                              ; preds = %22
  %157 = load i32, i32* %4, align 4
  %158 = load i32, i32* %5, align 4
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %160 = call i32 @pbin(i32 %157, i32 %158, %struct.TYPE_9__* %159, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0))
  br label %434

161:                                              ; preds = %22
  %162 = load i32, i32* %4, align 4
  %163 = load i32, i32* %5, align 4
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %165 = call i32 @pbin(i32 %162, i32 %163, %struct.TYPE_9__* %164, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0))
  br label %434

166:                                              ; preds = %22
  %167 = load i32, i32* %4, align 4
  %168 = load i32, i32* %5, align 4
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %170 = call i32 @pbin(i32 %167, i32 %168, %struct.TYPE_9__* %169, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0))
  br label %434

171:                                              ; preds = %22
  %172 = load i32, i32* %4, align 4
  %173 = load i32, i32* %5, align 4
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %175 = call i32 @pbin(i32 %172, i32 %173, %struct.TYPE_9__* %174, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0))
  br label %434

176:                                              ; preds = %22
  %177 = load i32, i32* %4, align 4
  %178 = load i32, i32* %5, align 4
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %180 = call i32 @pbin(i32 %177, i32 %178, %struct.TYPE_9__* %179, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0))
  br label %434

181:                                              ; preds = %22
  %182 = load i32, i32* %4, align 4
  %183 = load i32, i32* %5, align 4
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %185 = call i32 @pbin(i32 %182, i32 %183, %struct.TYPE_9__* %184, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0))
  br label %434

186:                                              ; preds = %22
  %187 = load i32, i32* %4, align 4
  %188 = load i32, i32* %5, align 4
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %190 = call i32 @pbin(i32 %187, i32 %188, %struct.TYPE_9__* %189, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0))
  br label %434

191:                                              ; preds = %22
  %192 = load i32, i32* %4, align 4
  %193 = load i32, i32* %5, align 4
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %195 = call i32 @pbin(i32 %192, i32 %193, %struct.TYPE_9__* %194, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0))
  br label %434

196:                                              ; preds = %22
  %197 = load i32, i32* %4, align 4
  %198 = load i32, i32* %5, align 4
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %200 = call i32 @pbin(i32 %197, i32 %198, %struct.TYPE_9__* %199, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0))
  br label %434

201:                                              ; preds = %22
  %202 = load i32, i32* %4, align 4
  %203 = load i32, i32* %5, align 4
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %205 = call i32 @pbin(i32 %202, i32 %203, %struct.TYPE_9__* %204, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0))
  br label %434

206:                                              ; preds = %22
  %207 = load i32, i32* %4, align 4
  %208 = load i32, i32* %5, align 4
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %210 = call i32 @pbin(i32 %207, i32 %208, %struct.TYPE_9__* %209, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0))
  br label %434

211:                                              ; preds = %22
  %212 = load i32, i32* %4, align 4
  %213 = load i32, i32* %5, align 4
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %215 = call i32 @pbin(i32 %212, i32 %213, %struct.TYPE_9__* %214, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0))
  br label %434

216:                                              ; preds = %22
  %217 = load i32, i32* %4, align 4
  %218 = load i32, i32* %5, align 4
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %220 = call i32 @pbin(i32 %217, i32 %218, %struct.TYPE_9__* %219, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %434

221:                                              ; preds = %22
  %222 = load i32, i32* %4, align 4
  %223 = load i32, i32* %5, align 4
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %225 = call i32 @pbin(i32 %222, i32 %223, %struct.TYPE_9__* %224, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %434

226:                                              ; preds = %22
  %227 = load i32, i32* %4, align 4
  %228 = load i32, i32* %5, align 4
  %229 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %230 = call i32 @pbin(i32 %227, i32 %228, %struct.TYPE_9__* %229, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0))
  br label %434

231:                                              ; preds = %22
  %232 = load i32, i32* %4, align 4
  %233 = load i32, i32* %5, align 4
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %235 = call i32 @pbin(i32 %232, i32 %233, %struct.TYPE_9__* %234, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0))
  br label %434

236:                                              ; preds = %22
  %237 = load i32, i32* %4, align 4
  %238 = load i32, i32* %5, align 4
  %239 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %240 = call i32 @pbin(i32 %237, i32 %238, %struct.TYPE_9__* %239, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0))
  br label %434

241:                                              ; preds = %22
  %242 = load i32, i32* %4, align 4
  %243 = load i32, i32* %5, align 4
  %244 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %245 = call i32 @pbin(i32 %242, i32 %243, %struct.TYPE_9__* %244, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0))
  br label %434

246:                                              ; preds = %22
  %247 = load i32, i32* %4, align 4
  %248 = load i32, i32* %5, align 4
  %249 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %250 = call i32 @pbin(i32 %247, i32 %248, %struct.TYPE_9__* %249, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0))
  br label %434

251:                                              ; preds = %22
  %252 = load i32, i32* %4, align 4
  %253 = load i32, i32* %5, align 4
  %254 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %255 = call i32 @pbin(i32 %252, i32 %253, %struct.TYPE_9__* %254, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0))
  br label %434

256:                                              ; preds = %22
  %257 = load i32, i32* %4, align 4
  %258 = load i32, i32* %5, align 4
  %259 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %260 = call i32 @pbin(i32 %257, i32 %258, %struct.TYPE_9__* %259, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i64 0, i64 0))
  br label %434

261:                                              ; preds = %22
  %262 = load i32, i32* %4, align 4
  %263 = load i32, i32* %5, align 4
  %264 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %265 = call i32 @pbin(i32 %262, i32 %263, %struct.TYPE_9__* %264, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i64 0, i64 0))
  br label %434

266:                                              ; preds = %22
  %267 = load i32, i32* %4, align 4
  %268 = load i32, i32* %5, align 4
  %269 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %270 = call i32 @pbin(i32 %267, i32 %268, %struct.TYPE_9__* %269, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0))
  br label %434

271:                                              ; preds = %22
  %272 = load i32, i32* %4, align 4
  %273 = load i32, i32* %5, align 4
  %274 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %275 = call i32 @pbin(i32 %272, i32 %273, %struct.TYPE_9__* %274, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i64 0, i64 0))
  br label %434

276:                                              ; preds = %22
  %277 = load i32, i32* %4, align 4
  %278 = load i32, i32* %5, align 4
  %279 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %280 = call i32 @pbin(i32 %277, i32 %278, %struct.TYPE_9__* %279, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i64 0, i64 0))
  br label %434

281:                                              ; preds = %22
  %282 = load i32, i32* %4, align 4
  %283 = load i32, i32* %5, align 4
  %284 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %285 = call i32 @pbin(i32 %282, i32 %283, %struct.TYPE_9__* %284, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0))
  br label %434

286:                                              ; preds = %22
  %287 = load i32, i32* %4, align 4
  %288 = load i32, i32* %5, align 4
  %289 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %290 = call i32 @pbin(i32 %287, i32 %288, %struct.TYPE_9__* %289, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0))
  br label %434

291:                                              ; preds = %22
  %292 = load i32, i32* %4, align 4
  %293 = load i32, i32* %5, align 4
  %294 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %295 = call i32 @pbin(i32 %292, i32 %293, %struct.TYPE_9__* %294, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0))
  br label %434

296:                                              ; preds = %22
  %297 = load i32, i32* %4, align 4
  %298 = load i32, i32* %5, align 4
  %299 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %300 = call i32 @pbin(i32 %297, i32 %298, %struct.TYPE_9__* %299, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0))
  br label %434

301:                                              ; preds = %22
  %302 = load i32, i32* %4, align 4
  %303 = load i32, i32* %5, align 4
  %304 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %305 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %304, i32 0, i32 5
  %306 = load %struct.TYPE_9__*, %struct.TYPE_9__** %305, align 8
  call void @pexpi(i32 %302, i32 %303, %struct.TYPE_9__* %306)
  %307 = call i32 @ps(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i64 0, i64 0))
  %308 = load i32, i32* %4, align 4
  %309 = load i32, i32* %5, align 4
  %310 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %311 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %310, i32 0, i32 4
  %312 = load %struct.TYPE_9__*, %struct.TYPE_9__** %311, align 8
  call void @pexpi(i32 %308, i32 %309, %struct.TYPE_9__* %312)
  br label %434

313:                                              ; preds = %22
  %314 = load i32, i32* %4, align 4
  %315 = load i32, i32* %5, align 4
  %316 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %317 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %316, i32 0, i32 5
  %318 = load %struct.TYPE_9__*, %struct.TYPE_9__** %317, align 8
  call void @pexpi(i32 %314, i32 %315, %struct.TYPE_9__* %318)
  %319 = call i32 @pc(i8 signext 44)
  %320 = call i32 (...) @sp()
  %321 = load i32, i32* %4, align 4
  %322 = load i32, i32* %5, align 4
  %323 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %324 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %323, i32 0, i32 4
  %325 = load %struct.TYPE_9__*, %struct.TYPE_9__** %324, align 8
  call void @pexpi(i32 %321, i32 %322, %struct.TYPE_9__* %325)
  br label %434

326:                                              ; preds = %22
  %327 = load i32, i32* %4, align 4
  %328 = load i32, i32* %5, align 4
  %329 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %330 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %329, i32 0, i32 5
  %331 = load %struct.TYPE_9__*, %struct.TYPE_9__** %330, align 8
  call void @pexpi(i32 %327, i32 %328, %struct.TYPE_9__* %331)
  %332 = call i32 (...) @sp()
  %333 = call i32 @pc(i8 signext 63)
  %334 = call i32 (...) @sp()
  %335 = load i32, i32* %4, align 4
  %336 = load i32, i32* %5, align 4
  %337 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %338 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %337, i32 0, i32 4
  %339 = load %struct.TYPE_9__*, %struct.TYPE_9__** %338, align 8
  call void @pexpi(i32 %335, i32 %336, %struct.TYPE_9__* %339)
  %340 = call i32 (...) @sp()
  %341 = call i32 @pc(i8 signext 58)
  %342 = call i32 (...) @sp()
  %343 = load i32, i32* %4, align 4
  %344 = load i32, i32* %5, align 4
  %345 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %346 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %345, i32 0, i32 3
  %347 = load %struct.TYPE_9__*, %struct.TYPE_9__** %346, align 8
  call void @pexpi(i32 %343, i32 %344, %struct.TYPE_9__* %347)
  br label %434

348:                                              ; preds = %22
  %349 = load i32, i32* %4, align 4
  %350 = load i32, i32* %5, align 4
  %351 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %352 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %351, i32 0, i32 5
  %353 = load %struct.TYPE_9__*, %struct.TYPE_9__** %352, align 8
  call void @pexpi(i32 %349, i32 %350, %struct.TYPE_9__* %353)
  %354 = call i32 @pc(i8 signext 91)
  %355 = load i32, i32* %4, align 4
  %356 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %357 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %356, i32 0, i32 4
  %358 = load %struct.TYPE_9__*, %struct.TYPE_9__** %357, align 8
  call void @pexpi(i32 %355, i32 0, %struct.TYPE_9__* %358)
  %359 = call i32 @pc(i8 signext 93)
  br label %434

360:                                              ; preds = %22
  %361 = load i32, i32* %4, align 4
  %362 = load i32, i32* %5, align 4
  %363 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %364 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %363, i32 0, i32 5
  %365 = load %struct.TYPE_9__*, %struct.TYPE_9__** %364, align 8
  call void @pexpi(i32 %361, i32 %362, %struct.TYPE_9__* %365)
  %366 = call i32 @pc(i8 signext 46)
  %367 = load i32, i32* %4, align 4
  %368 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %369 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %368, i32 0, i32 4
  %370 = load %struct.TYPE_9__*, %struct.TYPE_9__** %369, align 8
  call void @pexpi(i32 %367, i32 0, %struct.TYPE_9__* %370)
  br label %434

371:                                              ; preds = %22
  %372 = load i32, i32* %4, align 4
  %373 = load i32, i32* %5, align 4
  %374 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %375 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %374, i32 0, i32 5
  %376 = load %struct.TYPE_9__*, %struct.TYPE_9__** %375, align 8
  call void @pexpi(i32 %372, i32 %373, %struct.TYPE_9__* %376)
  %377 = call i32 @pc(i8 signext 40)
  %378 = load i32, i32* %4, align 4
  %379 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %380 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %379, i32 0, i32 4
  %381 = load %struct.TYPE_9__*, %struct.TYPE_9__** %380, align 8
  %382 = call i32 @pargs(i32 %378, %struct.TYPE_9__* %381)
  %383 = call i32 @pc(i8 signext 41)
  br label %434

384:                                              ; preds = %22
  %385 = call i32 @ps(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i64 0, i64 0))
  %386 = load i32, i32* %4, align 4
  %387 = load i32, i32* %5, align 4
  %388 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %389 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %388, i32 0, i32 5
  %390 = load %struct.TYPE_9__*, %struct.TYPE_9__** %389, align 8
  call void @pexpi(i32 %386, i32 %387, %struct.TYPE_9__* %390)
  %391 = call i32 @pc(i8 signext 40)
  %392 = load i32, i32* %4, align 4
  %393 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %394 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %393, i32 0, i32 4
  %395 = load %struct.TYPE_9__*, %struct.TYPE_9__** %394, align 8
  %396 = call i32 @pargs(i32 %392, %struct.TYPE_9__* %395)
  %397 = call i32 @pc(i8 signext 41)
  br label %434

398:                                              ; preds = %22
  %399 = load i32, i32* %5, align 4
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %401, label %403

401:                                              ; preds = %398
  %402 = call i32 @pc(i8 signext 40)
  br label %403

403:                                              ; preds = %401, %398
  %404 = call i32 @ps(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i64 0, i64 0))
  %405 = load i32, i32* %4, align 4
  %406 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %407 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %406, i32 0, i32 5
  %408 = load %struct.TYPE_9__*, %struct.TYPE_9__** %407, align 8
  call void @pexpi(i32 %405, i32 0, %struct.TYPE_9__* %408)
  %409 = call i32 @pc(i8 signext 40)
  %410 = load i32, i32* %4, align 4
  %411 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %412 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %411, i32 0, i32 4
  %413 = load %struct.TYPE_9__*, %struct.TYPE_9__** %412, align 8
  %414 = call i32 @pargs(i32 %410, %struct.TYPE_9__* %413)
  %415 = call i32 @pc(i8 signext 41)
  %416 = call i32 (...) @sp()
  %417 = call i32 @pc(i8 signext 123)
  %418 = call i32 (...) @nl()
  %419 = load i32, i32* %4, align 4
  %420 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %421 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %420, i32 0, i32 3
  %422 = load %struct.TYPE_9__*, %struct.TYPE_9__** %421, align 8
  %423 = call i32 @pstmlist(i32 %419, %struct.TYPE_9__* %422)
  %424 = load i32, i32* %4, align 4
  %425 = call i32 @in(i32 %424)
  %426 = call i32 @pc(i8 signext 125)
  %427 = load i32, i32* %5, align 4
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %429, label %431

429:                                              ; preds = %403
  %430 = call i32 @pc(i8 signext 41)
  br label %431

431:                                              ; preds = %429, %403
  br label %434

432:                                              ; preds = %22
  %433 = call i32 @ps(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i64 0, i64 0))
  br label %434

434:                                              ; preds = %432, %431, %384, %371, %360, %348, %326, %313, %301, %296, %291, %286, %281, %276, %271, %266, %261, %256, %251, %246, %241, %236, %231, %226, %221, %216, %211, %206, %201, %196, %191, %186, %181, %176, %171, %166, %161, %156, %151, %146, %141, %136, %131, %126, %121, %116, %111, %106, %101, %96, %91, %86, %81, %76, %70, %64, %62, %60, %58, %56, %55, %47, %42, %37, %32, %27
  %435 = load i32, i32* %8, align 4
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %439

437:                                              ; preds = %434
  %438 = call i32 @pc(i8 signext 41)
  br label %439

439:                                              ; preds = %11, %437, %434
  ret void
}

declare dso_local i32 @prec(i32) #1

declare dso_local i32 @pc(i8 signext) #1

declare dso_local i32 @ps(i8*) #1

declare dso_local i32 @printf(i8*, double) #1

declare dso_local i32 @pstr(i8*) #1

declare dso_local i32 @pregexp(i8*, double) #1

declare dso_local i32 @pobject(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @parray(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @puna(i32, i32, %struct.TYPE_9__*, i8*, i8*) #1

declare dso_local i32 @pbin(i32, i32, %struct.TYPE_9__*, i8*) #1

declare dso_local i32 @sp(...) #1

declare dso_local i32 @pargs(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @nl(...) #1

declare dso_local i32 @pstmlist(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @in(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
