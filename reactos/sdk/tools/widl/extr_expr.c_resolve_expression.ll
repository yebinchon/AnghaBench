; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_expr.c_resolve_expression.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_expr.c_resolve_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expression_type = type { i8*, i8*, i8* }
%struct.expr_loc = type { i8*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__, %struct.TYPE_7__*, %struct.TYPE_7__* }
%struct.TYPE_5__ = type { i8*, %struct.TYPE_7__*, i32 }

@FALSE = common dso_local global i8* null, align 8
@TYPE_BASIC_INT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@FC_UP = common dso_local global i32 0, align 4
@TYPE_BASIC_CHAR = common dso_local global i32 0, align 4
@TYPE_BASIC_WCHAR = common dso_local global i32 0, align 4
@TYPE_BASIC_DOUBLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"identifier %s cannot be resolved in expression%s%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c" for attribute \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"address-of operator applied to non-variable type in expression%s%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [68 x i8] c"dereference operator applied to non-pointer type in expression%s%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [103 x i8] c"'.' or '->' operator applied to a type that isn't a structure, union or enumeration in expression%s%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"type mismatch in ?: expression\0A\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"array subscript not of integral type in expression%s%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [70 x i8] c"array subscript operator applied to non-array type in expression%s%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.expression_type*, %struct.expr_loc*, i8*, %struct.TYPE_7__*)* @resolve_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resolve_expression(%struct.expression_type* noalias sret %0, %struct.expr_loc* %1, i8* %2, %struct.TYPE_7__* %3) #0 {
  %5 = alloca %struct.expr_loc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.expression_type, align 8
  %10 = alloca %struct.expression_type, align 8
  %11 = alloca %struct.expression_type, align 8
  %12 = alloca %struct.expression_type, align 8
  %13 = alloca %struct.expression_type, align 8
  %14 = alloca %struct.expression_type, align 8
  %15 = alloca %struct.expression_type, align 8
  %16 = alloca %struct.expression_type, align 8
  %17 = alloca %struct.expression_type, align 8
  %18 = alloca %struct.expression_type, align 8
  %19 = alloca %struct.expression_type, align 8
  %20 = alloca %struct.expression_type, align 8
  %21 = alloca %struct.expression_type, align 8
  %22 = alloca %struct.expression_type, align 8
  %23 = alloca %struct.expression_type, align 8
  %24 = alloca %struct.expression_type, align 8
  %25 = alloca %struct.expression_type, align 8
  %26 = alloca %struct.expression_type, align 8
  %27 = alloca %struct.expression_type, align 8
  %28 = alloca %struct.expression_type, align 8
  %29 = alloca %struct.expression_type, align 8
  %30 = alloca %struct.expression_type, align 8
  %31 = alloca %struct.expression_type, align 8
  %32 = alloca %struct.expression_type, align 8
  store %struct.expr_loc* %1, %struct.expr_loc** %5, align 8
  store i8* %2, i8** %6, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %7, align 8
  %33 = load i8*, i8** @FALSE, align 8
  %34 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %0, i32 0, i32 1
  store i8* %33, i8** %34, align 8
  %35 = load i8*, i8** @FALSE, align 8
  %36 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %0, i32 0, i32 2
  store i8* %35, i8** %36, align 8
  %37 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %0, i32 0, i32 0
  store i8* null, i8** %37, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %554 [
    i32 130, label %41
    i32 153, label %42
    i32 140, label %42
    i32 131, label %42
    i32 133, label %48
    i32 129, label %56
    i32 160, label %64
    i32 157, label %70
    i32 152, label %76
    i32 147, label %119
    i32 141, label %139
    i32 138, label %154
    i32 142, label %154
    i32 164, label %169
    i32 137, label %213
    i32 161, label %278
    i32 134, label %291
    i32 136, label %297
    i32 135, label %297
    i32 144, label %297
    i32 143, label %297
    i32 158, label %297
    i32 165, label %297
    i32 132, label %297
    i32 163, label %297
    i32 139, label %297
    i32 128, label %297
    i32 146, label %325
    i32 148, label %325
    i32 156, label %325
    i32 151, label %325
    i32 155, label %325
    i32 150, label %325
    i32 154, label %325
    i32 149, label %325
    i32 145, label %356
    i32 159, label %406
    i32 162, label %469
  ]

41:                                               ; preds = %4
  br label %554

42:                                               ; preds = %4, %4, %4
  %43 = load i8*, i8** @FALSE, align 8
  %44 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %0, i32 0, i32 2
  store i8* %43, i8** %44, align 8
  %45 = load i32, i32* @TYPE_BASIC_INT, align 4
  %46 = call i8* @type_new_int(i32 %45, i32 0)
  %47 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %0, i32 0, i32 0
  store i8* %46, i8** %47, align 8
  br label %554

48:                                               ; preds = %4
  %49 = load i8*, i8** @TRUE, align 8
  %50 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %0, i32 0, i32 2
  store i8* %49, i8** %50, align 8
  %51 = load i32, i32* @FC_UP, align 4
  %52 = load i32, i32* @TYPE_BASIC_CHAR, align 4
  %53 = call i8* @type_new_int(i32 %52, i32 0)
  %54 = call i8* @type_new_pointer(i32 %51, i8* %53, i32* null)
  %55 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %0, i32 0, i32 0
  store i8* %54, i8** %55, align 8
  br label %554

56:                                               ; preds = %4
  %57 = load i8*, i8** @TRUE, align 8
  %58 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %0, i32 0, i32 2
  store i8* %57, i8** %58, align 8
  %59 = load i32, i32* @FC_UP, align 4
  %60 = load i32, i32* @TYPE_BASIC_WCHAR, align 4
  %61 = call i8* @type_new_int(i32 %60, i32 0)
  %62 = call i8* @type_new_pointer(i32 %59, i8* %61, i32* null)
  %63 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %0, i32 0, i32 0
  store i8* %62, i8** %63, align 8
  br label %554

64:                                               ; preds = %4
  %65 = load i8*, i8** @TRUE, align 8
  %66 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %0, i32 0, i32 2
  store i8* %65, i8** %66, align 8
  %67 = load i32, i32* @TYPE_BASIC_CHAR, align 4
  %68 = call i8* @type_new_int(i32 %67, i32 0)
  %69 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %0, i32 0, i32 0
  store i8* %68, i8** %69, align 8
  br label %554

70:                                               ; preds = %4
  %71 = load i8*, i8** @TRUE, align 8
  %72 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %0, i32 0, i32 2
  store i8* %71, i8** %72, align 8
  %73 = load i32, i32* @TYPE_BASIC_DOUBLE, align 4
  %74 = call i8* @type_new_basic(i32 %73)
  %75 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %0, i32 0, i32 0
  store i8* %74, i8** %75, align 8
  br label %554

76:                                               ; preds = %4
  %77 = load i8*, i8** @TRUE, align 8
  %78 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %0, i32 0, i32 1
  store i8* %77, i8** %78, align 8
  %79 = load i8*, i8** @FALSE, align 8
  %80 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %0, i32 0, i32 2
  store i8* %79, i8** %80, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load i8*, i8** %6, align 8
  %86 = call i8* @find_identifier(i32 %84, i8* %85, i32* %8)
  %87 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %0, i32 0, i32 0
  store i8* %86, i8** %87, align 8
  %88 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %0, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %118, label %91

91:                                               ; preds = %76
  %92 = load %struct.expr_loc*, %struct.expr_loc** %5, align 8
  %93 = getelementptr inbounds %struct.expr_loc, %struct.expr_loc* %92, i32 0, i32 1
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.expr_loc*, %struct.expr_loc** %5, align 8
  %101 = getelementptr inbounds %struct.expr_loc, %struct.expr_loc* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = icmp ne i8* %102, null
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %106 = load %struct.expr_loc*, %struct.expr_loc** %5, align 8
  %107 = getelementptr inbounds %struct.expr_loc, %struct.expr_loc* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %114

110:                                              ; preds = %91
  %111 = load %struct.expr_loc*, %struct.expr_loc** %5, align 8
  %112 = getelementptr inbounds %struct.expr_loc, %struct.expr_loc* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  br label %115

114:                                              ; preds = %91
  br label %115

115:                                              ; preds = %114, %110
  %116 = phi i8* [ %113, %110 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %114 ]
  %117 = call i32 (i32*, i8*, ...) @error_loc_info(i32* %95, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %99, i8* %105, i8* %116)
  br label %118

118:                                              ; preds = %115, %76
  br label %554

119:                                              ; preds = %4
  %120 = load %struct.expr_loc*, %struct.expr_loc** %5, align 8
  %121 = load i8*, i8** %6, align 8
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 2
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  call void @resolve_expression(%struct.expression_type* sret %9, %struct.expr_loc* %120, i8* %121, %struct.TYPE_7__* %124)
  %125 = bitcast %struct.expression_type* %0 to i8*
  %126 = bitcast %struct.expression_type* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %125, i8* align 8 %126, i64 24, i1 false)
  %127 = load %struct.expr_loc*, %struct.expr_loc** %5, align 8
  %128 = load i8*, i8** %6, align 8
  %129 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %0, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 @check_scalar_type(%struct.expr_loc* %127, i8* %128, i8* %130)
  %132 = load i8*, i8** @FALSE, align 8
  %133 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %0, i32 0, i32 1
  store i8* %132, i8** %133, align 8
  %134 = load i8*, i8** @FALSE, align 8
  %135 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %0, i32 0, i32 2
  store i8* %134, i8** %135, align 8
  %136 = load i32, i32* @TYPE_BASIC_INT, align 4
  %137 = call i8* @type_new_int(i32 %136, i32 0)
  %138 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %0, i32 0, i32 0
  store i8* %137, i8** %138, align 8
  br label %554

139:                                              ; preds = %4
  %140 = load %struct.expr_loc*, %struct.expr_loc** %5, align 8
  %141 = load i8*, i8** %6, align 8
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 2
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %143, align 8
  call void @resolve_expression(%struct.expression_type* sret %10, %struct.expr_loc* %140, i8* %141, %struct.TYPE_7__* %144)
  %145 = bitcast %struct.expression_type* %0 to i8*
  %146 = bitcast %struct.expression_type* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %145, i8* align 8 %146, i64 24, i1 false)
  %147 = load %struct.expr_loc*, %struct.expr_loc** %5, align 8
  %148 = load i8*, i8** %6, align 8
  %149 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %0, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = call i32 @check_integer_type(%struct.expr_loc* %147, i8* %148, i8* %150)
  %152 = load i8*, i8** @FALSE, align 8
  %153 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %0, i32 0, i32 1
  store i8* %152, i8** %153, align 8
  br label %554

154:                                              ; preds = %4, %4
  %155 = load %struct.expr_loc*, %struct.expr_loc** %5, align 8
  %156 = load i8*, i8** %6, align 8
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 2
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %158, align 8
  call void @resolve_expression(%struct.expression_type* sret %11, %struct.expr_loc* %155, i8* %156, %struct.TYPE_7__* %159)
  %160 = bitcast %struct.expression_type* %0 to i8*
  %161 = bitcast %struct.expression_type* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %160, i8* align 8 %161, i64 24, i1 false)
  %162 = load %struct.expr_loc*, %struct.expr_loc** %5, align 8
  %163 = load i8*, i8** %6, align 8
  %164 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %0, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 @check_arithmetic_type(%struct.expr_loc* %162, i8* %163, i8* %165)
  %167 = load i8*, i8** @FALSE, align 8
  %168 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %0, i32 0, i32 1
  store i8* %167, i8** %168, align 8
  br label %554

169:                                              ; preds = %4
  %170 = load %struct.expr_loc*, %struct.expr_loc** %5, align 8
  %171 = load i8*, i8** %6, align 8
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 2
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %173, align 8
  call void @resolve_expression(%struct.expression_type* sret %12, %struct.expr_loc* %170, i8* %171, %struct.TYPE_7__* %174)
  %175 = bitcast %struct.expression_type* %0 to i8*
  %176 = bitcast %struct.expression_type* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %175, i8* align 8 %176, i64 24, i1 false)
  %177 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %0, i32 0, i32 1
  %178 = load i8*, i8** %177, align 8
  %179 = icmp ne i8* %178, null
  br i1 %179, label %203, label %180

180:                                              ; preds = %169
  %181 = load %struct.expr_loc*, %struct.expr_loc** %5, align 8
  %182 = getelementptr inbounds %struct.expr_loc, %struct.expr_loc* %181, i32 0, i32 1
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = load %struct.expr_loc*, %struct.expr_loc** %5, align 8
  %186 = getelementptr inbounds %struct.expr_loc, %struct.expr_loc* %185, i32 0, i32 0
  %187 = load i8*, i8** %186, align 8
  %188 = icmp ne i8* %187, null
  %189 = zext i1 %188 to i64
  %190 = select i1 %188, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %191 = load %struct.expr_loc*, %struct.expr_loc** %5, align 8
  %192 = getelementptr inbounds %struct.expr_loc, %struct.expr_loc* %191, i32 0, i32 0
  %193 = load i8*, i8** %192, align 8
  %194 = icmp ne i8* %193, null
  br i1 %194, label %195, label %199

195:                                              ; preds = %180
  %196 = load %struct.expr_loc*, %struct.expr_loc** %5, align 8
  %197 = getelementptr inbounds %struct.expr_loc, %struct.expr_loc* %196, i32 0, i32 0
  %198 = load i8*, i8** %197, align 8
  br label %200

199:                                              ; preds = %180
  br label %200

200:                                              ; preds = %199, %195
  %201 = phi i8* [ %198, %195 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %199 ]
  %202 = call i32 (i32*, i8*, ...) @error_loc_info(i32* %184, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0), i8* %190, i8* %201)
  br label %203

203:                                              ; preds = %200, %169
  %204 = load i8*, i8** @FALSE, align 8
  %205 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %0, i32 0, i32 1
  store i8* %204, i8** %205, align 8
  %206 = load i8*, i8** @TRUE, align 8
  %207 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %0, i32 0, i32 2
  store i8* %206, i8** %207, align 8
  %208 = load i32, i32* @FC_UP, align 4
  %209 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %0, i32 0, i32 0
  %210 = load i8*, i8** %209, align 8
  %211 = call i8* @type_new_pointer(i32 %208, i8* %210, i32* null)
  %212 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %0, i32 0, i32 0
  store i8* %211, i8** %212, align 8
  br label %554

213:                                              ; preds = %4
  %214 = load %struct.expr_loc*, %struct.expr_loc** %5, align 8
  %215 = load i8*, i8** %6, align 8
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 2
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %217, align 8
  call void @resolve_expression(%struct.expression_type* sret %13, %struct.expr_loc* %214, i8* %215, %struct.TYPE_7__* %218)
  %219 = bitcast %struct.expression_type* %0 to i8*
  %220 = bitcast %struct.expression_type* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %219, i8* align 8 %220, i64 24, i1 false)
  %221 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %0, i32 0, i32 0
  %222 = load i8*, i8** %221, align 8
  %223 = icmp ne i8* %222, null
  br i1 %223, label %224, label %234

224:                                              ; preds = %213
  %225 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %0, i32 0, i32 0
  %226 = load i8*, i8** %225, align 8
  %227 = call i32 @is_ptr(i8* %226)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %224
  %230 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %0, i32 0, i32 0
  %231 = load i8*, i8** %230, align 8
  %232 = call i8* @type_pointer_get_ref(i8* %231)
  %233 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %0, i32 0, i32 0
  store i8* %232, i8** %233, align 8
  br label %277

234:                                              ; preds = %224, %213
  %235 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %0, i32 0, i32 0
  %236 = load i8*, i8** %235, align 8
  %237 = icmp ne i8* %236, null
  br i1 %237, label %238, label %253

238:                                              ; preds = %234
  %239 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %0, i32 0, i32 0
  %240 = load i8*, i8** %239, align 8
  %241 = call i32 @is_array(i8* %240)
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %253

243:                                              ; preds = %238
  %244 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %0, i32 0, i32 0
  %245 = load i8*, i8** %244, align 8
  %246 = call i32 @type_array_is_decl_as_ptr(i8* %245)
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %243
  %249 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %0, i32 0, i32 0
  %250 = load i8*, i8** %249, align 8
  %251 = call i8* @type_array_get_element(i8* %250)
  %252 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %0, i32 0, i32 0
  store i8* %251, i8** %252, align 8
  br label %276

253:                                              ; preds = %243, %238, %234
  %254 = load %struct.expr_loc*, %struct.expr_loc** %5, align 8
  %255 = getelementptr inbounds %struct.expr_loc, %struct.expr_loc* %254, i32 0, i32 1
  %256 = load %struct.TYPE_6__*, %struct.TYPE_6__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 0
  %258 = load %struct.expr_loc*, %struct.expr_loc** %5, align 8
  %259 = getelementptr inbounds %struct.expr_loc, %struct.expr_loc* %258, i32 0, i32 0
  %260 = load i8*, i8** %259, align 8
  %261 = icmp ne i8* %260, null
  %262 = zext i1 %261 to i64
  %263 = select i1 %261, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %264 = load %struct.expr_loc*, %struct.expr_loc** %5, align 8
  %265 = getelementptr inbounds %struct.expr_loc, %struct.expr_loc* %264, i32 0, i32 0
  %266 = load i8*, i8** %265, align 8
  %267 = icmp ne i8* %266, null
  br i1 %267, label %268, label %272

268:                                              ; preds = %253
  %269 = load %struct.expr_loc*, %struct.expr_loc** %5, align 8
  %270 = getelementptr inbounds %struct.expr_loc, %struct.expr_loc* %269, i32 0, i32 0
  %271 = load i8*, i8** %270, align 8
  br label %273

272:                                              ; preds = %253
  br label %273

273:                                              ; preds = %272, %268
  %274 = phi i8* [ %271, %268 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %272 ]
  %275 = call i32 (i32*, i8*, ...) @error_loc_info(i32* %257, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0), i8* %263, i8* %274)
  br label %276

276:                                              ; preds = %273, %248
  br label %277

277:                                              ; preds = %276, %229
  br label %554

278:                                              ; preds = %4
  %279 = load %struct.expr_loc*, %struct.expr_loc** %5, align 8
  %280 = load i8*, i8** %6, align 8
  %281 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %282 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %281, i32 0, i32 2
  %283 = load %struct.TYPE_7__*, %struct.TYPE_7__** %282, align 8
  call void @resolve_expression(%struct.expression_type* sret %14, %struct.expr_loc* %279, i8* %280, %struct.TYPE_7__* %283)
  %284 = bitcast %struct.expression_type* %0 to i8*
  %285 = bitcast %struct.expression_type* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %284, i8* align 8 %285, i64 24, i1 false)
  %286 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %287 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %286, i32 0, i32 1
  %288 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %287, i32 0, i32 0
  %289 = load i8*, i8** %288, align 8
  %290 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %0, i32 0, i32 0
  store i8* %289, i8** %290, align 8
  br label %554

291:                                              ; preds = %4
  %292 = load i8*, i8** @FALSE, align 8
  %293 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %0, i32 0, i32 2
  store i8* %292, i8** %293, align 8
  %294 = load i32, i32* @TYPE_BASIC_INT, align 4
  %295 = call i8* @type_new_int(i32 %294, i32 0)
  %296 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %0, i32 0, i32 0
  store i8* %295, i8** %296, align 8
  br label %554

297:                                              ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  %298 = load %struct.expr_loc*, %struct.expr_loc** %5, align 8
  %299 = load i8*, i8** %6, align 8
  %300 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %301 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %300, i32 0, i32 2
  %302 = load %struct.TYPE_7__*, %struct.TYPE_7__** %301, align 8
  call void @resolve_expression(%struct.expression_type* sret %16, %struct.expr_loc* %298, i8* %299, %struct.TYPE_7__* %302)
  %303 = bitcast %struct.expression_type* %0 to i8*
  %304 = bitcast %struct.expression_type* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %303, i8* align 8 %304, i64 24, i1 false)
  %305 = load i8*, i8** @FALSE, align 8
  %306 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %0, i32 0, i32 1
  store i8* %305, i8** %306, align 8
  %307 = load %struct.expr_loc*, %struct.expr_loc** %5, align 8
  %308 = load i8*, i8** %6, align 8
  %309 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %310 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %309, i32 0, i32 1
  %311 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %310, i32 0, i32 1
  %312 = load %struct.TYPE_7__*, %struct.TYPE_7__** %311, align 8
  call void @resolve_expression(%struct.expression_type* sret %17, %struct.expr_loc* %307, i8* %308, %struct.TYPE_7__* %312)
  %313 = bitcast %struct.expression_type* %15 to i8*
  %314 = bitcast %struct.expression_type* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %313, i8* align 8 %314, i64 24, i1 false)
  %315 = load %struct.expr_loc*, %struct.expr_loc** %5, align 8
  %316 = load i8*, i8** %6, align 8
  %317 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %0, i32 0, i32 0
  %318 = load i8*, i8** %317, align 8
  %319 = call i32 @check_scalar_type(%struct.expr_loc* %315, i8* %316, i8* %318)
  %320 = load %struct.expr_loc*, %struct.expr_loc** %5, align 8
  %321 = load i8*, i8** %6, align 8
  %322 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %15, i32 0, i32 0
  %323 = load i8*, i8** %322, align 8
  %324 = call i32 @check_scalar_type(%struct.expr_loc* %320, i8* %321, i8* %323)
  br label %554

325:                                              ; preds = %4, %4, %4, %4, %4, %4, %4, %4
  %326 = load %struct.expr_loc*, %struct.expr_loc** %5, align 8
  %327 = load i8*, i8** %6, align 8
  %328 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %329 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %328, i32 0, i32 2
  %330 = load %struct.TYPE_7__*, %struct.TYPE_7__** %329, align 8
  call void @resolve_expression(%struct.expression_type* sret %20, %struct.expr_loc* %326, i8* %327, %struct.TYPE_7__* %330)
  %331 = bitcast %struct.expression_type* %18 to i8*
  %332 = bitcast %struct.expression_type* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %331, i8* align 8 %332, i64 24, i1 false)
  %333 = load %struct.expr_loc*, %struct.expr_loc** %5, align 8
  %334 = load i8*, i8** %6, align 8
  %335 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %336 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %335, i32 0, i32 1
  %337 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %336, i32 0, i32 1
  %338 = load %struct.TYPE_7__*, %struct.TYPE_7__** %337, align 8
  call void @resolve_expression(%struct.expression_type* sret %21, %struct.expr_loc* %333, i8* %334, %struct.TYPE_7__* %338)
  %339 = bitcast %struct.expression_type* %19 to i8*
  %340 = bitcast %struct.expression_type* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %339, i8* align 8 %340, i64 24, i1 false)
  %341 = load %struct.expr_loc*, %struct.expr_loc** %5, align 8
  %342 = load i8*, i8** %6, align 8
  %343 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %18, i32 0, i32 0
  %344 = load i8*, i8** %343, align 8
  %345 = call i32 @check_scalar_type(%struct.expr_loc* %341, i8* %342, i8* %344)
  %346 = load %struct.expr_loc*, %struct.expr_loc** %5, align 8
  %347 = load i8*, i8** %6, align 8
  %348 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %19, i32 0, i32 0
  %349 = load i8*, i8** %348, align 8
  %350 = call i32 @check_scalar_type(%struct.expr_loc* %346, i8* %347, i8* %349)
  %351 = load i8*, i8** @FALSE, align 8
  %352 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %0, i32 0, i32 2
  store i8* %351, i8** %352, align 8
  %353 = load i32, i32* @TYPE_BASIC_INT, align 4
  %354 = call i8* @type_new_int(i32 %353, i32 0)
  %355 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %0, i32 0, i32 0
  store i8* %354, i8** %355, align 8
  br label %554

356:                                              ; preds = %4
  %357 = load %struct.expr_loc*, %struct.expr_loc** %5, align 8
  %358 = load i8*, i8** %6, align 8
  %359 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %360 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %359, i32 0, i32 2
  %361 = load %struct.TYPE_7__*, %struct.TYPE_7__** %360, align 8
  call void @resolve_expression(%struct.expression_type* sret %22, %struct.expr_loc* %357, i8* %358, %struct.TYPE_7__* %361)
  %362 = bitcast %struct.expression_type* %0 to i8*
  %363 = bitcast %struct.expression_type* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %362, i8* align 8 %363, i64 24, i1 false)
  %364 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %0, i32 0, i32 0
  %365 = load i8*, i8** %364, align 8
  %366 = icmp ne i8* %365, null
  br i1 %366, label %367, label %382

367:                                              ; preds = %356
  %368 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %0, i32 0, i32 0
  %369 = load i8*, i8** %368, align 8
  %370 = call i32 @is_valid_member_operand(i8* %369)
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %382

372:                                              ; preds = %367
  %373 = load %struct.expr_loc*, %struct.expr_loc** %5, align 8
  %374 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %0, i32 0, i32 0
  %375 = load i8*, i8** %374, align 8
  %376 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %377 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %376, i32 0, i32 1
  %378 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %377, i32 0, i32 1
  %379 = load %struct.TYPE_7__*, %struct.TYPE_7__** %378, align 8
  call void @resolve_expression(%struct.expression_type* sret %23, %struct.expr_loc* %373, i8* %375, %struct.TYPE_7__* %379)
  %380 = bitcast %struct.expression_type* %0 to i8*
  %381 = bitcast %struct.expression_type* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %380, i8* align 8 %381, i64 24, i1 false)
  br label %405

382:                                              ; preds = %367, %356
  %383 = load %struct.expr_loc*, %struct.expr_loc** %5, align 8
  %384 = getelementptr inbounds %struct.expr_loc, %struct.expr_loc* %383, i32 0, i32 1
  %385 = load %struct.TYPE_6__*, %struct.TYPE_6__** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %385, i32 0, i32 0
  %387 = load %struct.expr_loc*, %struct.expr_loc** %5, align 8
  %388 = getelementptr inbounds %struct.expr_loc, %struct.expr_loc* %387, i32 0, i32 0
  %389 = load i8*, i8** %388, align 8
  %390 = icmp ne i8* %389, null
  %391 = zext i1 %390 to i64
  %392 = select i1 %390, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %393 = load %struct.expr_loc*, %struct.expr_loc** %5, align 8
  %394 = getelementptr inbounds %struct.expr_loc, %struct.expr_loc* %393, i32 0, i32 0
  %395 = load i8*, i8** %394, align 8
  %396 = icmp ne i8* %395, null
  br i1 %396, label %397, label %401

397:                                              ; preds = %382
  %398 = load %struct.expr_loc*, %struct.expr_loc** %5, align 8
  %399 = getelementptr inbounds %struct.expr_loc, %struct.expr_loc* %398, i32 0, i32 0
  %400 = load i8*, i8** %399, align 8
  br label %402

401:                                              ; preds = %382
  br label %402

402:                                              ; preds = %401, %397
  %403 = phi i8* [ %400, %397 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %401 ]
  %404 = call i32 (i32*, i8*, ...) @error_loc_info(i32* %386, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.5, i64 0, i64 0), i8* %392, i8* %403)
  br label %405

405:                                              ; preds = %402, %372
  br label %554

406:                                              ; preds = %4
  %407 = load %struct.expr_loc*, %struct.expr_loc** %5, align 8
  %408 = load i8*, i8** %6, align 8
  %409 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %410 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %409, i32 0, i32 2
  %411 = load %struct.TYPE_7__*, %struct.TYPE_7__** %410, align 8
  call void @resolve_expression(%struct.expression_type* sret %27, %struct.expr_loc* %407, i8* %408, %struct.TYPE_7__* %411)
  %412 = bitcast %struct.expression_type* %24 to i8*
  %413 = bitcast %struct.expression_type* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %412, i8* align 8 %413, i64 24, i1 false)
  %414 = load %struct.expr_loc*, %struct.expr_loc** %5, align 8
  %415 = load i8*, i8** %6, align 8
  %416 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %24, i32 0, i32 0
  %417 = load i8*, i8** %416, align 8
  %418 = call i32 @check_scalar_type(%struct.expr_loc* %414, i8* %415, i8* %417)
  %419 = load %struct.expr_loc*, %struct.expr_loc** %5, align 8
  %420 = load i8*, i8** %6, align 8
  %421 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %422 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %421, i32 0, i32 1
  %423 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %422, i32 0, i32 1
  %424 = load %struct.TYPE_7__*, %struct.TYPE_7__** %423, align 8
  call void @resolve_expression(%struct.expression_type* sret %28, %struct.expr_loc* %419, i8* %420, %struct.TYPE_7__* %424)
  %425 = bitcast %struct.expression_type* %25 to i8*
  %426 = bitcast %struct.expression_type* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %425, i8* align 8 %426, i64 24, i1 false)
  %427 = load %struct.expr_loc*, %struct.expr_loc** %5, align 8
  %428 = load i8*, i8** %6, align 8
  %429 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %430 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %429, i32 0, i32 3
  %431 = load %struct.TYPE_7__*, %struct.TYPE_7__** %430, align 8
  call void @resolve_expression(%struct.expression_type* sret %29, %struct.expr_loc* %427, i8* %428, %struct.TYPE_7__* %431)
  %432 = bitcast %struct.expression_type* %26 to i8*
  %433 = bitcast %struct.expression_type* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %432, i8* align 8 %433, i64 24, i1 false)
  %434 = load %struct.expr_loc*, %struct.expr_loc** %5, align 8
  %435 = load i8*, i8** %6, align 8
  %436 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %25, i32 0, i32 0
  %437 = load i8*, i8** %436, align 8
  %438 = call i32 @check_scalar_type(%struct.expr_loc* %434, i8* %435, i8* %437)
  %439 = load %struct.expr_loc*, %struct.expr_loc** %5, align 8
  %440 = load i8*, i8** %6, align 8
  %441 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %26, i32 0, i32 0
  %442 = load i8*, i8** %441, align 8
  %443 = call i32 @check_scalar_type(%struct.expr_loc* %439, i8* %440, i8* %442)
  %444 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %25, i32 0, i32 0
  %445 = load i8*, i8** %444, align 8
  %446 = call i32 @is_ptr(i8* %445)
  %447 = icmp ne i32 %446, 0
  %448 = xor i1 %447, true
  %449 = zext i1 %448 to i32
  %450 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %26, i32 0, i32 0
  %451 = load i8*, i8** %450, align 8
  %452 = call i32 @is_ptr(i8* %451)
  %453 = icmp ne i32 %452, 0
  %454 = xor i1 %453, true
  %455 = zext i1 %454 to i32
  %456 = xor i32 %449, %455
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %464

458:                                              ; preds = %406
  %459 = load %struct.expr_loc*, %struct.expr_loc** %5, align 8
  %460 = getelementptr inbounds %struct.expr_loc, %struct.expr_loc* %459, i32 0, i32 1
  %461 = load %struct.TYPE_6__*, %struct.TYPE_6__** %460, align 8
  %462 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %461, i32 0, i32 0
  %463 = call i32 (i32*, i8*, ...) @error_loc_info(i32* %462, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  br label %464

464:                                              ; preds = %458, %406
  %465 = bitcast %struct.expression_type* %0 to i8*
  %466 = bitcast %struct.expression_type* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %465, i8* align 8 %466, i64 24, i1 false)
  %467 = load i8*, i8** @FALSE, align 8
  %468 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %0, i32 0, i32 1
  store i8* %467, i8** %468, align 8
  br label %554

469:                                              ; preds = %4
  %470 = load %struct.expr_loc*, %struct.expr_loc** %5, align 8
  %471 = load i8*, i8** %6, align 8
  %472 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %473 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %472, i32 0, i32 2
  %474 = load %struct.TYPE_7__*, %struct.TYPE_7__** %473, align 8
  call void @resolve_expression(%struct.expression_type* sret %30, %struct.expr_loc* %470, i8* %471, %struct.TYPE_7__* %474)
  %475 = bitcast %struct.expression_type* %0 to i8*
  %476 = bitcast %struct.expression_type* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %475, i8* align 8 %476, i64 24, i1 false)
  %477 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %0, i32 0, i32 0
  %478 = load i8*, i8** %477, align 8
  %479 = icmp ne i8* %478, null
  br i1 %479, label %480, label %530

480:                                              ; preds = %469
  %481 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %0, i32 0, i32 0
  %482 = load i8*, i8** %481, align 8
  %483 = call i32 @is_array(i8* %482)
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %485, label %530

485:                                              ; preds = %480
  %486 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %0, i32 0, i32 0
  %487 = load i8*, i8** %486, align 8
  %488 = call i8* @type_array_get_element(i8* %487)
  %489 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %0, i32 0, i32 0
  store i8* %488, i8** %489, align 8
  %490 = load %struct.expr_loc*, %struct.expr_loc** %5, align 8
  %491 = load i8*, i8** %6, align 8
  %492 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %493 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %492, i32 0, i32 1
  %494 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %493, i32 0, i32 1
  %495 = load %struct.TYPE_7__*, %struct.TYPE_7__** %494, align 8
  call void @resolve_expression(%struct.expression_type* sret %32, %struct.expr_loc* %490, i8* %491, %struct.TYPE_7__* %495)
  %496 = bitcast %struct.expression_type* %31 to i8*
  %497 = bitcast %struct.expression_type* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %496, i8* align 8 %497, i64 24, i1 false)
  %498 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %31, i32 0, i32 0
  %499 = load i8*, i8** %498, align 8
  %500 = icmp ne i8* %499, null
  br i1 %500, label %501, label %506

501:                                              ; preds = %485
  %502 = getelementptr inbounds %struct.expression_type, %struct.expression_type* %31, i32 0, i32 0
  %503 = load i8*, i8** %502, align 8
  %504 = call i32 @is_integer_type(i8* %503)
  %505 = icmp ne i32 %504, 0
  br i1 %505, label %529, label %506

506:                                              ; preds = %501, %485
  %507 = load %struct.expr_loc*, %struct.expr_loc** %5, align 8
  %508 = getelementptr inbounds %struct.expr_loc, %struct.expr_loc* %507, i32 0, i32 1
  %509 = load %struct.TYPE_6__*, %struct.TYPE_6__** %508, align 8
  %510 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %509, i32 0, i32 0
  %511 = load %struct.expr_loc*, %struct.expr_loc** %5, align 8
  %512 = getelementptr inbounds %struct.expr_loc, %struct.expr_loc* %511, i32 0, i32 0
  %513 = load i8*, i8** %512, align 8
  %514 = icmp ne i8* %513, null
  %515 = zext i1 %514 to i64
  %516 = select i1 %514, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %517 = load %struct.expr_loc*, %struct.expr_loc** %5, align 8
  %518 = getelementptr inbounds %struct.expr_loc, %struct.expr_loc* %517, i32 0, i32 0
  %519 = load i8*, i8** %518, align 8
  %520 = icmp ne i8* %519, null
  br i1 %520, label %521, label %525

521:                                              ; preds = %506
  %522 = load %struct.expr_loc*, %struct.expr_loc** %5, align 8
  %523 = getelementptr inbounds %struct.expr_loc, %struct.expr_loc* %522, i32 0, i32 0
  %524 = load i8*, i8** %523, align 8
  br label %526

525:                                              ; preds = %506
  br label %526

526:                                              ; preds = %525, %521
  %527 = phi i8* [ %524, %521 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %525 ]
  %528 = call i32 (i32*, i8*, ...) @error_loc_info(i32* %510, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0), i8* %516, i8* %527)
  br label %529

529:                                              ; preds = %526, %501
  br label %553

530:                                              ; preds = %480, %469
  %531 = load %struct.expr_loc*, %struct.expr_loc** %5, align 8
  %532 = getelementptr inbounds %struct.expr_loc, %struct.expr_loc* %531, i32 0, i32 1
  %533 = load %struct.TYPE_6__*, %struct.TYPE_6__** %532, align 8
  %534 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %533, i32 0, i32 0
  %535 = load %struct.expr_loc*, %struct.expr_loc** %5, align 8
  %536 = getelementptr inbounds %struct.expr_loc, %struct.expr_loc* %535, i32 0, i32 0
  %537 = load i8*, i8** %536, align 8
  %538 = icmp ne i8* %537, null
  %539 = zext i1 %538 to i64
  %540 = select i1 %538, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %541 = load %struct.expr_loc*, %struct.expr_loc** %5, align 8
  %542 = getelementptr inbounds %struct.expr_loc, %struct.expr_loc* %541, i32 0, i32 0
  %543 = load i8*, i8** %542, align 8
  %544 = icmp ne i8* %543, null
  br i1 %544, label %545, label %549

545:                                              ; preds = %530
  %546 = load %struct.expr_loc*, %struct.expr_loc** %5, align 8
  %547 = getelementptr inbounds %struct.expr_loc, %struct.expr_loc* %546, i32 0, i32 0
  %548 = load i8*, i8** %547, align 8
  br label %550

549:                                              ; preds = %530
  br label %550

550:                                              ; preds = %549, %545
  %551 = phi i8* [ %548, %545 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %549 ]
  %552 = call i32 (i32*, i8*, ...) @error_loc_info(i32* %534, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.8, i64 0, i64 0), i8* %540, i8* %551)
  br label %553

553:                                              ; preds = %550, %529
  br label %554

554:                                              ; preds = %4, %553, %464, %405, %325, %297, %291, %278, %277, %203, %154, %139, %119, %118, %70, %64, %56, %48, %42, %41
  ret void
}

declare dso_local i8* @type_new_int(i32, i32) #1

declare dso_local i8* @type_new_pointer(i32, i8*, i32*) #1

declare dso_local i8* @type_new_basic(i32) #1

declare dso_local i8* @find_identifier(i32, i8*, i32*) #1

declare dso_local i32 @error_loc_info(i32*, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @check_scalar_type(%struct.expr_loc*, i8*, i8*) #1

declare dso_local i32 @check_integer_type(%struct.expr_loc*, i8*, i8*) #1

declare dso_local i32 @check_arithmetic_type(%struct.expr_loc*, i8*, i8*) #1

declare dso_local i32 @is_ptr(i8*) #1

declare dso_local i8* @type_pointer_get_ref(i8*) #1

declare dso_local i32 @is_array(i8*) #1

declare dso_local i32 @type_array_is_decl_as_ptr(i8*) #1

declare dso_local i8* @type_array_get_element(i8*) #1

declare dso_local i32 @is_valid_member_operand(i8*) #1

declare dso_local i32 @is_integer_type(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
