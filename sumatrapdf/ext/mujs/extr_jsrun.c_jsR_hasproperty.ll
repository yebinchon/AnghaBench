; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsrun.c_jsR_hasproperty.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsrun.c_jsR_hasproperty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { i32, i64 (i32*, i32, i8*)* }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_18__* }

@JS_CARRAY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"length\00", align 1
@JS_CSTRING = common dso_local global i64 0, align 8
@JS_CREGEXP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"global\00", align 1
@JS_REGEXP_G = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"ignoreCase\00", align 1
@JS_REGEXP_I = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"multiline\00", align 1
@JS_REGEXP_M = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"lastIndex\00", align 1
@JS_CUSERDATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_18__*, i8*)* @jsR_hasproperty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jsR_hasproperty(i32* %0, %struct.TYPE_18__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @JS_CARRAY, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %3
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %15
  %20 = load i32*, i32** %5, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @js_pushnumber(i32* %20, i32 %25)
  store i32 1, i32* %4, align 4
  br label %212

27:                                               ; preds = %15
  br label %181

28:                                               ; preds = %3
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @JS_CSTRING, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %75

34:                                               ; preds = %28
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %34
  %39 = load i32*, i32** %5, align 8
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @js_pushnumber(i32* %39, i32 %44)
  store i32 1, i32* %4, align 4
  br label %212

46:                                               ; preds = %34
  %47 = load i32*, i32** %5, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = call i64 @js_isarrayindex(i32* %47, i8* %48, i32* %9)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %74

51:                                               ; preds = %46
  %52 = load i32, i32* %9, align 4
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %73

54:                                               ; preds = %51
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %55, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %54
  %63 = load i32*, i32** %5, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @js_runeat(i32* %64, i32 %69, i32 %70)
  %72 = call i32 @js_pushrune(i32* %63, i32 %71)
  store i32 1, i32* %4, align 4
  br label %212

73:                                               ; preds = %54, %51
  br label %74

74:                                               ; preds = %73, %46
  br label %180

75:                                               ; preds = %28
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @JS_CREGEXP, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %148

81:                                               ; preds = %75
  %82 = load i8*, i8** %7, align 8
  %83 = call i32 @strcmp(i8* %82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %93, label %85

85:                                               ; preds = %81
  %86 = load i32*, i32** %5, align 8
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @js_pushliteral(i32* %86, i32 %91)
  store i32 1, i32* %4, align 4
  br label %212

93:                                               ; preds = %81
  %94 = load i8*, i8** %7, align 8
  %95 = call i32 @strcmp(i8* %94, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %107, label %97

97:                                               ; preds = %93
  %98 = load i32*, i32** %5, align 8
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @JS_REGEXP_G, align 4
  %105 = and i32 %103, %104
  %106 = call i32 @js_pushboolean(i32* %98, i32 %105)
  store i32 1, i32* %4, align 4
  br label %212

107:                                              ; preds = %93
  %108 = load i8*, i8** %7, align 8
  %109 = call i32 @strcmp(i8* %108, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %121, label %111

111:                                              ; preds = %107
  %112 = load i32*, i32** %5, align 8
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @JS_REGEXP_I, align 4
  %119 = and i32 %117, %118
  %120 = call i32 @js_pushboolean(i32* %112, i32 %119)
  store i32 1, i32* %4, align 4
  br label %212

121:                                              ; preds = %107
  %122 = load i8*, i8** %7, align 8
  %123 = call i32 @strcmp(i8* %122, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %135, label %125

125:                                              ; preds = %121
  %126 = load i32*, i32** %5, align 8
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @JS_REGEXP_M, align 4
  %133 = and i32 %131, %132
  %134 = call i32 @js_pushboolean(i32* %126, i32 %133)
  store i32 1, i32* %4, align 4
  br label %212

135:                                              ; preds = %121
  %136 = load i8*, i8** %7, align 8
  %137 = call i32 @strcmp(i8* %136, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %147, label %139

139:                                              ; preds = %135
  %140 = load i32*, i32** %5, align 8
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @js_pushnumber(i32* %140, i32 %145)
  store i32 1, i32* %4, align 4
  br label %212

147:                                              ; preds = %135
  br label %179

148:                                              ; preds = %75
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @JS_CUSERDATA, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %178

154:                                              ; preds = %148
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 1
  %159 = load i64 (i32*, i32, i8*)*, i64 (i32*, i32, i8*)** %158, align 8
  %160 = icmp ne i64 (i32*, i32, i8*)* %159, null
  br i1 %160, label %161, label %177

161:                                              ; preds = %154
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 1
  %166 = load i64 (i32*, i32, i8*)*, i64 (i32*, i32, i8*)** %165, align 8
  %167 = load i32*, i32** %5, align 8
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i8*, i8** %7, align 8
  %174 = call i64 %166(i32* %167, i32 %172, i8* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %161
  store i32 1, i32* %4, align 4
  br label %212

177:                                              ; preds = %161, %154
  br label %178

178:                                              ; preds = %177, %148
  br label %179

179:                                              ; preds = %178, %147
  br label %180

180:                                              ; preds = %179, %74
  br label %181

181:                                              ; preds = %180, %27
  %182 = load i32*, i32** %5, align 8
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %184 = load i8*, i8** %7, align 8
  %185 = call %struct.TYPE_17__* @jsV_getproperty(i32* %182, %struct.TYPE_18__* %183, i8* %184)
  store %struct.TYPE_17__* %185, %struct.TYPE_17__** %8, align 8
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %187 = icmp ne %struct.TYPE_17__* %186, null
  br i1 %187, label %188, label %211

188:                                              ; preds = %181
  %189 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %190, align 8
  %192 = icmp ne %struct.TYPE_18__* %191, null
  br i1 %192, label %193, label %204

193:                                              ; preds = %188
  %194 = load i32*, i32** %5, align 8
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %196, align 8
  %198 = call i32 @js_pushobject(i32* %194, %struct.TYPE_18__* %197)
  %199 = load i32*, i32** %5, align 8
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %201 = call i32 @js_pushobject(i32* %199, %struct.TYPE_18__* %200)
  %202 = load i32*, i32** %5, align 8
  %203 = call i32 @js_call(i32* %202, i32 0)
  br label %210

204:                                              ; preds = %188
  %205 = load i32*, i32** %5, align 8
  %206 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @js_pushvalue(i32* %205, i32 %208)
  br label %210

210:                                              ; preds = %204, %193
  store i32 1, i32* %4, align 4
  br label %212

211:                                              ; preds = %181
  store i32 0, i32* %4, align 4
  br label %212

212:                                              ; preds = %211, %210, %176, %139, %125, %111, %97, %85, %62, %38, %19
  %213 = load i32, i32* %4, align 4
  ret i32 %213
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @js_pushnumber(i32*, i32) #1

declare dso_local i64 @js_isarrayindex(i32*, i8*, i32*) #1

declare dso_local i32 @js_pushrune(i32*, i32) #1

declare dso_local i32 @js_runeat(i32*, i32, i32) #1

declare dso_local i32 @js_pushliteral(i32*, i32) #1

declare dso_local i32 @js_pushboolean(i32*, i32) #1

declare dso_local %struct.TYPE_17__* @jsV_getproperty(i32*, %struct.TYPE_18__*, i8*) #1

declare dso_local i32 @js_pushobject(i32*, %struct.TYPE_18__*) #1

declare dso_local i32 @js_call(i32*, i32) #1

declare dso_local i32 @js_pushvalue(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
