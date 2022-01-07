; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/wine/extr_undname.c_demangle_datatype.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/wine/extr_undname.c_demangle_datatype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsed_symbol = type { i8*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.datatype_t = type { i8*, i8* }
%struct.array = type { i32 }

@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@UNDNAME_NO_COMPLEX_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"union \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"struct \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"class \00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"cointerface \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"`template-parameter-%s'\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@UNDNAME_NO_ALLOCATION_LANGUAGE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"%s%s (%s %s::*\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c")%s%s\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"%s%s (%s*\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c")%s\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"enum %s\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"`template-parameter%s'\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"{%s,%s}\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"{%s,%s,%s}\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"`non-type-template-parameter%s'\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"%s[%s]\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"Unknown type %c\0A\00", align 1
@.str.19 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.parsed_symbol*, %struct.datatype_t*, %struct.array*, i8*)* @demangle_datatype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @demangle_datatype(%struct.parsed_symbol* %0, %struct.datatype_t* %1, %struct.array* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.parsed_symbol*, align 8
  %7 = alloca %struct.datatype_t*, align 8
  %8 = alloca %struct.array*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.datatype_t, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca %struct.datatype_t, align 8
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca i32, align 4
  %37 = alloca %struct.datatype_t, align 8
  %38 = alloca i8*, align 8
  %39 = alloca i8*, align 8
  %40 = alloca i32, align 4
  %41 = alloca i8*, align 8
  %42 = alloca i8*, align 8
  store %struct.parsed_symbol* %0, %struct.parsed_symbol** %6, align 8
  store %struct.datatype_t* %1, %struct.datatype_t** %7, align 8
  store %struct.array* %2, %struct.array** %8, align 8
  store i8* %3, i8** %9, align 8
  %43 = load i8*, i8** @TRUE, align 8
  store i8* %43, i8** %11, align 8
  %44 = load %struct.datatype_t*, %struct.datatype_t** %7, align 8
  %45 = call i32 @assert(%struct.datatype_t* %44)
  %46 = load %struct.datatype_t*, %struct.datatype_t** %7, align 8
  %47 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %46, i32 0, i32 1
  store i8* null, i8** %47, align 8
  %48 = load %struct.datatype_t*, %struct.datatype_t** %7, align 8
  %49 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %48, i32 0, i32 0
  store i8* null, i8** %49, align 8
  %50 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %51 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %51, align 8
  %54 = load i8, i8* %52, align 1
  store i8 %54, i8* %10, align 1
  %55 = sext i8 %54 to i32
  switch i32 %55, label %587 [
    i32 95, label %56
    i32 67, label %66
    i32 68, label %66
    i32 69, label %66
    i32 70, label %66
    i32 71, label %66
    i32 72, label %66
    i32 73, label %66
    i32 74, label %66
    i32 75, label %66
    i32 77, label %66
    i32 78, label %66
    i32 79, label %66
    i32 88, label %66
    i32 90, label %66
    i32 84, label %72
    i32 85, label %72
    i32 86, label %72
    i32 89, label %72
    i32 63, label %99
    i32 65, label %123
    i32 66, label %123
    i32 81, label %133
    i32 82, label %133
    i32 83, label %133
    i32 80, label %151
    i32 87, label %330
    i32 48, label %366
    i32 49, label %366
    i32 50, label %366
    i32 51, label %366
    i32 52, label %366
    i32 53, label %366
    i32 54, label %366
    i32 55, label %366
    i32 56, label %366
    i32 57, label %366
    i32 36, label %397
  ]

56:                                               ; preds = %4
  %57 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %58 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %58, align 8
  %61 = load i8, i8* %59, align 1
  %62 = sext i8 %61 to i32
  %63 = call i8* @get_extended_type(i32 %62)
  %64 = load %struct.datatype_t*, %struct.datatype_t** %7, align 8
  %65 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  br label %590

66:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  %67 = load i8, i8* %10, align 1
  %68 = call i8* @get_simple_type(i8 signext %67)
  %69 = load %struct.datatype_t*, %struct.datatype_t** %7, align 8
  %70 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %69, i32 0, i32 0
  store i8* %68, i8** %70, align 8
  %71 = load i8*, i8** @FALSE, align 8
  store i8* %71, i8** %11, align 8
  br label %590

72:                                               ; preds = %4, %4, %4, %4
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  %73 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %74 = call i8* @get_class_name(%struct.parsed_symbol* %73)
  store i8* %74, i8** %12, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %72
  br label %635

77:                                               ; preds = %72
  %78 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %79 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @UNDNAME_NO_COMPLEX_TYPE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %77
  %85 = load i8, i8* %10, align 1
  %86 = sext i8 %85 to i32
  switch i32 %86, label %91 [
    i32 84, label %87
    i32 85, label %88
    i32 86, label %89
    i32 89, label %90
  ]

87:                                               ; preds = %84
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  br label %91

88:                                               ; preds = %84
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  br label %91

89:                                               ; preds = %84
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  br label %91

90:                                               ; preds = %84
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8** %13, align 8
  br label %91

91:                                               ; preds = %84, %90, %89, %88, %87
  br label %92

92:                                               ; preds = %91, %77
  %93 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %94 = load i8*, i8** %13, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = call i8* (%struct.parsed_symbol*, i8*, i8*, ...) @str_printf(%struct.parsed_symbol* %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %94, i8* %95)
  %97 = load %struct.datatype_t*, %struct.datatype_t** %7, align 8
  %98 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %97, i32 0, i32 0
  store i8* %96, i8** %98, align 8
  br label %590

99:                                               ; preds = %4
  %100 = load i8*, i8** %9, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %113

102:                                              ; preds = %99
  %103 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %104 = call i8* @get_number(%struct.parsed_symbol* %103)
  store i8* %104, i8** %14, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %102
  br label %635

107:                                              ; preds = %102
  %108 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %109 = load i8*, i8** %14, align 8
  %110 = call i8* (%struct.parsed_symbol*, i8*, i8*, ...) @str_printf(%struct.parsed_symbol* %108, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* %109)
  %111 = load %struct.datatype_t*, %struct.datatype_t** %7, align 8
  %112 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %111, i32 0, i32 0
  store i8* %110, i8** %112, align 8
  br label %122

113:                                              ; preds = %99
  %114 = load %struct.datatype_t*, %struct.datatype_t** %7, align 8
  %115 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %116 = load %struct.array*, %struct.array** %8, align 8
  %117 = load i8*, i8** %9, align 8
  %118 = call i32 @get_modified_type(%struct.datatype_t* %114, %struct.parsed_symbol* %115, %struct.array* %116, i8 signext 63, i8* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %113
  br label %635

121:                                              ; preds = %113
  br label %122

122:                                              ; preds = %121, %107
  br label %590

123:                                              ; preds = %4, %4
  %124 = load %struct.datatype_t*, %struct.datatype_t** %7, align 8
  %125 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %126 = load %struct.array*, %struct.array** %8, align 8
  %127 = load i8, i8* %10, align 1
  %128 = load i8*, i8** %9, align 8
  %129 = call i32 @get_modified_type(%struct.datatype_t* %124, %struct.parsed_symbol* %125, %struct.array* %126, i8 signext %127, i8* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %123
  br label %635

132:                                              ; preds = %123
  br label %590

133:                                              ; preds = %4, %4, %4
  %134 = load %struct.datatype_t*, %struct.datatype_t** %7, align 8
  %135 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %136 = load %struct.array*, %struct.array** %8, align 8
  %137 = load i8*, i8** %9, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %139, label %142

139:                                              ; preds = %133
  %140 = load i8, i8* %10, align 1
  %141 = sext i8 %140 to i32
  br label %143

142:                                              ; preds = %133
  br label %143

143:                                              ; preds = %142, %139
  %144 = phi i32 [ %141, %139 ], [ 80, %142 ]
  %145 = trunc i32 %144 to i8
  %146 = load i8*, i8** %9, align 8
  %147 = call i32 @get_modified_type(%struct.datatype_t* %134, %struct.parsed_symbol* %135, %struct.array* %136, i8 signext %145, i8* %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %143
  br label %635

150:                                              ; preds = %143
  br label %590

151:                                              ; preds = %4
  %152 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %153 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = load i8, i8* %154, align 1
  %156 = call i32 @isdigit(i8 signext %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %320

158:                                              ; preds = %151
  %159 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %160 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp eq i32 %163, 56
  br i1 %164, label %165, label %253

165:                                              ; preds = %158
  store i8* null, i8** %15, align 8
  %166 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %167 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  store i32 %169, i32* %19, align 4
  %170 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %171 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %170, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** %171, align 8
  %174 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %175 = call i8* @get_class_name(%struct.parsed_symbol* %174)
  store i8* %175, i8** %20, align 8
  %176 = icmp ne i8* %175, null
  br i1 %176, label %178, label %177

177:                                              ; preds = %165
  br label %635

178:                                              ; preds = %165
  %179 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %180 = call i32 @get_modifier(%struct.parsed_symbol* %179, i8** %21, i8** %22)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %183, label %182

182:                                              ; preds = %178
  br label %635

183:                                              ; preds = %178
  %184 = load i8*, i8** %21, align 8
  %185 = icmp ne i8* %184, null
  br i1 %185, label %186, label %191

186:                                              ; preds = %183
  %187 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %188 = load i8*, i8** %21, align 8
  %189 = load i8*, i8** %22, align 8
  %190 = call i8* (%struct.parsed_symbol*, i8*, i8*, ...) @str_printf(%struct.parsed_symbol* %187, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %188, i8* %189)
  store i8* %190, i8** %21, align 8
  br label %201

191:                                              ; preds = %183
  %192 = load i8*, i8** %22, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 0
  %194 = load i8, i8* %193, align 1
  %195 = icmp ne i8 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %191
  %197 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %198 = load i8*, i8** %22, align 8
  %199 = call i8* (%struct.parsed_symbol*, i8*, i8*, ...) @str_printf(%struct.parsed_symbol* %197, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %198)
  store i8* %199, i8** %21, align 8
  br label %200

200:                                              ; preds = %196, %191
  br label %201

201:                                              ; preds = %200, %186
  %202 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %203 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %202, i32 0, i32 0
  %204 = load i8*, i8** %203, align 8
  %205 = getelementptr inbounds i8, i8* %204, i32 1
  store i8* %205, i8** %203, align 8
  %206 = load i8, i8* %204, align 1
  %207 = sext i8 %206 to i32
  %208 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %209 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @UNDNAME_NO_ALLOCATION_LANGUAGE, align 4
  %212 = xor i32 %211, -1
  %213 = and i32 %210, %212
  %214 = call i32 @get_calling_convention(i32 %207, i8** %16, i8** %17, i32 %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %217, label %216

216:                                              ; preds = %201
  br label %635

217:                                              ; preds = %201
  %218 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %219 = load %struct.array*, %struct.array** %8, align 8
  %220 = load i8*, i8** @FALSE, align 8
  %221 = call i8* @demangle_datatype(%struct.parsed_symbol* %218, %struct.datatype_t* %18, %struct.array* %219, i8* %220)
  %222 = icmp ne i8* %221, null
  br i1 %222, label %224, label %223

223:                                              ; preds = %217
  br label %635

224:                                              ; preds = %217
  %225 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %226 = load %struct.array*, %struct.array** %8, align 8
  %227 = load i8*, i8** @TRUE, align 8
  %228 = call i8* @get_args(%struct.parsed_symbol* %225, %struct.array* %226, i8* %227, i8 signext 40, i8 signext 41)
  store i8* %228, i8** %15, align 8
  %229 = load i8*, i8** %15, align 8
  %230 = icmp ne i8* %229, null
  br i1 %230, label %232, label %231

231:                                              ; preds = %224
  br label %635

232:                                              ; preds = %224
  %233 = load i32, i32* %19, align 4
  %234 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %235 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %234, i32 0, i32 2
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i32 0, i32 0
  store i32 %233, i32* %236, align 4
  %237 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %238 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %18, i32 0, i32 0
  %239 = load i8*, i8** %238, align 8
  %240 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %18, i32 0, i32 1
  %241 = load i8*, i8** %240, align 8
  %242 = load i8*, i8** %16, align 8
  %243 = load i8*, i8** %20, align 8
  %244 = call i8* (%struct.parsed_symbol*, i8*, i8*, ...) @str_printf(%struct.parsed_symbol* %237, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* %239, i8* %241, i8* %242, i8* %243)
  %245 = load %struct.datatype_t*, %struct.datatype_t** %7, align 8
  %246 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %245, i32 0, i32 0
  store i8* %244, i8** %246, align 8
  %247 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %248 = load i8*, i8** %15, align 8
  %249 = load i8*, i8** %21, align 8
  %250 = call i8* (%struct.parsed_symbol*, i8*, i8*, ...) @str_printf(%struct.parsed_symbol* %247, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* %248, i8* %249)
  %251 = load %struct.datatype_t*, %struct.datatype_t** %7, align 8
  %252 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %251, i32 0, i32 1
  store i8* %250, i8** %252, align 8
  br label %319

253:                                              ; preds = %158
  %254 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %255 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %254, i32 0, i32 0
  %256 = load i8*, i8** %255, align 8
  %257 = load i8, i8* %256, align 1
  %258 = sext i8 %257 to i32
  %259 = icmp eq i32 %258, 54
  br i1 %259, label %260, label %317

260:                                              ; preds = %253
  store i8* null, i8** %23, align 8
  %261 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %262 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %261, i32 0, i32 2
  %263 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  store i32 %264, i32* %27, align 4
  %265 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %266 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %265, i32 0, i32 0
  %267 = load i8*, i8** %266, align 8
  %268 = getelementptr inbounds i8, i8* %267, i32 1
  store i8* %268, i8** %266, align 8
  %269 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %270 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %269, i32 0, i32 0
  %271 = load i8*, i8** %270, align 8
  %272 = getelementptr inbounds i8, i8* %271, i32 1
  store i8* %272, i8** %270, align 8
  %273 = load i8, i8* %271, align 1
  %274 = sext i8 %273 to i32
  %275 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %276 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* @UNDNAME_NO_ALLOCATION_LANGUAGE, align 4
  %279 = xor i32 %278, -1
  %280 = and i32 %277, %279
  %281 = call i32 @get_calling_convention(i32 %274, i8** %24, i8** %25, i32 %280)
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %289

283:                                              ; preds = %260
  %284 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %285 = load %struct.array*, %struct.array** %8, align 8
  %286 = load i8*, i8** @FALSE, align 8
  %287 = call i8* @demangle_datatype(%struct.parsed_symbol* %284, %struct.datatype_t* %26, %struct.array* %285, i8* %286)
  %288 = icmp ne i8* %287, null
  br i1 %288, label %290, label %289

289:                                              ; preds = %283, %260
  br label %635

290:                                              ; preds = %283
  %291 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %292 = load %struct.array*, %struct.array** %8, align 8
  %293 = load i8*, i8** @TRUE, align 8
  %294 = call i8* @get_args(%struct.parsed_symbol* %291, %struct.array* %292, i8* %293, i8 signext 40, i8 signext 41)
  store i8* %294, i8** %23, align 8
  %295 = load i8*, i8** %23, align 8
  %296 = icmp ne i8* %295, null
  br i1 %296, label %298, label %297

297:                                              ; preds = %290
  br label %635

298:                                              ; preds = %290
  %299 = load i32, i32* %27, align 4
  %300 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %301 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %300, i32 0, i32 2
  %302 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %301, i32 0, i32 0
  store i32 %299, i32* %302, align 4
  %303 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %304 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %26, i32 0, i32 0
  %305 = load i8*, i8** %304, align 8
  %306 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %26, i32 0, i32 1
  %307 = load i8*, i8** %306, align 8
  %308 = load i8*, i8** %24, align 8
  %309 = call i8* (%struct.parsed_symbol*, i8*, i8*, ...) @str_printf(%struct.parsed_symbol* %303, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* %305, i8* %307, i8* %308)
  %310 = load %struct.datatype_t*, %struct.datatype_t** %7, align 8
  %311 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %310, i32 0, i32 0
  store i8* %309, i8** %311, align 8
  %312 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %313 = load i8*, i8** %23, align 8
  %314 = call i8* (%struct.parsed_symbol*, i8*, i8*, ...) @str_printf(%struct.parsed_symbol* %312, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* %313)
  %315 = load %struct.datatype_t*, %struct.datatype_t** %7, align 8
  %316 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %315, i32 0, i32 1
  store i8* %314, i8** %316, align 8
  br label %318

317:                                              ; preds = %253
  br label %635

318:                                              ; preds = %298
  br label %319

319:                                              ; preds = %318, %232
  br label %329

320:                                              ; preds = %151
  %321 = load %struct.datatype_t*, %struct.datatype_t** %7, align 8
  %322 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %323 = load %struct.array*, %struct.array** %8, align 8
  %324 = load i8*, i8** %9, align 8
  %325 = call i32 @get_modified_type(%struct.datatype_t* %321, %struct.parsed_symbol* %322, %struct.array* %323, i8 signext 80, i8* %324)
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %328, label %327

327:                                              ; preds = %320
  br label %635

328:                                              ; preds = %320
  br label %329

329:                                              ; preds = %328, %319
  br label %590

330:                                              ; preds = %4
  %331 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %332 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %331, i32 0, i32 0
  %333 = load i8*, i8** %332, align 8
  %334 = load i8, i8* %333, align 1
  %335 = sext i8 %334 to i32
  %336 = icmp eq i32 %335, 52
  br i1 %336, label %337, label %364

337:                                              ; preds = %330
  %338 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %339 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %338, i32 0, i32 0
  %340 = load i8*, i8** %339, align 8
  %341 = getelementptr inbounds i8, i8* %340, i32 1
  store i8* %341, i8** %339, align 8
  %342 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %343 = call i8* @get_class_name(%struct.parsed_symbol* %342)
  store i8* %343, i8** %28, align 8
  %344 = icmp ne i8* %343, null
  br i1 %344, label %346, label %345

345:                                              ; preds = %337
  br label %635

346:                                              ; preds = %337
  %347 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %348 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 8
  %350 = load i32, i32* @UNDNAME_NO_COMPLEX_TYPE, align 4
  %351 = and i32 %349, %350
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %357

353:                                              ; preds = %346
  %354 = load i8*, i8** %28, align 8
  %355 = load %struct.datatype_t*, %struct.datatype_t** %7, align 8
  %356 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %355, i32 0, i32 0
  store i8* %354, i8** %356, align 8
  br label %363

357:                                              ; preds = %346
  %358 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %359 = load i8*, i8** %28, align 8
  %360 = call i8* (%struct.parsed_symbol*, i8*, i8*, ...) @str_printf(%struct.parsed_symbol* %358, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8* %359)
  %361 = load %struct.datatype_t*, %struct.datatype_t** %7, align 8
  %362 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %361, i32 0, i32 0
  store i8* %360, i8** %362, align 8
  br label %363

363:                                              ; preds = %357, %353
  br label %365

364:                                              ; preds = %330
  br label %635

365:                                              ; preds = %363
  br label %590

366:                                              ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  %367 = load %struct.array*, %struct.array** %8, align 8
  %368 = icmp ne %struct.array* %367, null
  br i1 %368, label %370, label %369

369:                                              ; preds = %366
  br label %635

370:                                              ; preds = %366
  %371 = load %struct.array*, %struct.array** %8, align 8
  %372 = load i8, i8* %10, align 1
  %373 = sext i8 %372 to i32
  %374 = sub nsw i32 %373, 48
  %375 = mul nsw i32 %374, 2
  %376 = trunc i32 %375 to i8
  %377 = call i8* @str_array_get_ref(%struct.array* %371, i8 signext %376)
  %378 = load %struct.datatype_t*, %struct.datatype_t** %7, align 8
  %379 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %378, i32 0, i32 0
  store i8* %377, i8** %379, align 8
  %380 = load %struct.array*, %struct.array** %8, align 8
  %381 = load i8, i8* %10, align 1
  %382 = sext i8 %381 to i32
  %383 = sub nsw i32 %382, 48
  %384 = mul nsw i32 %383, 2
  %385 = add nsw i32 %384, 1
  %386 = trunc i32 %385 to i8
  %387 = call i8* @str_array_get_ref(%struct.array* %380, i8 signext %386)
  %388 = load %struct.datatype_t*, %struct.datatype_t** %7, align 8
  %389 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %388, i32 0, i32 1
  store i8* %387, i8** %389, align 8
  %390 = load %struct.datatype_t*, %struct.datatype_t** %7, align 8
  %391 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %390, i32 0, i32 0
  %392 = load i8*, i8** %391, align 8
  %393 = icmp ne i8* %392, null
  br i1 %393, label %395, label %394

394:                                              ; preds = %370
  br label %635

395:                                              ; preds = %370
  %396 = load i8*, i8** @FALSE, align 8
  store i8* %396, i8** %11, align 8
  br label %590

397:                                              ; preds = %4
  %398 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %399 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %398, i32 0, i32 0
  %400 = load i8*, i8** %399, align 8
  %401 = getelementptr inbounds i8, i8* %400, i32 1
  store i8* %401, i8** %399, align 8
  %402 = load i8, i8* %400, align 1
  %403 = sext i8 %402 to i32
  switch i32 %403, label %586 [
    i32 48, label %404
    i32 68, label %412
    i32 70, label %423
    i32 71, label %440
    i32 81, label %463
    i32 36, label %474
  ]

404:                                              ; preds = %397
  %405 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %406 = call i8* @get_number(%struct.parsed_symbol* %405)
  %407 = load %struct.datatype_t*, %struct.datatype_t** %7, align 8
  %408 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %407, i32 0, i32 0
  store i8* %406, i8** %408, align 8
  %409 = icmp ne i8* %406, null
  br i1 %409, label %411, label %410

410:                                              ; preds = %404
  br label %635

411:                                              ; preds = %404
  br label %586

412:                                              ; preds = %397
  %413 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %414 = call i8* @get_number(%struct.parsed_symbol* %413)
  store i8* %414, i8** %29, align 8
  %415 = icmp ne i8* %414, null
  br i1 %415, label %417, label %416

416:                                              ; preds = %412
  br label %635

417:                                              ; preds = %412
  %418 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %419 = load i8*, i8** %29, align 8
  %420 = call i8* (%struct.parsed_symbol*, i8*, i8*, ...) @str_printf(%struct.parsed_symbol* %418, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i8* %419)
  %421 = load %struct.datatype_t*, %struct.datatype_t** %7, align 8
  %422 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %421, i32 0, i32 0
  store i8* %420, i8** %422, align 8
  br label %586

423:                                              ; preds = %397
  %424 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %425 = call i8* @get_number(%struct.parsed_symbol* %424)
  store i8* %425, i8** %30, align 8
  %426 = icmp ne i8* %425, null
  br i1 %426, label %428, label %427

427:                                              ; preds = %423
  br label %635

428:                                              ; preds = %423
  %429 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %430 = call i8* @get_number(%struct.parsed_symbol* %429)
  store i8* %430, i8** %31, align 8
  %431 = icmp ne i8* %430, null
  br i1 %431, label %433, label %432

432:                                              ; preds = %428
  br label %635

433:                                              ; preds = %428
  %434 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %435 = load i8*, i8** %30, align 8
  %436 = load i8*, i8** %31, align 8
  %437 = call i8* (%struct.parsed_symbol*, i8*, i8*, ...) @str_printf(%struct.parsed_symbol* %434, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8* %435, i8* %436)
  %438 = load %struct.datatype_t*, %struct.datatype_t** %7, align 8
  %439 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %438, i32 0, i32 0
  store i8* %437, i8** %439, align 8
  br label %586

440:                                              ; preds = %397
  %441 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %442 = call i8* @get_number(%struct.parsed_symbol* %441)
  store i8* %442, i8** %32, align 8
  %443 = icmp ne i8* %442, null
  br i1 %443, label %445, label %444

444:                                              ; preds = %440
  br label %635

445:                                              ; preds = %440
  %446 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %447 = call i8* @get_number(%struct.parsed_symbol* %446)
  store i8* %447, i8** %33, align 8
  %448 = icmp ne i8* %447, null
  br i1 %448, label %450, label %449

449:                                              ; preds = %445
  br label %635

450:                                              ; preds = %445
  %451 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %452 = call i8* @get_number(%struct.parsed_symbol* %451)
  store i8* %452, i8** %34, align 8
  %453 = icmp ne i8* %452, null
  br i1 %453, label %455, label %454

454:                                              ; preds = %450
  br label %635

455:                                              ; preds = %450
  %456 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %457 = load i8*, i8** %32, align 8
  %458 = load i8*, i8** %33, align 8
  %459 = load i8*, i8** %34, align 8
  %460 = call i8* (%struct.parsed_symbol*, i8*, i8*, ...) @str_printf(%struct.parsed_symbol* %456, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i8* %457, i8* %458, i8* %459)
  %461 = load %struct.datatype_t*, %struct.datatype_t** %7, align 8
  %462 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %461, i32 0, i32 0
  store i8* %460, i8** %462, align 8
  br label %586

463:                                              ; preds = %397
  %464 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %465 = call i8* @get_number(%struct.parsed_symbol* %464)
  store i8* %465, i8** %35, align 8
  %466 = icmp ne i8* %465, null
  br i1 %466, label %468, label %467

467:                                              ; preds = %463
  br label %635

468:                                              ; preds = %463
  %469 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %470 = load i8*, i8** %35, align 8
  %471 = call i8* (%struct.parsed_symbol*, i8*, i8*, ...) @str_printf(%struct.parsed_symbol* %469, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0), i8* %470)
  %472 = load %struct.datatype_t*, %struct.datatype_t** %7, align 8
  %473 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %472, i32 0, i32 0
  store i8* %471, i8** %473, align 8
  br label %586

474:                                              ; preds = %397
  %475 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %476 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %475, i32 0, i32 0
  %477 = load i8*, i8** %476, align 8
  %478 = load i8, i8* %477, align 1
  %479 = sext i8 %478 to i32
  %480 = icmp eq i32 %479, 66
  br i1 %480, label %481, label %551

481:                                              ; preds = %474
  %482 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %483 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %482, i32 0, i32 2
  %484 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %483, i32 0, i32 0
  %485 = load i32, i32* %484, align 4
  store i32 %485, i32* %36, align 4
  store i8* null, i8** %38, align 8
  %486 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %487 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %486, i32 0, i32 0
  %488 = load i8*, i8** %487, align 8
  %489 = getelementptr inbounds i8, i8* %488, i32 1
  store i8* %489, i8** %487, align 8
  %490 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %491 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %490, i32 0, i32 0
  %492 = load i8*, i8** %491, align 8
  %493 = load i8, i8* %492, align 1
  %494 = sext i8 %493 to i32
  %495 = icmp eq i32 %494, 89
  br i1 %495, label %496, label %519

496:                                              ; preds = %481
  %497 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %498 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %497, i32 0, i32 0
  %499 = load i8*, i8** %498, align 8
  %500 = getelementptr inbounds i8, i8* %499, i32 1
  store i8* %500, i8** %498, align 8
  %501 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %502 = call i8* @get_number(%struct.parsed_symbol* %501)
  store i8* %502, i8** %39, align 8
  %503 = icmp ne i8* %502, null
  br i1 %503, label %505, label %504

504:                                              ; preds = %496
  br label %635

505:                                              ; preds = %496
  %506 = load i8*, i8** %39, align 8
  %507 = call i32 @atoi(i8* %506)
  store i32 %507, i32* %40, align 4
  br label %508

508:                                              ; preds = %512, %505
  %509 = load i32, i32* %40, align 4
  %510 = add nsw i32 %509, -1
  store i32 %510, i32* %40, align 4
  %511 = icmp ne i32 %509, 0
  br i1 %511, label %512, label %518

512:                                              ; preds = %508
  %513 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %514 = load i8*, i8** %38, align 8
  %515 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %516 = call i8* @get_number(%struct.parsed_symbol* %515)
  %517 = call i8* (%struct.parsed_symbol*, i8*, i8*, ...) @str_printf(%struct.parsed_symbol* %513, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i8* %514, i8* %516)
  store i8* %517, i8** %38, align 8
  br label %508

518:                                              ; preds = %508
  br label %519

519:                                              ; preds = %518, %481
  %520 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %521 = load %struct.array*, %struct.array** %8, align 8
  %522 = load i8*, i8** @FALSE, align 8
  %523 = call i8* @demangle_datatype(%struct.parsed_symbol* %520, %struct.datatype_t* %37, %struct.array* %521, i8* %522)
  %524 = icmp ne i8* %523, null
  br i1 %524, label %526, label %525

525:                                              ; preds = %519
  br label %635

526:                                              ; preds = %519
  %527 = load i8*, i8** %38, align 8
  %528 = icmp ne i8* %527, null
  br i1 %528, label %529, label %537

529:                                              ; preds = %526
  %530 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %531 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %37, i32 0, i32 0
  %532 = load i8*, i8** %531, align 8
  %533 = load i8*, i8** %38, align 8
  %534 = call i8* (%struct.parsed_symbol*, i8*, i8*, ...) @str_printf(%struct.parsed_symbol* %530, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %532, i8* %533)
  %535 = load %struct.datatype_t*, %struct.datatype_t** %7, align 8
  %536 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %535, i32 0, i32 0
  store i8* %534, i8** %536, align 8
  br label %542

537:                                              ; preds = %526
  %538 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %37, i32 0, i32 0
  %539 = load i8*, i8** %538, align 8
  %540 = load %struct.datatype_t*, %struct.datatype_t** %7, align 8
  %541 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %540, i32 0, i32 0
  store i8* %539, i8** %541, align 8
  br label %542

542:                                              ; preds = %537, %529
  %543 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %37, i32 0, i32 1
  %544 = load i8*, i8** %543, align 8
  %545 = load %struct.datatype_t*, %struct.datatype_t** %7, align 8
  %546 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %545, i32 0, i32 1
  store i8* %544, i8** %546, align 8
  %547 = load i32, i32* %36, align 4
  %548 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %549 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %548, i32 0, i32 2
  %550 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %549, i32 0, i32 0
  store i32 %547, i32* %550, align 4
  br label %585

551:                                              ; preds = %474
  %552 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %553 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %552, i32 0, i32 0
  %554 = load i8*, i8** %553, align 8
  %555 = load i8, i8* %554, align 1
  %556 = sext i8 %555 to i32
  %557 = icmp eq i32 %556, 67
  br i1 %557, label %558, label %584

558:                                              ; preds = %551
  %559 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %560 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %559, i32 0, i32 0
  %561 = load i8*, i8** %560, align 8
  %562 = getelementptr inbounds i8, i8* %561, i32 1
  store i8* %562, i8** %560, align 8
  %563 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %564 = call i32 @get_modifier(%struct.parsed_symbol* %563, i8** %41, i8** %42)
  %565 = icmp ne i32 %564, 0
  br i1 %565, label %567, label %566

566:                                              ; preds = %558
  br label %635

567:                                              ; preds = %558
  %568 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %569 = load %struct.datatype_t*, %struct.datatype_t** %7, align 8
  %570 = load %struct.array*, %struct.array** %8, align 8
  %571 = load i8*, i8** %9, align 8
  %572 = call i8* @demangle_datatype(%struct.parsed_symbol* %568, %struct.datatype_t* %569, %struct.array* %570, i8* %571)
  %573 = icmp ne i8* %572, null
  br i1 %573, label %575, label %574

574:                                              ; preds = %567
  br label %635

575:                                              ; preds = %567
  %576 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %577 = load %struct.datatype_t*, %struct.datatype_t** %7, align 8
  %578 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %577, i32 0, i32 0
  %579 = load i8*, i8** %578, align 8
  %580 = load i8*, i8** %41, align 8
  %581 = call i8* (%struct.parsed_symbol*, i8*, i8*, ...) @str_printf(%struct.parsed_symbol* %576, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %579, i8* %580)
  %582 = load %struct.datatype_t*, %struct.datatype_t** %7, align 8
  %583 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %582, i32 0, i32 0
  store i8* %581, i8** %583, align 8
  br label %584

584:                                              ; preds = %575, %551
  br label %585

585:                                              ; preds = %584, %542
  br label %586

586:                                              ; preds = %397, %585, %468, %455, %433, %417, %411
  br label %590

587:                                              ; preds = %4
  %588 = load i8, i8* %10, align 1
  %589 = call i32 @ERR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i8 signext %588)
  br label %590

590:                                              ; preds = %587, %586, %395, %365, %329, %150, %132, %122, %92, %66, %56
  %591 = load i8*, i8** %11, align 8
  %592 = icmp ne i8* %591, null
  br i1 %592, label %593, label %634

593:                                              ; preds = %590
  %594 = load %struct.array*, %struct.array** %8, align 8
  %595 = icmp ne %struct.array* %594, null
  br i1 %595, label %596, label %634

596:                                              ; preds = %593
  %597 = load i8*, i8** %9, align 8
  %598 = icmp ne i8* %597, null
  br i1 %598, label %599, label %634

599:                                              ; preds = %596
  %600 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %601 = load %struct.datatype_t*, %struct.datatype_t** %7, align 8
  %602 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %601, i32 0, i32 0
  %603 = load i8*, i8** %602, align 8
  %604 = icmp ne i8* %603, null
  br i1 %604, label %605, label %609

605:                                              ; preds = %599
  %606 = load %struct.datatype_t*, %struct.datatype_t** %7, align 8
  %607 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %606, i32 0, i32 0
  %608 = load i8*, i8** %607, align 8
  br label %610

609:                                              ; preds = %599
  br label %610

610:                                              ; preds = %609, %605
  %611 = phi i8* [ %608, %605 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), %609 ]
  %612 = load %struct.array*, %struct.array** %8, align 8
  %613 = call i32 @str_array_push(%struct.parsed_symbol* %600, i8* %611, i32 -1, %struct.array* %612)
  %614 = icmp ne i32 %613, 0
  br i1 %614, label %615, label %631

615:                                              ; preds = %610
  %616 = load %struct.parsed_symbol*, %struct.parsed_symbol** %6, align 8
  %617 = load %struct.datatype_t*, %struct.datatype_t** %7, align 8
  %618 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %617, i32 0, i32 1
  %619 = load i8*, i8** %618, align 8
  %620 = icmp ne i8* %619, null
  br i1 %620, label %621, label %625

621:                                              ; preds = %615
  %622 = load %struct.datatype_t*, %struct.datatype_t** %7, align 8
  %623 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %622, i32 0, i32 1
  %624 = load i8*, i8** %623, align 8
  br label %626

625:                                              ; preds = %615
  br label %626

626:                                              ; preds = %625, %621
  %627 = phi i8* [ %624, %621 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), %625 ]
  %628 = load %struct.array*, %struct.array** %8, align 8
  %629 = call i32 @str_array_push(%struct.parsed_symbol* %616, i8* %627, i32 -1, %struct.array* %628)
  %630 = icmp ne i32 %629, 0
  br i1 %630, label %633, label %631

631:                                              ; preds = %626, %610
  %632 = load i8*, i8** @FALSE, align 8
  store i8* %632, i8** %5, align 8
  br label %643

633:                                              ; preds = %626
  br label %634

634:                                              ; preds = %633, %596, %593, %590
  br label %635

635:                                              ; preds = %634, %574, %566, %525, %504, %467, %454, %449, %444, %432, %427, %416, %410, %394, %369, %364, %345, %327, %317, %297, %289, %231, %223, %216, %182, %177, %149, %131, %120, %106, %76
  %636 = load %struct.datatype_t*, %struct.datatype_t** %7, align 8
  %637 = getelementptr inbounds %struct.datatype_t, %struct.datatype_t* %636, i32 0, i32 0
  %638 = load i8*, i8** %637, align 8
  %639 = icmp ne i8* %638, null
  %640 = zext i1 %639 to i32
  %641 = sext i32 %640 to i64
  %642 = inttoptr i64 %641 to i8*
  store i8* %642, i8** %5, align 8
  br label %643

643:                                              ; preds = %635, %631
  %644 = load i8*, i8** %5, align 8
  ret i8* %644
}

declare dso_local i32 @assert(%struct.datatype_t*) #1

declare dso_local i8* @get_extended_type(i32) #1

declare dso_local i8* @get_simple_type(i8 signext) #1

declare dso_local i8* @get_class_name(%struct.parsed_symbol*) #1

declare dso_local i8* @str_printf(%struct.parsed_symbol*, i8*, i8*, ...) #1

declare dso_local i8* @get_number(%struct.parsed_symbol*) #1

declare dso_local i32 @get_modified_type(%struct.datatype_t*, %struct.parsed_symbol*, %struct.array*, i8 signext, i8*) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i32 @get_modifier(%struct.parsed_symbol*, i8**, i8**) #1

declare dso_local i32 @get_calling_convention(i32, i8**, i8**, i32) #1

declare dso_local i8* @get_args(%struct.parsed_symbol*, %struct.array*, i8*, i8 signext, i8 signext) #1

declare dso_local i8* @str_array_get_ref(%struct.array*, i8 signext) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @ERR(i8*, i8 signext) #1

declare dso_local i32 @str_array_push(%struct.parsed_symbol*, i8*, i32, %struct.array*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
