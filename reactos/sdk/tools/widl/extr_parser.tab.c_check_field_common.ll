; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_parser.tab.c_check_field_common.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_parser.tab.c_check_field_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32* }
%struct.expr_loc = type { i8*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"field\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"union\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"arm\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"encapsulated union\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"parameter\00", align 1
@ATTR_LENGTHIS = common dso_local global i32 0, align 4
@ATTR_STRING = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [82 x i8] c"string and length_is specified for argument %s are mutually exclusive attributes\0A\00", align 1
@ATTR_SIZEIS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"size_is\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"length_is\00", align 1
@ATTR_IIDIS = common dso_local global i32 0, align 4
@EXPR_VOID = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [7 x i8] c"iid_is\00", align 1
@.str.11 = private unnamed_addr constant [70 x i8] c"expression must resolve to pointer to GUID type for attribute iid_is\0A\00", align 1
@ATTR_SWITCHIS = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [10 x i8] c"switch_is\00", align 1
@.str.13 = private unnamed_addr constant [69 x i8] c"expression must resolve to integral type <= 32bits for attribute %s\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TDT_IGNORE_STRINGS = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [11 x i8] c"is invalid\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"cannot derive from void *\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"cannot be a function pointer\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"cannot be a bit-field\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"cannot be a class\00", align 1
@.str.19 = private unnamed_addr constant [40 x i8] c"cannot be a non-pointer to an interface\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"cannot be a module\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"%s '%s' of %s '%s' %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [47 x i8] c"%s '%s' of %s '%s' cannot be a context handle\0A\00", align 1
@ATTR_RANGE = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [53 x i8] c"%s: range not verified for a string of ranged types\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, %struct.TYPE_7__*)* @check_field_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_field_common(i32* %0, i8* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.expr_loc, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.expr_loc, align 8
  %17 = alloca %struct.TYPE_8__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %6, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %7, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @type_get_type(i32* %24)
  switch i32 %25, label %30 [
    i32 130, label %26
    i32 129, label %27
    i32 134, label %28
    i32 133, label %29
  ]

26:                                               ; preds = %3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %32

27:                                               ; preds = %3
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  br label %32

28:                                               ; preds = %3
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  br label %32

29:                                               ; preds = %3
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8** %10, align 8
  br label %32

30:                                               ; preds = %3
  %31 = call i32 @assert(i32 0)
  br label %258

32:                                               ; preds = %29, %28, %27, %26
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @ATTR_LENGTHIS, align 4
  %37 = call i64 @is_attr(i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %32
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @ATTR_STRING, align 4
  %44 = call i64 @is_attr(i32 %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %39
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* @ATTR_STRING, align 4
  %51 = call i64 @is_aliaschain_attr(i32* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %46, %39
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (i32*, i8*, ...) @error_loc_info(i32* %55, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.7, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %53, %46, %32
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @ATTR_SIZEIS, align 4
  %65 = call i64 @is_attr(i32 %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %60
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @ATTR_SIZEIS, align 4
  %72 = call i8* @get_attrp(i32 %70, i32 %71)
  %73 = bitcast i8* %72 to i32*
  store i32* %73, i32** %11, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %75 = load i32*, i32** %4, align 8
  %76 = load i32*, i32** %11, align 8
  %77 = call i32 @check_conformance_expr_list(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), %struct.TYPE_7__* %74, i32* %75, i32* %76)
  br label %78

78:                                               ; preds = %67, %60
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @ATTR_LENGTHIS, align 4
  %83 = call i64 @is_attr(i32 %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %78
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @ATTR_LENGTHIS, align 4
  %90 = call i8* @get_attrp(i32 %88, i32 %89)
  %91 = bitcast i8* %90 to i32*
  store i32* %91, i32** %12, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %93 = load i32*, i32** %4, align 8
  %94 = load i32*, i32** %12, align 8
  %95 = call i32 @check_conformance_expr_list(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), %struct.TYPE_7__* %92, i32* %93, i32* %94)
  br label %96

96:                                               ; preds = %85, %78
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @ATTR_IIDIS, align 4
  %101 = call i64 @is_attr(i32 %99, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %134

103:                                              ; preds = %96
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @ATTR_IIDIS, align 4
  %108 = call i8* @get_attrp(i32 %106, i32 %107)
  %109 = bitcast i8* %108 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %109, %struct.TYPE_8__** %14, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @EXPR_VOID, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %133

115:                                              ; preds = %103
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %117 = getelementptr inbounds %struct.expr_loc, %struct.expr_loc* %13, i32 0, i32 1
  store %struct.TYPE_7__* %116, %struct.TYPE_7__** %117, align 8
  %118 = getelementptr inbounds %struct.expr_loc, %struct.expr_loc* %13, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8** %118, align 8
  %119 = load i32*, i32** %4, align 8
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %121 = call i32* @expr_resolve_type(%struct.expr_loc* %13, i32* %119, %struct.TYPE_8__* %120)
  store i32* %121, i32** %15, align 8
  %122 = load i32*, i32** %15, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %128

124:                                              ; preds = %115
  %125 = load i32*, i32** %15, align 8
  %126 = call i32 @is_ptr_guid_type(i32* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %124, %115
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  %131 = call i32 (i32*, i8*, ...) @error_loc_info(i32* %130, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.11, i64 0, i64 0))
  br label %132

132:                                              ; preds = %128, %124
  br label %133

133:                                              ; preds = %132, %103
  br label %134

134:                                              ; preds = %133, %96
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @ATTR_SWITCHIS, align 4
  %139 = call i64 @is_attr(i32 %137, i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %174

141:                                              ; preds = %134
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @ATTR_SWITCHIS, align 4
  %146 = call i8* @get_attrp(i32 %144, i32 %145)
  %147 = bitcast i8* %146 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %147, %struct.TYPE_8__** %17, align 8
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @EXPR_VOID, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %173

153:                                              ; preds = %141
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %155 = getelementptr inbounds %struct.expr_loc, %struct.expr_loc* %16, i32 0, i32 1
  store %struct.TYPE_7__* %154, %struct.TYPE_7__** %155, align 8
  %156 = getelementptr inbounds %struct.expr_loc, %struct.expr_loc* %16, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8** %156, align 8
  %157 = load i32*, i32** %4, align 8
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %159 = call i32* @expr_resolve_type(%struct.expr_loc* %16, i32* %157, %struct.TYPE_8__* %158)
  store i32* %159, i32** %18, align 8
  %160 = load i32*, i32** %18, align 8
  %161 = icmp ne i32* %160, null
  br i1 %161, label %162, label %166

162:                                              ; preds = %153
  %163 = load i32*, i32** %18, align 8
  %164 = call i32 @is_allowed_conf_type(i32* %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %172, label %166

166:                                              ; preds = %162, %153
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.expr_loc, %struct.expr_loc* %16, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = call i32 (i32*, i8*, ...) @error_loc_info(i32* %168, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.13, i64 0, i64 0), i8* %170)
  br label %172

172:                                              ; preds = %166, %162
  br label %173

173:                                              ; preds = %172, %141
  br label %174

174:                                              ; preds = %173, %134
  br label %175

175:                                              ; preds = %255, %174
  %176 = load i32, i32* @FALSE, align 4
  store i32 %176, i32* %8, align 4
  %177 = load i32*, i32** %7, align 8
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @TDT_IGNORE_STRINGS, align 4
  %182 = call i32 @typegen_detect_type(i32* %177, i32 %180, i32 %181)
  switch i32 %182, label %254 [
    i32 139, label %183
    i32 138, label %183
    i32 143, label %187
    i32 147, label %208
    i32 146, label %208
    i32 140, label %223
    i32 142, label %245
    i32 149, label %249
    i32 137, label %253
    i32 144, label %253
    i32 148, label %253
    i32 145, label %253
    i32 141, label %253
  ]

183:                                              ; preds = %175, %175
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %185 = load i32*, i32** %7, align 8
  %186 = call i32 @check_remoting_fields(%struct.TYPE_7__* %184, i32* %185)
  br label %254

187:                                              ; preds = %175
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i8** %19, align 8
  %188 = load i32*, i32** %7, align 8
  %189 = call i32 @type_get_type(i32* %188)
  switch i32 %189, label %196 [
    i32 128, label %190
    i32 133, label %191
    i32 136, label %192
    i32 135, label %193
    i32 132, label %194
    i32 131, label %195
  ]

190:                                              ; preds = %187
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0), i8** %19, align 8
  br label %197

191:                                              ; preds = %187
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0), i8** %19, align 8
  br label %197

192:                                              ; preds = %187
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i8** %19, align 8
  br label %197

193:                                              ; preds = %187
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i8** %19, align 8
  br label %197

194:                                              ; preds = %187
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.19, i64 0, i64 0), i8** %19, align 8
  br label %197

195:                                              ; preds = %187
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0), i8** %19, align 8
  br label %197

196:                                              ; preds = %187
  br label %197

197:                                              ; preds = %196, %195, %194, %193, %192, %191, %190
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 1
  %200 = load i8*, i8** %10, align 8
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i8*, i8** %9, align 8
  %205 = load i8*, i8** %5, align 8
  %206 = load i8*, i8** %19, align 8
  %207 = call i32 (i32*, i8*, ...) @error_loc_info(i32* %199, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0), i8* %200, i32 %203, i8* %204, i8* %205, i8* %206)
  br label %254

208:                                              ; preds = %175, %175
  %209 = load i32*, i32** %4, align 8
  %210 = call i32 @type_get_type(i32* %209)
  %211 = icmp ne i32 %210, 133
  br i1 %211, label %212, label %222

212:                                              ; preds = %208
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 1
  %215 = load i8*, i8** %10, align 8
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load i8*, i8** %9, align 8
  %220 = load i8*, i8** %5, align 8
  %221 = call i32 (i32*, i8*, ...) @error_loc_info(i32* %214, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.22, i64 0, i64 0), i8* %215, i32 %218, i8* %219, i8* %220)
  br label %222

222:                                              ; preds = %212, %208
  br label %254

223:                                              ; preds = %175
  %224 = load i32*, i32** %7, align 8
  store i32* %224, i32** %20, align 8
  br label %225

225:                                              ; preds = %229, %223
  %226 = load i32*, i32** %20, align 8
  %227 = call i32 @is_ptr(i32* %226)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %225
  %230 = load i32*, i32** %20, align 8
  %231 = call i32* @type_pointer_get_ref(i32* %230)
  store i32* %231, i32** %20, align 8
  br label %225

232:                                              ; preds = %225
  %233 = load i32*, i32** %20, align 8
  %234 = load i32, i32* @ATTR_RANGE, align 4
  %235 = call i64 @is_aliaschain_attr(i32* %233, i32 %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %244

237:                                              ; preds = %232
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 1
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @warning_loc_info(i32* %239, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.23, i64 0, i64 0), i32 %242)
  br label %244

244:                                              ; preds = %237, %232
  br label %254

245:                                              ; preds = %175
  %246 = load i32*, i32** %7, align 8
  %247 = call i32* @type_pointer_get_ref(i32* %246)
  store i32* %247, i32** %7, align 8
  %248 = load i32, i32* @TRUE, align 4
  store i32 %248, i32* %8, align 4
  br label %254

249:                                              ; preds = %175
  %250 = load i32*, i32** %7, align 8
  %251 = call i32* @type_array_get_element(i32* %250)
  store i32* %251, i32** %7, align 8
  %252 = load i32, i32* @TRUE, align 4
  store i32 %252, i32* %8, align 4
  br label %254

253:                                              ; preds = %175, %175, %175, %175, %175
  br label %254

254:                                              ; preds = %175, %253, %249, %245, %244, %222, %197, %183
  br label %255

255:                                              ; preds = %254
  %256 = load i32, i32* %8, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %175, label %258

258:                                              ; preds = %30, %255
  ret void
}

declare dso_local i32 @type_get_type(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @is_attr(i32, i32) #1

declare dso_local i64 @is_aliaschain_attr(i32*, i32) #1

declare dso_local i32 @error_loc_info(i32*, i8*, ...) #1

declare dso_local i8* @get_attrp(i32, i32) #1

declare dso_local i32 @check_conformance_expr_list(i8*, %struct.TYPE_7__*, i32*, i32*) #1

declare dso_local i32* @expr_resolve_type(%struct.expr_loc*, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @is_ptr_guid_type(i32*) #1

declare dso_local i32 @is_allowed_conf_type(i32*) #1

declare dso_local i32 @typegen_detect_type(i32*, i32, i32) #1

declare dso_local i32 @check_remoting_fields(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @is_ptr(i32*) #1

declare dso_local i32* @type_pointer_get_ref(i32*) #1

declare dso_local i32 @warning_loc_info(i32*, i8*, i32) #1

declare dso_local i32* @type_array_get_element(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
