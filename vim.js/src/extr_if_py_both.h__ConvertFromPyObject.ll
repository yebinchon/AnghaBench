; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_if_py_both.h__ConvertFromPyObject.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_if_py_both.h__ConvertFromPyObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_41__ = type { %struct.TYPE_40__, i8* }
%struct.TYPE_40__ = type { i8*, i64, i32, %struct.TYPE_39__*, %struct.TYPE_38__* }
%struct.TYPE_39__ = type { i32 }
%struct.TYPE_38__ = type { i32 }
%struct.TYPE_42__ = type { i32 }
%struct.TYPE_45__ = type { %struct.TYPE_38__* }
%struct.TYPE_43__ = type { %struct.TYPE_39__* }
%struct.TYPE_44__ = type { i32* }

@DictionaryType = common dso_local global i32 0, align 4
@VAR_DICT = common dso_local global i8* null, align 8
@ListType = common dso_local global i32 0, align 4
@VAR_LIST = common dso_local global i8* null, align 8
@FunctionType = common dso_local global i32 0, align 4
@VAR_FUNC = common dso_local global i8* null, align 8
@VAR_STRING = common dso_local global i8* null, align 8
@ENC_OPT = common dso_local global i32 0, align 4
@VAR_NUMBER = common dso_local global i8* null, align 8
@pydict_to_tv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"keys\00", align 1
@pymap_to_tv = common dso_local global i32 0, align 4
@pyseq_to_tv = common dso_local global i32 0, align 4
@PyExc_TypeError = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"unable to convert %s to vim structure\00", align 1
@VAR_FLOAT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_42__*, %struct.TYPE_41__*, %struct.TYPE_42__*)* @_ConvertFromPyObject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ConvertFromPyObject(%struct.TYPE_42__* %0, %struct.TYPE_41__* %1, %struct.TYPE_42__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_42__*, align 8
  %6 = alloca %struct.TYPE_41__*, align 8
  %7 = alloca %struct.TYPE_42__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_42__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_42__*, align 8
  store %struct.TYPE_42__* %0, %struct.TYPE_42__** %5, align 8
  store %struct.TYPE_41__* %1, %struct.TYPE_41__** %6, align 8
  store %struct.TYPE_42__* %2, %struct.TYPE_42__** %7, align 8
  %12 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @PyType_IsSubtype(i32 %14, i32* @DictionaryType)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %3
  %18 = load i8*, i8** @VAR_DICT, align 8
  %19 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  %21 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %22 = bitcast %struct.TYPE_42__* %21 to %struct.TYPE_45__*
  %23 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_38__*, %struct.TYPE_38__** %23, align 8
  %25 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %26, i32 0, i32 4
  store %struct.TYPE_38__* %24, %struct.TYPE_38__** %27, align 8
  %28 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %29, i32 0, i32 4
  %31 = load %struct.TYPE_38__*, %struct.TYPE_38__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  br label %260

35:                                               ; preds = %3
  %36 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @PyType_IsSubtype(i32 %38, i32* @ListType)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %35
  %42 = load i8*, i8** @VAR_LIST, align 8
  %43 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %46 = bitcast %struct.TYPE_42__* %45 to %struct.TYPE_43__*
  %47 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_39__*, %struct.TYPE_39__** %47, align 8
  %49 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %50, i32 0, i32 3
  store %struct.TYPE_39__* %48, %struct.TYPE_39__** %51, align 8
  %52 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_39__*, %struct.TYPE_39__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  br label %259

59:                                               ; preds = %35
  %60 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @PyType_IsSubtype(i32 %62, i32* @FunctionType)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %83

65:                                               ; preds = %59
  %66 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %67 = bitcast %struct.TYPE_42__* %66 to %struct.TYPE_44__*
  %68 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %71 = call i32 @set_string_copy(i32* %69, %struct.TYPE_41__* %70)
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  store i32 -1, i32* %4, align 4
  br label %261

74:                                               ; preds = %65
  %75 = load i8*, i8** @VAR_FUNC, align 8
  %76 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  %78 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @func_ref(i32 %81)
  br label %258

83:                                               ; preds = %59
  %84 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %85 = call i64 @PyBytes_Check(%struct.TYPE_42__* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %107

87:                                               ; preds = %83
  %88 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %89 = bitcast i32** %8 to i8**
  %90 = call i32 @PyBytes_AsStringAndSize(%struct.TYPE_42__* %88, i8** %89, i32* null)
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  store i32 -1, i32* %4, align 4
  br label %261

93:                                               ; preds = %87
  %94 = load i32*, i32** %8, align 8
  %95 = icmp eq i32* %94, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  store i32 -1, i32* %4, align 4
  br label %261

97:                                               ; preds = %93
  %98 = load i32*, i32** %8, align 8
  %99 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %100 = call i32 @set_string_copy(i32* %98, %struct.TYPE_41__* %99)
  %101 = icmp eq i32 %100, -1
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  store i32 -1, i32* %4, align 4
  br label %261

103:                                              ; preds = %97
  %104 = load i8*, i8** @VAR_STRING, align 8
  %105 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %105, i32 0, i32 1
  store i8* %104, i8** %106, align 8
  br label %257

107:                                              ; preds = %83
  %108 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %109 = call i64 @PyUnicode_Check(%struct.TYPE_42__* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %142

111:                                              ; preds = %107
  %112 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %113 = load i32, i32* @ENC_OPT, align 4
  %114 = call %struct.TYPE_42__* @PyUnicode_AsEncodedString(%struct.TYPE_42__* %112, i32 %113, i32* null)
  store %struct.TYPE_42__* %114, %struct.TYPE_42__** %9, align 8
  %115 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %116 = icmp eq %struct.TYPE_42__* %115, null
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  store i32 -1, i32* %4, align 4
  br label %261

118:                                              ; preds = %111
  %119 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %120 = bitcast i32** %10 to i8**
  %121 = call i32 @PyBytes_AsStringAndSize(%struct.TYPE_42__* %119, i8** %120, i32* null)
  %122 = icmp eq i32 %121, -1
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  store i32 -1, i32* %4, align 4
  br label %261

124:                                              ; preds = %118
  %125 = load i32*, i32** %10, align 8
  %126 = icmp eq i32* %125, null
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  store i32 -1, i32* %4, align 4
  br label %261

128:                                              ; preds = %124
  %129 = load i32*, i32** %10, align 8
  %130 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %131 = call i32 @set_string_copy(i32* %129, %struct.TYPE_41__* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %135 = call i32 @Py_XDECREF(%struct.TYPE_42__* %134)
  store i32 -1, i32* %4, align 4
  br label %261

136:                                              ; preds = %128
  %137 = load %struct.TYPE_42__*, %struct.TYPE_42__** %9, align 8
  %138 = call i32 @Py_XDECREF(%struct.TYPE_42__* %137)
  %139 = load i8*, i8** @VAR_STRING, align 8
  %140 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %140, i32 0, i32 1
  store i8* %139, i8** %141, align 8
  br label %256

142:                                              ; preds = %107
  %143 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %144 = call i64 @PyInt_Check(%struct.TYPE_42__* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %160

146:                                              ; preds = %142
  %147 = load i8*, i8** @VAR_NUMBER, align 8
  %148 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %148, i32 0, i32 1
  store i8* %147, i8** %149, align 8
  %150 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %151 = call i64 @PyInt_AsLong(%struct.TYPE_42__* %150)
  %152 = inttoptr i64 %151 to i8*
  %153 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %154, i32 0, i32 0
  store i8* %152, i8** %155, align 8
  %156 = call i64 (...) @PyErr_Occurred()
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %146
  store i32 -1, i32* %4, align 4
  br label %261

159:                                              ; preds = %146
  br label %255

160:                                              ; preds = %142
  %161 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %162 = call i64 @PyLong_Check(%struct.TYPE_42__* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %178

164:                                              ; preds = %160
  %165 = load i8*, i8** @VAR_NUMBER, align 8
  %166 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %166, i32 0, i32 1
  store i8* %165, i8** %167, align 8
  %168 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %169 = call i64 @PyLong_AsLong(%struct.TYPE_42__* %168)
  %170 = inttoptr i64 %169 to i8*
  %171 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %172, i32 0, i32 0
  store i8* %170, i8** %173, align 8
  %174 = call i64 (...) @PyErr_Occurred()
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %164
  store i32 -1, i32* %4, align 4
  br label %261

177:                                              ; preds = %164
  br label %254

178:                                              ; preds = %160
  %179 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %180 = call i64 @PyDict_Check(%struct.TYPE_42__* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %178
  %183 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %184 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %185 = load i32, i32* @pydict_to_tv, align 4
  %186 = load %struct.TYPE_42__*, %struct.TYPE_42__** %7, align 8
  %187 = call i32 @convert_dl(%struct.TYPE_42__* %183, %struct.TYPE_41__* %184, i32 %185, %struct.TYPE_42__* %186)
  store i32 %187, i32* %4, align 4
  br label %261

188:                                              ; preds = %178
  %189 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %190 = call i64 @PyObject_HasAttrString(%struct.TYPE_42__* %189, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %188
  %193 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %194 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %195 = load i32, i32* @pymap_to_tv, align 4
  %196 = load %struct.TYPE_42__*, %struct.TYPE_42__** %7, align 8
  %197 = call i32 @convert_dl(%struct.TYPE_42__* %193, %struct.TYPE_41__* %194, i32 %195, %struct.TYPE_42__* %196)
  store i32 %197, i32* %4, align 4
  br label %261

198:                                              ; preds = %188
  %199 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %200 = call i64 @PyIter_Check(%struct.TYPE_42__* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %206, label %202

202:                                              ; preds = %198
  %203 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %204 = call i64 @PySequence_Check(%struct.TYPE_42__* %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %212

206:                                              ; preds = %202, %198
  %207 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %208 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %209 = load i32, i32* @pyseq_to_tv, align 4
  %210 = load %struct.TYPE_42__*, %struct.TYPE_42__** %7, align 8
  %211 = call i32 @convert_dl(%struct.TYPE_42__* %207, %struct.TYPE_41__* %208, i32 %209, %struct.TYPE_42__* %210)
  store i32 %211, i32* %4, align 4
  br label %261

212:                                              ; preds = %202
  %213 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %214 = call i64 @PyMapping_Check(%struct.TYPE_42__* %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %222

216:                                              ; preds = %212
  %217 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %218 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %219 = load i32, i32* @pymap_to_tv, align 4
  %220 = load %struct.TYPE_42__*, %struct.TYPE_42__** %7, align 8
  %221 = call i32 @convert_dl(%struct.TYPE_42__* %217, %struct.TYPE_41__* %218, i32 %219, %struct.TYPE_42__* %220)
  store i32 %221, i32* %4, align 4
  br label %261

222:                                              ; preds = %212
  %223 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %224 = call i64 @PyNumber_Check(%struct.TYPE_42__* %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %243

226:                                              ; preds = %222
  %227 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %228 = call %struct.TYPE_42__* @PyNumber_Long(%struct.TYPE_42__* %227)
  store %struct.TYPE_42__* %228, %struct.TYPE_42__** %11, align 8
  %229 = icmp ne %struct.TYPE_42__* %228, null
  br i1 %229, label %231, label %230

230:                                              ; preds = %226
  store i32 -1, i32* %4, align 4
  br label %261

231:                                              ; preds = %226
  %232 = load i8*, i8** @VAR_NUMBER, align 8
  %233 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %233, i32 0, i32 1
  store i8* %232, i8** %234, align 8
  %235 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %236 = call i64 @PyLong_AsLong(%struct.TYPE_42__* %235)
  %237 = inttoptr i64 %236 to i8*
  %238 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %239, i32 0, i32 0
  store i8* %237, i8** %240, align 8
  %241 = load %struct.TYPE_42__*, %struct.TYPE_42__** %11, align 8
  %242 = call i32 @Py_DECREF(%struct.TYPE_42__* %241)
  br label %249

243:                                              ; preds = %222
  %244 = load i32, i32* @PyExc_TypeError, align 4
  %245 = call i32 @N_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %246 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %247 = call i32 @Py_TYPE_NAME(%struct.TYPE_42__* %246)
  %248 = call i32 @PyErr_FORMAT(i32 %244, i32 %245, i32 %247)
  store i32 -1, i32* %4, align 4
  br label %261

249:                                              ; preds = %231
  br label %250

250:                                              ; preds = %249
  br label %251

251:                                              ; preds = %250
  br label %252

252:                                              ; preds = %251
  br label %253

253:                                              ; preds = %252
  br label %254

254:                                              ; preds = %253, %177
  br label %255

255:                                              ; preds = %254, %159
  br label %256

256:                                              ; preds = %255, %136
  br label %257

257:                                              ; preds = %256, %103
  br label %258

258:                                              ; preds = %257, %74
  br label %259

259:                                              ; preds = %258, %41
  br label %260

260:                                              ; preds = %259, %17
  store i32 0, i32* %4, align 4
  br label %261

261:                                              ; preds = %260, %243, %230, %216, %206, %192, %182, %176, %158, %133, %127, %123, %117, %102, %96, %92, %73
  %262 = load i32, i32* %4, align 4
  ret i32 %262
}

declare dso_local i64 @PyType_IsSubtype(i32, i32*) #1

declare dso_local i32 @set_string_copy(i32*, %struct.TYPE_41__*) #1

declare dso_local i32 @func_ref(i32) #1

declare dso_local i64 @PyBytes_Check(%struct.TYPE_42__*) #1

declare dso_local i32 @PyBytes_AsStringAndSize(%struct.TYPE_42__*, i8**, i32*) #1

declare dso_local i64 @PyUnicode_Check(%struct.TYPE_42__*) #1

declare dso_local %struct.TYPE_42__* @PyUnicode_AsEncodedString(%struct.TYPE_42__*, i32, i32*) #1

declare dso_local i32 @Py_XDECREF(%struct.TYPE_42__*) #1

declare dso_local i64 @PyInt_Check(%struct.TYPE_42__*) #1

declare dso_local i64 @PyInt_AsLong(%struct.TYPE_42__*) #1

declare dso_local i64 @PyErr_Occurred(...) #1

declare dso_local i64 @PyLong_Check(%struct.TYPE_42__*) #1

declare dso_local i64 @PyLong_AsLong(%struct.TYPE_42__*) #1

declare dso_local i64 @PyDict_Check(%struct.TYPE_42__*) #1

declare dso_local i32 @convert_dl(%struct.TYPE_42__*, %struct.TYPE_41__*, i32, %struct.TYPE_42__*) #1

declare dso_local i64 @PyObject_HasAttrString(%struct.TYPE_42__*, i8*) #1

declare dso_local i64 @PyIter_Check(%struct.TYPE_42__*) #1

declare dso_local i64 @PySequence_Check(%struct.TYPE_42__*) #1

declare dso_local i64 @PyMapping_Check(%struct.TYPE_42__*) #1

declare dso_local i64 @PyNumber_Check(%struct.TYPE_42__*) #1

declare dso_local %struct.TYPE_42__* @PyNumber_Long(%struct.TYPE_42__*) #1

declare dso_local i32 @Py_DECREF(%struct.TYPE_42__*) #1

declare dso_local i32 @PyErr_FORMAT(i32, i32, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @Py_TYPE_NAME(%struct.TYPE_42__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
