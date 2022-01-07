; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsrun.c_jsR_setproperty.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsrun.c_jsR_setproperty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { i64 }
%struct.TYPE_38__ = type { i64, %struct.TYPE_35__ }
%struct.TYPE_35__ = type { %struct.TYPE_34__, %struct.TYPE_33__, %struct.TYPE_32__, %struct.TYPE_31__ }
%struct.TYPE_34__ = type { i32, i64 (%struct.TYPE_36__*, i32, i8*)* }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_37__ = type { i32, i32, i64, %struct.TYPE_38__* }

@JS_CARRAY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid array length\00", align 1
@JS_CSTRING = common dso_local global i64 0, align 8
@JS_CREGEXP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"global\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"ignoreCase\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"multiline\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"lastIndex\00", align 1
@JS_CUSERDATA = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [45 x i8] c"setting property '%s' that only has a getter\00", align 1
@JS_READONLY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"'%s' is read-only\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_36__*, %struct.TYPE_38__*, i8*)* @jsR_setproperty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jsR_setproperty(%struct.TYPE_36__* %0, %struct.TYPE_38__* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_36__*, align 8
  %5 = alloca %struct.TYPE_38__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_37__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_36__* %0, %struct.TYPE_36__** %4, align 8
  store %struct.TYPE_38__* %1, %struct.TYPE_38__** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %14 = call i32* @stackidx(%struct.TYPE_36__* %13, i32 -1)
  store i32* %14, i32** %7, align 8
  %15 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @JS_CARRAY, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %67

20:                                               ; preds = %3
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %45, label %24

24:                                               ; preds = %20
  %25 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = call double @jsV_tonumber(%struct.TYPE_36__* %25, i32* %26)
  store double %27, double* %11, align 8
  %28 = load double, double* %11, align 8
  %29 = call i32 @jsV_numbertointeger(double %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = sitofp i32 %30 to double
  %32 = load double, double* %11, align 8
  %33 = fcmp une double %31, %32
  br i1 %33, label %37, label %34

34:                                               ; preds = %24
  %35 = load i32, i32* %12, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34, %24
  %38 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %39 = call i32 @js_rangeerror(%struct.TYPE_36__* %38, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %34
  %41 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %42 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @jsV_resizearray(%struct.TYPE_36__* %41, %struct.TYPE_38__* %42, i32 %43)
  br label %253

45:                                               ; preds = %20
  %46 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = call i64 @js_isarrayindex(%struct.TYPE_36__* %46, i8* %47, i32* %9)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %45
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp sge i32 %51, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %50
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  %61 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %63, i32 0, i32 0
  store i32 %60, i32* %64, align 8
  br label %65

65:                                               ; preds = %58, %50
  br label %66

66:                                               ; preds = %65, %45
  br label %169

67:                                               ; preds = %3
  %68 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @JS_CSTRING, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %97

73:                                               ; preds = %67
  %74 = load i8*, i8** %6, align 8
  %75 = call i32 @strcmp(i8* %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %73
  br label %244

78:                                               ; preds = %73
  %79 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = call i64 @js_isarrayindex(%struct.TYPE_36__* %79, i8* %80, i32* %9)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %78
  %84 = load i32, i32* %9, align 4
  %85 = icmp sge i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %83
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %87, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  br label %244

95:                                               ; preds = %86, %83
  br label %96

96:                                               ; preds = %95, %78
  br label %168

97:                                               ; preds = %67
  %98 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @JS_CREGEXP, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %136

103:                                              ; preds = %97
  %104 = load i8*, i8** %6, align 8
  %105 = call i32 @strcmp(i8* %104, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %103
  br label %244

108:                                              ; preds = %103
  %109 = load i8*, i8** %6, align 8
  %110 = call i32 @strcmp(i8* %109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %108
  br label %244

113:                                              ; preds = %108
  %114 = load i8*, i8** %6, align 8
  %115 = call i32 @strcmp(i8* %114, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %113
  br label %244

118:                                              ; preds = %113
  %119 = load i8*, i8** %6, align 8
  %120 = call i32 @strcmp(i8* %119, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %118
  br label %244

123:                                              ; preds = %118
  %124 = load i8*, i8** %6, align 8
  %125 = call i32 @strcmp(i8* %124, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %135, label %127

127:                                              ; preds = %123
  %128 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %129 = load i32*, i32** %7, align 8
  %130 = call i32 @jsV_tointeger(%struct.TYPE_36__* %128, i32* %129)
  %131 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %133, i32 0, i32 0
  store i32 %130, i32* %134, align 8
  br label %253

135:                                              ; preds = %123
  br label %167

136:                                              ; preds = %97
  %137 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @JS_CUSERDATA, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %166

142:                                              ; preds = %136
  %143 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %145, i32 0, i32 1
  %147 = load i64 (%struct.TYPE_36__*, i32, i8*)*, i64 (%struct.TYPE_36__*, i32, i8*)** %146, align 8
  %148 = icmp ne i64 (%struct.TYPE_36__*, i32, i8*)* %147, null
  br i1 %148, label %149, label %165

149:                                              ; preds = %142
  %150 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %152, i32 0, i32 1
  %154 = load i64 (%struct.TYPE_36__*, i32, i8*)*, i64 (%struct.TYPE_36__*, i32, i8*)** %153, align 8
  %155 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %156 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i8*, i8** %6, align 8
  %162 = call i64 %154(%struct.TYPE_36__* %155, i32 %160, i8* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %149
  br label %253

165:                                              ; preds = %149, %142
  br label %166

166:                                              ; preds = %165, %136
  br label %167

167:                                              ; preds = %166, %135
  br label %168

168:                                              ; preds = %167, %96
  br label %169

169:                                              ; preds = %168, %66
  %170 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %171 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %172 = load i8*, i8** %6, align 8
  %173 = call %struct.TYPE_37__* @jsV_getpropertyx(%struct.TYPE_36__* %170, %struct.TYPE_38__* %171, i8* %172, i32* %10)
  store %struct.TYPE_37__* %173, %struct.TYPE_37__** %8, align 8
  %174 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %175 = icmp ne %struct.TYPE_37__* %174, null
  br i1 %175, label %176, label %215

176:                                              ; preds = %169
  %177 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %177, i32 0, i32 3
  %179 = load %struct.TYPE_38__*, %struct.TYPE_38__** %178, align 8
  %180 = icmp ne %struct.TYPE_38__* %179, null
  br i1 %180, label %181, label %198

181:                                              ; preds = %176
  %182 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %183 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %183, i32 0, i32 3
  %185 = load %struct.TYPE_38__*, %struct.TYPE_38__** %184, align 8
  %186 = call i32 @js_pushobject(%struct.TYPE_36__* %182, %struct.TYPE_38__* %185)
  %187 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %188 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %189 = call i32 @js_pushobject(%struct.TYPE_36__* %187, %struct.TYPE_38__* %188)
  %190 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %191 = load i32*, i32** %7, align 8
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @js_pushvalue(%struct.TYPE_36__* %190, i32 %192)
  %194 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %195 = call i32 @js_call(%struct.TYPE_36__* %194, i32 1)
  %196 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %197 = call i32 @js_pop(%struct.TYPE_36__* %196, i32 1)
  br label %253

198:                                              ; preds = %176
  %199 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %213

203:                                              ; preds = %198
  %204 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %204, i32 0, i32 2
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %203
  %209 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %210 = load i8*, i8** %6, align 8
  %211 = call i32 @js_typeerror(%struct.TYPE_36__* %209, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i8* %210)
  br label %212

212:                                              ; preds = %208, %203
  br label %213

213:                                              ; preds = %212, %198
  br label %214

214:                                              ; preds = %213
  br label %215

215:                                              ; preds = %214, %169
  %216 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %217 = icmp ne %struct.TYPE_37__* %216, null
  br i1 %217, label %218, label %221

218:                                              ; preds = %215
  %219 = load i32, i32* %10, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %226, label %221

221:                                              ; preds = %218, %215
  %222 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %223 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %224 = load i8*, i8** %6, align 8
  %225 = call %struct.TYPE_37__* @jsV_setproperty(%struct.TYPE_36__* %222, %struct.TYPE_38__* %223, i8* %224)
  store %struct.TYPE_37__* %225, %struct.TYPE_37__** %8, align 8
  br label %226

226:                                              ; preds = %221, %218
  %227 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %228 = icmp ne %struct.TYPE_37__* %227, null
  br i1 %228, label %229, label %243

229:                                              ; preds = %226
  %230 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @JS_READONLY, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %241, label %236

236:                                              ; preds = %229
  %237 = load i32*, i32** %7, align 8
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %239, i32 0, i32 1
  store i32 %238, i32* %240, align 4
  br label %242

241:                                              ; preds = %229
  br label %244

242:                                              ; preds = %236
  br label %243

243:                                              ; preds = %242, %226
  br label %253

244:                                              ; preds = %241, %122, %117, %112, %107, %94, %77
  %245 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %253

249:                                              ; preds = %244
  %250 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %251 = load i8*, i8** %6, align 8
  %252 = call i32 @js_typeerror(%struct.TYPE_36__* %250, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8* %251)
  br label %253

253:                                              ; preds = %40, %127, %164, %181, %243, %249, %244
  ret void
}

declare dso_local i32* @stackidx(%struct.TYPE_36__*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local double @jsV_tonumber(%struct.TYPE_36__*, i32*) #1

declare dso_local i32 @jsV_numbertointeger(double) #1

declare dso_local i32 @js_rangeerror(%struct.TYPE_36__*, i8*) #1

declare dso_local i32 @jsV_resizearray(%struct.TYPE_36__*, %struct.TYPE_38__*, i32) #1

declare dso_local i64 @js_isarrayindex(%struct.TYPE_36__*, i8*, i32*) #1

declare dso_local i32 @jsV_tointeger(%struct.TYPE_36__*, i32*) #1

declare dso_local %struct.TYPE_37__* @jsV_getpropertyx(%struct.TYPE_36__*, %struct.TYPE_38__*, i8*, i32*) #1

declare dso_local i32 @js_pushobject(%struct.TYPE_36__*, %struct.TYPE_38__*) #1

declare dso_local i32 @js_pushvalue(%struct.TYPE_36__*, i32) #1

declare dso_local i32 @js_call(%struct.TYPE_36__*, i32) #1

declare dso_local i32 @js_pop(%struct.TYPE_36__*, i32) #1

declare dso_local i32 @js_typeerror(%struct.TYPE_36__*, i8*, i8*) #1

declare dso_local %struct.TYPE_37__* @jsV_setproperty(%struct.TYPE_36__*, %struct.TYPE_38__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
