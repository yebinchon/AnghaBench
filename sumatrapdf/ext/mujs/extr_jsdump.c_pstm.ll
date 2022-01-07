; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsdump.c_pstm.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsdump.c_pstm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__* }

@STM_BLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"function \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"var \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"do\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"while\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"for\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"(var \00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c" in \00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"continue\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"break\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"with\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"switch\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"throw \00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"try\00", align 1
@minify = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [6 x i8] c"catch\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"finally\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"debugger\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_10__*)* @pstm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pstm(i32 %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @STM_BLOCK, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = call i32 @pblock(i32 %11, %struct.TYPE_10__* %12)
  br label %392

14:                                               ; preds = %2
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @in(i32 %15)
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %387 [
    i32 146, label %20
    i32 141, label %45
    i32 130, label %47
    i32 136, label %55
    i32 142, label %85
    i32 129, label %105
    i32 140, label %120
    i32 137, label %149
    i32 139, label %178
    i32 138, label %199
    i32 144, label %220
    i32 145, label %235
    i32 134, label %250
    i32 128, label %265
    i32 133, label %280
    i32 132, label %301
    i32 131, label %309
    i32 135, label %372
    i32 143, label %384
  ]

20:                                               ; preds = %14
  %21 = call i32 @ps(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = call i32 @pexp(i32 %22, %struct.TYPE_10__* %25)
  %27 = call i32 @pc(i8 signext 40)
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = call i32 @pargs(i32 %28, %struct.TYPE_10__* %31)
  %33 = call i32 @pc(i8 signext 41)
  %34 = call i32 (...) @sp()
  %35 = call i32 @pc(i8 signext 123)
  %36 = call i32 (...) @nl()
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = call i32 @pstmlist(i32 %37, %struct.TYPE_10__* %40)
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @in(i32 %42)
  %44 = call i32 @pc(i8 signext 125)
  br label %392

45:                                               ; preds = %14
  %46 = call i32 @pc(i8 signext 59)
  br label %392

47:                                               ; preds = %14
  %48 = call i32 @ps(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* %3, align 4
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = call i32 @pvarlist(i32 %49, %struct.TYPE_10__* %52)
  %54 = call i32 @pc(i8 signext 59)
  br label %392

55:                                               ; preds = %14
  %56 = call i32 @ps(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %57 = call i32 (...) @sp()
  %58 = call i32 @pc(i8 signext 40)
  %59 = load i32, i32* %3, align 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = call i32 @pexp(i32 %59, %struct.TYPE_10__* %62)
  %64 = call i32 @pc(i8 signext 41)
  %65 = load i32, i32* %3, align 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = call i32 @pstmh(i32 %65, %struct.TYPE_10__* %68)
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 4
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = icmp ne %struct.TYPE_10__* %72, null
  br i1 %73, label %74, label %84

74:                                               ; preds = %55
  %75 = call i32 (...) @nl()
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @in(i32 %76)
  %78 = call i32 @ps(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %79 = load i32, i32* %3, align 4
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 4
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = call i32 @pstmh(i32 %79, %struct.TYPE_10__* %82)
  br label %84

84:                                               ; preds = %74, %55
  br label %392

85:                                               ; preds = %14
  %86 = call i32 @ps(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %87 = load i32, i32* %3, align 4
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = call i32 @pstmh(i32 %87, %struct.TYPE_10__* %90)
  %92 = call i32 (...) @nl()
  %93 = load i32, i32* %3, align 4
  %94 = call i32 @in(i32 %93)
  %95 = call i32 @ps(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %96 = call i32 (...) @sp()
  %97 = call i32 @pc(i8 signext 40)
  %98 = load i32, i32* %3, align 4
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = call i32 @pexp(i32 %98, %struct.TYPE_10__* %101)
  %103 = call i32 @pc(i8 signext 41)
  %104 = call i32 @pc(i8 signext 59)
  br label %392

105:                                              ; preds = %14
  %106 = call i32 @ps(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %107 = call i32 (...) @sp()
  %108 = call i32 @pc(i8 signext 40)
  %109 = load i32, i32* %3, align 4
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = call i32 @pexp(i32 %109, %struct.TYPE_10__* %112)
  %114 = call i32 @pc(i8 signext 41)
  %115 = load i32, i32* %3, align 4
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %117, align 8
  %119 = call i32 @pstmh(i32 %115, %struct.TYPE_10__* %118)
  br label %392

120:                                              ; preds = %14
  %121 = call i32 @ps(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %122 = call i32 (...) @sp()
  %123 = call i32 @pc(i8 signext 40)
  %124 = load i32, i32* %3, align 4
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 2
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %126, align 8
  %128 = call i32 @pexp(i32 %124, %struct.TYPE_10__* %127)
  %129 = call i32 @pc(i8 signext 59)
  %130 = call i32 (...) @sp()
  %131 = load i32, i32* %3, align 4
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %133, align 8
  %135 = call i32 @pexp(i32 %131, %struct.TYPE_10__* %134)
  %136 = call i32 @pc(i8 signext 59)
  %137 = call i32 (...) @sp()
  %138 = load i32, i32* %3, align 4
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 4
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %140, align 8
  %142 = call i32 @pexp(i32 %138, %struct.TYPE_10__* %141)
  %143 = call i32 @pc(i8 signext 41)
  %144 = load i32, i32* %3, align 4
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 3
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %146, align 8
  %148 = call i32 @pstmh(i32 %144, %struct.TYPE_10__* %147)
  br label %392

149:                                              ; preds = %14
  %150 = call i32 @ps(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %151 = call i32 (...) @sp()
  %152 = call i32 @ps(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %153 = load i32, i32* %3, align 4
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 2
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %155, align 8
  %157 = call i32 @pvarlist(i32 %153, %struct.TYPE_10__* %156)
  %158 = call i32 @pc(i8 signext 59)
  %159 = call i32 (...) @sp()
  %160 = load i32, i32* %3, align 4
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %162, align 8
  %164 = call i32 @pexp(i32 %160, %struct.TYPE_10__* %163)
  %165 = call i32 @pc(i8 signext 59)
  %166 = call i32 (...) @sp()
  %167 = load i32, i32* %3, align 4
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 4
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %169, align 8
  %171 = call i32 @pexp(i32 %167, %struct.TYPE_10__* %170)
  %172 = call i32 @pc(i8 signext 41)
  %173 = load i32, i32* %3, align 4
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 3
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %175, align 8
  %177 = call i32 @pstmh(i32 %173, %struct.TYPE_10__* %176)
  br label %392

178:                                              ; preds = %14
  %179 = call i32 @ps(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %180 = call i32 (...) @sp()
  %181 = call i32 @pc(i8 signext 40)
  %182 = load i32, i32* %3, align 4
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 2
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %184, align 8
  %186 = call i32 @pexp(i32 %182, %struct.TYPE_10__* %185)
  %187 = call i32 @ps(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %188 = load i32, i32* %3, align 4
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %190, align 8
  %192 = call i32 @pexp(i32 %188, %struct.TYPE_10__* %191)
  %193 = call i32 @pc(i8 signext 41)
  %194 = load i32, i32* %3, align 4
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 4
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %196, align 8
  %198 = call i32 @pstmh(i32 %194, %struct.TYPE_10__* %197)
  br label %392

199:                                              ; preds = %14
  %200 = call i32 @ps(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %201 = call i32 (...) @sp()
  %202 = call i32 @ps(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %203 = load i32, i32* %3, align 4
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 2
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %205, align 8
  %207 = call i32 @pvarlist(i32 %203, %struct.TYPE_10__* %206)
  %208 = call i32 @ps(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %209 = load i32, i32* %3, align 4
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 1
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %211, align 8
  %213 = call i32 @pexp(i32 %209, %struct.TYPE_10__* %212)
  %214 = call i32 @pc(i8 signext 41)
  %215 = load i32, i32* %3, align 4
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 4
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %217, align 8
  %219 = call i32 @pstmh(i32 %215, %struct.TYPE_10__* %218)
  br label %392

220:                                              ; preds = %14
  %221 = call i32 @ps(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 2
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %223, align 8
  %225 = icmp ne %struct.TYPE_10__* %224, null
  br i1 %225, label %226, label %233

226:                                              ; preds = %220
  %227 = call i32 @pc(i8 signext 32)
  %228 = load i32, i32* %3, align 4
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 2
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %230, align 8
  %232 = call i32 @pexp(i32 %228, %struct.TYPE_10__* %231)
  br label %233

233:                                              ; preds = %226, %220
  %234 = call i32 @pc(i8 signext 59)
  br label %392

235:                                              ; preds = %14
  %236 = call i32 @ps(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 2
  %239 = load %struct.TYPE_10__*, %struct.TYPE_10__** %238, align 8
  %240 = icmp ne %struct.TYPE_10__* %239, null
  br i1 %240, label %241, label %248

241:                                              ; preds = %235
  %242 = call i32 @pc(i8 signext 32)
  %243 = load i32, i32* %3, align 4
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 2
  %246 = load %struct.TYPE_10__*, %struct.TYPE_10__** %245, align 8
  %247 = call i32 @pexp(i32 %243, %struct.TYPE_10__* %246)
  br label %248

248:                                              ; preds = %241, %235
  %249 = call i32 @pc(i8 signext 59)
  br label %392

250:                                              ; preds = %14
  %251 = call i32 @ps(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %252 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 2
  %254 = load %struct.TYPE_10__*, %struct.TYPE_10__** %253, align 8
  %255 = icmp ne %struct.TYPE_10__* %254, null
  br i1 %255, label %256, label %263

256:                                              ; preds = %250
  %257 = call i32 @pc(i8 signext 32)
  %258 = load i32, i32* %3, align 4
  %259 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %259, i32 0, i32 2
  %261 = load %struct.TYPE_10__*, %struct.TYPE_10__** %260, align 8
  %262 = call i32 @pexp(i32 %258, %struct.TYPE_10__* %261)
  br label %263

263:                                              ; preds = %256, %250
  %264 = call i32 @pc(i8 signext 59)
  br label %392

265:                                              ; preds = %14
  %266 = call i32 @ps(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %267 = call i32 (...) @sp()
  %268 = call i32 @pc(i8 signext 40)
  %269 = load i32, i32* %3, align 4
  %270 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i32 0, i32 2
  %272 = load %struct.TYPE_10__*, %struct.TYPE_10__** %271, align 8
  %273 = call i32 @pexp(i32 %269, %struct.TYPE_10__* %272)
  %274 = call i32 @pc(i8 signext 41)
  %275 = load i32, i32* %3, align 4
  %276 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %276, i32 0, i32 1
  %278 = load %struct.TYPE_10__*, %struct.TYPE_10__** %277, align 8
  %279 = call i32 @pstmh(i32 %275, %struct.TYPE_10__* %278)
  br label %392

280:                                              ; preds = %14
  %281 = call i32 @ps(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  %282 = call i32 (...) @sp()
  %283 = call i32 @pc(i8 signext 40)
  %284 = load i32, i32* %3, align 4
  %285 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %286 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %285, i32 0, i32 2
  %287 = load %struct.TYPE_10__*, %struct.TYPE_10__** %286, align 8
  %288 = call i32 @pexp(i32 %284, %struct.TYPE_10__* %287)
  %289 = call i32 @pc(i8 signext 41)
  %290 = call i32 (...) @sp()
  %291 = call i32 @pc(i8 signext 123)
  %292 = call i32 (...) @nl()
  %293 = load i32, i32* %3, align 4
  %294 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %295 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %294, i32 0, i32 1
  %296 = load %struct.TYPE_10__*, %struct.TYPE_10__** %295, align 8
  %297 = call i32 @pcaselist(i32 %293, %struct.TYPE_10__* %296)
  %298 = load i32, i32* %3, align 4
  %299 = call i32 @in(i32 %298)
  %300 = call i32 @pc(i8 signext 125)
  br label %392

301:                                              ; preds = %14
  %302 = call i32 @ps(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  %303 = load i32, i32* %3, align 4
  %304 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %305 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %304, i32 0, i32 2
  %306 = load %struct.TYPE_10__*, %struct.TYPE_10__** %305, align 8
  %307 = call i32 @pexp(i32 %303, %struct.TYPE_10__* %306)
  %308 = call i32 @pc(i8 signext 59)
  br label %392

309:                                              ; preds = %14
  %310 = call i32 @ps(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  %311 = load i32, i32* @minify, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %323

313:                                              ; preds = %309
  %314 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %315 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %314, i32 0, i32 2
  %316 = load %struct.TYPE_10__*, %struct.TYPE_10__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = load i32, i32* @STM_BLOCK, align 4
  %320 = icmp ne i32 %318, %319
  br i1 %320, label %321, label %323

321:                                              ; preds = %313
  %322 = call i32 @pc(i8 signext 32)
  br label %323

323:                                              ; preds = %321, %313, %309
  %324 = load i32, i32* %3, align 4
  %325 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %326 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %325, i32 0, i32 2
  %327 = load %struct.TYPE_10__*, %struct.TYPE_10__** %326, align 8
  %328 = call i32 @pstmh(i32 %324, %struct.TYPE_10__* %327)
  %329 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %330 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %329, i32 0, i32 1
  %331 = load %struct.TYPE_10__*, %struct.TYPE_10__** %330, align 8
  %332 = icmp ne %struct.TYPE_10__* %331, null
  br i1 %332, label %333, label %356

333:                                              ; preds = %323
  %334 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %335 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %334, i32 0, i32 4
  %336 = load %struct.TYPE_10__*, %struct.TYPE_10__** %335, align 8
  %337 = icmp ne %struct.TYPE_10__* %336, null
  br i1 %337, label %338, label %356

338:                                              ; preds = %333
  %339 = call i32 (...) @nl()
  %340 = load i32, i32* %3, align 4
  %341 = call i32 @in(i32 %340)
  %342 = call i32 @ps(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  %343 = call i32 (...) @sp()
  %344 = call i32 @pc(i8 signext 40)
  %345 = load i32, i32* %3, align 4
  %346 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %347 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %346, i32 0, i32 1
  %348 = load %struct.TYPE_10__*, %struct.TYPE_10__** %347, align 8
  %349 = call i32 @pexp(i32 %345, %struct.TYPE_10__* %348)
  %350 = call i32 @pc(i8 signext 41)
  %351 = load i32, i32* %3, align 4
  %352 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %353 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %352, i32 0, i32 4
  %354 = load %struct.TYPE_10__*, %struct.TYPE_10__** %353, align 8
  %355 = call i32 @pstmh(i32 %351, %struct.TYPE_10__* %354)
  br label %356

356:                                              ; preds = %338, %333, %323
  %357 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %358 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %357, i32 0, i32 3
  %359 = load %struct.TYPE_10__*, %struct.TYPE_10__** %358, align 8
  %360 = icmp ne %struct.TYPE_10__* %359, null
  br i1 %360, label %361, label %371

361:                                              ; preds = %356
  %362 = call i32 (...) @nl()
  %363 = load i32, i32* %3, align 4
  %364 = call i32 @in(i32 %363)
  %365 = call i32 @ps(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  %366 = load i32, i32* %3, align 4
  %367 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %368 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %367, i32 0, i32 3
  %369 = load %struct.TYPE_10__*, %struct.TYPE_10__** %368, align 8
  %370 = call i32 @pstmh(i32 %366, %struct.TYPE_10__* %369)
  br label %371

371:                                              ; preds = %361, %356
  br label %392

372:                                              ; preds = %14
  %373 = load i32, i32* %3, align 4
  %374 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %375 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %374, i32 0, i32 2
  %376 = load %struct.TYPE_10__*, %struct.TYPE_10__** %375, align 8
  %377 = call i32 @pexp(i32 %373, %struct.TYPE_10__* %376)
  %378 = call i32 @pc(i8 signext 58)
  %379 = call i32 (...) @sp()
  %380 = load i32, i32* %3, align 4
  %381 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %382 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %381, i32 0, i32 1
  %383 = load %struct.TYPE_10__*, %struct.TYPE_10__** %382, align 8
  call void @pstm(i32 %380, %struct.TYPE_10__* %383)
  br label %392

384:                                              ; preds = %14
  %385 = call i32 @ps(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  %386 = call i32 @pc(i8 signext 59)
  br label %392

387:                                              ; preds = %14
  %388 = load i32, i32* %3, align 4
  %389 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %390 = call i32 @pexp(i32 %388, %struct.TYPE_10__* %389)
  %391 = call i32 @pc(i8 signext 59)
  br label %392

392:                                              ; preds = %10, %387, %384, %372, %371, %301, %280, %265, %263, %248, %233, %199, %178, %149, %120, %105, %85, %84, %47, %45, %20
  ret void
}

declare dso_local i32 @pblock(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @in(i32) #1

declare dso_local i32 @ps(i8*) #1

declare dso_local i32 @pexp(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @pc(i8 signext) #1

declare dso_local i32 @pargs(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @sp(...) #1

declare dso_local i32 @nl(...) #1

declare dso_local i32 @pstmlist(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @pvarlist(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @pstmh(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @pcaselist(i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
