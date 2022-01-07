; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_codepage.c_test_dbcs_to_widechar.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_codepage.c_test_dbcs_to_widechar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_dbcs_to_widechar.buf = private unnamed_addr constant [5 x i8] c"\BF\B4\C7\00x", align 1
@test_dbcs_to_widechar.flags = internal constant [8 x i32] [i32 129, i32 131, i32 129, i32 131, i32 131, i32 131, i32 131, i32 131], align 16
@.str = private unnamed_addr constant [32 x i8] c"%04x: returned %d (expected 1)\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"%04x: returned %04x (expected 770b)\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"%04x: returned %04x (expected ffff)\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"%04x: returned %d (expected 0)\0A\00", align 1
@ERROR_NO_UNICODE_TRANSLATION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"%04x: returned %d (expected %d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"%04x: returned %d (expected 2)\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"%04x: wrong wide char: %04x\0A\00", align 1
@__const.test_dbcs_to_widechar.wbuf_ok = private unnamed_addr constant [4 x i32] [i32 30475, i32 63, i32 0, i32 65535], align 16
@__const.test_dbcs_to_widechar.wbuf_broken = private unnamed_addr constant [4 x i32] [i32 30475, i32 0, i32 65535, i32 65535], align 16
@.str.7 = private unnamed_addr constant [32 x i8] c"%04x: returned %d (expected 3)\0A\00", align 1
@.str.8 = private unnamed_addr constant [67 x i8] c"%04x: returned %04x %04x %04x %04x (expected %04x %04x %04x %04x)\0A\00", align 1
@__const.test_dbcs_to_widechar.wbuf_ok.9 = private unnamed_addr constant [5 x i32] [i32 30475, i32 63, i32 0, i32 120, i32 65535], align 16
@__const.test_dbcs_to_widechar.wbuf_broken.10 = private unnamed_addr constant [5 x i32] [i32 30475, i32 0, i32 120, i32 65535, i32 65535], align 16
@.str.11 = private unnamed_addr constant [32 x i8] c"%04x: returned %d (expected 4)\0A\00", align 1
@.str.12 = private unnamed_addr constant [77 x i8] c"%04x: returned %04x %04x %04x %04x %04x (expected %04x %04x %04x %04x %04x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_dbcs_to_widechar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_dbcs_to_widechar() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [5 x i32], align 16
  %5 = alloca [5 x i8], align 1
  %6 = alloca [4 x i32], align 16
  %7 = alloca [4 x i32], align 16
  %8 = alloca [5 x i32], align 16
  %9 = alloca [5 x i32], align 16
  %10 = bitcast [5 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %10, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.test_dbcs_to_widechar.buf, i32 0, i32 0), i64 5, i1 false)
  store i32 0, i32* %1, align 4
  br label %11

11:                                               ; preds = %72, %0
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ult i64 %13, 8
  br i1 %14, label %15, label %75

15:                                               ; preds = %11
  %16 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  %17 = call i32 @memset(i32* %16, i32 255, i32 20)
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* @test_dbcs_to_widechar.flags, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 0
  %23 = call i32 @MultiByteToWideChar(i32 936, i32 %21, i8* %22, i32 2, i32* null, i32 0)
  store i32 %23, i32* %2, align 4
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [8 x i32], [8 x i32]* @test_dbcs_to_widechar.flags, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 0
  %29 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @MultiByteToWideChar(i32 936, i32 %27, i8* %28, i32 2, i32* %29, i32 %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %2, align 4
  %33 = icmp eq i32 %32, 1
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %1, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* @test_dbcs_to_widechar.flags, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %2, align 4
  %40 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load i32, i32* %3, align 4
  %42 = icmp eq i32 %41, 1
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* %1, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [8 x i32], [8 x i32]* @test_dbcs_to_widechar.flags, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %3, align 4
  %49 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48)
  %50 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  %51 = load i32, i32* %50, align 16
  %52 = icmp eq i32 %51, 30475
  %53 = zext i1 %52 to i32
  %54 = load i32, i32* %1, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [8 x i32], [8 x i32]* @test_dbcs_to_widechar.flags, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  %59 = load i32, i32* %58, align 16
  %60 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %53, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %59)
  %61 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 65535
  %64 = zext i1 %63 to i32
  %65 = load i32, i32* %1, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [8 x i32], [8 x i32]* @test_dbcs_to_widechar.flags, i64 0, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %64, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %68, i32 %70)
  br label %72

72:                                               ; preds = %15
  %73 = load i32, i32* %1, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %1, align 4
  br label %11

75:                                               ; preds = %11
  store i32 0, i32* %1, align 4
  br label %76

76:                                               ; preds = %196, %75
  %77 = load i32, i32* %1, align 4
  %78 = sext i32 %77 to i64
  %79 = icmp ult i64 %78, 8
  br i1 %79, label %80, label %199

80:                                               ; preds = %76
  %81 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  %82 = call i32 @memset(i32* %81, i32 255, i32 20)
  %83 = load i32, i32* %1, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [8 x i32], [8 x i32]* @test_dbcs_to_widechar.flags, i64 0, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 0
  %88 = call i32 @MultiByteToWideChar(i32 936, i32 %86, i8* %87, i32 3, i32* null, i32 0)
  store i32 %88, i32* %2, align 4
  %89 = call i32 @SetLastError(i32 -559038737)
  %90 = load i32, i32* %1, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [8 x i32], [8 x i32]* @test_dbcs_to_widechar.flags, i64 0, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 0
  %95 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  %96 = load i32, i32* %2, align 4
  %97 = call i32 @MultiByteToWideChar(i32 936, i32 %93, i8* %94, i32 3, i32* %95, i32 %96)
  store i32 %97, i32* %3, align 4
  %98 = load i32, i32* %1, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* @test_dbcs_to_widechar.flags, i64 0, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, 130
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %134

104:                                              ; preds = %80
  %105 = load i32, i32* %2, align 4
  %106 = icmp eq i32 %105, 0
  %107 = zext i1 %106 to i32
  %108 = load i32, i32* %1, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [8 x i32], [8 x i32]* @test_dbcs_to_widechar.flags, i64 0, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %2, align 4
  %113 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %107, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %111, i32 %112)
  %114 = load i32, i32* %3, align 4
  %115 = icmp eq i32 %114, 0
  %116 = zext i1 %115 to i32
  %117 = load i32, i32* %1, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [8 x i32], [8 x i32]* @test_dbcs_to_widechar.flags, i64 0, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %3, align 4
  %122 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %116, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %120, i32 %121)
  %123 = call i32 (...) @GetLastError()
  %124 = load i32, i32* @ERROR_NO_UNICODE_TRANSLATION, align 4
  %125 = icmp eq i32 %123, %124
  %126 = zext i1 %125 to i32
  %127 = load i32, i32* %1, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [8 x i32], [8 x i32]* @test_dbcs_to_widechar.flags, i64 0, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = call i32 (...) @GetLastError()
  %132 = load i32, i32* @ERROR_NO_UNICODE_TRANSLATION, align 4
  %133 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %126, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %130, i32 %131, i32 %132)
  br label %195

134:                                              ; preds = %80
  %135 = load i32, i32* %2, align 4
  %136 = icmp eq i32 %135, 2
  %137 = zext i1 %136 to i32
  %138 = load i32, i32* %1, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [8 x i32], [8 x i32]* @test_dbcs_to_widechar.flags, i64 0, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %2, align 4
  %143 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %137, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %141, i32 %142)
  %144 = load i32, i32* %3, align 4
  %145 = icmp eq i32 %144, 2
  %146 = zext i1 %145 to i32
  %147 = load i32, i32* %1, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [8 x i32], [8 x i32]* @test_dbcs_to_widechar.flags, i64 0, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %3, align 4
  %152 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %146, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %150, i32 %151)
  %153 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  %154 = load i32, i32* %153, align 16
  %155 = icmp eq i32 %154, 30475
  %156 = zext i1 %155 to i32
  %157 = load i32, i32* %1, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [8 x i32], [8 x i32]* @test_dbcs_to_widechar.flags, i64 0, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  %162 = load i32, i32* %161, align 16
  %163 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %156, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %160, i32 %162)
  %164 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 1
  %165 = load i32, i32* %164, align 4
  %166 = icmp eq i32 %165, 63
  br i1 %166, label %174, label %167

167:                                              ; preds = %134
  %168 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 1
  %169 = load i32, i32* %168, align 4
  %170 = icmp eq i32 %169, 0
  %171 = zext i1 %170 to i32
  %172 = call i64 @broken(i32 %171)
  %173 = icmp ne i64 %172, 0
  br label %174

174:                                              ; preds = %167, %134
  %175 = phi i1 [ true, %134 ], [ %173, %167 ]
  %176 = zext i1 %175 to i32
  %177 = load i32, i32* %1, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [8 x i32], [8 x i32]* @test_dbcs_to_widechar.flags, i64 0, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 1
  %182 = load i32, i32* %181, align 4
  %183 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %176, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %180, i32 %182)
  %184 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 2
  %185 = load i32, i32* %184, align 8
  %186 = icmp eq i32 %185, 65535
  %187 = zext i1 %186 to i32
  %188 = load i32, i32* %1, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [8 x i32], [8 x i32]* @test_dbcs_to_widechar.flags, i64 0, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 2
  %193 = load i32, i32* %192, align 8
  %194 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %187, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %191, i32 %193)
  br label %195

195:                                              ; preds = %174, %104
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %1, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %1, align 4
  br label %76

199:                                              ; preds = %76
  store i32 0, i32* %1, align 4
  br label %200

200:                                              ; preds = %318, %199
  %201 = load i32, i32* %1, align 4
  %202 = sext i32 %201 to i64
  %203 = icmp ult i64 %202, 8
  br i1 %203, label %204, label %321

204:                                              ; preds = %200
  %205 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  %206 = call i32 @memset(i32* %205, i32 255, i32 20)
  %207 = load i32, i32* %1, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [8 x i32], [8 x i32]* @test_dbcs_to_widechar.flags, i64 0, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 0
  %212 = call i32 @MultiByteToWideChar(i32 936, i32 %210, i8* %211, i32 4, i32* null, i32 0)
  store i32 %212, i32* %2, align 4
  %213 = call i32 @SetLastError(i32 -559038737)
  %214 = load i32, i32* %1, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [8 x i32], [8 x i32]* @test_dbcs_to_widechar.flags, i64 0, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 0
  %219 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  %220 = load i32, i32* %2, align 4
  %221 = call i32 @MultiByteToWideChar(i32 936, i32 %217, i8* %218, i32 4, i32* %219, i32 %220)
  store i32 %221, i32* %3, align 4
  %222 = load i32, i32* %2, align 4
  %223 = load i32, i32* %3, align 4
  %224 = icmp eq i32 %222, %223
  %225 = zext i1 %224 to i32
  %226 = load i32, i32* %1, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [8 x i32], [8 x i32]* @test_dbcs_to_widechar.flags, i64 0, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* %3, align 4
  %231 = load i32, i32* %2, align 4
  %232 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %225, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %229, i32 %230, i32 %231)
  %233 = load i32, i32* %1, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [8 x i32], [8 x i32]* @test_dbcs_to_widechar.flags, i64 0, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = and i32 %236, 130
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %260

239:                                              ; preds = %204
  %240 = load i32, i32* %2, align 4
  %241 = icmp eq i32 %240, 0
  %242 = zext i1 %241 to i32
  %243 = load i32, i32* %1, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [8 x i32], [8 x i32]* @test_dbcs_to_widechar.flags, i64 0, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* %2, align 4
  %248 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %242, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %246, i32 %247)
  %249 = call i32 (...) @GetLastError()
  %250 = load i32, i32* @ERROR_NO_UNICODE_TRANSLATION, align 4
  %251 = icmp eq i32 %249, %250
  %252 = zext i1 %251 to i32
  %253 = load i32, i32* %1, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [8 x i32], [8 x i32]* @test_dbcs_to_widechar.flags, i64 0, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = call i32 (...) @GetLastError()
  %258 = load i32, i32* @ERROR_NO_UNICODE_TRANSLATION, align 4
  %259 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %252, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %256, i32 %257, i32 %258)
  br label %317

260:                                              ; preds = %204
  %261 = bitcast [4 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %261, i8* align 16 bitcast ([4 x i32]* @__const.test_dbcs_to_widechar.wbuf_ok to i8*), i64 16, i1 false)
  %262 = bitcast [4 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %262, i8* align 16 bitcast ([4 x i32]* @__const.test_dbcs_to_widechar.wbuf_broken to i8*), i64 16, i1 false)
  %263 = load i32, i32* %2, align 4
  %264 = icmp eq i32 %263, 3
  br i1 %264, label %271, label %265

265:                                              ; preds = %260
  %266 = load i32, i32* %2, align 4
  %267 = icmp eq i32 %266, 2
  %268 = zext i1 %267 to i32
  %269 = call i64 @broken(i32 %268)
  %270 = icmp ne i64 %269, 0
  br label %271

271:                                              ; preds = %265, %260
  %272 = phi i1 [ true, %260 ], [ %270, %265 ]
  %273 = zext i1 %272 to i32
  %274 = load i32, i32* %1, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds [8 x i32], [8 x i32]* @test_dbcs_to_widechar.flags, i64 0, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* %2, align 4
  %279 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %273, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %277, i32 %278)
  %280 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  %281 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %282 = call i32 @memcmp(i32* %280, i32* %281, i32 16)
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %293

284:                                              ; preds = %271
  %285 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  %286 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %287 = call i32 @memcmp(i32* %285, i32* %286, i32 16)
  %288 = icmp ne i32 %287, 0
  %289 = xor i1 %288, true
  %290 = zext i1 %289 to i32
  %291 = call i64 @broken(i32 %290)
  %292 = icmp ne i64 %291, 0
  br label %293

293:                                              ; preds = %284, %271
  %294 = phi i1 [ true, %271 ], [ %292, %284 ]
  %295 = zext i1 %294 to i32
  %296 = load i32, i32* %1, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds [8 x i32], [8 x i32]* @test_dbcs_to_widechar.flags, i64 0, i64 %297
  %299 = load i32, i32* %298, align 4
  %300 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  %301 = load i32, i32* %300, align 16
  %302 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 1
  %303 = load i32, i32* %302, align 4
  %304 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 2
  %305 = load i32, i32* %304, align 8
  %306 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 3
  %307 = load i32, i32* %306, align 4
  %308 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %309 = load i32, i32* %308, align 16
  %310 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %311 = load i32, i32* %310, align 4
  %312 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %313 = load i32, i32* %312, align 8
  %314 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %315 = load i32, i32* %314, align 4
  %316 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %295, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.8, i64 0, i64 0), i32 %299, i32 %301, i32 %303, i32 %305, i32 %307, i32 %309, i32 %311, i32 %313, i32 %315)
  br label %317

317:                                              ; preds = %293, %239
  br label %318

318:                                              ; preds = %317
  %319 = load i32, i32* %1, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %1, align 4
  br label %200

321:                                              ; preds = %200
  store i32 0, i32* %1, align 4
  br label %322

322:                                              ; preds = %444, %321
  %323 = load i32, i32* %1, align 4
  %324 = sext i32 %323 to i64
  %325 = icmp ult i64 %324, 8
  br i1 %325, label %326, label %447

326:                                              ; preds = %322
  %327 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  %328 = call i32 @memset(i32* %327, i32 255, i32 20)
  %329 = load i32, i32* %1, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds [8 x i32], [8 x i32]* @test_dbcs_to_widechar.flags, i64 0, i64 %330
  %332 = load i32, i32* %331, align 4
  %333 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 0
  %334 = call i32 @MultiByteToWideChar(i32 936, i32 %332, i8* %333, i32 5, i32* null, i32 0)
  store i32 %334, i32* %2, align 4
  %335 = call i32 @SetLastError(i32 -559038737)
  %336 = load i32, i32* %1, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds [8 x i32], [8 x i32]* @test_dbcs_to_widechar.flags, i64 0, i64 %337
  %339 = load i32, i32* %338, align 4
  %340 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 0
  %341 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  %342 = load i32, i32* %2, align 4
  %343 = call i32 @MultiByteToWideChar(i32 936, i32 %339, i8* %340, i32 5, i32* %341, i32 %342)
  store i32 %343, i32* %3, align 4
  %344 = load i32, i32* %2, align 4
  %345 = load i32, i32* %3, align 4
  %346 = icmp eq i32 %344, %345
  %347 = zext i1 %346 to i32
  %348 = load i32, i32* %1, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds [8 x i32], [8 x i32]* @test_dbcs_to_widechar.flags, i64 0, i64 %349
  %351 = load i32, i32* %350, align 4
  %352 = load i32, i32* %3, align 4
  %353 = load i32, i32* %2, align 4
  %354 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %347, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %351, i32 %352, i32 %353)
  %355 = load i32, i32* %1, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds [8 x i32], [8 x i32]* @test_dbcs_to_widechar.flags, i64 0, i64 %356
  %358 = load i32, i32* %357, align 4
  %359 = and i32 %358, 130
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %382

361:                                              ; preds = %326
  %362 = load i32, i32* %2, align 4
  %363 = icmp eq i32 %362, 0
  %364 = zext i1 %363 to i32
  %365 = load i32, i32* %1, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds [8 x i32], [8 x i32]* @test_dbcs_to_widechar.flags, i64 0, i64 %366
  %368 = load i32, i32* %367, align 4
  %369 = load i32, i32* %2, align 4
  %370 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %364, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %368, i32 %369)
  %371 = call i32 (...) @GetLastError()
  %372 = load i32, i32* @ERROR_NO_UNICODE_TRANSLATION, align 4
  %373 = icmp eq i32 %371, %372
  %374 = zext i1 %373 to i32
  %375 = load i32, i32* %1, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds [8 x i32], [8 x i32]* @test_dbcs_to_widechar.flags, i64 0, i64 %376
  %378 = load i32, i32* %377, align 4
  %379 = call i32 (...) @GetLastError()
  %380 = load i32, i32* @ERROR_NO_UNICODE_TRANSLATION, align 4
  %381 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %374, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %378, i32 %379, i32 %380)
  br label %443

382:                                              ; preds = %326
  %383 = bitcast [5 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %383, i8* align 16 bitcast ([5 x i32]* @__const.test_dbcs_to_widechar.wbuf_ok.9 to i8*), i64 20, i1 false)
  %384 = bitcast [5 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %384, i8* align 16 bitcast ([5 x i32]* @__const.test_dbcs_to_widechar.wbuf_broken.10 to i8*), i64 20, i1 false)
  %385 = load i32, i32* %2, align 4
  %386 = icmp eq i32 %385, 4
  br i1 %386, label %393, label %387

387:                                              ; preds = %382
  %388 = load i32, i32* %2, align 4
  %389 = icmp eq i32 %388, 3
  %390 = zext i1 %389 to i32
  %391 = call i64 @broken(i32 %390)
  %392 = icmp ne i64 %391, 0
  br label %393

393:                                              ; preds = %387, %382
  %394 = phi i1 [ true, %382 ], [ %392, %387 ]
  %395 = zext i1 %394 to i32
  %396 = load i32, i32* %1, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds [8 x i32], [8 x i32]* @test_dbcs_to_widechar.flags, i64 0, i64 %397
  %399 = load i32, i32* %398, align 4
  %400 = load i32, i32* %2, align 4
  %401 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %395, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i32 %399, i32 %400)
  %402 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  %403 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 0
  %404 = call i32 @memcmp(i32* %402, i32* %403, i32 20)
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %415

406:                                              ; preds = %393
  %407 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  %408 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 0
  %409 = call i32 @memcmp(i32* %407, i32* %408, i32 20)
  %410 = icmp ne i32 %409, 0
  %411 = xor i1 %410, true
  %412 = zext i1 %411 to i32
  %413 = call i64 @broken(i32 %412)
  %414 = icmp ne i64 %413, 0
  br label %415

415:                                              ; preds = %406, %393
  %416 = phi i1 [ true, %393 ], [ %414, %406 ]
  %417 = zext i1 %416 to i32
  %418 = load i32, i32* %1, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds [8 x i32], [8 x i32]* @test_dbcs_to_widechar.flags, i64 0, i64 %419
  %421 = load i32, i32* %420, align 4
  %422 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  %423 = load i32, i32* %422, align 16
  %424 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 1
  %425 = load i32, i32* %424, align 4
  %426 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 2
  %427 = load i32, i32* %426, align 8
  %428 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 3
  %429 = load i32, i32* %428, align 4
  %430 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 4
  %431 = load i32, i32* %430, align 16
  %432 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 0
  %433 = load i32, i32* %432, align 16
  %434 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 1
  %435 = load i32, i32* %434, align 4
  %436 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 2
  %437 = load i32, i32* %436, align 8
  %438 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 3
  %439 = load i32, i32* %438, align 4
  %440 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 4
  %441 = load i32, i32* %440, align 16
  %442 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %417, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.12, i64 0, i64 0), i32 %421, i32 %423, i32 %425, i32 %427, i32 %429, i32 %431, i32 %433, i32 %435, i32 %437, i32 %439, i32 %441)
  br label %443

443:                                              ; preds = %415, %361
  br label %444

444:                                              ; preds = %443
  %445 = load i32, i32* %1, align 4
  %446 = add nsw i32 %445, 1
  store i32 %446, i32* %1, align 4
  br label %322

447:                                              ; preds = %322
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i32*, i32) #2

declare dso_local i32 @ok(i32, i8*, i32, i32, ...) #2

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i64 @broken(i32) #2

declare dso_local i32 @memcmp(i32*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
