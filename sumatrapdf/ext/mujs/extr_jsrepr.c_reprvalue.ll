; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsrepr.c_reprvalue.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsrepr.c_reprvalue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i32, %struct.TYPE_12__, %struct.TYPE_11__, i32, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_12__ = type { i8*, i32 }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"undefined\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"function \00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"() { [native code] }\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"(new Boolean(\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"))\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"(new Number(\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"(new String(\00", align 1
@JS_REGEXP_G = common dso_local global i32 0, align 4
@JS_REGEXP_I = common dso_local global i32 0, align 4
@JS_REGEXP_M = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"(new Date(\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"(new \00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"Math\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"JSON\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"[iterator \00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"[userdata \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32**)* @reprvalue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reprvalue(i32* %0, i32** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  store i32* %0, i32** %3, align 8
  store i32** %1, i32*** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i64 @js_isundefined(i32* %6, i32 -1)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i32*, i32** %3, align 8
  %11 = load i32**, i32*** %4, align 8
  %12 = call i32 @js_puts(i32* %10, i32** %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %271

13:                                               ; preds = %2
  %14 = load i32*, i32** %3, align 8
  %15 = call i64 @js_isnull(i32* %14, i32 -1)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i32*, i32** %3, align 8
  %19 = load i32**, i32*** %4, align 8
  %20 = call i32 @js_puts(i32* %18, i32** %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %270

21:                                               ; preds = %13
  %22 = load i32*, i32** %3, align 8
  %23 = call i64 @js_isboolean(i32* %22, i32 -1)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = load i32*, i32** %3, align 8
  %27 = load i32**, i32*** %4, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = call i64 @js_toboolean(i32* %28, i32 -1)
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %33 = call i32 @js_puts(i32* %26, i32** %27, i8* %32)
  br label %269

34:                                               ; preds = %21
  %35 = load i32*, i32** %3, align 8
  %36 = call i64 @js_isnumber(i32* %35, i32 -1)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i32*, i32** %3, align 8
  %40 = load i32**, i32*** %4, align 8
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @js_tonumber(i32* %41, i32 -1)
  %43 = call i32 @reprnum(i32* %39, i32** %40, i32 %42)
  br label %268

44:                                               ; preds = %34
  %45 = load i32*, i32** %3, align 8
  %46 = call i64 @js_isstring(i32* %45, i32 -1)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load i32*, i32** %3, align 8
  %50 = load i32**, i32*** %4, align 8
  %51 = load i32*, i32** %3, align 8
  %52 = call i8* @js_tostring(i32* %51, i32 -1)
  %53 = call i32 @reprstr(i32* %49, i32** %50, i8* %52)
  br label %267

54:                                               ; preds = %44
  %55 = load i32*, i32** %3, align 8
  %56 = call i64 @js_isobject(i32* %55, i32 -1)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %266

58:                                               ; preds = %54
  %59 = load i32*, i32** %3, align 8
  %60 = call %struct.TYPE_15__* @js_toobject(i32* %59, i32 -1)
  store %struct.TYPE_15__* %60, %struct.TYPE_15__** %5, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  switch i32 %63, label %64 [
    i32 141, label %68
    i32 136, label %72
    i32 130, label %72
    i32 139, label %81
    i32 140, label %96
    i32 132, label %113
    i32 129, label %127
    i32 131, label %142
    i32 138, label %196
    i32 137, label %210
    i32 133, label %238
    i32 134, label %242
    i32 135, label %246
    i32 128, label %250
  ]

64:                                               ; preds = %58
  %65 = load i32*, i32** %3, align 8
  %66 = load i32**, i32*** %4, align 8
  %67 = call i32 @reprobject(i32* %65, i32** %66)
  br label %265

68:                                               ; preds = %58
  %69 = load i32*, i32** %3, align 8
  %70 = load i32**, i32*** %4, align 8
  %71 = call i32 @reprarray(i32* %69, i32** %70)
  br label %265

72:                                               ; preds = %58, %58
  %73 = load i32*, i32** %3, align 8
  %74 = load i32**, i32*** %4, align 8
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 6
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @reprfun(i32* %73, i32** %74, i32 %79)
  br label %265

81:                                               ; preds = %58
  %82 = load i32*, i32** %3, align 8
  %83 = load i32**, i32*** %4, align 8
  %84 = call i32 @js_puts(i32* %82, i32** %83, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %85 = load i32*, i32** %3, align 8
  %86 = load i32**, i32*** %4, align 8
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 5
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @js_puts(i32* %85, i32** %86, i8* %91)
  %93 = load i32*, i32** %3, align 8
  %94 = load i32**, i32*** %4, align 8
  %95 = call i32 @js_puts(i32* %93, i32** %94, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %265

96:                                               ; preds = %58
  %97 = load i32*, i32** %3, align 8
  %98 = load i32**, i32*** %4, align 8
  %99 = call i32 @js_puts(i32* %97, i32** %98, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %100 = load i32*, i32** %3, align 8
  %101 = load i32**, i32*** %4, align 8
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %109 = call i32 @js_puts(i32* %100, i32** %101, i8* %108)
  %110 = load i32*, i32** %3, align 8
  %111 = load i32**, i32*** %4, align 8
  %112 = call i32 @js_puts(i32* %110, i32** %111, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %265

113:                                              ; preds = %58
  %114 = load i32*, i32** %3, align 8
  %115 = load i32**, i32*** %4, align 8
  %116 = call i32 @js_puts(i32* %114, i32** %115, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %117 = load i32*, i32** %3, align 8
  %118 = load i32**, i32*** %4, align 8
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @reprnum(i32* %117, i32** %118, i32 %122)
  %124 = load i32*, i32** %3, align 8
  %125 = load i32**, i32*** %4, align 8
  %126 = call i32 @js_puts(i32* %124, i32** %125, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %265

127:                                              ; preds = %58
  %128 = load i32*, i32** %3, align 8
  %129 = load i32**, i32*** %4, align 8
  %130 = call i32 @js_puts(i32* %128, i32** %129, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %131 = load i32*, i32** %3, align 8
  %132 = load i32**, i32*** %4, align 8
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @reprstr(i32* %131, i32** %132, i8* %137)
  %139 = load i32*, i32** %3, align 8
  %140 = load i32**, i32*** %4, align 8
  %141 = call i32 @js_puts(i32* %139, i32** %140, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %265

142:                                              ; preds = %58
  %143 = load i32*, i32** %3, align 8
  %144 = load i32**, i32*** %4, align 8
  %145 = call i32 @js_putc(i32* %143, i32** %144, i8 signext 47)
  %146 = load i32*, i32** %3, align 8
  %147 = load i32**, i32*** %4, align 8
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 @js_puts(i32* %146, i32** %147, i8* %152)
  %154 = load i32*, i32** %3, align 8
  %155 = load i32**, i32*** %4, align 8
  %156 = call i32 @js_putc(i32* %154, i32** %155, i8 signext 47)
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @JS_REGEXP_G, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %142
  %166 = load i32*, i32** %3, align 8
  %167 = load i32**, i32*** %4, align 8
  %168 = call i32 @js_putc(i32* %166, i32** %167, i8 signext 103)
  br label %169

169:                                              ; preds = %165, %142
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @JS_REGEXP_I, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %169
  %179 = load i32*, i32** %3, align 8
  %180 = load i32**, i32*** %4, align 8
  %181 = call i32 @js_putc(i32* %179, i32** %180, i8 signext 105)
  br label %182

182:                                              ; preds = %178, %169
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @JS_REGEXP_M, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %182
  %192 = load i32*, i32** %3, align 8
  %193 = load i32**, i32*** %4, align 8
  %194 = call i32 @js_putc(i32* %192, i32** %193, i8 signext 109)
  br label %195

195:                                              ; preds = %191, %182
  br label %265

196:                                              ; preds = %58
  %197 = load i32*, i32** %3, align 8
  %198 = load i32**, i32*** %4, align 8
  %199 = call i32 @js_puts(i32* %197, i32** %198, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %200 = load i32*, i32** %3, align 8
  %201 = load i32**, i32*** %4, align 8
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @fmtnum(i32* %200, i32** %201, i32 %205)
  %207 = load i32*, i32** %3, align 8
  %208 = load i32**, i32*** %4, align 8
  %209 = call i32 @js_puts(i32* %207, i32** %208, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %265

210:                                              ; preds = %58
  %211 = load i32*, i32** %3, align 8
  %212 = load i32**, i32*** %4, align 8
  %213 = call i32 @js_puts(i32* %211, i32** %212, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %214 = load i32*, i32** %3, align 8
  %215 = call i32 @js_getproperty(i32* %214, i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %216 = load i32*, i32** %3, align 8
  %217 = load i32**, i32*** %4, align 8
  %218 = load i32*, i32** %3, align 8
  %219 = call i8* @js_tostring(i32* %218, i32 -1)
  %220 = call i32 @js_puts(i32* %216, i32** %217, i8* %219)
  %221 = load i32*, i32** %3, align 8
  %222 = call i32 @js_pop(i32* %221, i32 1)
  %223 = load i32*, i32** %3, align 8
  %224 = load i32**, i32*** %4, align 8
  %225 = call i32 @js_putc(i32* %223, i32** %224, i8 signext 40)
  %226 = load i32*, i32** %3, align 8
  %227 = call i32 @js_getproperty(i32* %226, i32 -1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  %228 = load i32*, i32** %3, align 8
  %229 = load i32**, i32*** %4, align 8
  %230 = load i32*, i32** %3, align 8
  %231 = call i8* @js_tostring(i32* %230, i32 -1)
  %232 = call i32 @reprstr(i32* %228, i32** %229, i8* %231)
  %233 = load i32*, i32** %3, align 8
  %234 = call i32 @js_pop(i32* %233, i32 1)
  %235 = load i32*, i32** %3, align 8
  %236 = load i32**, i32*** %4, align 8
  %237 = call i32 @js_puts(i32* %235, i32** %236, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %265

238:                                              ; preds = %58
  %239 = load i32*, i32** %3, align 8
  %240 = load i32**, i32*** %4, align 8
  %241 = call i32 @js_puts(i32* %239, i32** %240, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  br label %265

242:                                              ; preds = %58
  %243 = load i32*, i32** %3, align 8
  %244 = load i32**, i32*** %4, align 8
  %245 = call i32 @js_puts(i32* %243, i32** %244, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  br label %265

246:                                              ; preds = %58
  %247 = load i32*, i32** %3, align 8
  %248 = load i32**, i32*** %4, align 8
  %249 = call i32 @js_puts(i32* %247, i32** %248, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0))
  br label %265

250:                                              ; preds = %58
  %251 = load i32*, i32** %3, align 8
  %252 = load i32**, i32*** %4, align 8
  %253 = call i32 @js_puts(i32* %251, i32** %252, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0))
  %254 = load i32*, i32** %3, align 8
  %255 = load i32**, i32*** %4, align 8
  %256 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %258, i32 0, i32 0
  %260 = load i8*, i8** %259, align 8
  %261 = call i32 @js_puts(i32* %254, i32** %255, i8* %260)
  %262 = load i32*, i32** %3, align 8
  %263 = load i32**, i32*** %4, align 8
  %264 = call i32 @js_putc(i32* %262, i32** %263, i8 signext 93)
  br label %265

265:                                              ; preds = %250, %246, %242, %238, %210, %196, %195, %127, %113, %96, %81, %72, %68, %64
  br label %266

266:                                              ; preds = %265, %54
  br label %267

267:                                              ; preds = %266, %48
  br label %268

268:                                              ; preds = %267, %38
  br label %269

269:                                              ; preds = %268, %25
  br label %270

270:                                              ; preds = %269, %17
  br label %271

271:                                              ; preds = %270, %9
  ret void
}

declare dso_local i64 @js_isundefined(i32*, i32) #1

declare dso_local i32 @js_puts(i32*, i32**, i8*) #1

declare dso_local i64 @js_isnull(i32*, i32) #1

declare dso_local i64 @js_isboolean(i32*, i32) #1

declare dso_local i64 @js_toboolean(i32*, i32) #1

declare dso_local i64 @js_isnumber(i32*, i32) #1

declare dso_local i32 @reprnum(i32*, i32**, i32) #1

declare dso_local i32 @js_tonumber(i32*, i32) #1

declare dso_local i64 @js_isstring(i32*, i32) #1

declare dso_local i32 @reprstr(i32*, i32**, i8*) #1

declare dso_local i8* @js_tostring(i32*, i32) #1

declare dso_local i64 @js_isobject(i32*, i32) #1

declare dso_local %struct.TYPE_15__* @js_toobject(i32*, i32) #1

declare dso_local i32 @reprobject(i32*, i32**) #1

declare dso_local i32 @reprarray(i32*, i32**) #1

declare dso_local i32 @reprfun(i32*, i32**, i32) #1

declare dso_local i32 @js_putc(i32*, i32**, i8 signext) #1

declare dso_local i32 @fmtnum(i32*, i32**, i32) #1

declare dso_local i32 @js_getproperty(i32*, i32, i8*) #1

declare dso_local i32 @js_pop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
