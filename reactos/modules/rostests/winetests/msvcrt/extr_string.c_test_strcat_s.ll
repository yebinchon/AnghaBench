; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test_strcat_s.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test_strcat_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"sma\00", align 1
@.str.1 = private unnamed_addr constant [82 x i8] c"strcat_s: Copying a string into a big enough destination returned %d, expected 0\0A\00", align 1
@.str.2 = private unnamed_addr constant [95 x i8] c"Unexpected return data from strcpy_s: 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [82 x i8] c"strcat_s: Attaching a string to a big enough destination returned %d, expected 0\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [86 x i8] c"strcat_s: Attaching a string to a filled up destination returned %d, expected ERANGE\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [55 x i8] c"strcat_s: Source len = 0 returned %d, expected EINVAL\0A\00", align 1
@.str.6 = private unnamed_addr constant [63 x i8] c"strcat_s: len = 0 and src = NULL returned %d, expected EINVAL\0A\00", align 1
@.str.7 = private unnamed_addr constant [60 x i8] c"strcat_s:  Sourcing from NULL returned %d, expected EINVAL\0A\00", align 1
@.str.8 = private unnamed_addr constant [65 x i8] c"strcat_s: Writing to a NULL string returned %d, expected EINVAL\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_strcat_s to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_strcat_s() #0 {
  %1 = alloca [8 x i8], align 1
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  %4 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %5 = call i32 @memset(i8* %4, i8 signext 88, i32 8)
  %6 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  store i8 0, i8* %6, align 1
  %7 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %8 = load i8*, i8** %2, align 8
  %9 = call i32 @pstrcat_s(i8* %7, i32 8, i8* %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = load i32, i32* %3, align 4
  %14 = call i32 (i32, i8*, i32, ...) @ok(i32 %12, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  %15 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 115
  br i1 %18, label %19, label %54

19:                                               ; preds = %0
  %20 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 1
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 109
  br i1 %23, label %24, label %54

24:                                               ; preds = %19
  %25 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 2
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 97
  br i1 %28, label %29, label %54

29:                                               ; preds = %24
  %30 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 3
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %54

34:                                               ; preds = %29
  %35 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 4
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 88
  br i1 %38, label %39, label %54

39:                                               ; preds = %34
  %40 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 5
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 88
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 6
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 88
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 7
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 88
  br label %54

54:                                               ; preds = %49, %44, %39, %34, %29, %24, %19, %0
  %55 = phi i1 [ false, %44 ], [ false, %39 ], [ false, %34 ], [ false, %29 ], [ false, %24 ], [ false, %19 ], [ false, %0 ], [ %53, %49 ]
  %56 = zext i1 %55 to i32
  %57 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 1
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 2
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 3
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 4
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 5
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 6
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 7
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = call i32 (i32, i8*, i32, ...) @ok(i32 %56, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.2, i64 0, i64 0), i32 %59, i32 %62, i32 %65, i32 %68, i32 %71, i32 %74, i32 %77, i32 %80)
  %82 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %83 = load i8*, i8** %2, align 8
  %84 = call i32 @pstrcat_s(i8* %82, i32 8, i8* %83)
  store i32 %84, i32* %3, align 4
  %85 = load i32, i32* %3, align 4
  %86 = icmp eq i32 %85, 0
  %87 = zext i1 %86 to i32
  %88 = load i32, i32* %3, align 4
  %89 = call i32 (i32, i8*, i32, ...) @ok(i32 %87, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.3, i64 0, i64 0), i32 %88)
  %90 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 115
  br i1 %93, label %94, label %129

94:                                               ; preds = %54
  %95 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 1
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 109
  br i1 %98, label %99, label %129

99:                                               ; preds = %94
  %100 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 2
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 97
  br i1 %103, label %104, label %129

104:                                              ; preds = %99
  %105 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 3
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 115
  br i1 %108, label %109, label %129

109:                                              ; preds = %104
  %110 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 4
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 109
  br i1 %113, label %114, label %129

114:                                              ; preds = %109
  %115 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 5
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 97
  br i1 %118, label %119, label %129

119:                                              ; preds = %114
  %120 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 6
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  %125 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 7
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 88
  br label %129

129:                                              ; preds = %124, %119, %114, %109, %104, %99, %94, %54
  %130 = phi i1 [ false, %119 ], [ false, %114 ], [ false, %109 ], [ false, %104 ], [ false, %99 ], [ false, %94 ], [ false, %54 ], [ %128, %124 ]
  %131 = zext i1 %130 to i32
  %132 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 1
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 2
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 3
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 4
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 5
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 6
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 7
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = call i32 (i32, i8*, i32, ...) @ok(i32 %131, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.2, i64 0, i64 0), i32 %134, i32 %137, i32 %140, i32 %143, i32 %146, i32 %149, i32 %152, i32 %155)
  %157 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %158 = load i8*, i8** %2, align 8
  %159 = call i32 @pstrcat_s(i8* %157, i32 8, i8* %158)
  store i32 %159, i32* %3, align 4
  %160 = load i32, i32* %3, align 4
  %161 = load i32, i32* @ERANGE, align 4
  %162 = icmp eq i32 %160, %161
  %163 = zext i1 %162 to i32
  %164 = load i32, i32* %3, align 4
  %165 = call i32 (i32, i8*, i32, ...) @ok(i32 %163, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.4, i64 0, i64 0), i32 %164)
  %166 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %205

170:                                              ; preds = %129
  %171 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 1
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp eq i32 %173, 109
  br i1 %174, label %175, label %205

175:                                              ; preds = %170
  %176 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 2
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp eq i32 %178, 97
  br i1 %179, label %180, label %205

180:                                              ; preds = %175
  %181 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 3
  %182 = load i8, i8* %181, align 1
  %183 = sext i8 %182 to i32
  %184 = icmp eq i32 %183, 115
  br i1 %184, label %185, label %205

185:                                              ; preds = %180
  %186 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 4
  %187 = load i8, i8* %186, align 1
  %188 = sext i8 %187 to i32
  %189 = icmp eq i32 %188, 109
  br i1 %189, label %190, label %205

190:                                              ; preds = %185
  %191 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 5
  %192 = load i8, i8* %191, align 1
  %193 = sext i8 %192 to i32
  %194 = icmp eq i32 %193, 97
  br i1 %194, label %195, label %205

195:                                              ; preds = %190
  %196 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 6
  %197 = load i8, i8* %196, align 1
  %198 = sext i8 %197 to i32
  %199 = icmp eq i32 %198, 115
  br i1 %199, label %200, label %205

200:                                              ; preds = %195
  %201 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 7
  %202 = load i8, i8* %201, align 1
  %203 = sext i8 %202 to i32
  %204 = icmp eq i32 %203, 109
  br label %205

205:                                              ; preds = %200, %195, %190, %185, %180, %175, %170, %129
  %206 = phi i1 [ false, %195 ], [ false, %190 ], [ false, %185 ], [ false, %180 ], [ false, %175 ], [ false, %170 ], [ false, %129 ], [ %204, %200 ]
  %207 = zext i1 %206 to i32
  %208 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %209 = load i8, i8* %208, align 1
  %210 = sext i8 %209 to i32
  %211 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 1
  %212 = load i8, i8* %211, align 1
  %213 = sext i8 %212 to i32
  %214 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 2
  %215 = load i8, i8* %214, align 1
  %216 = sext i8 %215 to i32
  %217 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 3
  %218 = load i8, i8* %217, align 1
  %219 = sext i8 %218 to i32
  %220 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 4
  %221 = load i8, i8* %220, align 1
  %222 = sext i8 %221 to i32
  %223 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 5
  %224 = load i8, i8* %223, align 1
  %225 = sext i8 %224 to i32
  %226 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 6
  %227 = load i8, i8* %226, align 1
  %228 = sext i8 %227 to i32
  %229 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 7
  %230 = load i8, i8* %229, align 1
  %231 = sext i8 %230 to i32
  %232 = call i32 (i32, i8*, i32, ...) @ok(i32 %207, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.2, i64 0, i64 0), i32 %210, i32 %213, i32 %216, i32 %219, i32 %222, i32 %225, i32 %228, i32 %231)
  %233 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %234 = call i32 @memset(i8* %233, i8 signext 88, i32 8)
  %235 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  store i8 97, i8* %235, align 1
  %236 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 1
  store i8 0, i8* %236, align 1
  %237 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %238 = load i8*, i8** %2, align 8
  %239 = call i32 @pstrcat_s(i8* %237, i32 0, i8* %238)
  store i32 %239, i32* %3, align 4
  %240 = load i32, i32* %3, align 4
  %241 = load i32, i32* @EINVAL, align 4
  %242 = icmp eq i32 %240, %241
  %243 = zext i1 %242 to i32
  %244 = load i32, i32* %3, align 4
  %245 = call i32 (i32, i8*, i32, ...) @ok(i32 %243, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i32 %244)
  %246 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %247 = load i8, i8* %246, align 1
  %248 = sext i8 %247 to i32
  %249 = icmp eq i32 %248, 97
  br i1 %249, label %250, label %285

250:                                              ; preds = %205
  %251 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 1
  %252 = load i8, i8* %251, align 1
  %253 = sext i8 %252 to i32
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %285

255:                                              ; preds = %250
  %256 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 2
  %257 = load i8, i8* %256, align 1
  %258 = sext i8 %257 to i32
  %259 = icmp eq i32 %258, 88
  br i1 %259, label %260, label %285

260:                                              ; preds = %255
  %261 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 3
  %262 = load i8, i8* %261, align 1
  %263 = sext i8 %262 to i32
  %264 = icmp eq i32 %263, 88
  br i1 %264, label %265, label %285

265:                                              ; preds = %260
  %266 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 4
  %267 = load i8, i8* %266, align 1
  %268 = sext i8 %267 to i32
  %269 = icmp eq i32 %268, 88
  br i1 %269, label %270, label %285

270:                                              ; preds = %265
  %271 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 5
  %272 = load i8, i8* %271, align 1
  %273 = sext i8 %272 to i32
  %274 = icmp eq i32 %273, 88
  br i1 %274, label %275, label %285

275:                                              ; preds = %270
  %276 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 6
  %277 = load i8, i8* %276, align 1
  %278 = sext i8 %277 to i32
  %279 = icmp eq i32 %278, 88
  br i1 %279, label %280, label %285

280:                                              ; preds = %275
  %281 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 7
  %282 = load i8, i8* %281, align 1
  %283 = sext i8 %282 to i32
  %284 = icmp eq i32 %283, 88
  br label %285

285:                                              ; preds = %280, %275, %270, %265, %260, %255, %250, %205
  %286 = phi i1 [ false, %275 ], [ false, %270 ], [ false, %265 ], [ false, %260 ], [ false, %255 ], [ false, %250 ], [ false, %205 ], [ %284, %280 ]
  %287 = zext i1 %286 to i32
  %288 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %289 = load i8, i8* %288, align 1
  %290 = sext i8 %289 to i32
  %291 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 1
  %292 = load i8, i8* %291, align 1
  %293 = sext i8 %292 to i32
  %294 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 2
  %295 = load i8, i8* %294, align 1
  %296 = sext i8 %295 to i32
  %297 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 3
  %298 = load i8, i8* %297, align 1
  %299 = sext i8 %298 to i32
  %300 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 4
  %301 = load i8, i8* %300, align 1
  %302 = sext i8 %301 to i32
  %303 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 5
  %304 = load i8, i8* %303, align 1
  %305 = sext i8 %304 to i32
  %306 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 6
  %307 = load i8, i8* %306, align 1
  %308 = sext i8 %307 to i32
  %309 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 7
  %310 = load i8, i8* %309, align 1
  %311 = sext i8 %310 to i32
  %312 = call i32 (i32, i8*, i32, ...) @ok(i32 %287, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.2, i64 0, i64 0), i32 %290, i32 %293, i32 %296, i32 %299, i32 %302, i32 %305, i32 %308, i32 %311)
  %313 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %314 = call i32 @pstrcat_s(i8* %313, i32 0, i8* null)
  store i32 %314, i32* %3, align 4
  %315 = load i32, i32* %3, align 4
  %316 = load i32, i32* @EINVAL, align 4
  %317 = icmp eq i32 %315, %316
  %318 = zext i1 %317 to i32
  %319 = load i32, i32* %3, align 4
  %320 = call i32 (i32, i8*, i32, ...) @ok(i32 %318, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i64 0, i64 0), i32 %319)
  %321 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %322 = load i8, i8* %321, align 1
  %323 = sext i8 %322 to i32
  %324 = icmp eq i32 %323, 97
  br i1 %324, label %325, label %360

325:                                              ; preds = %285
  %326 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 1
  %327 = load i8, i8* %326, align 1
  %328 = sext i8 %327 to i32
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %330, label %360

330:                                              ; preds = %325
  %331 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 2
  %332 = load i8, i8* %331, align 1
  %333 = sext i8 %332 to i32
  %334 = icmp eq i32 %333, 88
  br i1 %334, label %335, label %360

335:                                              ; preds = %330
  %336 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 3
  %337 = load i8, i8* %336, align 1
  %338 = sext i8 %337 to i32
  %339 = icmp eq i32 %338, 88
  br i1 %339, label %340, label %360

340:                                              ; preds = %335
  %341 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 4
  %342 = load i8, i8* %341, align 1
  %343 = sext i8 %342 to i32
  %344 = icmp eq i32 %343, 88
  br i1 %344, label %345, label %360

345:                                              ; preds = %340
  %346 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 5
  %347 = load i8, i8* %346, align 1
  %348 = sext i8 %347 to i32
  %349 = icmp eq i32 %348, 88
  br i1 %349, label %350, label %360

350:                                              ; preds = %345
  %351 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 6
  %352 = load i8, i8* %351, align 1
  %353 = sext i8 %352 to i32
  %354 = icmp eq i32 %353, 88
  br i1 %354, label %355, label %360

355:                                              ; preds = %350
  %356 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 7
  %357 = load i8, i8* %356, align 1
  %358 = sext i8 %357 to i32
  %359 = icmp eq i32 %358, 88
  br label %360

360:                                              ; preds = %355, %350, %345, %340, %335, %330, %325, %285
  %361 = phi i1 [ false, %350 ], [ false, %345 ], [ false, %340 ], [ false, %335 ], [ false, %330 ], [ false, %325 ], [ false, %285 ], [ %359, %355 ]
  %362 = zext i1 %361 to i32
  %363 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %364 = load i8, i8* %363, align 1
  %365 = sext i8 %364 to i32
  %366 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 1
  %367 = load i8, i8* %366, align 1
  %368 = sext i8 %367 to i32
  %369 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 2
  %370 = load i8, i8* %369, align 1
  %371 = sext i8 %370 to i32
  %372 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 3
  %373 = load i8, i8* %372, align 1
  %374 = sext i8 %373 to i32
  %375 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 4
  %376 = load i8, i8* %375, align 1
  %377 = sext i8 %376 to i32
  %378 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 5
  %379 = load i8, i8* %378, align 1
  %380 = sext i8 %379 to i32
  %381 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 6
  %382 = load i8, i8* %381, align 1
  %383 = sext i8 %382 to i32
  %384 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 7
  %385 = load i8, i8* %384, align 1
  %386 = sext i8 %385 to i32
  %387 = call i32 (i32, i8*, i32, ...) @ok(i32 %362, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.2, i64 0, i64 0), i32 %365, i32 %368, i32 %371, i32 %374, i32 %377, i32 %380, i32 %383, i32 %386)
  %388 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %389 = call i32 @pstrcat_s(i8* %388, i32 8, i8* null)
  store i32 %389, i32* %3, align 4
  %390 = load i32, i32* %3, align 4
  %391 = load i32, i32* @EINVAL, align 4
  %392 = icmp eq i32 %390, %391
  %393 = zext i1 %392 to i32
  %394 = load i32, i32* %3, align 4
  %395 = call i32 (i32, i8*, i32, ...) @ok(i32 %393, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i64 0, i64 0), i32 %394)
  %396 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %397 = load i8, i8* %396, align 1
  %398 = sext i8 %397 to i32
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %400, label %435

400:                                              ; preds = %360
  %401 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 1
  %402 = load i8, i8* %401, align 1
  %403 = sext i8 %402 to i32
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %405, label %435

405:                                              ; preds = %400
  %406 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 2
  %407 = load i8, i8* %406, align 1
  %408 = sext i8 %407 to i32
  %409 = icmp eq i32 %408, 88
  br i1 %409, label %410, label %435

410:                                              ; preds = %405
  %411 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 3
  %412 = load i8, i8* %411, align 1
  %413 = sext i8 %412 to i32
  %414 = icmp eq i32 %413, 88
  br i1 %414, label %415, label %435

415:                                              ; preds = %410
  %416 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 4
  %417 = load i8, i8* %416, align 1
  %418 = sext i8 %417 to i32
  %419 = icmp eq i32 %418, 88
  br i1 %419, label %420, label %435

420:                                              ; preds = %415
  %421 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 5
  %422 = load i8, i8* %421, align 1
  %423 = sext i8 %422 to i32
  %424 = icmp eq i32 %423, 88
  br i1 %424, label %425, label %435

425:                                              ; preds = %420
  %426 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 6
  %427 = load i8, i8* %426, align 1
  %428 = sext i8 %427 to i32
  %429 = icmp eq i32 %428, 88
  br i1 %429, label %430, label %435

430:                                              ; preds = %425
  %431 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 7
  %432 = load i8, i8* %431, align 1
  %433 = sext i8 %432 to i32
  %434 = icmp eq i32 %433, 88
  br label %435

435:                                              ; preds = %430, %425, %420, %415, %410, %405, %400, %360
  %436 = phi i1 [ false, %425 ], [ false, %420 ], [ false, %415 ], [ false, %410 ], [ false, %405 ], [ false, %400 ], [ false, %360 ], [ %434, %430 ]
  %437 = zext i1 %436 to i32
  %438 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %439 = load i8, i8* %438, align 1
  %440 = sext i8 %439 to i32
  %441 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 1
  %442 = load i8, i8* %441, align 1
  %443 = sext i8 %442 to i32
  %444 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 2
  %445 = load i8, i8* %444, align 1
  %446 = sext i8 %445 to i32
  %447 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 3
  %448 = load i8, i8* %447, align 1
  %449 = sext i8 %448 to i32
  %450 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 4
  %451 = load i8, i8* %450, align 1
  %452 = sext i8 %451 to i32
  %453 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 5
  %454 = load i8, i8* %453, align 1
  %455 = sext i8 %454 to i32
  %456 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 6
  %457 = load i8, i8* %456, align 1
  %458 = sext i8 %457 to i32
  %459 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 7
  %460 = load i8, i8* %459, align 1
  %461 = sext i8 %460 to i32
  %462 = call i32 (i32, i8*, i32, ...) @ok(i32 %437, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.2, i64 0, i64 0), i32 %440, i32 %443, i32 %446, i32 %449, i32 %452, i32 %455, i32 %458, i32 %461)
  %463 = load i8*, i8** %2, align 8
  %464 = call i32 @pstrcat_s(i8* null, i32 8, i8* %463)
  store i32 %464, i32* %3, align 4
  %465 = load i32, i32* %3, align 4
  %466 = load i32, i32* @EINVAL, align 4
  %467 = icmp eq i32 %465, %466
  %468 = zext i1 %467 to i32
  %469 = load i32, i32* %3, align 4
  %470 = call i32 (i32, i8*, i32, ...) @ok(i32 %468, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.8, i64 0, i64 0), i32 %469)
  ret void
}

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @pstrcat_s(i8*, i32, i8*) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
