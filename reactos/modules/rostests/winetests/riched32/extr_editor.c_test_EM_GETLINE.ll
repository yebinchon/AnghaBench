; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched32/extr_editor.c_test_EM_GETLINE.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched32/extr_editor.c_test_EM_GETLINE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, i64 }

@test_EM_GETLINE.nBuf = internal constant i32 1024, align 4
@__const.test_EM_GETLINE.text = private unnamed_addr constant [18 x i8] c"foo bar\0D\0A\0D\0D\0D\0Abar\0A\00", align 16
@FALSE = common dso_local global i64 0, align 8
@WM_SETTEXT = common dso_local global i32 0, align 4
@EM_GETLINECOUNT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"Win9x, WinME and NT4 handle '\\r only' differently\0A\00", align 1
@gl = common dso_local global %struct.TYPE_3__* null, align 8
@EM_GETLINE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"%d: %d!=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"buffer_len=0\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"buffer_len=1\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"%d: expected_bytes_written=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_EM_GETLINE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_EM_GETLINE() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [1024 x i8], align 16
  %4 = alloca [1024 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca [18 x i8], align 16
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [1024 x i8], align 16
  %13 = call i32 @new_richedit(i32* null)
  store i32 %13, i32* %2, align 4
  %14 = bitcast [18 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 getelementptr inbounds ([18 x i8], [18 x i8]* @__const.test_EM_GETLINE.text, i32 0, i32 0), i64 18, i1 false)
  %15 = load i64, i64* @FALSE, align 8
  store i64 %15, i64* %7, align 8
  %16 = call i64 (...) @is_rtl()
  store i64 %16, i64* %8, align 8
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @WM_SETTEXT, align 4
  %19 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 0
  %20 = ptrtoint i8* %19 to i32
  %21 = call i32 @SendMessageA(i32 %17, i32 %18, i32 0, i32 %20)
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @EM_GETLINECOUNT, align 4
  %24 = call i32 @SendMessageA(i32 %22, i32 %23, i32 0, i32 0)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 4
  br i1 %26, label %27, label %30

27:                                               ; preds = %0
  %28 = load i64, i64* @TRUE, align 8
  store i64 %28, i64* %7, align 8
  %29 = call i32 @win_skip(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %0
  %31 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %32 = call i32 @memset(i8* %31, i32 187, i32 1024)
  store i32 0, i32* %1, align 4
  br label %33

33:                                               ; preds = %263, %30
  %34 = load i32, i32* %1, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gl, align 8
  %36 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %35)
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %266

38:                                               ; preds = %33
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gl, align 8
  %40 = load i32, i32* %1, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = icmp sge i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %263

48:                                               ; preds = %38
  %49 = load i64, i64* %7, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %48
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gl, align 8
  %53 = load i32, i32* %1, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %51
  %60 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gl, align 8
  %62 = load i32, i32* %1, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @strcpy(i8* %60, i64 %66)
  br label %77

68:                                               ; preds = %51, %48
  %69 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gl, align 8
  %71 = load i32, i32* %1, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @strcpy(i8* %69, i64 %75)
  br label %77

77:                                               ; preds = %68, %59
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gl, align 8
  %79 = load i32, i32* %1, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %85 = call i64 @strlen(i8* %84)
  %86 = call i32 @min(i32 %83, i64 %85)
  store i32 %86, i32* %10, align 4
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gl, align 8
  %88 = load i32, i32* %1, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %94 = call i64 @strlen(i8* %93)
  %95 = load i64, i64* %7, align 8
  %96 = icmp ne i64 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 0, i32 1
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %94, %99
  %101 = call i32 @min(i32 %92, i64 %100)
  store i32 %101, i32* %11, align 4
  %102 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %103 = call i32 @memset(i8* %102, i32 187, i32 1024)
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gl, align 8
  %105 = load i32, i32* %1, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %111 = bitcast i8* %110 to i32*
  store i32 %109, i32* %111, align 16
  %112 = load i32, i32* %2, align 4
  %113 = load i32, i32* @EM_GETLINE, align 4
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gl, align 8
  %115 = load i32, i32* %1, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %121 = ptrtoint i8* %120 to i32
  %122 = call i32 @SendMessageA(i32 %112, i32 %113, i32 %119, i32 %121)
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %10, align 4
  %125 = icmp eq i32 %123, %124
  %126 = zext i1 %125 to i32
  %127 = load i32, i32* %1, align 4
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* %10, align 4
  %130 = call i32 (i32, i8*, ...) @ok(i32 %126, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %127, i32 %128, i32 %129)
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gl, align 8
  %132 = load i32, i32* %1, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %158

138:                                              ; preds = %77
  %139 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %140 = load i8, i8* %139, align 16
  %141 = icmp ne i8 %140, 0
  br i1 %141, label %154, label %142

142:                                              ; preds = %138
  %143 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 1
  %144 = load i8, i8* %143, align 1
  %145 = icmp ne i8 %144, 0
  br i1 %145, label %154, label %146

146:                                              ; preds = %142
  %147 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %148 = getelementptr inbounds i8, i8* %147, i64 2
  %149 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %150 = getelementptr inbounds i8, i8* %149, i64 2
  %151 = call i32 @strncmp(i8* %148, i8* %150, i32 1022)
  %152 = icmp ne i32 %151, 0
  %153 = xor i1 %152, true
  br label %154

154:                                              ; preds = %146, %142, %138
  %155 = phi i1 [ false, %142 ], [ false, %138 ], [ %153, %146 ]
  %156 = zext i1 %155 to i32
  %157 = call i32 (i32, i8*, ...) @ok(i32 %156, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %262

158:                                              ; preds = %77
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gl, align 8
  %160 = load i32, i32* %1, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = icmp eq i32 %164, 1
  br i1 %165, label %166, label %190

166:                                              ; preds = %158
  %167 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %168 = load i8, i8* %167, align 16
  %169 = sext i8 %168 to i32
  %170 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %171 = load i8, i8* %170, align 16
  %172 = sext i8 %171 to i32
  %173 = icmp eq i32 %169, %172
  br i1 %173, label %174, label %186

174:                                              ; preds = %166
  %175 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 1
  %176 = load i8, i8* %175, align 1
  %177 = icmp ne i8 %176, 0
  br i1 %177, label %186, label %178

178:                                              ; preds = %174
  %179 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %180 = getelementptr inbounds i8, i8* %179, i64 2
  %181 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %182 = getelementptr inbounds i8, i8* %181, i64 2
  %183 = call i32 @strncmp(i8* %180, i8* %182, i32 1022)
  %184 = icmp ne i32 %183, 0
  %185 = xor i1 %184, true
  br label %186

186:                                              ; preds = %178, %174, %166
  %187 = phi i1 [ false, %174 ], [ false, %166 ], [ %185, %178 ]
  %188 = zext i1 %187 to i32
  %189 = call i32 (i32, i8*, ...) @ok(i32 %188, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %261

190:                                              ; preds = %158
  %191 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %192 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %193 = load i32, i32* %11, align 4
  %194 = call i32 @strncmp(i8* %191, i8* %192, i32 %193)
  %195 = icmp ne i32 %194, 0
  %196 = xor i1 %195, true
  %197 = zext i1 %196 to i32
  %198 = load i32, i32* %1, align 4
  %199 = load i32, i32* %11, align 4
  %200 = call i32 (i32, i8*, ...) @ok(i32 %197, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %198, i32 %199)
  %201 = load i64, i64* %8, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %212

203:                                              ; preds = %190
  %204 = load i32, i32* %11, align 4
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gl, align 8
  %206 = load i32, i32* %1, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = icmp eq i32 %204, %210
  br i1 %211, label %212, label %230

212:                                              ; preds = %203, %190
  %213 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %214 = load i32, i32* %11, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8, i8* %213, i64 %215
  %217 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %218 = load i32, i32* %11, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i8, i8* %217, i64 %219
  %221 = load i32, i32* %11, align 4
  %222 = sub nsw i32 1024, %221
  %223 = call i32 @strncmp(i8* %216, i8* %220, i32 %222)
  %224 = icmp ne i32 %223, 0
  %225 = xor i1 %224, true
  %226 = zext i1 %225 to i32
  %227 = load i32, i32* %1, align 4
  %228 = load i32, i32* %11, align 4
  %229 = call i32 (i32, i8*, ...) @ok(i32 %226, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %227, i32 %228)
  br label %260

230:                                              ; preds = %203
  %231 = load i32, i32* %11, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 %232
  %234 = load i8, i8* %233, align 1
  %235 = sext i8 %234 to i32
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %254

237:                                              ; preds = %230
  %238 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %239 = load i32, i32* %11, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i8, i8* %238, i64 %240
  %242 = getelementptr inbounds i8, i8* %241, i64 1
  %243 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %244 = load i32, i32* %11, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i8, i8* %243, i64 %245
  %247 = getelementptr inbounds i8, i8* %246, i64 1
  %248 = load i32, i32* %11, align 4
  %249 = add nsw i32 %248, 1
  %250 = sub nsw i32 1024, %249
  %251 = call i32 @strncmp(i8* %242, i8* %247, i32 %250)
  %252 = icmp ne i32 %251, 0
  %253 = xor i1 %252, true
  br label %254

254:                                              ; preds = %237, %230
  %255 = phi i1 [ false, %230 ], [ %253, %237 ]
  %256 = zext i1 %255 to i32
  %257 = load i32, i32* %1, align 4
  %258 = load i32, i32* %11, align 4
  %259 = call i32 (i32, i8*, ...) @ok(i32 %256, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %257, i32 %258)
  br label %260

260:                                              ; preds = %254, %212
  br label %261

261:                                              ; preds = %260, %186
  br label %262

262:                                              ; preds = %261, %154
  br label %263

263:                                              ; preds = %262, %47
  %264 = load i32, i32* %1, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %1, align 4
  br label %33

266:                                              ; preds = %33
  %267 = load i32, i32* %2, align 4
  %268 = call i32 @DestroyWindow(i32 %267)
  ret void
}

declare dso_local i32 @new_richedit(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @is_rtl(...) #1

declare dso_local i32 @SendMessageA(i32, i32, i32, i32) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @strcpy(i8*, i64) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @DestroyWindow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
