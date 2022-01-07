; ModuleID = '/home/carl/AnghaBench/streem/src/extr_exec.c_exec_expr.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_exec.c_exec_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_40__ = type { %struct.TYPE_37__* }
%struct.TYPE_37__ = type { i32, i32 }
%struct.TYPE_43__ = type { i32, i32, i32 }
%struct.TYPE_49__ = type { %struct.TYPE_43__*, i32 }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_42__ = type { i32, i32, i32, %struct.TYPE_43__** }
%struct.TYPE_51__ = type { i32, %struct.TYPE_43__* }
%struct.TYPE_46__ = type { %struct.TYPE_43__* }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_32__ = type { %struct.TYPE_43__*, %struct.TYPE_43__*, %struct.TYPE_43__* }
%struct.TYPE_48__ = type { i32, %struct.TYPE_43__*, %struct.TYPE_43__* }
%struct.strm_lambda = type { i32*, i32, i32* }
%struct.TYPE_39__ = type { i32, %struct.TYPE_43__* }
%struct.TYPE_50__ = type { i32, %struct.TYPE_43__** }
%struct.TYPE_36__ = type { %struct.TYPE_43__*, %struct.TYPE_43__* }
%struct.TYPE_34__ = type { i32 }
%struct.strm_genfunc = type { i32*, i32, i32* }
%struct.TYPE_47__ = type { i64 }
%struct.TYPE_44__ = type { i32, i32, i32 }
%struct.TYPE_38__ = type { i64 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_41__ = type { i32 }
%struct.TYPE_45__ = type { i32 }

@STRM_NG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"namespace already exists\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to create namespace\00", align 1
@STRM_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"no such namespace\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"failed to import\00", align 1
@NODE_ERROR_SKIP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"failed to assign\00", align 1
@FALSE = common dso_local global i32 0, align 4
@NODE_SPLAT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"splat requires array\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"label(s) and splat(s) in an array\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"instantiating primitive class\00", align 1
@strm_str_null = common dso_local global i32* null, align 8
@.str.8 = private unnamed_addr constant [29 x i8] c"failed to reference variable\00", align 1
@STRM_PTR_LAMBDA = common dso_local global i32 0, align 4
@NODE_ERROR_RETURN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"unknown node\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_40__*, i32*, %struct.TYPE_43__*, i8**)* @exec_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_expr(%struct.TYPE_40__* %0, i32* %1, %struct.TYPE_43__* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_40__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_43__*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_49__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_31__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_42__*, align 8
  %19 = alloca %struct.TYPE_51__*, align 8
  %20 = alloca %struct.TYPE_42__*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8**, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_46__*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i8**, align 8
  %30 = alloca i32, align 4
  %31 = alloca i8*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i8**, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32*, align 8
  %37 = alloca i32*, align 8
  %38 = alloca i32*, align 8
  %39 = alloca %struct.TYPE_33__*, align 8
  %40 = alloca i8*, align 8
  %41 = alloca %struct.TYPE_32__*, align 8
  %42 = alloca %struct.TYPE_48__*, align 8
  %43 = alloca [2 x i8*], align 16
  %44 = alloca i32, align 4
  %45 = alloca %struct.strm_lambda*, align 8
  %46 = alloca %struct.TYPE_39__*, align 8
  %47 = alloca i32, align 4
  %48 = alloca %struct.TYPE_50__*, align 8
  %49 = alloca i8**, align 8
  %50 = alloca i32, align 4
  %51 = alloca i8*, align 8
  %52 = alloca %struct.TYPE_36__*, align 8
  %53 = alloca i32, align 4
  %54 = alloca i8*, align 8
  %55 = alloca %struct.TYPE_50__*, align 8
  %56 = alloca i8**, align 8
  %57 = alloca i32, align 4
  %58 = alloca i8*, align 8
  %59 = alloca %struct.TYPE_34__*, align 8
  %60 = alloca %struct.strm_genfunc*, align 8
  %61 = alloca %struct.TYPE_47__*, align 8
  %62 = alloca %struct.TYPE_50__*, align 8
  %63 = alloca i8*, align 8
  %64 = alloca i8*, align 8
  %65 = alloca i64, align 8
  %66 = alloca i32, align 4
  %67 = alloca %struct.TYPE_50__*, align 8
  %68 = alloca %struct.TYPE_37__*, align 8
  %69 = alloca %struct.TYPE_43__*, align 8
  %70 = alloca %struct.TYPE_44__*, align 8
  store %struct.TYPE_40__* %0, %struct.TYPE_40__** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_43__* %2, %struct.TYPE_43__** %8, align 8
  store i8** %3, i8*** %9, align 8
  %71 = load %struct.TYPE_43__*, %struct.TYPE_43__** %8, align 8
  %72 = icmp eq %struct.TYPE_43__* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %4
  %74 = load i32, i32* @STRM_NG, align 4
  store i32 %74, i32* %5, align 4
  br label %1063

75:                                               ; preds = %4
  %76 = load %struct.TYPE_43__*, %struct.TYPE_43__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  switch i32 %78, label %1058 [
    i32 134, label %79
    i32 140, label %120
    i32 130, label %146
    i32 146, label %152
    i32 137, label %198
    i32 149, label %223
    i32 142, label %473
    i32 141, label %490
    i32 133, label %536
    i32 138, label %591
    i32 132, label %591
    i32 147, label %626
    i32 145, label %732
    i32 143, label %845
    i32 131, label %865
    i32 135, label %940
    i32 139, label %999
    i32 144, label %1007
    i32 128, label %1015
    i32 148, label %1037
    i32 136, label %1045
    i32 129, label %1049
  ]

79:                                               ; preds = %75
  %80 = load %struct.TYPE_43__*, %struct.TYPE_43__** %8, align 8
  %81 = bitcast %struct.TYPE_43__* %80 to %struct.TYPE_49__*
  store %struct.TYPE_49__* %81, %struct.TYPE_49__** %11, align 8
  %82 = load %struct.TYPE_49__*, %struct.TYPE_49__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @node_to_sym(i32 %84)
  store i32 %85, i32* %12, align 4
  %86 = load i32*, i32** %7, align 8
  %87 = load i32, i32* %12, align 4
  %88 = call i32* @strm_ns_create(i32* %86, i32 %87)
  store i32* %88, i32** %13, align 8
  %89 = load i32*, i32** %13, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %103, label %91

91:                                               ; preds = %79
  %92 = load i32, i32* %12, align 4
  %93 = call i32* @strm_ns_get(i32 %92)
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %97 = call i32 @strm_raise(%struct.TYPE_40__* %96, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %101

98:                                               ; preds = %91
  %99 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %100 = call i32 @strm_raise(%struct.TYPE_40__* %99, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %101

101:                                              ; preds = %98, %95
  %102 = load i32, i32* @STRM_NG, align 4
  store i32 %102, i32* %5, align 4
  br label %1063

103:                                              ; preds = %79
  %104 = load i32*, i32** %13, align 8
  %105 = call i32 @STRM_NS_UDEF_SET(i32* %104)
  %106 = load %struct.TYPE_49__*, %struct.TYPE_49__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_43__*, %struct.TYPE_43__** %107, align 8
  %109 = icmp ne %struct.TYPE_43__* %108, null
  br i1 %109, label %110, label %118

110:                                              ; preds = %103
  %111 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %112 = load i32*, i32** %13, align 8
  %113 = load %struct.TYPE_49__*, %struct.TYPE_49__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_43__*, %struct.TYPE_43__** %114, align 8
  %116 = load i8**, i8*** %9, align 8
  %117 = call i32 @exec_expr(%struct.TYPE_40__* %111, i32* %112, %struct.TYPE_43__* %115, i8** %116)
  store i32 %117, i32* %5, align 4
  br label %1063

118:                                              ; preds = %103
  %119 = load i32, i32* @STRM_OK, align 4
  store i32 %119, i32* %5, align 4
  br label %1063

120:                                              ; preds = %75
  %121 = load %struct.TYPE_43__*, %struct.TYPE_43__** %8, align 8
  %122 = bitcast %struct.TYPE_43__* %121 to %struct.TYPE_31__*
  store %struct.TYPE_31__* %122, %struct.TYPE_31__** %14, align 8
  %123 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %124 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @node_to_sym(i32 %125)
  %127 = call i32* @strm_ns_get(i32 %126)
  store i32* %127, i32** %15, align 8
  %128 = load i32*, i32** %15, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %134, label %130

130:                                              ; preds = %120
  %131 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %132 = call i32 @strm_raise(%struct.TYPE_40__* %131, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %133 = load i32, i32* @STRM_NG, align 4
  store i32 %133, i32* %5, align 4
  br label %1063

134:                                              ; preds = %120
  %135 = load i32*, i32** %7, align 8
  %136 = load i32*, i32** %15, align 8
  %137 = call i32 @strm_env_copy(i32* %135, i32* %136)
  store i32 %137, i32* %10, align 4
  %138 = load i32, i32* %10, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %134
  %141 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %142 = call i32 @strm_raise(%struct.TYPE_40__* %141, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %143 = load i32, i32* %10, align 4
  store i32 %143, i32* %5, align 4
  br label %1063

144:                                              ; preds = %134
  %145 = load i32, i32* @STRM_OK, align 4
  store i32 %145, i32* %5, align 4
  br label %1063

146:                                              ; preds = %75
  %147 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %148 = load i32, i32* @NODE_ERROR_SKIP, align 4
  %149 = call i8* (...) @strm_nil_value()
  %150 = call i32 @strm_set_exc(%struct.TYPE_40__* %147, i32 %148, i8* %149)
  %151 = load i32, i32* @STRM_NG, align 4
  store i32 %151, i32* %5, align 4
  br label %1063

152:                                              ; preds = %75
  %153 = load %struct.TYPE_43__*, %struct.TYPE_43__** %8, align 8
  %154 = bitcast %struct.TYPE_43__* %153 to %struct.TYPE_38__*
  %155 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = inttoptr i64 %156 to %struct.TYPE_42__*
  store %struct.TYPE_42__* %157, %struct.TYPE_42__** %18, align 8
  %158 = load %struct.TYPE_42__*, %struct.TYPE_42__** %18, align 8
  %159 = icmp ne %struct.TYPE_42__* %158, null
  br i1 %159, label %164, label %160

160:                                              ; preds = %152
  %161 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %162 = call i8* (...) @strm_nil_value()
  %163 = call i32 @strm_emit(%struct.TYPE_40__* %161, i8* %162, i32* null)
  br label %196

164:                                              ; preds = %152
  store i32 0, i32* %16, align 4
  br label %165

165:                                              ; preds = %192, %164
  %166 = load i32, i32* %16, align 4
  %167 = load %struct.TYPE_42__*, %struct.TYPE_42__** %18, align 8
  %168 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp slt i32 %166, %169
  br i1 %170, label %171, label %195

171:                                              ; preds = %165
  %172 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %173 = load i32*, i32** %7, align 8
  %174 = load %struct.TYPE_42__*, %struct.TYPE_42__** %18, align 8
  %175 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %174, i32 0, i32 3
  %176 = load %struct.TYPE_43__**, %struct.TYPE_43__*** %175, align 8
  %177 = load i32, i32* %16, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_43__*, %struct.TYPE_43__** %176, i64 %178
  %180 = load %struct.TYPE_43__*, %struct.TYPE_43__** %179, align 8
  %181 = load i8**, i8*** %9, align 8
  %182 = call i32 @exec_expr(%struct.TYPE_40__* %172, i32* %173, %struct.TYPE_43__* %180, i8** %181)
  store i32 %182, i32* %17, align 4
  %183 = load i32, i32* %17, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %171
  %186 = load i32, i32* %17, align 4
  store i32 %186, i32* %5, align 4
  br label %1063

187:                                              ; preds = %171
  %188 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %189 = load i8**, i8*** %9, align 8
  %190 = load i8*, i8** %189, align 8
  %191 = call i32 @strm_emit(%struct.TYPE_40__* %188, i8* %190, i32* null)
  br label %192

192:                                              ; preds = %187
  %193 = load i32, i32* %16, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %16, align 4
  br label %165

195:                                              ; preds = %165
  br label %196

196:                                              ; preds = %195, %160
  %197 = load i32, i32* @STRM_OK, align 4
  store i32 %197, i32* %5, align 4
  br label %1063

198:                                              ; preds = %75
  %199 = load %struct.TYPE_43__*, %struct.TYPE_43__** %8, align 8
  %200 = bitcast %struct.TYPE_43__* %199 to %struct.TYPE_51__*
  store %struct.TYPE_51__* %200, %struct.TYPE_51__** %19, align 8
  %201 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %202 = load i32*, i32** %7, align 8
  %203 = load %struct.TYPE_51__*, %struct.TYPE_51__** %19, align 8
  %204 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %203, i32 0, i32 1
  %205 = load %struct.TYPE_43__*, %struct.TYPE_43__** %204, align 8
  %206 = load i8**, i8*** %9, align 8
  %207 = call i32 @exec_expr(%struct.TYPE_40__* %201, i32* %202, %struct.TYPE_43__* %205, i8** %206)
  store i32 %207, i32* %10, align 4
  %208 = load i32, i32* %10, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %198
  %211 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %212 = call i32 @strm_raise(%struct.TYPE_40__* %211, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %213 = load i32, i32* %10, align 4
  store i32 %213, i32* %5, align 4
  br label %1063

214:                                              ; preds = %198
  %215 = load i32*, i32** %7, align 8
  %216 = load %struct.TYPE_51__*, %struct.TYPE_51__** %19, align 8
  %217 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @node_to_sym(i32 %218)
  %220 = load i8**, i8*** %9, align 8
  %221 = load i8*, i8** %220, align 8
  %222 = call i32 @strm_var_set(i32* %215, i32 %219, i8* %221)
  store i32 %222, i32* %5, align 4
  br label %1063

223:                                              ; preds = %75
  %224 = load %struct.TYPE_43__*, %struct.TYPE_43__** %8, align 8
  %225 = bitcast %struct.TYPE_43__* %224 to %struct.TYPE_42__*
  store %struct.TYPE_42__* %225, %struct.TYPE_42__** %20, align 8
  %226 = load %struct.TYPE_42__*, %struct.TYPE_42__** %20, align 8
  %227 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = call i8* @strm_ary_new(i32* null, i32 %228)
  store i8* %229, i8** %21, align 8
  %230 = load i8*, i8** %21, align 8
  %231 = call i8** @strm_ary_ptr(i8* %230)
  store i8** %231, i8*** %22, align 8
  %232 = load i32, i32* @FALSE, align 4
  store i32 %232, i32* %23, align 4
  store i32 0, i32* %24, align 4
  br label %233

233:                                              ; preds = %309, %223
  %234 = load i32, i32* %24, align 4
  %235 = load %struct.TYPE_42__*, %struct.TYPE_42__** %20, align 8
  %236 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = icmp slt i32 %234, %237
  br i1 %238, label %239, label %312

239:                                              ; preds = %233
  %240 = load %struct.TYPE_42__*, %struct.TYPE_42__** %20, align 8
  %241 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %240, i32 0, i32 3
  %242 = load %struct.TYPE_43__**, %struct.TYPE_43__*** %241, align 8
  %243 = load i32, i32* %24, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_43__*, %struct.TYPE_43__** %242, i64 %244
  %246 = load %struct.TYPE_43__*, %struct.TYPE_43__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* @NODE_SPLAT, align 4
  %250 = icmp eq i32 %248, %249
  br i1 %250, label %251, label %288

251:                                              ; preds = %239
  %252 = load %struct.TYPE_42__*, %struct.TYPE_42__** %20, align 8
  %253 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %252, i32 0, i32 3
  %254 = load %struct.TYPE_43__**, %struct.TYPE_43__*** %253, align 8
  %255 = load i32, i32* %24, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_43__*, %struct.TYPE_43__** %254, i64 %256
  %258 = load %struct.TYPE_43__*, %struct.TYPE_43__** %257, align 8
  %259 = bitcast %struct.TYPE_43__* %258 to %struct.TYPE_46__*
  store %struct.TYPE_46__* %259, %struct.TYPE_46__** %25, align 8
  %260 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %261 = load i32*, i32** %7, align 8
  %262 = load %struct.TYPE_46__*, %struct.TYPE_46__** %25, align 8
  %263 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %262, i32 0, i32 0
  %264 = load %struct.TYPE_43__*, %struct.TYPE_43__** %263, align 8
  %265 = load i8**, i8*** %22, align 8
  %266 = load i32, i32* %24, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i8*, i8** %265, i64 %267
  %269 = call i32 @exec_expr(%struct.TYPE_40__* %260, i32* %261, %struct.TYPE_43__* %264, i8** %268)
  store i32 %269, i32* %10, align 4
  %270 = load i32, i32* %10, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %274

272:                                              ; preds = %251
  %273 = load i32, i32* %10, align 4
  store i32 %273, i32* %5, align 4
  br label %1063

274:                                              ; preds = %251
  %275 = load i8**, i8*** %22, align 8
  %276 = load i32, i32* %24, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i8*, i8** %275, i64 %277
  %279 = load i8*, i8** %278, align 8
  %280 = call i32 @strm_array_p(i8* %279)
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %286, label %282

282:                                              ; preds = %274
  %283 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %284 = call i32 @strm_raise(%struct.TYPE_40__* %283, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %285 = load i32, i32* @STRM_NG, align 4
  store i32 %285, i32* %5, align 4
  br label %1063

286:                                              ; preds = %274
  %287 = load i32, i32* @TRUE, align 4
  store i32 %287, i32* %23, align 4
  br label %308

288:                                              ; preds = %239
  %289 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %290 = load i32*, i32** %7, align 8
  %291 = load %struct.TYPE_42__*, %struct.TYPE_42__** %20, align 8
  %292 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %291, i32 0, i32 3
  %293 = load %struct.TYPE_43__**, %struct.TYPE_43__*** %292, align 8
  %294 = load i32, i32* %24, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.TYPE_43__*, %struct.TYPE_43__** %293, i64 %295
  %297 = load %struct.TYPE_43__*, %struct.TYPE_43__** %296, align 8
  %298 = load i8**, i8*** %22, align 8
  %299 = load i32, i32* %24, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i8*, i8** %298, i64 %300
  %302 = call i32 @exec_expr(%struct.TYPE_40__* %289, i32* %290, %struct.TYPE_43__* %297, i8** %301)
  store i32 %302, i32* %10, align 4
  %303 = load i32, i32* %10, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %307

305:                                              ; preds = %288
  %306 = load i32, i32* %10, align 4
  store i32 %306, i32* %5, align 4
  br label %1063

307:                                              ; preds = %288
  br label %308

308:                                              ; preds = %307, %286
  br label %309

309:                                              ; preds = %308
  %310 = load i32, i32* %24, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %24, align 4
  br label %233

312:                                              ; preds = %233
  %313 = load i32, i32* %23, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %432

315:                                              ; preds = %312
  %316 = load %struct.TYPE_42__*, %struct.TYPE_42__** %20, align 8
  %317 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  store i32 %318, i32* %26, align 4
  %319 = load %struct.TYPE_42__*, %struct.TYPE_42__** %20, align 8
  %320 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %319, i32 0, i32 2
  %321 = load i32, i32* %320, align 8
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %327

323:                                              ; preds = %315
  %324 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %325 = call i32 @strm_raise(%struct.TYPE_40__* %324, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %326 = load i32, i32* @STRM_NG, align 4
  store i32 %326, i32* %5, align 4
  br label %1063

327:                                              ; preds = %315
  store i32 0, i32* %27, align 4
  br label %328

328:                                              ; preds = %359, %327
  %329 = load i32, i32* %27, align 4
  %330 = load %struct.TYPE_42__*, %struct.TYPE_42__** %20, align 8
  %331 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = icmp slt i32 %329, %332
  br i1 %333, label %334, label %362

334:                                              ; preds = %328
  %335 = load %struct.TYPE_42__*, %struct.TYPE_42__** %20, align 8
  %336 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %335, i32 0, i32 3
  %337 = load %struct.TYPE_43__**, %struct.TYPE_43__*** %336, align 8
  %338 = load i32, i32* %27, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.TYPE_43__*, %struct.TYPE_43__** %337, i64 %339
  %341 = load %struct.TYPE_43__*, %struct.TYPE_43__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 4
  %344 = load i32, i32* @NODE_SPLAT, align 4
  %345 = icmp eq i32 %343, %344
  br i1 %345, label %346, label %358

346:                                              ; preds = %334
  %347 = load i8**, i8*** %22, align 8
  %348 = load i32, i32* %27, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i8*, i8** %347, i64 %349
  %351 = load i8*, i8** %350, align 8
  %352 = call i8* @strm_value_ary(i8* %351)
  store i8* %352, i8** %28, align 8
  %353 = load i8*, i8** %28, align 8
  %354 = call i32 @strm_ary_len(i8* %353)
  %355 = sub nsw i32 %354, 1
  %356 = load i32, i32* %26, align 4
  %357 = add nsw i32 %356, %355
  store i32 %357, i32* %26, align 4
  br label %358

358:                                              ; preds = %346, %334
  br label %359

359:                                              ; preds = %358
  %360 = load i32, i32* %27, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %27, align 4
  br label %328

362:                                              ; preds = %328
  %363 = load i32, i32* %26, align 4
  %364 = load %struct.TYPE_42__*, %struct.TYPE_42__** %20, align 8
  %365 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 8
  %367 = icmp sgt i32 %363, %366
  br i1 %367, label %368, label %431

368:                                              ; preds = %362
  %369 = load i32, i32* %26, align 4
  %370 = call i8* @strm_ary_new(i32* null, i32 %369)
  store i8* %370, i8** %21, align 8
  %371 = load i8*, i8** %21, align 8
  %372 = call i8** @strm_ary_ptr(i8* %371)
  store i8** %372, i8*** %29, align 8
  store i32 0, i32* %30, align 4
  br label %373

373:                                              ; preds = %427, %368
  %374 = load i32, i32* %30, align 4
  %375 = load %struct.TYPE_42__*, %struct.TYPE_42__** %20, align 8
  %376 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 8
  %378 = icmp slt i32 %374, %377
  br i1 %378, label %379, label %430

379:                                              ; preds = %373
  %380 = load %struct.TYPE_42__*, %struct.TYPE_42__** %20, align 8
  %381 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %380, i32 0, i32 3
  %382 = load %struct.TYPE_43__**, %struct.TYPE_43__*** %381, align 8
  %383 = load i32, i32* %30, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds %struct.TYPE_43__*, %struct.TYPE_43__** %382, i64 %384
  %386 = load %struct.TYPE_43__*, %struct.TYPE_43__** %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 4
  %389 = load i32, i32* @NODE_SPLAT, align 4
  %390 = icmp eq i32 %388, %389
  br i1 %390, label %391, label %418

391:                                              ; preds = %379
  %392 = load i8**, i8*** %22, align 8
  %393 = load i32, i32* %30, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i8*, i8** %392, i64 %394
  %396 = load i8*, i8** %395, align 8
  %397 = call i8* @strm_value_ary(i8* %396)
  store i8* %397, i8** %31, align 8
  %398 = load i8*, i8** %31, align 8
  %399 = call i32 @strm_ary_len(i8* %398)
  store i32 %399, i32* %32, align 4
  %400 = load i8*, i8** %31, align 8
  %401 = call i8** @strm_ary_ptr(i8* %400)
  store i8** %401, i8*** %33, align 8
  store i32 0, i32* %34, align 4
  br label %402

402:                                              ; preds = %414, %391
  %403 = load i32, i32* %34, align 4
  %404 = load i32, i32* %32, align 4
  %405 = icmp slt i32 %403, %404
  br i1 %405, label %406, label %417

406:                                              ; preds = %402
  %407 = load i8**, i8*** %33, align 8
  %408 = load i32, i32* %34, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i8*, i8** %407, i64 %409
  %411 = load i8*, i8** %410, align 8
  %412 = load i8**, i8*** %29, align 8
  %413 = getelementptr inbounds i8*, i8** %412, i32 1
  store i8** %413, i8*** %29, align 8
  store i8* %411, i8** %412, align 8
  br label %414

414:                                              ; preds = %406
  %415 = load i32, i32* %34, align 4
  %416 = add nsw i32 %415, 1
  store i32 %416, i32* %34, align 4
  br label %402

417:                                              ; preds = %402
  br label %426

418:                                              ; preds = %379
  %419 = load i8**, i8*** %22, align 8
  %420 = load i32, i32* %30, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds i8*, i8** %419, i64 %421
  %423 = load i8*, i8** %422, align 8
  %424 = load i8**, i8*** %29, align 8
  %425 = getelementptr inbounds i8*, i8** %424, i32 1
  store i8** %425, i8*** %29, align 8
  store i8* %423, i8** %424, align 8
  br label %426

426:                                              ; preds = %418, %417
  br label %427

427:                                              ; preds = %426
  %428 = load i32, i32* %30, align 4
  %429 = add nsw i32 %428, 1
  store i32 %429, i32* %30, align 4
  br label %373

430:                                              ; preds = %373
  br label %431

431:                                              ; preds = %430, %362
  br label %446

432:                                              ; preds = %312
  %433 = load %struct.TYPE_42__*, %struct.TYPE_42__** %20, align 8
  %434 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %433, i32 0, i32 2
  %435 = load i32, i32* %434, align 8
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %445

437:                                              ; preds = %432
  %438 = load %struct.TYPE_42__*, %struct.TYPE_42__** %20, align 8
  %439 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %438, i32 0, i32 2
  %440 = load i32, i32* %439, align 8
  %441 = load %struct.TYPE_42__*, %struct.TYPE_42__** %20, align 8
  %442 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %441, i32 0, i32 0
  %443 = load i32, i32* %442, align 8
  %444 = call i32 @ary_headers(i32 %440, i32 %443)
  store i32 %444, i32* %35, align 4
  br label %445

445:                                              ; preds = %437, %432
  br label %446

446:                                              ; preds = %445, %431
  %447 = load %struct.TYPE_42__*, %struct.TYPE_42__** %20, align 8
  %448 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %447, i32 0, i32 1
  %449 = load i32, i32* %448, align 4
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %451, label %466

451:                                              ; preds = %446
  %452 = load %struct.TYPE_42__*, %struct.TYPE_42__** %20, align 8
  %453 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %452, i32 0, i32 1
  %454 = load i32, i32* %453, align 4
  %455 = call i32 @node_to_sym(i32 %454)
  %456 = call i32* @strm_ns_get(i32 %455)
  store i32* %456, i32** %36, align 8
  %457 = load i32*, i32** %36, align 8
  %458 = call i32 @STRM_NS_UDEF_GET(i32* %457)
  %459 = icmp ne i32 %458, 0
  br i1 %459, label %464, label %460

460:                                              ; preds = %451
  %461 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %462 = call i32 @strm_raise(%struct.TYPE_40__* %461, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %463 = load i32, i32* @STRM_NG, align 4
  store i32 %463, i32* %5, align 4
  br label %1063

464:                                              ; preds = %451
  %465 = load i32*, i32** %36, align 8
  store i32* %465, i32** %37, align 8
  br label %468

466:                                              ; preds = %446
  %467 = load i32*, i32** @strm_str_null, align 8
  store i32* %467, i32** %38, align 8
  br label %468

468:                                              ; preds = %466, %464
  %469 = load i8*, i8** %21, align 8
  %470 = call i8* @strm_ary_value(i8* %469)
  %471 = load i8**, i8*** %9, align 8
  store i8* %470, i8** %471, align 8
  %472 = load i32, i32* @STRM_OK, align 4
  store i32 %472, i32* %5, align 4
  br label %1063

473:                                              ; preds = %75
  %474 = load %struct.TYPE_43__*, %struct.TYPE_43__** %8, align 8
  %475 = bitcast %struct.TYPE_43__* %474 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %475, %struct.TYPE_33__** %39, align 8
  %476 = load i32*, i32** %7, align 8
  %477 = load %struct.TYPE_33__*, %struct.TYPE_33__** %39, align 8
  %478 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %477, i32 0, i32 0
  %479 = load i32, i32* %478, align 4
  %480 = call i32 @node_to_sym(i32 %479)
  %481 = load i8**, i8*** %9, align 8
  %482 = call i32 @strm_var_get(i32* %476, i32 %480, i8** %481)
  store i32 %482, i32* %10, align 4
  %483 = load i32, i32* %10, align 4
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %485, label %488

485:                                              ; preds = %473
  %486 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %487 = call i32 @strm_raise(%struct.TYPE_40__* %486, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  br label %488

488:                                              ; preds = %485, %473
  %489 = load i32, i32* %10, align 4
  store i32 %489, i32* %5, align 4
  br label %1063

490:                                              ; preds = %75
  %491 = load %struct.TYPE_43__*, %struct.TYPE_43__** %8, align 8
  %492 = bitcast %struct.TYPE_43__* %491 to %struct.TYPE_32__*
  store %struct.TYPE_32__* %492, %struct.TYPE_32__** %41, align 8
  %493 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %494 = load i32*, i32** %7, align 8
  %495 = load %struct.TYPE_32__*, %struct.TYPE_32__** %41, align 8
  %496 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %495, i32 0, i32 2
  %497 = load %struct.TYPE_43__*, %struct.TYPE_43__** %496, align 8
  %498 = call i32 @exec_expr(%struct.TYPE_40__* %493, i32* %494, %struct.TYPE_43__* %497, i8** %40)
  store i32 %498, i32* %10, align 4
  %499 = load i32, i32* %10, align 4
  %500 = icmp ne i32 %499, 0
  br i1 %500, label %501, label %503

501:                                              ; preds = %490
  %502 = load i32, i32* %10, align 4
  store i32 %502, i32* %5, align 4
  br label %1063

503:                                              ; preds = %490
  %504 = load i8*, i8** %40, align 8
  %505 = call i32 @strm_bool_p(i8* %504)
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %507, label %519

507:                                              ; preds = %503
  %508 = load i8*, i8** %40, align 8
  %509 = call i32 @strm_value_bool(i8* %508)
  %510 = icmp ne i32 %509, 0
  br i1 %510, label %511, label %519

511:                                              ; preds = %507
  %512 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %513 = load i32*, i32** %7, align 8
  %514 = load %struct.TYPE_32__*, %struct.TYPE_32__** %41, align 8
  %515 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %514, i32 0, i32 1
  %516 = load %struct.TYPE_43__*, %struct.TYPE_43__** %515, align 8
  %517 = load i8**, i8*** %9, align 8
  %518 = call i32 @exec_expr(%struct.TYPE_40__* %512, i32* %513, %struct.TYPE_43__* %516, i8** %517)
  store i32 %518, i32* %5, align 4
  br label %1063

519:                                              ; preds = %507, %503
  %520 = load %struct.TYPE_32__*, %struct.TYPE_32__** %41, align 8
  %521 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %520, i32 0, i32 0
  %522 = load %struct.TYPE_43__*, %struct.TYPE_43__** %521, align 8
  %523 = icmp ne %struct.TYPE_43__* %522, null
  br i1 %523, label %524, label %532

524:                                              ; preds = %519
  %525 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %526 = load i32*, i32** %7, align 8
  %527 = load %struct.TYPE_32__*, %struct.TYPE_32__** %41, align 8
  %528 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %527, i32 0, i32 0
  %529 = load %struct.TYPE_43__*, %struct.TYPE_43__** %528, align 8
  %530 = load i8**, i8*** %9, align 8
  %531 = call i32 @exec_expr(%struct.TYPE_40__* %525, i32* %526, %struct.TYPE_43__* %529, i8** %530)
  store i32 %531, i32* %5, align 4
  br label %1063

532:                                              ; preds = %519
  %533 = call i8* (...) @strm_nil_value()
  %534 = load i8**, i8*** %9, align 8
  store i8* %533, i8** %534, align 8
  %535 = load i32, i32* @STRM_OK, align 4
  store i32 %535, i32* %5, align 4
  br label %1063

536:                                              ; preds = %75
  %537 = load %struct.TYPE_43__*, %struct.TYPE_43__** %8, align 8
  %538 = bitcast %struct.TYPE_43__* %537 to %struct.TYPE_48__*
  store %struct.TYPE_48__* %538, %struct.TYPE_48__** %42, align 8
  store i32 0, i32* %44, align 4
  %539 = load %struct.TYPE_48__*, %struct.TYPE_48__** %42, align 8
  %540 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %539, i32 0, i32 2
  %541 = load %struct.TYPE_43__*, %struct.TYPE_43__** %540, align 8
  %542 = icmp ne %struct.TYPE_43__* %541, null
  br i1 %542, label %543, label %559

543:                                              ; preds = %536
  %544 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %545 = load i32*, i32** %7, align 8
  %546 = load %struct.TYPE_48__*, %struct.TYPE_48__** %42, align 8
  %547 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %546, i32 0, i32 2
  %548 = load %struct.TYPE_43__*, %struct.TYPE_43__** %547, align 8
  %549 = load i32, i32* %44, align 4
  %550 = add nsw i32 %549, 1
  store i32 %550, i32* %44, align 4
  %551 = sext i32 %549 to i64
  %552 = getelementptr inbounds [2 x i8*], [2 x i8*]* %43, i64 0, i64 %551
  %553 = call i32 @exec_expr(%struct.TYPE_40__* %544, i32* %545, %struct.TYPE_43__* %548, i8** %552)
  store i32 %553, i32* %10, align 4
  %554 = load i32, i32* %10, align 4
  %555 = icmp ne i32 %554, 0
  br i1 %555, label %556, label %558

556:                                              ; preds = %543
  %557 = load i32, i32* %10, align 4
  store i32 %557, i32* %5, align 4
  br label %1063

558:                                              ; preds = %543
  br label %559

559:                                              ; preds = %558, %536
  %560 = load %struct.TYPE_48__*, %struct.TYPE_48__** %42, align 8
  %561 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %560, i32 0, i32 1
  %562 = load %struct.TYPE_43__*, %struct.TYPE_43__** %561, align 8
  %563 = icmp ne %struct.TYPE_43__* %562, null
  br i1 %563, label %564, label %580

564:                                              ; preds = %559
  %565 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %566 = load i32*, i32** %7, align 8
  %567 = load %struct.TYPE_48__*, %struct.TYPE_48__** %42, align 8
  %568 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %567, i32 0, i32 1
  %569 = load %struct.TYPE_43__*, %struct.TYPE_43__** %568, align 8
  %570 = load i32, i32* %44, align 4
  %571 = add nsw i32 %570, 1
  store i32 %571, i32* %44, align 4
  %572 = sext i32 %570 to i64
  %573 = getelementptr inbounds [2 x i8*], [2 x i8*]* %43, i64 0, i64 %572
  %574 = call i32 @exec_expr(%struct.TYPE_40__* %565, i32* %566, %struct.TYPE_43__* %569, i8** %573)
  store i32 %574, i32* %10, align 4
  %575 = load i32, i32* %10, align 4
  %576 = icmp ne i32 %575, 0
  br i1 %576, label %577, label %579

577:                                              ; preds = %564
  %578 = load i32, i32* %10, align 4
  store i32 %578, i32* %5, align 4
  br label %1063

579:                                              ; preds = %564
  br label %580

580:                                              ; preds = %579, %559
  %581 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %582 = load i32*, i32** %7, align 8
  %583 = load %struct.TYPE_48__*, %struct.TYPE_48__** %42, align 8
  %584 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %583, i32 0, i32 0
  %585 = load i32, i32* %584, align 8
  %586 = call i32 @node_to_sym(i32 %585)
  %587 = load i32, i32* %44, align 4
  %588 = getelementptr inbounds [2 x i8*], [2 x i8*]* %43, i64 0, i64 0
  %589 = load i8**, i8*** %9, align 8
  %590 = call i32 @exec_call(%struct.TYPE_40__* %581, i32* %582, i32 %586, i32 %587, i8** %588, i8** %589)
  store i32 %590, i32* %5, align 4
  br label %1063

591:                                              ; preds = %75, %75
  %592 = call i8* @malloc(i32 24)
  %593 = bitcast i8* %592 to %struct.strm_lambda*
  store %struct.strm_lambda* %593, %struct.strm_lambda** %45, align 8
  %594 = load %struct.strm_lambda*, %struct.strm_lambda** %45, align 8
  %595 = icmp ne %struct.strm_lambda* %594, null
  br i1 %595, label %598, label %596

596:                                              ; preds = %591
  %597 = load i32, i32* @STRM_NG, align 4
  store i32 %597, i32* %5, align 4
  br label %1063

598:                                              ; preds = %591
  %599 = call i8* @malloc(i32 4)
  %600 = bitcast i8* %599 to i32*
  %601 = load %struct.strm_lambda*, %struct.strm_lambda** %45, align 8
  %602 = getelementptr inbounds %struct.strm_lambda, %struct.strm_lambda* %601, i32 0, i32 2
  store i32* %600, i32** %602, align 8
  %603 = load %struct.strm_lambda*, %struct.strm_lambda** %45, align 8
  %604 = getelementptr inbounds %struct.strm_lambda, %struct.strm_lambda* %603, i32 0, i32 2
  %605 = load i32*, i32** %604, align 8
  %606 = icmp ne i32* %605, null
  br i1 %606, label %609, label %607

607:                                              ; preds = %598
  %608 = load i32, i32* @STRM_NG, align 4
  store i32 %608, i32* %5, align 4
  br label %1063

609:                                              ; preds = %598
  %610 = load i32*, i32** %7, align 8
  %611 = load i32, i32* %610, align 4
  %612 = load %struct.strm_lambda*, %struct.strm_lambda** %45, align 8
  %613 = getelementptr inbounds %struct.strm_lambda, %struct.strm_lambda* %612, i32 0, i32 2
  %614 = load i32*, i32** %613, align 8
  store i32 %611, i32* %614, align 4
  %615 = load i32, i32* @STRM_PTR_LAMBDA, align 4
  %616 = load %struct.strm_lambda*, %struct.strm_lambda** %45, align 8
  %617 = getelementptr inbounds %struct.strm_lambda, %struct.strm_lambda* %616, i32 0, i32 1
  store i32 %615, i32* %617, align 8
  %618 = load %struct.TYPE_43__*, %struct.TYPE_43__** %8, align 8
  %619 = bitcast %struct.TYPE_43__* %618 to i32*
  %620 = load %struct.strm_lambda*, %struct.strm_lambda** %45, align 8
  %621 = getelementptr inbounds %struct.strm_lambda, %struct.strm_lambda* %620, i32 0, i32 0
  store i32* %619, i32** %621, align 8
  %622 = load %struct.strm_lambda*, %struct.strm_lambda** %45, align 8
  %623 = call i8* @strm_ptr_value(%struct.strm_lambda* %622)
  %624 = load i8**, i8*** %9, align 8
  store i8* %623, i8** %624, align 8
  %625 = load i32, i32* @STRM_OK, align 4
  store i32 %625, i32* %5, align 4
  br label %1063

626:                                              ; preds = %75
  %627 = load %struct.TYPE_43__*, %struct.TYPE_43__** %8, align 8
  %628 = bitcast %struct.TYPE_43__* %627 to %struct.TYPE_39__*
  store %struct.TYPE_39__* %628, %struct.TYPE_39__** %46, align 8
  %629 = load %struct.TYPE_39__*, %struct.TYPE_39__** %46, align 8
  %630 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %629, i32 0, i32 1
  %631 = load %struct.TYPE_43__*, %struct.TYPE_43__** %630, align 8
  %632 = bitcast %struct.TYPE_43__* %631 to %struct.TYPE_50__*
  store %struct.TYPE_50__* %632, %struct.TYPE_50__** %48, align 8
  %633 = load i32, i32* @FALSE, align 4
  store i32 %633, i32* %50, align 4
  store i32 0, i32* %47, align 4
  br label %634

634:                                              ; preds = %655, %626
  %635 = load i32, i32* %47, align 4
  %636 = load %struct.TYPE_50__*, %struct.TYPE_50__** %48, align 8
  %637 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %636, i32 0, i32 0
  %638 = load i32, i32* %637, align 8
  %639 = icmp slt i32 %635, %638
  br i1 %639, label %640, label %658

640:                                              ; preds = %634
  %641 = load %struct.TYPE_50__*, %struct.TYPE_50__** %48, align 8
  %642 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %641, i32 0, i32 1
  %643 = load %struct.TYPE_43__**, %struct.TYPE_43__*** %642, align 8
  %644 = load i32, i32* %47, align 4
  %645 = sext i32 %644 to i64
  %646 = getelementptr inbounds %struct.TYPE_43__*, %struct.TYPE_43__** %643, i64 %645
  %647 = load %struct.TYPE_43__*, %struct.TYPE_43__** %646, align 8
  %648 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %647, i32 0, i32 0
  %649 = load i32, i32* %648, align 4
  %650 = load i32, i32* @NODE_SPLAT, align 4
  %651 = icmp eq i32 %649, %650
  br i1 %651, label %652, label %654

652:                                              ; preds = %640
  %653 = load i32, i32* @TRUE, align 4
  store i32 %653, i32* %50, align 4
  br label %658

654:                                              ; preds = %640
  br label %655

655:                                              ; preds = %654
  %656 = load i32, i32* %47, align 4
  %657 = add nsw i32 %656, 1
  store i32 %657, i32* %47, align 4
  br label %634

658:                                              ; preds = %652, %634
  %659 = load i32, i32* %50, align 4
  %660 = icmp ne i32 %659, 0
  br i1 %660, label %661, label %672

661:                                              ; preds = %658
  %662 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %663 = load i32*, i32** %7, align 8
  %664 = load %struct.TYPE_39__*, %struct.TYPE_39__** %46, align 8
  %665 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %664, i32 0, i32 1
  %666 = load %struct.TYPE_43__*, %struct.TYPE_43__** %665, align 8
  %667 = call i32 @exec_expr(%struct.TYPE_40__* %662, i32* %663, %struct.TYPE_43__* %666, i8** %51)
  store i32 %667, i32* %10, align 4
  %668 = load i8*, i8** %51, align 8
  %669 = call i8** @strm_ary_ptr(i8* %668)
  store i8** %669, i8*** %49, align 8
  %670 = load i8*, i8** %51, align 8
  %671 = call i32 @strm_ary_len(i8* %670)
  store i32 %671, i32* %47, align 4
  br label %714

672:                                              ; preds = %658
  %673 = load %struct.TYPE_50__*, %struct.TYPE_50__** %48, align 8
  %674 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %673, i32 0, i32 0
  %675 = load i32, i32* %674, align 8
  %676 = sext i32 %675 to i64
  %677 = mul i64 8, %676
  %678 = trunc i64 %677 to i32
  %679 = call i8* @malloc(i32 %678)
  %680 = bitcast i8* %679 to i8**
  store i8** %680, i8*** %49, align 8
  store i32 0, i32* %47, align 4
  br label %681

681:                                              ; preds = %710, %672
  %682 = load i32, i32* %47, align 4
  %683 = load %struct.TYPE_50__*, %struct.TYPE_50__** %48, align 8
  %684 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %683, i32 0, i32 0
  %685 = load i32, i32* %684, align 8
  %686 = icmp slt i32 %682, %685
  br i1 %686, label %687, label %713

687:                                              ; preds = %681
  %688 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %689 = load i32*, i32** %7, align 8
  %690 = load %struct.TYPE_50__*, %struct.TYPE_50__** %48, align 8
  %691 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %690, i32 0, i32 1
  %692 = load %struct.TYPE_43__**, %struct.TYPE_43__*** %691, align 8
  %693 = load i32, i32* %47, align 4
  %694 = sext i32 %693 to i64
  %695 = getelementptr inbounds %struct.TYPE_43__*, %struct.TYPE_43__** %692, i64 %694
  %696 = load %struct.TYPE_43__*, %struct.TYPE_43__** %695, align 8
  %697 = load i8**, i8*** %49, align 8
  %698 = load i32, i32* %47, align 4
  %699 = sext i32 %698 to i64
  %700 = getelementptr inbounds i8*, i8** %697, i64 %699
  %701 = call i32 @exec_expr(%struct.TYPE_40__* %688, i32* %689, %struct.TYPE_43__* %696, i8** %700)
  store i32 %701, i32* %10, align 4
  %702 = load i32, i32* %10, align 4
  %703 = load i32, i32* @STRM_NG, align 4
  %704 = icmp eq i32 %702, %703
  br i1 %704, label %705, label %709

705:                                              ; preds = %687
  %706 = load i8**, i8*** %49, align 8
  %707 = call i32 @free(i8** %706)
  %708 = load i32, i32* %10, align 4
  store i32 %708, i32* %5, align 4
  br label %1063

709:                                              ; preds = %687
  br label %710

710:                                              ; preds = %709
  %711 = load i32, i32* %47, align 4
  %712 = add nsw i32 %711, 1
  store i32 %712, i32* %47, align 4
  br label %681

713:                                              ; preds = %681
  br label %714

714:                                              ; preds = %713, %661
  %715 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %716 = load i32*, i32** %7, align 8
  %717 = load %struct.TYPE_39__*, %struct.TYPE_39__** %46, align 8
  %718 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %717, i32 0, i32 0
  %719 = load i32, i32* %718, align 8
  %720 = call i32 @node_to_sym(i32 %719)
  %721 = load i32, i32* %47, align 4
  %722 = load i8**, i8*** %49, align 8
  %723 = load i8**, i8*** %9, align 8
  %724 = call i32 @exec_call(%struct.TYPE_40__* %715, i32* %716, i32 %720, i32 %721, i8** %722, i8** %723)
  store i32 %724, i32* %10, align 4
  %725 = load i32, i32* %50, align 4
  %726 = icmp ne i32 %725, 0
  br i1 %726, label %730, label %727

727:                                              ; preds = %714
  %728 = load i8**, i8*** %49, align 8
  %729 = call i32 @free(i8** %728)
  br label %730

730:                                              ; preds = %727, %714
  %731 = load i32, i32* %10, align 4
  store i32 %731, i32* %5, align 4
  br label %1063

732:                                              ; preds = %75
  %733 = load %struct.TYPE_43__*, %struct.TYPE_43__** %8, align 8
  %734 = bitcast %struct.TYPE_43__* %733 to %struct.TYPE_36__*
  store %struct.TYPE_36__* %734, %struct.TYPE_36__** %52, align 8
  %735 = load %struct.TYPE_36__*, %struct.TYPE_36__** %52, align 8
  %736 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %735, i32 0, i32 0
  %737 = load %struct.TYPE_43__*, %struct.TYPE_43__** %736, align 8
  %738 = bitcast %struct.TYPE_43__* %737 to %struct.TYPE_50__*
  store %struct.TYPE_50__* %738, %struct.TYPE_50__** %55, align 8
  %739 = load i32, i32* @FALSE, align 4
  store i32 %739, i32* %57, align 4
  %740 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %741 = load i32*, i32** %7, align 8
  %742 = load %struct.TYPE_36__*, %struct.TYPE_36__** %52, align 8
  %743 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %742, i32 0, i32 1
  %744 = load %struct.TYPE_43__*, %struct.TYPE_43__** %743, align 8
  %745 = call i32 @exec_expr(%struct.TYPE_40__* %740, i32* %741, %struct.TYPE_43__* %744, i8** %54)
  %746 = load i32, i32* @STRM_NG, align 4
  %747 = icmp eq i32 %745, %746
  br i1 %747, label %748, label %750

748:                                              ; preds = %732
  %749 = load i32, i32* @STRM_NG, align 4
  store i32 %749, i32* %5, align 4
  br label %1063

750:                                              ; preds = %732
  store i32 0, i32* %53, align 4
  br label %751

751:                                              ; preds = %772, %750
  %752 = load i32, i32* %53, align 4
  %753 = load %struct.TYPE_50__*, %struct.TYPE_50__** %55, align 8
  %754 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %753, i32 0, i32 0
  %755 = load i32, i32* %754, align 8
  %756 = icmp slt i32 %752, %755
  br i1 %756, label %757, label %775

757:                                              ; preds = %751
  %758 = load %struct.TYPE_50__*, %struct.TYPE_50__** %55, align 8
  %759 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %758, i32 0, i32 1
  %760 = load %struct.TYPE_43__**, %struct.TYPE_43__*** %759, align 8
  %761 = load i32, i32* %53, align 4
  %762 = sext i32 %761 to i64
  %763 = getelementptr inbounds %struct.TYPE_43__*, %struct.TYPE_43__** %760, i64 %762
  %764 = load %struct.TYPE_43__*, %struct.TYPE_43__** %763, align 8
  %765 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %764, i32 0, i32 0
  %766 = load i32, i32* %765, align 4
  %767 = load i32, i32* @NODE_SPLAT, align 4
  %768 = icmp eq i32 %766, %767
  br i1 %768, label %769, label %771

769:                                              ; preds = %757
  %770 = load i32, i32* @TRUE, align 4
  store i32 %770, i32* %57, align 4
  br label %775

771:                                              ; preds = %757
  br label %772

772:                                              ; preds = %771
  %773 = load i32, i32* %53, align 4
  %774 = add nsw i32 %773, 1
  store i32 %774, i32* %53, align 4
  br label %751

775:                                              ; preds = %769, %751
  %776 = load i32, i32* %57, align 4
  %777 = icmp ne i32 %776, 0
  br i1 %777, label %778, label %789

778:                                              ; preds = %775
  %779 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %780 = load i32*, i32** %7, align 8
  %781 = load %struct.TYPE_36__*, %struct.TYPE_36__** %52, align 8
  %782 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %781, i32 0, i32 0
  %783 = load %struct.TYPE_43__*, %struct.TYPE_43__** %782, align 8
  %784 = call i32 @exec_expr(%struct.TYPE_40__* %779, i32* %780, %struct.TYPE_43__* %783, i8** %58)
  store i32 %784, i32* %10, align 4
  %785 = load i8*, i8** %58, align 8
  %786 = call i8** @strm_ary_ptr(i8* %785)
  store i8** %786, i8*** %56, align 8
  %787 = load i8*, i8** %58, align 8
  %788 = call i32 @strm_ary_len(i8* %787)
  store i32 %788, i32* %53, align 4
  br label %831

789:                                              ; preds = %775
  %790 = load %struct.TYPE_50__*, %struct.TYPE_50__** %55, align 8
  %791 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %790, i32 0, i32 0
  %792 = load i32, i32* %791, align 8
  %793 = sext i32 %792 to i64
  %794 = mul i64 8, %793
  %795 = trunc i64 %794 to i32
  %796 = call i8* @malloc(i32 %795)
  %797 = bitcast i8* %796 to i8**
  store i8** %797, i8*** %56, align 8
  store i32 0, i32* %53, align 4
  br label %798

798:                                              ; preds = %827, %789
  %799 = load i32, i32* %53, align 4
  %800 = load %struct.TYPE_50__*, %struct.TYPE_50__** %55, align 8
  %801 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %800, i32 0, i32 0
  %802 = load i32, i32* %801, align 8
  %803 = icmp slt i32 %799, %802
  br i1 %803, label %804, label %830

804:                                              ; preds = %798
  %805 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %806 = load i32*, i32** %7, align 8
  %807 = load %struct.TYPE_50__*, %struct.TYPE_50__** %55, align 8
  %808 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %807, i32 0, i32 1
  %809 = load %struct.TYPE_43__**, %struct.TYPE_43__*** %808, align 8
  %810 = load i32, i32* %53, align 4
  %811 = sext i32 %810 to i64
  %812 = getelementptr inbounds %struct.TYPE_43__*, %struct.TYPE_43__** %809, i64 %811
  %813 = load %struct.TYPE_43__*, %struct.TYPE_43__** %812, align 8
  %814 = load i8**, i8*** %56, align 8
  %815 = load i32, i32* %53, align 4
  %816 = sext i32 %815 to i64
  %817 = getelementptr inbounds i8*, i8** %814, i64 %816
  %818 = call i32 @exec_expr(%struct.TYPE_40__* %805, i32* %806, %struct.TYPE_43__* %813, i8** %817)
  store i32 %818, i32* %10, align 4
  %819 = load i32, i32* %10, align 4
  %820 = load i32, i32* @STRM_NG, align 4
  %821 = icmp eq i32 %819, %820
  br i1 %821, label %822, label %826

822:                                              ; preds = %804
  %823 = load i8**, i8*** %56, align 8
  %824 = call i32 @free(i8** %823)
  %825 = load i32, i32* %10, align 4
  store i32 %825, i32* %5, align 4
  br label %1063

826:                                              ; preds = %804
  br label %827

827:                                              ; preds = %826
  %828 = load i32, i32* %53, align 4
  %829 = add nsw i32 %828, 1
  store i32 %829, i32* %53, align 4
  br label %798

830:                                              ; preds = %798
  br label %831

831:                                              ; preds = %830, %778
  %832 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %833 = load i8*, i8** %54, align 8
  %834 = load i32, i32* %53, align 4
  %835 = load i8**, i8*** %56, align 8
  %836 = load i8**, i8*** %9, align 8
  %837 = call i32 @strm_funcall(%struct.TYPE_40__* %832, i8* %833, i32 %834, i8** %835, i8** %836)
  store i32 %837, i32* %10, align 4
  %838 = load i32, i32* %57, align 4
  %839 = icmp ne i32 %838, 0
  br i1 %839, label %843, label %840

840:                                              ; preds = %831
  %841 = load i8**, i8*** %56, align 8
  %842 = call i32 @free(i8** %841)
  br label %843

843:                                              ; preds = %840, %831
  %844 = load i32, i32* %10, align 4
  store i32 %844, i32* %5, align 4
  br label %1063

845:                                              ; preds = %75
  %846 = load %struct.TYPE_43__*, %struct.TYPE_43__** %8, align 8
  %847 = bitcast %struct.TYPE_43__* %846 to %struct.TYPE_34__*
  store %struct.TYPE_34__* %847, %struct.TYPE_34__** %59, align 8
  %848 = load i32*, i32** %7, align 8
  %849 = load %struct.TYPE_34__*, %struct.TYPE_34__** %59, align 8
  %850 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %849, i32 0, i32 0
  %851 = load i32, i32* %850, align 4
  %852 = call i32 @node_to_str(i32 %851)
  %853 = call %struct.strm_lambda* @genfunc_new(i32* %848, i32 %852)
  %854 = bitcast %struct.strm_lambda* %853 to %struct.strm_genfunc*
  store %struct.strm_genfunc* %854, %struct.strm_genfunc** %60, align 8
  %855 = load %struct.strm_genfunc*, %struct.strm_genfunc** %60, align 8
  %856 = icmp ne %struct.strm_genfunc* %855, null
  br i1 %856, label %859, label %857

857:                                              ; preds = %845
  %858 = load i32, i32* @STRM_NG, align 4
  store i32 %858, i32* %5, align 4
  br label %1063

859:                                              ; preds = %845
  %860 = load %struct.strm_genfunc*, %struct.strm_genfunc** %60, align 8
  %861 = bitcast %struct.strm_genfunc* %860 to %struct.strm_lambda*
  %862 = call i8* @strm_ptr_value(%struct.strm_lambda* %861)
  %863 = load i8**, i8*** %9, align 8
  store i8* %862, i8** %863, align 8
  %864 = load i32, i32* @STRM_OK, align 4
  store i32 %864, i32* %5, align 4
  br label %1063

865:                                              ; preds = %75
  %866 = load %struct.TYPE_43__*, %struct.TYPE_43__** %8, align 8
  %867 = bitcast %struct.TYPE_43__* %866 to %struct.TYPE_47__*
  store %struct.TYPE_47__* %867, %struct.TYPE_47__** %61, align 8
  %868 = load %struct.TYPE_47__*, %struct.TYPE_47__** %61, align 8
  %869 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %868, i32 0, i32 0
  %870 = load i64, i64* %869, align 8
  %871 = inttoptr i64 %870 to %struct.TYPE_50__*
  store %struct.TYPE_50__* %871, %struct.TYPE_50__** %62, align 8
  %872 = load %struct.TYPE_50__*, %struct.TYPE_50__** %62, align 8
  %873 = icmp ne %struct.TYPE_50__* %872, null
  br i1 %873, label %876, label %874

874:                                              ; preds = %865
  %875 = call i8* (...) @strm_nil_value()
  store i8* %875, i8** %63, align 8
  br label %934

876:                                              ; preds = %865
  %877 = load %struct.TYPE_50__*, %struct.TYPE_50__** %62, align 8
  %878 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %877, i32 0, i32 0
  %879 = load i32, i32* %878, align 8
  switch i32 %879, label %896 [
    i32 0, label %880
    i32 1, label %882
  ]

880:                                              ; preds = %876
  %881 = call i8* (...) @strm_nil_value()
  store i8* %881, i8** %63, align 8
  br label %933

882:                                              ; preds = %876
  %883 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %884 = load i32*, i32** %7, align 8
  %885 = load %struct.TYPE_50__*, %struct.TYPE_50__** %62, align 8
  %886 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %885, i32 0, i32 1
  %887 = load %struct.TYPE_43__**, %struct.TYPE_43__*** %886, align 8
  %888 = getelementptr inbounds %struct.TYPE_43__*, %struct.TYPE_43__** %887, i64 0
  %889 = load %struct.TYPE_43__*, %struct.TYPE_43__** %888, align 8
  %890 = call i32 @exec_expr(%struct.TYPE_40__* %883, i32* %884, %struct.TYPE_43__* %889, i8** %63)
  store i32 %890, i32* %10, align 4
  %891 = load i32, i32* %10, align 4
  %892 = icmp ne i32 %891, 0
  br i1 %892, label %893, label %895

893:                                              ; preds = %882
  %894 = load i32, i32* %10, align 4
  store i32 %894, i32* %5, align 4
  br label %1063

895:                                              ; preds = %882
  br label %933

896:                                              ; preds = %876
  %897 = load %struct.TYPE_50__*, %struct.TYPE_50__** %62, align 8
  %898 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %897, i32 0, i32 0
  %899 = load i32, i32* %898, align 8
  %900 = call i8* @strm_ary_new(i32* null, i32 %899)
  store i8* %900, i8** %64, align 8
  store i64 0, i64* %65, align 8
  br label %901

901:                                              ; preds = %927, %896
  %902 = load i64, i64* %65, align 8
  %903 = load %struct.TYPE_50__*, %struct.TYPE_50__** %62, align 8
  %904 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %903, i32 0, i32 0
  %905 = load i32, i32* %904, align 8
  %906 = sext i32 %905 to i64
  %907 = icmp ult i64 %902, %906
  br i1 %907, label %908, label %930

908:                                              ; preds = %901
  %909 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %910 = load i32*, i32** %7, align 8
  %911 = load %struct.TYPE_50__*, %struct.TYPE_50__** %62, align 8
  %912 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %911, i32 0, i32 1
  %913 = load %struct.TYPE_43__**, %struct.TYPE_43__*** %912, align 8
  %914 = load i64, i64* %65, align 8
  %915 = getelementptr inbounds %struct.TYPE_43__*, %struct.TYPE_43__** %913, i64 %914
  %916 = load %struct.TYPE_43__*, %struct.TYPE_43__** %915, align 8
  %917 = load i8*, i8** %64, align 8
  %918 = call i8** @strm_ary_ptr(i8* %917)
  %919 = load i64, i64* %65, align 8
  %920 = getelementptr inbounds i8*, i8** %918, i64 %919
  %921 = call i32 @exec_expr(%struct.TYPE_40__* %909, i32* %910, %struct.TYPE_43__* %916, i8** %920)
  store i32 %921, i32* %10, align 4
  %922 = load i32, i32* %10, align 4
  %923 = icmp ne i32 %922, 0
  br i1 %923, label %924, label %926

924:                                              ; preds = %908
  %925 = load i32, i32* %10, align 4
  store i32 %925, i32* %5, align 4
  br label %1063

926:                                              ; preds = %908
  br label %927

927:                                              ; preds = %926
  %928 = load i64, i64* %65, align 8
  %929 = add i64 %928, 1
  store i64 %929, i64* %65, align 8
  br label %901

930:                                              ; preds = %901
  %931 = load i8*, i8** %64, align 8
  %932 = call i8* @strm_ary_value(i8* %931)
  store i8* %932, i8** %63, align 8
  br label %933

933:                                              ; preds = %930, %895, %880
  br label %934

934:                                              ; preds = %933, %874
  %935 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %936 = load i32, i32* @NODE_ERROR_RETURN, align 4
  %937 = load i8*, i8** %63, align 8
  %938 = call i32 @strm_set_exc(%struct.TYPE_40__* %935, i32 %936, i8* %937)
  %939 = load i32, i32* @STRM_NG, align 4
  store i32 %939, i32* %5, align 4
  br label %1063

940:                                              ; preds = %75
  %941 = load %struct.TYPE_43__*, %struct.TYPE_43__** %8, align 8
  %942 = bitcast %struct.TYPE_43__* %941 to %struct.TYPE_50__*
  store %struct.TYPE_50__* %942, %struct.TYPE_50__** %67, align 8
  store i32 0, i32* %66, align 4
  br label %943

943:                                              ; preds = %994, %940
  %944 = load i32, i32* %66, align 4
  %945 = load %struct.TYPE_50__*, %struct.TYPE_50__** %67, align 8
  %946 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %945, i32 0, i32 0
  %947 = load i32, i32* %946, align 8
  %948 = icmp slt i32 %944, %947
  br i1 %948, label %949, label %997

949:                                              ; preds = %943
  %950 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %951 = load i32*, i32** %7, align 8
  %952 = load %struct.TYPE_50__*, %struct.TYPE_50__** %67, align 8
  %953 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %952, i32 0, i32 1
  %954 = load %struct.TYPE_43__**, %struct.TYPE_43__*** %953, align 8
  %955 = load i32, i32* %66, align 4
  %956 = sext i32 %955 to i64
  %957 = getelementptr inbounds %struct.TYPE_43__*, %struct.TYPE_43__** %954, i64 %956
  %958 = load %struct.TYPE_43__*, %struct.TYPE_43__** %957, align 8
  %959 = load i8**, i8*** %9, align 8
  %960 = call i32 @exec_expr(%struct.TYPE_40__* %950, i32* %951, %struct.TYPE_43__* %958, i8** %959)
  store i32 %960, i32* %10, align 4
  %961 = load i32, i32* %10, align 4
  %962 = icmp ne i32 %961, 0
  br i1 %962, label %963, label %993

963:                                              ; preds = %949
  %964 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %965 = icmp ne %struct.TYPE_40__* %964, null
  br i1 %965, label %966, label %991

966:                                              ; preds = %963
  %967 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %968 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %967, i32 0, i32 0
  %969 = load %struct.TYPE_37__*, %struct.TYPE_37__** %968, align 8
  store %struct.TYPE_37__* %969, %struct.TYPE_37__** %68, align 8
  %970 = load %struct.TYPE_37__*, %struct.TYPE_37__** %68, align 8
  %971 = icmp ne %struct.TYPE_37__* %970, null
  br i1 %971, label %972, label %990

972:                                              ; preds = %966
  %973 = load %struct.TYPE_50__*, %struct.TYPE_50__** %67, align 8
  %974 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %973, i32 0, i32 1
  %975 = load %struct.TYPE_43__**, %struct.TYPE_43__*** %974, align 8
  %976 = load i32, i32* %66, align 4
  %977 = sext i32 %976 to i64
  %978 = getelementptr inbounds %struct.TYPE_43__*, %struct.TYPE_43__** %975, i64 %977
  %979 = load %struct.TYPE_43__*, %struct.TYPE_43__** %978, align 8
  store %struct.TYPE_43__* %979, %struct.TYPE_43__** %69, align 8
  %980 = load %struct.TYPE_43__*, %struct.TYPE_43__** %69, align 8
  %981 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %980, i32 0, i32 2
  %982 = load i32, i32* %981, align 4
  %983 = load %struct.TYPE_37__*, %struct.TYPE_37__** %68, align 8
  %984 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %983, i32 0, i32 1
  store i32 %982, i32* %984, align 4
  %985 = load %struct.TYPE_43__*, %struct.TYPE_43__** %69, align 8
  %986 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %985, i32 0, i32 1
  %987 = load i32, i32* %986, align 4
  %988 = load %struct.TYPE_37__*, %struct.TYPE_37__** %68, align 8
  %989 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %988, i32 0, i32 0
  store i32 %987, i32* %989, align 4
  br label %990

990:                                              ; preds = %972, %966
  br label %991

991:                                              ; preds = %990, %963
  %992 = load i32, i32* %10, align 4
  store i32 %992, i32* %5, align 4
  br label %1063

993:                                              ; preds = %949
  br label %994

994:                                              ; preds = %993
  %995 = load i32, i32* %66, align 4
  %996 = add nsw i32 %995, 1
  store i32 %996, i32* %66, align 4
  br label %943

997:                                              ; preds = %943
  %998 = load i32, i32* @STRM_OK, align 4
  store i32 %998, i32* %5, align 4
  br label %1063

999:                                              ; preds = %75
  %1000 = load %struct.TYPE_43__*, %struct.TYPE_43__** %8, align 8
  %1001 = bitcast %struct.TYPE_43__* %1000 to %struct.TYPE_30__*
  %1002 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %1001, i32 0, i32 0
  %1003 = load i32, i32* %1002, align 4
  %1004 = call i8* @strm_int_value(i32 %1003)
  %1005 = load i8**, i8*** %9, align 8
  store i8* %1004, i8** %1005, align 8
  %1006 = load i32, i32* @STRM_OK, align 4
  store i32 %1006, i32* %5, align 4
  br label %1063

1007:                                             ; preds = %75
  %1008 = load %struct.TYPE_43__*, %struct.TYPE_43__** %8, align 8
  %1009 = bitcast %struct.TYPE_43__* %1008 to %struct.TYPE_35__*
  %1010 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %1009, i32 0, i32 0
  %1011 = load i32, i32* %1010, align 4
  %1012 = call i8* @strm_float_value(i32 %1011)
  %1013 = load i8**, i8*** %9, align 8
  store i8* %1012, i8** %1013, align 8
  %1014 = load i32, i32* @STRM_OK, align 4
  store i32 %1014, i32* %5, align 4
  br label %1063

1015:                                             ; preds = %75
  %1016 = load %struct.TYPE_43__*, %struct.TYPE_43__** %8, align 8
  %1017 = bitcast %struct.TYPE_43__* %1016 to %struct.TYPE_44__*
  store %struct.TYPE_44__* %1017, %struct.TYPE_44__** %70, align 8
  %1018 = load %struct.TYPE_44__*, %struct.TYPE_44__** %70, align 8
  %1019 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %1018, i32 0, i32 2
  %1020 = load i32, i32* %1019, align 4
  %1021 = load %struct.TYPE_44__*, %struct.TYPE_44__** %70, align 8
  %1022 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %1021, i32 0, i32 1
  %1023 = load i32, i32* %1022, align 4
  %1024 = load %struct.TYPE_44__*, %struct.TYPE_44__** %70, align 8
  %1025 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %1024, i32 0, i32 0
  %1026 = load i32, i32* %1025, align 4
  %1027 = call i8* @strm_time_new(i32 %1020, i32 %1023, i32 %1026)
  %1028 = load i8**, i8*** %9, align 8
  store i8* %1027, i8** %1028, align 8
  %1029 = load i8**, i8*** %9, align 8
  %1030 = load i8*, i8** %1029, align 8
  %1031 = call i32 @strm_nil_p(i8* %1030)
  %1032 = icmp ne i32 %1031, 0
  br i1 %1032, label %1033, label %1035

1033:                                             ; preds = %1015
  %1034 = load i32, i32* @STRM_NG, align 4
  store i32 %1034, i32* %5, align 4
  br label %1063

1035:                                             ; preds = %1015
  %1036 = load i32, i32* @STRM_OK, align 4
  store i32 %1036, i32* %5, align 4
  br label %1063

1037:                                             ; preds = %75
  %1038 = load %struct.TYPE_43__*, %struct.TYPE_43__** %8, align 8
  %1039 = bitcast %struct.TYPE_43__* %1038 to %struct.TYPE_41__*
  %1040 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %1039, i32 0, i32 0
  %1041 = load i32, i32* %1040, align 4
  %1042 = call i8* @strm_bool_value(i32 %1041)
  %1043 = load i8**, i8*** %9, align 8
  store i8* %1042, i8** %1043, align 8
  %1044 = load i32, i32* @STRM_OK, align 4
  store i32 %1044, i32* %5, align 4
  br label %1063

1045:                                             ; preds = %75
  %1046 = call i8* (...) @strm_nil_value()
  %1047 = load i8**, i8*** %9, align 8
  store i8* %1046, i8** %1047, align 8
  %1048 = load i32, i32* @STRM_OK, align 4
  store i32 %1048, i32* %5, align 4
  br label %1063

1049:                                             ; preds = %75
  %1050 = load %struct.TYPE_43__*, %struct.TYPE_43__** %8, align 8
  %1051 = bitcast %struct.TYPE_43__* %1050 to %struct.TYPE_45__*
  %1052 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %1051, i32 0, i32 0
  %1053 = load i32, i32* %1052, align 4
  %1054 = call i32 @node_to_str(i32 %1053)
  %1055 = call i8* @strm_str_value(i32 %1054)
  %1056 = load i8**, i8*** %9, align 8
  store i8* %1055, i8** %1056, align 8
  %1057 = load i32, i32* @STRM_OK, align 4
  store i32 %1057, i32* %5, align 4
  br label %1063

1058:                                             ; preds = %75
  %1059 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %1060 = call i32 @strm_raise(%struct.TYPE_40__* %1059, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  br label %1061

1061:                                             ; preds = %1058
  %1062 = load i32, i32* @STRM_NG, align 4
  store i32 %1062, i32* %5, align 4
  br label %1063

1063:                                             ; preds = %1061, %1049, %1045, %1037, %1035, %1033, %1007, %999, %997, %991, %934, %924, %893, %859, %857, %843, %822, %748, %730, %705, %609, %607, %596, %580, %577, %556, %532, %524, %511, %501, %488, %468, %460, %323, %305, %282, %272, %214, %210, %196, %185, %146, %144, %140, %130, %118, %110, %101, %73
  %1064 = load i32, i32* %5, align 4
  ret i32 %1064
}

declare dso_local i32 @node_to_sym(i32) #1

declare dso_local i32* @strm_ns_create(i32*, i32) #1

declare dso_local i32* @strm_ns_get(i32) #1

declare dso_local i32 @strm_raise(%struct.TYPE_40__*, i8*) #1

declare dso_local i32 @STRM_NS_UDEF_SET(i32*) #1

declare dso_local i32 @strm_env_copy(i32*, i32*) #1

declare dso_local i32 @strm_set_exc(%struct.TYPE_40__*, i32, i8*) #1

declare dso_local i8* @strm_nil_value(...) #1

declare dso_local i32 @strm_emit(%struct.TYPE_40__*, i8*, i32*) #1

declare dso_local i32 @strm_var_set(i32*, i32, i8*) #1

declare dso_local i8* @strm_ary_new(i32*, i32) #1

declare dso_local i8** @strm_ary_ptr(i8*) #1

declare dso_local i32 @strm_array_p(i8*) #1

declare dso_local i8* @strm_value_ary(i8*) #1

declare dso_local i32 @strm_ary_len(i8*) #1

declare dso_local i32 @ary_headers(i32, i32) #1

declare dso_local i32 @STRM_NS_UDEF_GET(i32*) #1

declare dso_local i8* @strm_ary_value(i8*) #1

declare dso_local i32 @strm_var_get(i32*, i32, i8**) #1

declare dso_local i32 @strm_bool_p(i8*) #1

declare dso_local i32 @strm_value_bool(i8*) #1

declare dso_local i32 @exec_call(%struct.TYPE_40__*, i32*, i32, i32, i8**, i8**) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i8* @strm_ptr_value(%struct.strm_lambda*) #1

declare dso_local i32 @free(i8**) #1

declare dso_local i32 @strm_funcall(%struct.TYPE_40__*, i8*, i32, i8**, i8**) #1

declare dso_local %struct.strm_lambda* @genfunc_new(i32*, i32) #1

declare dso_local i32 @node_to_str(i32) #1

declare dso_local i8* @strm_int_value(i32) #1

declare dso_local i8* @strm_float_value(i32) #1

declare dso_local i8* @strm_time_new(i32, i32, i32) #1

declare dso_local i32 @strm_nil_p(i8*) #1

declare dso_local i8* @strm_bool_value(i32) #1

declare dso_local i8* @strm_str_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
