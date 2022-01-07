; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test__mbsnbcpy_s.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test__mbsnbcpy_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test__mbsnbcpy_s.big = private unnamed_addr constant [39 x i8] c"atoolongstringforthislittledestination\00", align 16
@__const.test__mbsnbcpy_s.small = private unnamed_addr constant [6 x i8] c"small\00", align 1
@.str = private unnamed_addr constant [85 x i8] c"_mbsnbcpy_s: Copying a string into a big enough destination returned %d, expected 0\0A\00", align 1
@.str.1 = private unnamed_addr constant [98 x i8] c"Unexpected return data from _mbsnbcpy_s: 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [69 x i8] c"_mbsnbcpy_s: Copying a too long string returned %d, expected ERANGE\0A\00", align 1
@.str.3 = private unnamed_addr constant [81 x i8] c"_mbsnbcpy_s: Copying a too long string with a count cap returned %d, expected 0\0A\00", align 1
@.str.4 = private unnamed_addr constant [83 x i8] c"_mbsnbcpy_s: Copying more data than the source string len returned %d, expected 0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test__mbsnbcpy_s to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test__mbsnbcpy_s() #0 {
  %1 = alloca [8 x i8], align 1
  %2 = alloca [39 x i8], align 16
  %3 = alloca [6 x i8], align 1
  %4 = alloca i32, align 4
  %5 = bitcast [39 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 getelementptr inbounds ([39 x i8], [39 x i8]* @__const.test__mbsnbcpy_s.big, i32 0, i32 0), i64 39, i1 false)
  %6 = bitcast [6 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.test__mbsnbcpy_s.small, i32 0, i32 0), i64 6, i1 false)
  %7 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %8 = call i32 @memset(i8* %7, i8 signext 88, i32 8)
  %9 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %10 = getelementptr inbounds [6 x i8], [6 x i8]* %3, i64 0, i64 0
  %11 = call i32 @p_mbsnbcpy_s(i8* %9, i32 8, i8* %10, i32 6)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = load i32, i32* %4, align 4
  %16 = trunc i32 %15 to i8
  %17 = call i32 (i32, i8*, i8, ...) @ok(i32 %14, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i8 zeroext %16)
  %18 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %20, 115
  br i1 %21, label %22, label %57

22:                                               ; preds = %0
  %23 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 1
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %25, 109
  br i1 %26, label %27, label %57

27:                                               ; preds = %22
  %28 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 2
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp eq i32 %30, 97
  br i1 %31, label %32, label %57

32:                                               ; preds = %27
  %33 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 3
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp eq i32 %35, 108
  br i1 %36, label %37, label %57

37:                                               ; preds = %32
  %38 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 4
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp eq i32 %40, 108
  br i1 %41, label %42, label %57

42:                                               ; preds = %37
  %43 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 5
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %42
  %48 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 6
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp eq i32 %50, 88
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 7
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp eq i32 %55, 88
  br label %57

57:                                               ; preds = %52, %47, %42, %37, %32, %27, %22, %0
  %58 = phi i1 [ false, %47 ], [ false, %42 ], [ false, %37 ], [ false, %32 ], [ false, %27 ], [ false, %22 ], [ false, %0 ], [ %56, %52 ]
  %59 = zext i1 %58 to i32
  %60 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %61 = load i8, i8* %60, align 1
  %62 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 1
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 2
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 3
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 4
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 5
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 6
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 7
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = call i32 (i32, i8*, i8, ...) @ok(i32 %59, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %61, i32 %64, i32 %67, i32 %70, i32 %73, i32 %76, i32 %79, i32 %82)
  %84 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %85 = call i32 @memset(i8* %84, i8 signext 88, i32 8)
  %86 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %87 = getelementptr inbounds [39 x i8], [39 x i8]* %2, i64 0, i64 0
  %88 = call i32 @p_mbsnbcpy_s(i8* %86, i32 6, i8* %87, i32 6)
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @ERANGE, align 4
  %91 = icmp eq i32 %89, %90
  %92 = zext i1 %91 to i32
  %93 = load i32, i32* %4, align 4
  %94 = trunc i32 %93 to i8
  %95 = call i32 (i32, i8*, i8, ...) @ok(i32 %92, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0), i8 zeroext %94)
  %96 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %135

100:                                              ; preds = %57
  %101 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 1
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = icmp eq i32 %103, 116
  br i1 %104, label %105, label %135

105:                                              ; preds = %100
  %106 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 2
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = icmp eq i32 %108, 111
  br i1 %109, label %110, label %135

110:                                              ; preds = %105
  %111 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 3
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = icmp eq i32 %113, 111
  br i1 %114, label %115, label %135

115:                                              ; preds = %110
  %116 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 4
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = icmp eq i32 %118, 108
  br i1 %119, label %120, label %135

120:                                              ; preds = %115
  %121 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 5
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = icmp eq i32 %123, 111
  br i1 %124, label %125, label %135

125:                                              ; preds = %120
  %126 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 6
  %127 = load i8, i8* %126, align 1
  %128 = zext i8 %127 to i32
  %129 = icmp eq i32 %128, 88
  br i1 %129, label %130, label %135

130:                                              ; preds = %125
  %131 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 7
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = icmp eq i32 %133, 88
  br label %135

135:                                              ; preds = %130, %125, %120, %115, %110, %105, %100, %57
  %136 = phi i1 [ false, %125 ], [ false, %120 ], [ false, %115 ], [ false, %110 ], [ false, %105 ], [ false, %100 ], [ false, %57 ], [ %134, %130 ]
  %137 = zext i1 %136 to i32
  %138 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %139 = load i8, i8* %138, align 1
  %140 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 1
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 2
  %144 = load i8, i8* %143, align 1
  %145 = zext i8 %144 to i32
  %146 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 3
  %147 = load i8, i8* %146, align 1
  %148 = zext i8 %147 to i32
  %149 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 4
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  %152 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 5
  %153 = load i8, i8* %152, align 1
  %154 = zext i8 %153 to i32
  %155 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 6
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i32
  %158 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 7
  %159 = load i8, i8* %158, align 1
  %160 = zext i8 %159 to i32
  %161 = call i32 (i32, i8*, i8, ...) @ok(i32 %137, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %139, i32 %142, i32 %145, i32 %148, i32 %151, i32 %154, i32 %157, i32 %160)
  %162 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %163 = call i32 @memset(i8* %162, i8 signext 88, i32 8)
  %164 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %165 = getelementptr inbounds [39 x i8], [39 x i8]* %2, i64 0, i64 0
  %166 = call i32 @p_mbsnbcpy_s(i8* %164, i32 6, i8* %165, i32 4)
  store i32 %166, i32* %4, align 4
  %167 = load i32, i32* %4, align 4
  %168 = icmp eq i32 %167, 0
  %169 = zext i1 %168 to i32
  %170 = load i32, i32* %4, align 4
  %171 = trunc i32 %170 to i8
  %172 = call i32 (i32, i8*, i8, ...) @ok(i32 %169, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.3, i64 0, i64 0), i8 zeroext %171)
  %173 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %174 = load i8, i8* %173, align 1
  %175 = zext i8 %174 to i32
  %176 = icmp eq i32 %175, 97
  br i1 %176, label %177, label %212

177:                                              ; preds = %135
  %178 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 1
  %179 = load i8, i8* %178, align 1
  %180 = zext i8 %179 to i32
  %181 = icmp eq i32 %180, 116
  br i1 %181, label %182, label %212

182:                                              ; preds = %177
  %183 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 2
  %184 = load i8, i8* %183, align 1
  %185 = zext i8 %184 to i32
  %186 = icmp eq i32 %185, 111
  br i1 %186, label %187, label %212

187:                                              ; preds = %182
  %188 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 3
  %189 = load i8, i8* %188, align 1
  %190 = zext i8 %189 to i32
  %191 = icmp eq i32 %190, 111
  br i1 %191, label %192, label %212

192:                                              ; preds = %187
  %193 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 4
  %194 = load i8, i8* %193, align 1
  %195 = zext i8 %194 to i32
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %212

197:                                              ; preds = %192
  %198 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 5
  %199 = load i8, i8* %198, align 1
  %200 = zext i8 %199 to i32
  %201 = icmp eq i32 %200, 88
  br i1 %201, label %202, label %212

202:                                              ; preds = %197
  %203 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 6
  %204 = load i8, i8* %203, align 1
  %205 = zext i8 %204 to i32
  %206 = icmp eq i32 %205, 88
  br i1 %206, label %207, label %212

207:                                              ; preds = %202
  %208 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 7
  %209 = load i8, i8* %208, align 1
  %210 = zext i8 %209 to i32
  %211 = icmp eq i32 %210, 88
  br label %212

212:                                              ; preds = %207, %202, %197, %192, %187, %182, %177, %135
  %213 = phi i1 [ false, %202 ], [ false, %197 ], [ false, %192 ], [ false, %187 ], [ false, %182 ], [ false, %177 ], [ false, %135 ], [ %211, %207 ]
  %214 = zext i1 %213 to i32
  %215 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %216 = load i8, i8* %215, align 1
  %217 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 1
  %218 = load i8, i8* %217, align 1
  %219 = zext i8 %218 to i32
  %220 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 2
  %221 = load i8, i8* %220, align 1
  %222 = zext i8 %221 to i32
  %223 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 3
  %224 = load i8, i8* %223, align 1
  %225 = zext i8 %224 to i32
  %226 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 4
  %227 = load i8, i8* %226, align 1
  %228 = zext i8 %227 to i32
  %229 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 5
  %230 = load i8, i8* %229, align 1
  %231 = zext i8 %230 to i32
  %232 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 6
  %233 = load i8, i8* %232, align 1
  %234 = zext i8 %233 to i32
  %235 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 7
  %236 = load i8, i8* %235, align 1
  %237 = zext i8 %236 to i32
  %238 = call i32 (i32, i8*, i8, ...) @ok(i32 %214, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %216, i32 %219, i32 %222, i32 %225, i32 %228, i32 %231, i32 %234, i32 %237)
  %239 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %240 = call i32 @memset(i8* %239, i8 signext 88, i32 8)
  %241 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %242 = getelementptr inbounds [6 x i8], [6 x i8]* %3, i64 0, i64 0
  %243 = call i32 @p_mbsnbcpy_s(i8* %241, i32 6, i8* %242, i32 16)
  store i32 %243, i32* %4, align 4
  %244 = load i32, i32* %4, align 4
  %245 = icmp eq i32 %244, 0
  %246 = zext i1 %245 to i32
  %247 = load i32, i32* %4, align 4
  %248 = trunc i32 %247 to i8
  %249 = call i32 (i32, i8*, i8, ...) @ok(i32 %246, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.4, i64 0, i64 0), i8 zeroext %248)
  %250 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %251 = load i8, i8* %250, align 1
  %252 = zext i8 %251 to i32
  %253 = icmp eq i32 %252, 115
  br i1 %253, label %254, label %289

254:                                              ; preds = %212
  %255 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 1
  %256 = load i8, i8* %255, align 1
  %257 = zext i8 %256 to i32
  %258 = icmp eq i32 %257, 109
  br i1 %258, label %259, label %289

259:                                              ; preds = %254
  %260 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 2
  %261 = load i8, i8* %260, align 1
  %262 = zext i8 %261 to i32
  %263 = icmp eq i32 %262, 97
  br i1 %263, label %264, label %289

264:                                              ; preds = %259
  %265 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 3
  %266 = load i8, i8* %265, align 1
  %267 = zext i8 %266 to i32
  %268 = icmp eq i32 %267, 108
  br i1 %268, label %269, label %289

269:                                              ; preds = %264
  %270 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 4
  %271 = load i8, i8* %270, align 1
  %272 = zext i8 %271 to i32
  %273 = icmp eq i32 %272, 108
  br i1 %273, label %274, label %289

274:                                              ; preds = %269
  %275 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 5
  %276 = load i8, i8* %275, align 1
  %277 = zext i8 %276 to i32
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %289

279:                                              ; preds = %274
  %280 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 6
  %281 = load i8, i8* %280, align 1
  %282 = zext i8 %281 to i32
  %283 = icmp eq i32 %282, 88
  br i1 %283, label %284, label %289

284:                                              ; preds = %279
  %285 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 7
  %286 = load i8, i8* %285, align 1
  %287 = zext i8 %286 to i32
  %288 = icmp eq i32 %287, 88
  br label %289

289:                                              ; preds = %284, %279, %274, %269, %264, %259, %254, %212
  %290 = phi i1 [ false, %279 ], [ false, %274 ], [ false, %269 ], [ false, %264 ], [ false, %259 ], [ false, %254 ], [ false, %212 ], [ %288, %284 ]
  %291 = zext i1 %290 to i32
  %292 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %293 = load i8, i8* %292, align 1
  %294 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 1
  %295 = load i8, i8* %294, align 1
  %296 = zext i8 %295 to i32
  %297 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 2
  %298 = load i8, i8* %297, align 1
  %299 = zext i8 %298 to i32
  %300 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 3
  %301 = load i8, i8* %300, align 1
  %302 = zext i8 %301 to i32
  %303 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 4
  %304 = load i8, i8* %303, align 1
  %305 = zext i8 %304 to i32
  %306 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 5
  %307 = load i8, i8* %306, align 1
  %308 = zext i8 %307 to i32
  %309 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 6
  %310 = load i8, i8* %309, align 1
  %311 = zext i8 %310 to i32
  %312 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 7
  %313 = load i8, i8* %312, align 1
  %314 = zext i8 %313 to i32
  %315 = call i32 (i32, i8*, i8, ...) @ok(i32 %291, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %293, i32 %296, i32 %299, i32 %302, i32 %305, i32 %308, i32 %311, i32 %314)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #2

declare dso_local i32 @p_mbsnbcpy_s(i8*, i32, i8*, i32) #2

declare dso_local i32 @ok(i32, i8*, i8 zeroext, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
