; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_expr.c_make_expr2.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_expr.c_make_expr2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i8*, %struct.TYPE_7__, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }

@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"divide by zero in expression\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @make_expr2(i32 %0, %struct.TYPE_8__* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %6, align 8
  %8 = call %struct.TYPE_8__* @xmalloc(i32 32)
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 4
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %14, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %18, align 8
  %19 = load i8*, i8** @FALSE, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 2
  store i8* %19, i8** %21, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %257

26:                                               ; preds = %3
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %257

31:                                               ; preds = %26
  %32 = load i8*, i8** @TRUE, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* %4, align 4
  switch i32 %35, label %252 [
    i32 145, label %36
    i32 129, label %46
    i32 134, label %56
    i32 133, label %76
    i32 143, label %86
    i32 132, label %106
    i32 144, label %116
    i32 131, label %126
    i32 130, label %136
    i32 135, label %146
    i32 136, label %161
    i32 128, label %176
    i32 142, label %186
    i32 139, label %197
    i32 141, label %208
    i32 138, label %219
    i32 140, label %230
    i32 137, label %241
  ]

36:                                               ; preds = %31
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %39, %42
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  br label %256

46:                                               ; preds = %31
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %49, %52
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  br label %256

56:                                               ; preds = %31
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = call i32 @error_loc(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  store i32 0, i32* %64, align 4
  br label %75

65:                                               ; preds = %56
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = srem i32 %68, %71
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %65, %61
  br label %256

76:                                               ; preds = %31
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 %79, %82
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  br label %256

86:                                               ; preds = %31
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = call i32 @error_loc(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  store i32 0, i32* %94, align 4
  br label %105

95:                                               ; preds = %86
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = sdiv i32 %98, %101
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  br label %105

105:                                              ; preds = %95, %91
  br label %256

106:                                              ; preds = %31
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %109, %112
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  br label %256

116:                                              ; preds = %31
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %119, %122
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  br label %256

126:                                              ; preds = %31
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = shl i32 %129, %132
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  br label %256

136:                                              ; preds = %31
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = ashr i32 %139, %142
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 4
  br label %256

146:                                              ; preds = %31
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %156, label %151

151:                                              ; preds = %146
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = icmp ne i32 %154, 0
  br label %156

156:                                              ; preds = %151, %146
  %157 = phi i1 [ true, %146 ], [ %155, %151 ]
  %158 = zext i1 %157 to i32
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 1
  store i32 %158, i32* %160, align 4
  br label %256

161:                                              ; preds = %31
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %161
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %169, 0
  br label %171

171:                                              ; preds = %166, %161
  %172 = phi i1 [ false, %161 ], [ %170, %166 ]
  %173 = zext i1 %172 to i32
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 1
  store i32 %173, i32* %175, align 4
  br label %256

176:                                              ; preds = %31
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = xor i32 %179, %182
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 1
  store i32 %183, i32* %185, align 4
  br label %256

186:                                              ; preds = %31
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = icmp eq i32 %189, %192
  %194 = zext i1 %193 to i32
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 1
  store i32 %194, i32* %196, align 4
  br label %256

197:                                              ; preds = %31
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = icmp ne i32 %200, %203
  %205 = zext i1 %204 to i32
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 1
  store i32 %205, i32* %207, align 4
  br label %256

208:                                              ; preds = %31
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = icmp sgt i32 %211, %214
  %216 = zext i1 %215 to i32
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 1
  store i32 %216, i32* %218, align 4
  br label %256

219:                                              ; preds = %31
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = icmp slt i32 %222, %225
  %227 = zext i1 %226 to i32
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 1
  store i32 %227, i32* %229, align 4
  br label %256

230:                                              ; preds = %31
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = icmp sge i32 %233, %236
  %238 = zext i1 %237 to i32
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 1
  store i32 %238, i32* %240, align 4
  br label %256

241:                                              ; preds = %31
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = icmp sle i32 %244, %247
  %249 = zext i1 %248 to i32
  %250 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 1
  store i32 %249, i32* %251, align 4
  br label %256

252:                                              ; preds = %31
  %253 = load i8*, i8** @FALSE, align 8
  %254 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 2
  store i8* %253, i8** %255, align 8
  br label %256

256:                                              ; preds = %252, %241, %230, %219, %208, %197, %186, %176, %171, %156, %136, %126, %116, %106, %105, %76, %75, %46, %36
  br label %257

257:                                              ; preds = %256, %26, %3
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  ret %struct.TYPE_8__* %258
}

declare dso_local %struct.TYPE_8__* @xmalloc(i32) #1

declare dso_local i32 @error_loc(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
