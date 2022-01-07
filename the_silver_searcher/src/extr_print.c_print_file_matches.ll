; ModuleID = '/home/carl/AnghaBench/the_silver_searcher/src/extr_print.c_print_file_matches.c'
source_filename = "/home/carl/AnghaBench/the_silver_searcher/src/extr_print.c_print_file_matches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i64, i8, i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_7__ = type { i64, i64, i64, i8**, i64, i64, i64, i64, i8*, i8* }
%struct.TYPE_6__ = type { i64, i64 }

@opts = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@PATH_PRINT_DEFAULT = common dso_local global i64 0, align 8
@PATH_PRINT_TOP = common dso_local global i64 0, align 8
@PATH_PRINT_DEFAULT_EACH_LINE = common dso_local global i64 0, align 8
@PATH_PRINT_EACH_LINE = common dso_local global i64 0, align 8
@print_context = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@TRUE = common dso_local global i8* null, align 8
@out_fd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"--\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@FALSE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"%lu %lu\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@color_reset = common dso_local global i8* null, align 8
@truncate_marker = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_file_matches(i8* %0, i8* %1, i64 %2, %struct.TYPE_6__* %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8, align 1
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %9, align 8
  store i64 %4, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i8 45, i8* %13, align 1
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @opts, i32 0, i32 14), align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %5
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @opts, i32 0, i32 0), align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @opts, i32 0, i32 1), align 8
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %24, %21, %5
  %28 = phi i1 [ true, %21 ], [ true, %5 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %16, align 4
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @opts, i32 0, i32 12), align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @opts, i32 0, i32 11), align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32, %27
  store i8 58, i8* %13, align 1
  br label %36

36:                                               ; preds = %35, %32
  %37 = call i32 (...) @print_file_separator()
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @opts, i32 0, i32 2), align 8
  %39 = load i64, i64* @PATH_PRINT_DEFAULT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i64, i64* @PATH_PRINT_TOP, align 8
  store i64 %42, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @opts, i32 0, i32 2), align 8
  br label %50

43:                                               ; preds = %36
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @opts, i32 0, i32 2), align 8
  %45 = load i64, i64* @PATH_PRINT_DEFAULT_EACH_LINE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i64, i64* @PATH_PRINT_EACH_LINE, align 8
  store i64 %48, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @opts, i32 0, i32 2), align 8
  br label %49

49:                                               ; preds = %47, %43
  br label %50

50:                                               ; preds = %49, %41
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @opts, i32 0, i32 2), align 8
  %52 = load i64, i64* @PATH_PRINT_TOP, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %50
  %55 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @opts, i32 0, i32 13), align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i8*, i8** %6, align 8
  %59 = load i8, i8* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @opts, i32 0, i32 3), align 8
  %60 = load i64, i64* %10, align 8
  %61 = call i32 @print_path_count(i8* %58, i8 signext %59, i64 %60)
  br label %66

62:                                               ; preds = %54
  %63 = load i8*, i8** %6, align 8
  %64 = load i8, i8* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @opts, i32 0, i32 3), align 8
  %65 = call i32 @print_path(i8* %63, i8 signext %64)
  br label %66

66:                                               ; preds = %62, %57
  br label %67

67:                                               ; preds = %66, %50
  store i64 0, i64* %14, align 8
  br label %68

68:                                               ; preds = %534, %67
  %69 = load i64, i64* %14, align 8
  %70 = load i64, i64* %8, align 8
  %71 = icmp ule i64 %69, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %68
  %73 = load i64, i64* %11, align 8
  %74 = load i64, i64* %10, align 8
  %75 = icmp ult i64 %73, %74
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 0), align 8
  %78 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @opts, i32 0, i32 0), align 8
  %79 = icmp sle i64 %77, %78
  br label %80

80:                                               ; preds = %76, %72
  %81 = phi i1 [ true, %72 ], [ %79, %76 ]
  br label %82

82:                                               ; preds = %80, %68
  %83 = phi i1 [ false, %68 ], [ %81, %80 ]
  br i1 %83, label %84, label %537

84:                                               ; preds = %82
  %85 = load i64, i64* %11, align 8
  %86 = load i64, i64* %10, align 8
  %87 = icmp ult i64 %85, %86
  br i1 %87, label %88, label %180

88:                                               ; preds = %84
  %89 = load i64, i64* %14, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %91 = load i64, i64* %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %89, %94
  br i1 %95, label %96, label %180

96:                                               ; preds = %88
  %97 = load i8*, i8** @TRUE, align 8
  store i8* %97, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 8), align 8
  %98 = load i64, i64* %11, align 8
  %99 = icmp ugt i64 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %96
  %101 = load i32, i32* %16, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %100
  %104 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 0), align 8
  %105 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @opts, i32 0, i32 1), align 8
  %106 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @opts, i32 0, i32 0), align 8
  %107 = add i64 %105, %106
  %108 = add i64 %107, 1
  %109 = icmp ugt i64 %104, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %103
  %111 = load i32, i32* @out_fd, align 4
  %112 = call i32 (i32, i8*, ...) @fprintf(i32 %111, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %113

113:                                              ; preds = %110, %103, %100, %96
  %114 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 0), align 8
  %115 = icmp sgt i64 %114, 0
  br i1 %115, label %116, label %179

116:                                              ; preds = %113
  %117 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @opts, i32 0, i32 1), align 8
  %118 = icmp ugt i64 %117, 0
  br i1 %118, label %119, label %179

119:                                              ; preds = %116
  %120 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 0), align 8
  %121 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @opts, i32 0, i32 0), align 8
  %122 = add nsw i64 %121, 1
  %123 = sub nsw i64 %120, %122
  store i64 %123, i64* %12, align 8
  %124 = load i64, i64* %12, align 8
  %125 = icmp ult i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %119
  store i64 0, i64* %12, align 8
  br label %134

127:                                              ; preds = %119
  %128 = load i64, i64* %12, align 8
  %129 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @opts, i32 0, i32 1), align 8
  %130 = icmp ugt i64 %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %127
  %132 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @opts, i32 0, i32 1), align 8
  store i64 %132, i64* %12, align 8
  br label %133

133:                                              ; preds = %131, %127
  br label %134

134:                                              ; preds = %133, %126
  %135 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @opts, i32 0, i32 1), align 8
  %136 = load i64, i64* %12, align 8
  %137 = sub i64 %135, %136
  store i64 %137, i64* %15, align 8
  br label %138

138:                                              ; preds = %175, %134
  %139 = load i64, i64* %15, align 8
  %140 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @opts, i32 0, i32 1), align 8
  %141 = icmp ult i64 %139, %140
  br i1 %141, label %142, label %178

142:                                              ; preds = %138
  %143 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 2), align 8
  %144 = load i64, i64* %15, align 8
  %145 = add i64 %143, %144
  %146 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @opts, i32 0, i32 1), align 8
  %147 = urem i64 %145, %146
  store i64 %147, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 1), align 8
  %148 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 3), align 8
  %149 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 1), align 8
  %150 = getelementptr inbounds i8*, i8** %148, i64 %149
  %151 = load i8*, i8** %150, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %153, label %174

153:                                              ; preds = %142
  %154 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @opts, i32 0, i32 2), align 8
  %155 = load i64, i64* @PATH_PRINT_EACH_LINE, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %153
  %158 = load i8*, i8** %6, align 8
  %159 = call i32 @print_path(i8* %158, i8 signext 58)
  br label %160

160:                                              ; preds = %157, %153
  %161 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 4), align 8
  %162 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @opts, i32 0, i32 1), align 8
  %163 = load i64, i64* %15, align 8
  %164 = sub i64 %162, %163
  %165 = sub i64 %161, %164
  %166 = load i8, i8* %13, align 1
  %167 = call i32 @print_line_number(i64 %165, i8 signext %166)
  %168 = load i32, i32* @out_fd, align 4
  %169 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 3), align 8
  %170 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 1), align 8
  %171 = getelementptr inbounds i8*, i8** %169, i64 %170
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 (i32, i8*, ...) @fprintf(i32 %168, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %172)
  br label %174

174:                                              ; preds = %160, %142
  br label %175

175:                                              ; preds = %174
  %176 = load i64, i64* %15, align 8
  %177 = add i64 %176, 1
  store i64 %177, i64* %15, align 8
  br label %138

178:                                              ; preds = %138
  br label %179

179:                                              ; preds = %178, %116, %113
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 0), align 8
  br label %180

180:                                              ; preds = %179, %88, %84
  %181 = load i64, i64* %11, align 8
  %182 = load i64, i64* %10, align 8
  %183 = icmp ult i64 %181, %182
  br i1 %183, label %184, label %196

184:                                              ; preds = %180
  %185 = load i64, i64* %14, align 8
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %187 = load i64, i64* %11, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = icmp eq i64 %185, %190
  br i1 %191, label %192, label %196

192:                                              ; preds = %184
  %193 = load i64, i64* %11, align 8
  %194 = add i64 %193, 1
  store i64 %194, i64* %11, align 8
  %195 = load i8*, i8** @FALSE, align 8
  store i8* %195, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 8), align 8
  br label %196

196:                                              ; preds = %192, %184, %180
  %197 = load i64, i64* %14, align 8
  %198 = load i64, i64* %8, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %207, label %200

200:                                              ; preds = %196
  %201 = load i8*, i8** %7, align 8
  %202 = load i64, i64* %14, align 8
  %203 = getelementptr inbounds i8, i8* %201, i64 %202
  %204 = load i8, i8* %203, align 1
  %205 = sext i8 %204 to i32
  %206 = icmp eq i32 %205, 10
  br i1 %206, label %207, label %218

207:                                              ; preds = %200, %196
  %208 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @opts, i32 0, i32 1), align 8
  %209 = icmp ugt i64 %208, 0
  br i1 %209, label %210, label %218

210:                                              ; preds = %207
  %211 = load i8*, i8** %7, align 8
  %212 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 5), align 8
  %213 = getelementptr inbounds i8, i8* %211, i64 %212
  %214 = load i64, i64* %14, align 8
  %215 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 5), align 8
  %216 = sub i64 %214, %215
  %217 = call i32 @print_context_append(i8* %213, i64 %216)
  br label %218

218:                                              ; preds = %210, %207, %200
  %219 = load i64, i64* %14, align 8
  %220 = load i64, i64* %8, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %229, label %222

222:                                              ; preds = %218
  %223 = load i8*, i8** %7, align 8
  %224 = load i64, i64* %14, align 8
  %225 = getelementptr inbounds i8, i8* %223, i64 %224
  %226 = load i8, i8* %225, align 1
  %227 = sext i8 %226 to i32
  %228 = icmp eq i32 %227, 10
  br i1 %228, label %229, label %533

229:                                              ; preds = %222, %218
  %230 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 0), align 8
  %231 = icmp eq i64 %230, 0
  br i1 %231, label %232, label %497

232:                                              ; preds = %229
  %233 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @opts, i32 0, i32 2), align 8
  %234 = load i64, i64* @PATH_PRINT_EACH_LINE, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %236, label %242

236:                                              ; preds = %232
  %237 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @opts, i32 0, i32 7), align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %242, label %239

239:                                              ; preds = %236
  %240 = load i8*, i8** %6, align 8
  %241 = call i32 @print_path(i8* %240, i8 signext 58)
  br label %242

242:                                              ; preds = %239, %236, %232
  %243 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @opts, i32 0, i32 12), align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %294

245:                                              ; preds = %242
  %246 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 4), align 8
  %247 = call i32 @print_line_number(i64 %246, i8 signext 59)
  br label %248

248:                                              ; preds = %286, %245
  %249 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 6), align 8
  %250 = load i64, i64* %11, align 8
  %251 = icmp ult i64 %249, %250
  br i1 %251, label %252, label %289

252:                                              ; preds = %248
  %253 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %254 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 6), align 8
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 7), align 8
  %259 = sub i64 %257, %258
  store i64 %259, i64* %17, align 8
  %260 = load i32, i32* @out_fd, align 4
  %261 = load i64, i64* %17, align 8
  %262 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %263 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 6), align 8
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 1
  %266 = load i64, i64* %265, align 8
  %267 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %268 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 6), align 8
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = sub i64 %266, %271
  %273 = call i32 (i32, i8*, ...) @fprintf(i32 %260, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %261, i64 %272)
  %274 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 6), align 8
  %275 = load i64, i64* %11, align 8
  %276 = sub i64 %275, 1
  %277 = icmp eq i64 %274, %276
  br i1 %277, label %278, label %281

278:                                              ; preds = %252
  %279 = load i32, i32* @out_fd, align 4
  %280 = call i32 @fputc(i8 signext 58, i32 %279)
  br label %284

281:                                              ; preds = %252
  %282 = load i32, i32* @out_fd, align 4
  %283 = call i32 @fputc(i8 signext 44, i32 %282)
  br label %284

284:                                              ; preds = %281, %278
  %285 = phi i32 [ %280, %278 ], [ %283, %281 ]
  br label %286

286:                                              ; preds = %284
  %287 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 6), align 8
  %288 = add i64 %287, 1
  store i64 %288, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 6), align 8
  br label %248

289:                                              ; preds = %248
  %290 = load i8*, i8** %7, align 8
  %291 = load i64, i64* %14, align 8
  %292 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 5), align 8
  %293 = call i32 @print_line(i8* %290, i64 %291, i64 %292)
  br label %496

294:                                              ; preds = %242
  %295 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @opts, i32 0, i32 11), align 8
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %322

297:                                              ; preds = %294
  br label %298

298:                                              ; preds = %318, %297
  %299 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 6), align 8
  %300 = load i64, i64* %11, align 8
  %301 = icmp ult i64 %299, %300
  br i1 %301, label %302, label %321

302:                                              ; preds = %298
  %303 = load i8*, i8** %6, align 8
  %304 = load i8, i8* %13, align 1
  %305 = call i32 @print_path(i8* %303, i8 signext %304)
  %306 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 4), align 8
  %307 = load i8, i8* %13, align 1
  %308 = call i32 @print_line_number(i64 %306, i8 signext %307)
  %309 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %310 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 6), align 8
  %311 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 5), align 8
  %312 = load i8, i8* %13, align 1
  %313 = call i32 @print_column_number(%struct.TYPE_6__* %309, i64 %310, i64 %311, i8 signext %312)
  %314 = load i8*, i8** %7, align 8
  %315 = load i64, i64* %14, align 8
  %316 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 5), align 8
  %317 = call i32 @print_line(i8* %314, i64 %315, i64 %316)
  br label %318

318:                                              ; preds = %302
  %319 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 6), align 8
  %320 = add i64 %319, 1
  store i64 %320, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 6), align 8
  br label %298

321:                                              ; preds = %298
  br label %495

322:                                              ; preds = %294
  %323 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 4), align 8
  %324 = call i32 @print_line_number(i64 %323, i8 signext 58)
  %325 = load i8*, i8** @FALSE, align 8
  %326 = ptrtoint i8* %325 to i32
  store i32 %326, i32* %18, align 4
  %327 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @opts, i32 0, i32 10), align 8
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %334

329:                                              ; preds = %322
  %330 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %331 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 6), align 8
  %332 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 5), align 8
  %333 = call i32 @print_column_number(%struct.TYPE_6__* %330, i64 %331, i64 %332, i8 signext 58)
  br label %334

334:                                              ; preds = %329, %322
  %335 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 9), align 8
  %336 = icmp ne i8* %335, null
  br i1 %336, label %337, label %344

337:                                              ; preds = %334
  %338 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @opts, i32 0, i32 8), align 8
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %344

340:                                              ; preds = %337
  %341 = load i32, i32* @out_fd, align 4
  %342 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @opts, i32 0, i32 4), align 8
  %343 = call i32 (i32, i8*, ...) @fprintf(i32 %341, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %342)
  br label %344

344:                                              ; preds = %340, %337, %334
  %345 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 5), align 8
  store i64 %345, i64* %15, align 8
  br label %346

346:                                              ; preds = %481, %344
  %347 = load i64, i64* %15, align 8
  %348 = load i64, i64* %14, align 8
  %349 = icmp ule i64 %347, %348
  br i1 %349, label %350, label %484

350:                                              ; preds = %346
  %351 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 6), align 8
  %352 = load i64, i64* %10, align 8
  %353 = icmp ult i64 %351, %352
  br i1 %353, label %354, label %381

354:                                              ; preds = %350
  %355 = load i64, i64* %15, align 8
  %356 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %357 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 6), align 8
  %358 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %356, i64 %357
  %359 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %358, i32 0, i32 1
  %360 = load i64, i64* %359, align 8
  %361 = icmp eq i64 %355, %360
  br i1 %361, label %362, label %381

362:                                              ; preds = %354
  %363 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @opts, i32 0, i32 8), align 8
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %369

365:                                              ; preds = %362
  %366 = load i32, i32* @out_fd, align 4
  %367 = load i8*, i8** @color_reset, align 8
  %368 = call i32 (i32, i8*, ...) @fprintf(i32 %366, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %367)
  br label %369

369:                                              ; preds = %365, %362
  %370 = load i8*, i8** @FALSE, align 8
  store i8* %370, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 9), align 8
  %371 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 6), align 8
  %372 = add i64 %371, 1
  store i64 %372, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 6), align 8
  %373 = load i8*, i8** @TRUE, align 8
  %374 = ptrtoint i8* %373 to i32
  store i32 %374, i32* %18, align 4
  %375 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @opts, i32 0, i32 9), align 8
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %380

377:                                              ; preds = %369
  %378 = load i32, i32* @out_fd, align 4
  %379 = call i32 @fputc(i8 signext 10, i32 %378)
  br label %380

380:                                              ; preds = %377, %369
  br label %381

381:                                              ; preds = %380, %354, %350
  %382 = load i64, i64* %15, align 8
  %383 = load i64, i64* %8, align 8
  %384 = icmp ult i64 %382, %383
  br i1 %384, label %385, label %407

385:                                              ; preds = %381
  %386 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @opts, i32 0, i32 5), align 8
  %387 = icmp sgt i64 %386, 0
  br i1 %387, label %388, label %407

388:                                              ; preds = %385
  %389 = load i64, i64* %15, align 8
  %390 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 5), align 8
  %391 = sub i64 %389, %390
  %392 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @opts, i32 0, i32 5), align 8
  %393 = icmp uge i64 %391, %392
  br i1 %393, label %394, label %407

394:                                              ; preds = %388
  %395 = load i64, i64* %15, align 8
  %396 = load i64, i64* %14, align 8
  %397 = icmp ult i64 %395, %396
  br i1 %397, label %398, label %402

398:                                              ; preds = %394
  %399 = load i32, i32* @truncate_marker, align 4
  %400 = load i32, i32* @out_fd, align 4
  %401 = call i32 @fputs(i32 %399, i32 %400)
  br label %402

402:                                              ; preds = %398, %394
  %403 = load i32, i32* @out_fd, align 4
  %404 = call i32 @fputc(i8 signext 10, i32 %403)
  %405 = load i64, i64* %14, align 8
  store i64 %405, i64* %15, align 8
  %406 = load i64, i64* %10, align 8
  store i64 %406, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 6), align 8
  br label %407

407:                                              ; preds = %402, %388, %385, %381
  %408 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 6), align 8
  %409 = load i64, i64* %10, align 8
  %410 = icmp ult i64 %408, %409
  br i1 %410, label %411, label %452

411:                                              ; preds = %407
  %412 = load i64, i64* %15, align 8
  %413 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %414 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 6), align 8
  %415 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %413, i64 %414
  %416 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %415, i32 0, i32 0
  %417 = load i64, i64* %416, align 8
  %418 = icmp eq i64 %412, %417
  br i1 %418, label %419, label %452

419:                                              ; preds = %411
  %420 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @opts, i32 0, i32 9), align 8
  %421 = icmp ne i64 %420, 0
  br i1 %421, label %422, label %443

422:                                              ; preds = %419
  %423 = load i32, i32* %18, align 4
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %443

425:                                              ; preds = %422
  %426 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @opts, i32 0, i32 2), align 8
  %427 = load i64, i64* @PATH_PRINT_EACH_LINE, align 8
  %428 = icmp eq i64 %426, %427
  br i1 %428, label %429, label %432

429:                                              ; preds = %425
  %430 = load i8*, i8** %6, align 8
  %431 = call i32 @print_path(i8* %430, i8 signext 58)
  br label %432

432:                                              ; preds = %429, %425
  %433 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 4), align 8
  %434 = call i32 @print_line_number(i64 %433, i8 signext 58)
  %435 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @opts, i32 0, i32 10), align 8
  %436 = icmp ne i64 %435, 0
  br i1 %436, label %437, label %442

437:                                              ; preds = %432
  %438 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %439 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 6), align 8
  %440 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 5), align 8
  %441 = call i32 @print_column_number(%struct.TYPE_6__* %438, i64 %439, i64 %440, i8 signext 58)
  br label %442

442:                                              ; preds = %437, %432
  br label %443

443:                                              ; preds = %442, %422, %419
  %444 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @opts, i32 0, i32 8), align 8
  %445 = icmp ne i64 %444, 0
  br i1 %445, label %446, label %450

446:                                              ; preds = %443
  %447 = load i32, i32* @out_fd, align 4
  %448 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @opts, i32 0, i32 4), align 8
  %449 = call i32 (i32, i8*, ...) @fprintf(i32 %447, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %448)
  br label %450

450:                                              ; preds = %446, %443
  %451 = load i8*, i8** @TRUE, align 8
  store i8* %451, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 9), align 8
  br label %452

452:                                              ; preds = %450, %411, %407
  %453 = load i64, i64* %15, align 8
  %454 = load i64, i64* %8, align 8
  %455 = icmp ult i64 %453, %454
  br i1 %455, label %456, label %480

456:                                              ; preds = %452
  %457 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @opts, i32 0, i32 9), align 8
  %458 = icmp ne i64 %457, 0
  br i1 %458, label %459, label %462

459:                                              ; preds = %456
  %460 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 9), align 8
  %461 = icmp ne i8* %460, null
  br i1 %461, label %462, label %479

462:                                              ; preds = %459, %456
  %463 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @opts, i32 0, i32 5), align 8
  %464 = icmp eq i64 %463, 0
  br i1 %464, label %471, label %465

465:                                              ; preds = %462
  %466 = load i64, i64* %15, align 8
  %467 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 5), align 8
  %468 = sub i64 %466, %467
  %469 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @opts, i32 0, i32 5), align 8
  %470 = icmp ult i64 %468, %469
  br i1 %470, label %471, label %478

471:                                              ; preds = %465, %462
  %472 = load i8*, i8** %7, align 8
  %473 = load i64, i64* %15, align 8
  %474 = getelementptr inbounds i8, i8* %472, i64 %473
  %475 = load i8, i8* %474, align 1
  %476 = load i32, i32* @out_fd, align 4
  %477 = call i32 @fputc(i8 signext %475, i32 %476)
  br label %478

478:                                              ; preds = %471, %465
  br label %479

479:                                              ; preds = %478, %459
  br label %480

480:                                              ; preds = %479, %452
  br label %481

481:                                              ; preds = %480
  %482 = load i64, i64* %15, align 8
  %483 = add i64 %482, 1
  store i64 %483, i64* %15, align 8
  br label %346

484:                                              ; preds = %346
  %485 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 9), align 8
  %486 = icmp ne i8* %485, null
  br i1 %486, label %487, label %494

487:                                              ; preds = %484
  %488 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @opts, i32 0, i32 8), align 8
  %489 = icmp ne i64 %488, 0
  br i1 %489, label %490, label %494

490:                                              ; preds = %487
  %491 = load i32, i32* @out_fd, align 4
  %492 = load i8*, i8** @color_reset, align 8
  %493 = call i32 (i32, i8*, ...) @fprintf(i32 %491, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %492)
  br label %494

494:                                              ; preds = %490, %487, %484
  br label %495

495:                                              ; preds = %494, %321
  br label %496

496:                                              ; preds = %495, %289
  br label %497

497:                                              ; preds = %496, %229
  %498 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @opts, i32 0, i32 7), align 8
  %499 = icmp ne i64 %498, 0
  br i1 %499, label %500, label %501

500:                                              ; preds = %497
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 6), align 8
  br label %537

501:                                              ; preds = %497
  %502 = load i8*, i8** %6, align 8
  %503 = load i8*, i8** %7, align 8
  %504 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 5), align 8
  %505 = getelementptr inbounds i8, i8* %503, i64 %504
  %506 = load i64, i64* %14, align 8
  %507 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 5), align 8
  %508 = sub i64 %506, %507
  %509 = call i32 @print_trailing_context(i8* %502, i8* %505, i64 %508)
  %510 = load i64, i64* %14, align 8
  %511 = add i64 %510, 1
  store i64 %511, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 5), align 8
  %512 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 8), align 8
  %513 = icmp ne i8* %512, null
  br i1 %513, label %517, label %514

514:                                              ; preds = %501
  %515 = load i64, i64* %14, align 8
  %516 = add i64 %515, 1
  store i64 %516, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @print_context, i32 0, i32 7), align 8
  br label %517

517:                                              ; preds = %514, %501
  %518 = load i64, i64* %14, align 8
  %519 = load i64, i64* %8, align 8
  %520 = icmp eq i64 %518, %519
  br i1 %520, label %521, label %532

521:                                              ; preds = %517
  %522 = load i8*, i8** %7, align 8
  %523 = load i64, i64* %14, align 8
  %524 = sub i64 %523, 1
  %525 = getelementptr inbounds i8, i8* %522, i64 %524
  %526 = load i8, i8* %525, align 1
  %527 = sext i8 %526 to i32
  %528 = icmp ne i32 %527, 10
  br i1 %528, label %529, label %532

529:                                              ; preds = %521
  %530 = load i32, i32* @out_fd, align 4
  %531 = call i32 @fputc(i8 signext 10, i32 %530)
  br label %532

532:                                              ; preds = %529, %521, %517
  br label %533

533:                                              ; preds = %532, %222
  br label %534

534:                                              ; preds = %533
  %535 = load i64, i64* %14, align 8
  %536 = add i64 %535, 1
  store i64 %536, i64* %14, align 8
  br label %68

537:                                              ; preds = %500, %82
  %538 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @opts, i32 0, i32 6), align 8
  %539 = icmp ne i64 %538, 0
  br i1 %539, label %540, label %543

540:                                              ; preds = %537
  %541 = load i32, i32* @out_fd, align 4
  %542 = call i32 @fflush(i32 %541)
  br label %543

543:                                              ; preds = %540, %537
  ret void
}

declare dso_local i32 @print_file_separator(...) #1

declare dso_local i32 @print_path_count(i8*, i8 signext, i64) #1

declare dso_local i32 @print_path(i8*, i8 signext) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @print_line_number(i64, i8 signext) #1

declare dso_local i32 @print_context_append(i8*, i64) #1

declare dso_local i32 @fputc(i8 signext, i32) #1

declare dso_local i32 @print_line(i8*, i64, i64) #1

declare dso_local i32 @print_column_number(%struct.TYPE_6__*, i64, i64, i8 signext) #1

declare dso_local i32 @fputs(i32, i32) #1

declare dso_local i32 @print_trailing_context(i8*, i8*, i64) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
