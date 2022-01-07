; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsrun.c_jsR_defproperty.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsrun.c_jsR_defproperty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64 }
%struct.TYPE_22__ = type { i64, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_17__ }
%struct.TYPE_18__ = type { i32, i64 (%struct.TYPE_20__*, i32, i8*)* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_22__*, %struct.TYPE_22__*, i32 }

@JS_CARRAY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"length\00", align 1
@JS_CSTRING = common dso_local global i64 0, align 8
@JS_CREGEXP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"global\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"ignoreCase\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"multiline\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"lastIndex\00", align 1
@JS_CUSERDATA = common dso_local global i64 0, align 8
@JS_READONLY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"'%s' is read-only\00", align 1
@JS_DONTCONF = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"'%s' is non-configurable\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"'%s' is read-only or non-configurable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, %struct.TYPE_22__*, i8*, i32, i32*, %struct.TYPE_22__*, %struct.TYPE_22__*)* @jsR_defproperty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jsR_defproperty(%struct.TYPE_20__* %0, %struct.TYPE_22__* %1, i8* %2, i32 %3, i32* %4, %struct.TYPE_22__* %5, %struct.TYPE_22__* %6) #0 {
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_22__*, align 8
  %14 = alloca %struct.TYPE_22__*, align 8
  %15 = alloca %struct.TYPE_21__*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %8, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store %struct.TYPE_22__* %5, %struct.TYPE_22__** %13, align 8
  store %struct.TYPE_22__* %6, %struct.TYPE_22__** %14, align 8
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @JS_CARRAY, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %7
  %23 = load i8*, i8** %10, align 8
  %24 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  br label %213

27:                                               ; preds = %22
  br label %123

28:                                               ; preds = %7
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @JS_CSTRING, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %58

34:                                               ; preds = %28
  %35 = load i8*, i8** %10, align 8
  %36 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  br label %213

39:                                               ; preds = %34
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = call i64 @js_isarrayindex(%struct.TYPE_20__* %40, i8* %41, i32* %16)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %39
  %45 = load i32, i32* %16, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = load i32, i32* %16, align 4
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %48, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %213

56:                                               ; preds = %47, %44
  br label %57

57:                                               ; preds = %56, %39
  br label %122

58:                                               ; preds = %28
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @JS_CREGEXP, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %90

64:                                               ; preds = %58
  %65 = load i8*, i8** %10, align 8
  %66 = call i32 @strcmp(i8* %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  br label %213

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8
  %71 = call i32 @strcmp(i8* %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %69
  br label %213

74:                                               ; preds = %69
  %75 = load i8*, i8** %10, align 8
  %76 = call i32 @strcmp(i8* %75, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  br label %213

79:                                               ; preds = %74
  %80 = load i8*, i8** %10, align 8
  %81 = call i32 @strcmp(i8* %80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %79
  br label %213

84:                                               ; preds = %79
  %85 = load i8*, i8** %10, align 8
  %86 = call i32 @strcmp(i8* %85, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %84
  br label %213

89:                                               ; preds = %84
  br label %121

90:                                               ; preds = %58
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @JS_CUSERDATA, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %120

96:                                               ; preds = %90
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 1
  %101 = load i64 (%struct.TYPE_20__*, i32, i8*)*, i64 (%struct.TYPE_20__*, i32, i8*)** %100, align 8
  %102 = icmp ne i64 (%struct.TYPE_20__*, i32, i8*)* %101, null
  br i1 %102, label %103, label %119

103:                                              ; preds = %96
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 1
  %108 = load i64 (%struct.TYPE_20__*, i32, i8*)*, i64 (%struct.TYPE_20__*, i32, i8*)** %107, align 8
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i8*, i8** %10, align 8
  %116 = call i64 %108(%struct.TYPE_20__* %109, i32 %114, i8* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %103
  br label %222

119:                                              ; preds = %103, %96
  br label %120

120:                                              ; preds = %119, %90
  br label %121

121:                                              ; preds = %120, %89
  br label %122

122:                                              ; preds = %121, %57
  br label %123

123:                                              ; preds = %122, %27
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %126 = load i8*, i8** %10, align 8
  %127 = call %struct.TYPE_21__* @jsV_setproperty(%struct.TYPE_20__* %124, %struct.TYPE_22__* %125, i8* %126)
  store %struct.TYPE_21__* %127, %struct.TYPE_21__** %15, align 8
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %129 = icmp ne %struct.TYPE_21__* %128, null
  br i1 %129, label %130, label %212

130:                                              ; preds = %123
  %131 = load i32*, i32** %12, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %156

133:                                              ; preds = %130
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @JS_READONLY, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %145, label %140

140:                                              ; preds = %133
  %141 = load i32*, i32** %12, align 8
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 3
  store i32 %142, i32* %144, align 8
  br label %155

145:                                              ; preds = %133
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %145
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %152 = load i8*, i8** %10, align 8
  %153 = call i32 @js_typeerror(%struct.TYPE_20__* %151, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %152)
  br label %154

154:                                              ; preds = %150, %145
  br label %155

155:                                              ; preds = %154, %140
  br label %156

156:                                              ; preds = %155, %130
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %158 = icmp ne %struct.TYPE_22__* %157, null
  br i1 %158, label %159, label %181

159:                                              ; preds = %156
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %161 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @JS_DONTCONF, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %170, label %166

166:                                              ; preds = %159
  %167 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %169 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %168, i32 0, i32 2
  store %struct.TYPE_22__* %167, %struct.TYPE_22__** %169, align 8
  br label %180

170:                                              ; preds = %159
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %170
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %177 = load i8*, i8** %10, align 8
  %178 = call i32 @js_typeerror(%struct.TYPE_20__* %176, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* %177)
  br label %179

179:                                              ; preds = %175, %170
  br label %180

180:                                              ; preds = %179, %166
  br label %181

181:                                              ; preds = %180, %156
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %183 = icmp ne %struct.TYPE_22__* %182, null
  br i1 %183, label %184, label %206

184:                                              ; preds = %181
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @JS_DONTCONF, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %195, label %191

191:                                              ; preds = %184
  %192 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %193 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %194 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %193, i32 0, i32 1
  store %struct.TYPE_22__* %192, %struct.TYPE_22__** %194, align 8
  br label %205

195:                                              ; preds = %184
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %195
  %201 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %202 = load i8*, i8** %10, align 8
  %203 = call i32 @js_typeerror(%struct.TYPE_20__* %201, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* %202)
  br label %204

204:                                              ; preds = %200, %195
  br label %205

205:                                              ; preds = %204, %191
  br label %206

206:                                              ; preds = %205, %181
  %207 = load i32, i32* %11, align 4
  %208 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %209 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = or i32 %210, %207
  store i32 %211, i32* %209, align 8
  br label %212

212:                                              ; preds = %206, %123
  br label %222

213:                                              ; preds = %88, %83, %78, %73, %68, %55, %38, %26
  %214 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %213
  %219 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %220 = load i8*, i8** %10, align 8
  %221 = call i32 @js_typeerror(%struct.TYPE_20__* %219, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i8* %220)
  br label %222

222:                                              ; preds = %118, %212, %218, %213
  ret void
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @js_isarrayindex(%struct.TYPE_20__*, i8*, i32*) #1

declare dso_local %struct.TYPE_21__* @jsV_setproperty(%struct.TYPE_20__*, %struct.TYPE_22__*, i8*) #1

declare dso_local i32 @js_typeerror(%struct.TYPE_20__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
