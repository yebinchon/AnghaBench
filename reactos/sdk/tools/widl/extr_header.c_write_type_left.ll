; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_header.c_write_type_left.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_header.c_write_type_left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i8*, i32, i8*, i32, i32 }

@ATTR_CONST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"const \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"enum %s {\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"enum {\0A\00", align 1
@TRUE = common dso_local global i8* null, align 8
@indentation = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"enum %s\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"struct %s {\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"struct {\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"struct %s\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"union %s {\0A\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"union {\0A\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"union %s\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"signed \00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"unsigned \00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"small\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"__int3264\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"byte\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"wchar_t\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"error_status_t\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"handle_t\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"UINT32\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"INT32\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"ULONG\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"LONG\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"UINT64\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"INT64\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"MIDL_uhyper\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"hyper\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"void\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_type_left(i32* %0, %struct.TYPE_22__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  br label %403

13:                                               ; preds = %4
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i8* @type_get_name(%struct.TYPE_22__* %14, i32 %15)
  store i8* %16, i8** %9, align 8
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @ATTR_CONST, align 4
  %21 = call i64 @is_attr(i32 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %13
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %25 = call i64 @type_is_alias(%struct.TYPE_22__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %29 = call i32 @is_ptr(%struct.TYPE_22__* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27, %23
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 (i32*, i8*, ...) @fprintf(i32* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %27, %13
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %36 = call i64 @type_is_alias(%struct.TYPE_22__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i32*, i32** %5, align 8
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 (i32*, i8*, ...) @fprintf(i32* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  br label %403

44:                                               ; preds = %34
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %46 = call i32 @type_get_type_detect_alias(%struct.TYPE_22__* %45)
  switch i32 %46, label %402 [
    i32 135, label %47
    i32 130, label %107
    i32 136, label %107
    i32 129, label %165
    i32 131, label %221
    i32 155, label %241
    i32 154, label %272
    i32 133, label %385
    i32 132, label %385
    i32 137, label %385
    i32 128, label %391
    i32 138, label %394
    i32 156, label %400
    i32 134, label %400
  ]

47:                                               ; preds = %44
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %96, label %50

50:                                               ; preds = %47
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %96

55:                                               ; preds = %50
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %96, label %60

60:                                               ; preds = %55
  %61 = load i8*, i8** %9, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load i32*, i32** %5, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = call i32 (i32*, i8*, ...) @fprintf(i32* %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %65)
  br label %70

67:                                               ; preds = %60
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 (i32*, i8*, ...) @fprintf(i32* %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %70

70:                                               ; preds = %67, %63
  %71 = load i8*, i8** @TRUE, align 8
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 2
  store i8* %71, i8** %73, align 8
  %74 = load i32, i32* @indentation, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* @indentation, align 4
  %76 = load i32*, i32** %5, align 8
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %78 = call i32 @type_enum_get_values(%struct.TYPE_22__* %77)
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @is_global_namespace(i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %70
  br label %89

85:                                               ; preds = %70
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  br label %89

89:                                               ; preds = %85, %84
  %90 = phi i8* [ null, %84 ], [ %88, %85 ]
  %91 = call i32 @write_enums(i32* %76, i32 %78, i8* %90)
  %92 = load i32*, i32** %5, align 8
  %93 = call i32 @indent(i32* %92, i32 -1)
  %94 = load i32*, i32** %5, align 8
  %95 = call i32 (i32*, i8*, ...) @fprintf(i32* %94, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %106

96:                                               ; preds = %55, %50, %47
  %97 = load i32*, i32** %5, align 8
  %98 = load i8*, i8** %9, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = load i8*, i8** %9, align 8
  br label %103

102:                                              ; preds = %96
  br label %103

103:                                              ; preds = %102, %100
  %104 = phi i8* [ %101, %100 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %102 ]
  %105 = call i32 (i32*, i8*, ...) @fprintf(i32* %97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %104)
  br label %106

106:                                              ; preds = %103, %89
  br label %402

107:                                              ; preds = %44, %44
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %154, label %110

110:                                              ; preds = %107
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %154

115:                                              ; preds = %110
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 2
  %118 = load i8*, i8** %117, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %154, label %120

120:                                              ; preds = %115
  %121 = load i8*, i8** %9, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  %124 = load i32*, i32** %5, align 8
  %125 = load i8*, i8** %9, align 8
  %126 = call i32 (i32*, i8*, ...) @fprintf(i32* %124, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* %125)
  br label %130

127:                                              ; preds = %120
  %128 = load i32*, i32** %5, align 8
  %129 = call i32 (i32*, i8*, ...) @fprintf(i32* %128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  br label %130

130:                                              ; preds = %127, %123
  %131 = load i8*, i8** @TRUE, align 8
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 2
  store i8* %131, i8** %133, align 8
  %134 = load i32, i32* @indentation, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* @indentation, align 4
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %137 = call i32 @type_get_type(%struct.TYPE_22__* %136)
  %138 = icmp ne i32 %137, 130
  br i1 %138, label %139, label %144

139:                                              ; preds = %130
  %140 = load i32*, i32** %5, align 8
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %142 = call i32 @type_encapsulated_union_get_fields(%struct.TYPE_22__* %141)
  %143 = call i32 @write_fields(i32* %140, i32 %142)
  br label %149

144:                                              ; preds = %130
  %145 = load i32*, i32** %5, align 8
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %147 = call i32 @type_struct_get_fields(%struct.TYPE_22__* %146)
  %148 = call i32 @write_fields(i32* %145, i32 %147)
  br label %149

149:                                              ; preds = %144, %139
  %150 = load i32*, i32** %5, align 8
  %151 = call i32 @indent(i32* %150, i32 -1)
  %152 = load i32*, i32** %5, align 8
  %153 = call i32 (i32*, i8*, ...) @fprintf(i32* %152, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %164

154:                                              ; preds = %115, %110, %107
  %155 = load i32*, i32** %5, align 8
  %156 = load i8*, i8** %9, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %160

158:                                              ; preds = %154
  %159 = load i8*, i8** %9, align 8
  br label %161

160:                                              ; preds = %154
  br label %161

161:                                              ; preds = %160, %158
  %162 = phi i8* [ %159, %158 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %160 ]
  %163 = call i32 (i32*, i8*, ...) @fprintf(i32* %155, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* %162)
  br label %164

164:                                              ; preds = %161, %149
  br label %402

165:                                              ; preds = %44
  %166 = load i32, i32* %8, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %206, label %168

168:                                              ; preds = %165
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 8
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %206

173:                                              ; preds = %168
  %174 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %174, i32 0, i32 2
  %176 = load i8*, i8** %175, align 8
  %177 = icmp ne i8* %176, null
  br i1 %177, label %206, label %178

178:                                              ; preds = %173
  %179 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %179, i32 0, i32 0
  %181 = load i8*, i8** %180, align 8
  %182 = icmp ne i8* %181, null
  br i1 %182, label %183, label %189

183:                                              ; preds = %178
  %184 = load i32*, i32** %5, align 8
  %185 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %185, i32 0, i32 0
  %187 = load i8*, i8** %186, align 8
  %188 = call i32 (i32*, i8*, ...) @fprintf(i32* %184, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8* %187)
  br label %192

189:                                              ; preds = %178
  %190 = load i32*, i32** %5, align 8
  %191 = call i32 (i32*, i8*, ...) @fprintf(i32* %190, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  br label %192

192:                                              ; preds = %189, %183
  %193 = load i8*, i8** @TRUE, align 8
  %194 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %194, i32 0, i32 2
  store i8* %193, i8** %195, align 8
  %196 = load i32, i32* @indentation, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* @indentation, align 4
  %198 = load i32*, i32** %5, align 8
  %199 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %200 = call i32 @type_union_get_cases(%struct.TYPE_22__* %199)
  %201 = call i32 @write_fields(i32* %198, i32 %200)
  %202 = load i32*, i32** %5, align 8
  %203 = call i32 @indent(i32* %202, i32 -1)
  %204 = load i32*, i32** %5, align 8
  %205 = call i32 (i32*, i8*, ...) @fprintf(i32* %204, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %220

206:                                              ; preds = %173, %168, %165
  %207 = load i32*, i32** %5, align 8
  %208 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %208, i32 0, i32 0
  %210 = load i8*, i8** %209, align 8
  %211 = icmp ne i8* %210, null
  br i1 %211, label %212, label %216

212:                                              ; preds = %206
  %213 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %213, i32 0, i32 0
  %215 = load i8*, i8** %214, align 8
  br label %217

216:                                              ; preds = %206
  br label %217

217:                                              ; preds = %216, %212
  %218 = phi i8* [ %215, %212 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %216 ]
  %219 = call i32 (i32*, i8*, ...) @fprintf(i32* %207, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* %218)
  br label %220

220:                                              ; preds = %217, %192
  br label %402

221:                                              ; preds = %44
  %222 = load i32*, i32** %5, align 8
  %223 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %224 = call %struct.TYPE_22__* @type_pointer_get_ref(%struct.TYPE_22__* %223)
  %225 = load i32, i32* %7, align 4
  %226 = load i32, i32* %8, align 4
  call void @write_type_left(i32* %222, %struct.TYPE_22__* %224, i32 %225, i32 %226)
  %227 = load i32*, i32** %5, align 8
  %228 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %229 = call %struct.TYPE_22__* @type_pointer_get_ref(%struct.TYPE_22__* %228)
  %230 = call i32 @write_pointer_left(i32* %227, %struct.TYPE_22__* %229)
  %231 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* @ATTR_CONST, align 4
  %235 = call i64 @is_attr(i32 %233, i32 %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %221
  %238 = load i32*, i32** %5, align 8
  %239 = call i32 (i32*, i8*, ...) @fprintf(i32* %238, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %240

240:                                              ; preds = %237, %221
  br label %402

241:                                              ; preds = %44
  %242 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %242, i32 0, i32 0
  %244 = load i8*, i8** %243, align 8
  %245 = icmp ne i8* %244, null
  br i1 %245, label %246, label %256

246:                                              ; preds = %241
  %247 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %248 = call i32 @type_array_is_decl_as_ptr(%struct.TYPE_22__* %247)
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %256

250:                                              ; preds = %246
  %251 = load i32*, i32** %5, align 8
  %252 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %253 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %252, i32 0, i32 0
  %254 = load i8*, i8** %253, align 8
  %255 = call i32 (i32*, i8*, ...) @fprintf(i32* %251, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %254)
  br label %271

256:                                              ; preds = %246, %241
  %257 = load i32*, i32** %5, align 8
  %258 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %259 = call %struct.TYPE_22__* @type_array_get_element(%struct.TYPE_22__* %258)
  %260 = load i32, i32* %7, align 4
  %261 = load i32, i32* %8, align 4
  call void @write_type_left(i32* %257, %struct.TYPE_22__* %259, i32 %260, i32 %261)
  %262 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %263 = call i32 @type_array_is_decl_as_ptr(%struct.TYPE_22__* %262)
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %270

265:                                              ; preds = %256
  %266 = load i32*, i32** %5, align 8
  %267 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %268 = call %struct.TYPE_22__* @type_array_get_element(%struct.TYPE_22__* %267)
  %269 = call i32 @write_pointer_left(i32* %266, %struct.TYPE_22__* %268)
  br label %270

270:                                              ; preds = %265, %256
  br label %271

271:                                              ; preds = %270, %250
  br label %402

272:                                              ; preds = %44
  %273 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %274 = call i32 @type_basic_get_type(%struct.TYPE_22__* %273)
  %275 = icmp ne i32 %274, 144
  br i1 %275, label %276, label %304

276:                                              ; preds = %272
  %277 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %278 = call i32 @type_basic_get_type(%struct.TYPE_22__* %277)
  %279 = icmp ne i32 %278, 142
  br i1 %279, label %280, label %304

280:                                              ; preds = %276
  %281 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %282 = call i32 @type_basic_get_type(%struct.TYPE_22__* %281)
  %283 = icmp ne i32 %282, 140
  br i1 %283, label %284, label %304

284:                                              ; preds = %280
  %285 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %286 = call i32 @type_basic_get_type(%struct.TYPE_22__* %285)
  %287 = icmp ne i32 %286, 147
  br i1 %287, label %288, label %304

288:                                              ; preds = %284
  %289 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %290 = call i32 @type_basic_get_sign(%struct.TYPE_22__* %289)
  %291 = icmp slt i32 %290, 0
  br i1 %291, label %292, label %295

292:                                              ; preds = %288
  %293 = load i32*, i32** %5, align 8
  %294 = call i32 (i32*, i8*, ...) @fprintf(i32* %293, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  br label %303

295:                                              ; preds = %288
  %296 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %297 = call i32 @type_basic_get_sign(%struct.TYPE_22__* %296)
  %298 = icmp sgt i32 %297, 0
  br i1 %298, label %299, label %302

299:                                              ; preds = %295
  %300 = load i32*, i32** %5, align 8
  %301 = call i32 (i32*, i8*, ...) @fprintf(i32* %300, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  br label %302

302:                                              ; preds = %299, %295
  br label %303

303:                                              ; preds = %302, %292
  br label %304

304:                                              ; preds = %303, %284, %280, %276, %272
  %305 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %306 = call i32 @type_basic_get_type(%struct.TYPE_22__* %305)
  switch i32 %306, label %384 [
    i32 141, label %307
    i32 145, label %310
    i32 146, label %313
    i32 143, label %316
    i32 153, label %319
    i32 152, label %322
    i32 139, label %325
    i32 149, label %328
    i32 151, label %331
    i32 150, label %334
    i32 148, label %337
    i32 144, label %340
    i32 140, label %351
    i32 142, label %362
    i32 147, label %373
  ]

307:                                              ; preds = %304
  %308 = load i32*, i32** %5, align 8
  %309 = call i32 (i32*, i8*, ...) @fprintf(i32* %308, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  br label %384

310:                                              ; preds = %304
  %311 = load i32*, i32** %5, align 8
  %312 = call i32 (i32*, i8*, ...) @fprintf(i32* %311, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  br label %384

313:                                              ; preds = %304
  %314 = load i32*, i32** %5, align 8
  %315 = call i32 (i32*, i8*, ...) @fprintf(i32* %314, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  br label %384

316:                                              ; preds = %304
  %317 = load i32*, i32** %5, align 8
  %318 = call i32 (i32*, i8*, ...) @fprintf(i32* %317, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0))
  br label %384

319:                                              ; preds = %304
  %320 = load i32*, i32** %5, align 8
  %321 = call i32 (i32*, i8*, ...) @fprintf(i32* %320, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  br label %384

322:                                              ; preds = %304
  %323 = load i32*, i32** %5, align 8
  %324 = call i32 (i32*, i8*, ...) @fprintf(i32* %323, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0))
  br label %384

325:                                              ; preds = %304
  %326 = load i32*, i32** %5, align 8
  %327 = call i32 (i32*, i8*, ...) @fprintf(i32* %326, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0))
  br label %384

328:                                              ; preds = %304
  %329 = load i32*, i32** %5, align 8
  %330 = call i32 (i32*, i8*, ...) @fprintf(i32* %329, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0))
  br label %384

331:                                              ; preds = %304
  %332 = load i32*, i32** %5, align 8
  %333 = call i32 (i32*, i8*, ...) @fprintf(i32* %332, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0))
  br label %384

334:                                              ; preds = %304
  %335 = load i32*, i32** %5, align 8
  %336 = call i32 (i32*, i8*, ...) @fprintf(i32* %335, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0))
  br label %384

337:                                              ; preds = %304
  %338 = load i32*, i32** %5, align 8
  %339 = call i32 (i32*, i8*, ...) @fprintf(i32* %338, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0))
  br label %384

340:                                              ; preds = %304
  %341 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %342 = call i32 @type_basic_get_sign(%struct.TYPE_22__* %341)
  %343 = icmp sgt i32 %342, 0
  br i1 %343, label %344, label %347

344:                                              ; preds = %340
  %345 = load i32*, i32** %5, align 8
  %346 = call i32 (i32*, i8*, ...) @fprintf(i32* %345, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0))
  br label %350

347:                                              ; preds = %340
  %348 = load i32*, i32** %5, align 8
  %349 = call i32 (i32*, i8*, ...) @fprintf(i32* %348, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0))
  br label %350

350:                                              ; preds = %347, %344
  br label %384

351:                                              ; preds = %304
  %352 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %353 = call i32 @type_basic_get_sign(%struct.TYPE_22__* %352)
  %354 = icmp sgt i32 %353, 0
  br i1 %354, label %355, label %358

355:                                              ; preds = %351
  %356 = load i32*, i32** %5, align 8
  %357 = call i32 (i32*, i8*, ...) @fprintf(i32* %356, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0))
  br label %361

358:                                              ; preds = %351
  %359 = load i32*, i32** %5, align 8
  %360 = call i32 (i32*, i8*, ...) @fprintf(i32* %359, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0))
  br label %361

361:                                              ; preds = %358, %355
  br label %384

362:                                              ; preds = %304
  %363 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %364 = call i32 @type_basic_get_sign(%struct.TYPE_22__* %363)
  %365 = icmp sgt i32 %364, 0
  br i1 %365, label %366, label %369

366:                                              ; preds = %362
  %367 = load i32*, i32** %5, align 8
  %368 = call i32 (i32*, i8*, ...) @fprintf(i32* %367, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0))
  br label %372

369:                                              ; preds = %362
  %370 = load i32*, i32** %5, align 8
  %371 = call i32 (i32*, i8*, ...) @fprintf(i32* %370, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0))
  br label %372

372:                                              ; preds = %369, %366
  br label %384

373:                                              ; preds = %304
  %374 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %375 = call i32 @type_basic_get_sign(%struct.TYPE_22__* %374)
  %376 = icmp sgt i32 %375, 0
  br i1 %376, label %377, label %380

377:                                              ; preds = %373
  %378 = load i32*, i32** %5, align 8
  %379 = call i32 (i32*, i8*, ...) @fprintf(i32* %378, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0))
  br label %383

380:                                              ; preds = %373
  %381 = load i32*, i32** %5, align 8
  %382 = call i32 (i32*, i8*, ...) @fprintf(i32* %381, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i64 0, i64 0))
  br label %383

383:                                              ; preds = %380, %377
  br label %384

384:                                              ; preds = %304, %383, %372, %361, %350, %337, %334, %331, %328, %325, %322, %319, %316, %313, %310, %307
  br label %402

385:                                              ; preds = %44, %44, %44
  %386 = load i32*, i32** %5, align 8
  %387 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %388 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %387, i32 0, i32 0
  %389 = load i8*, i8** %388, align 8
  %390 = call i32 (i32*, i8*, ...) @fprintf(i32* %386, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %389)
  br label %402

391:                                              ; preds = %44
  %392 = load i32*, i32** %5, align 8
  %393 = call i32 (i32*, i8*, ...) @fprintf(i32* %392, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0))
  br label %402

394:                                              ; preds = %44
  %395 = load i32*, i32** %5, align 8
  %396 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %397 = call %struct.TYPE_22__* @type_bitfield_get_field(%struct.TYPE_22__* %396)
  %398 = load i32, i32* %7, align 4
  %399 = load i32, i32* %8, align 4
  call void @write_type_left(i32* %395, %struct.TYPE_22__* %397, i32 %398, i32 %399)
  br label %402

400:                                              ; preds = %44, %44
  %401 = call i32 @assert(i32 0)
  br label %402

402:                                              ; preds = %44, %400, %394, %391, %385, %384, %271, %240, %220, %164, %106
  br label %403

403:                                              ; preds = %12, %402, %38
  ret void
}

declare dso_local i8* @type_get_name(%struct.TYPE_22__*, i32) #1

declare dso_local i64 @is_attr(i32, i32) #1

declare dso_local i64 @type_is_alias(%struct.TYPE_22__*) #1

declare dso_local i32 @is_ptr(%struct.TYPE_22__*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @type_get_type_detect_alias(%struct.TYPE_22__*) #1

declare dso_local i32 @write_enums(i32*, i32, i8*) #1

declare dso_local i32 @type_enum_get_values(%struct.TYPE_22__*) #1

declare dso_local i32 @is_global_namespace(i32) #1

declare dso_local i32 @indent(i32*, i32) #1

declare dso_local i32 @type_get_type(%struct.TYPE_22__*) #1

declare dso_local i32 @write_fields(i32*, i32) #1

declare dso_local i32 @type_encapsulated_union_get_fields(%struct.TYPE_22__*) #1

declare dso_local i32 @type_struct_get_fields(%struct.TYPE_22__*) #1

declare dso_local i32 @type_union_get_cases(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_22__* @type_pointer_get_ref(%struct.TYPE_22__*) #1

declare dso_local i32 @write_pointer_left(i32*, %struct.TYPE_22__*) #1

declare dso_local i32 @type_array_is_decl_as_ptr(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_22__* @type_array_get_element(%struct.TYPE_22__*) #1

declare dso_local i32 @type_basic_get_type(%struct.TYPE_22__*) #1

declare dso_local i32 @type_basic_get_sign(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_22__* @type_bitfield_get_field(%struct.TYPE_22__*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
