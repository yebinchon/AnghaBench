; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test_wctomb.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Japanese_Japan.932\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"wcrtomb tests\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"wcrtomb did not return 2\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"state != 0\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"dst[0] = %x, expected 0x82\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"dst[1] = %x, expected 0xa0\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"dst[2] != 'a'\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"dst[1] = %x, expected 0xa1\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"wcrtomb did not return 1\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"dst[0] = %x, expected 0x20\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"wcrtomb did not return -1\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"dst[0] = %x, expected 0x3f\0A\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"err = %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"ret != 2\0A\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"ret != 1\0A\00", align 1
@EILSEQ = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_wctomb() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [10 x i8], align 1
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @LC_ALL, align 4
  %6 = call i32 @setlocale(i32 %5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %0
  %9 = call i32 @win_skip(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %237

10:                                               ; preds = %0
  %11 = call i64 @p_wcrtomb(i8* null, i32 12354, i32* null)
  store i64 %11, i64* %3, align 8
  %12 = load i64, i64* %3, align 8
  %13 = icmp eq i64 %12, 2
  %14 = zext i1 %13 to i32
  %15 = call i32 (i32, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  %16 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 2
  store i8 97, i8* %16, align 1
  %17 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %18 = call i64 @p_wcrtomb(i8* %17, i32 12354, i32* %1)
  store i64 %18, i64* %3, align 8
  %19 = load i64, i64* %3, align 8
  %20 = icmp eq i64 %19, 2
  %21 = zext i1 %20 to i32
  %22 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %23 = load i32, i32* %1, align 4
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %27 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp eq i32 %29, 130
  %31 = zext i1 %30 to i32
  %32 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %34)
  %36 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp eq i32 %38, 160
  %40 = zext i1 %39 to i32
  %41 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 1
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %43)
  %45 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 2
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp eq i32 %47, 97
  %49 = zext i1 %48 to i32
  %50 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %51 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %52 = call i64 @p_wcrtomb(i8* %51, i32 12355, i32* null)
  store i64 %52, i64* %3, align 8
  %53 = load i64, i64* %3, align 8
  %54 = icmp eq i64 %53, 2
  %55 = zext i1 %54 to i32
  %56 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %57 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp eq i32 %59, 130
  %61 = zext i1 %60 to i32
  %62 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %64)
  %66 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 1
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = icmp eq i32 %68, 161
  %70 = zext i1 %69 to i32
  %71 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 1
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = call i32 (i32, i8*, ...) @ok(i32 %70, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %73)
  %75 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %76 = call i64 @p_wcrtomb(i8* %75, i32 32, i32* null)
  store i64 %76, i64* %3, align 8
  %77 = load i64, i64* %3, align 8
  %78 = icmp eq i64 %77, 1
  %79 = zext i1 %78 to i32
  %80 = call i32 (i32, i8*, ...) @ok(i32 %79, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  %81 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp eq i32 %83, 32
  %85 = zext i1 %84 to i32
  %86 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = call i32 (i32, i8*, ...) @ok(i32 %85, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32 %88)
  %90 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %91 = call i64 @p_wcrtomb(i8* %90, i32 65535, i32* null)
  store i64 %91, i64* %3, align 8
  %92 = load i64, i64* %3, align 8
  %93 = icmp eq i64 %92, -1
  %94 = zext i1 %93 to i32
  %95 = call i32 (i32, i8*, ...) @ok(i32 %94, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  %96 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = icmp eq i32 %98, 63
  %100 = zext i1 %99 to i32
  %101 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i32 %103)
  store i32 1, i32* %1, align 4
  %105 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 2
  store i8 97, i8* %105, align 1
  %106 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %107 = call i32 @p_wcrtomb_s(i64* %3, i8* %106, i32 10, i32 12354, i32* %1)
  store i32 %107, i32* %4, align 4
  %108 = load i32, i32* %4, align 4
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  %112 = load i32, i32* %4, align 4
  %113 = call i32 (i32, i8*, ...) @ok(i32 %111, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32 %112)
  %114 = load i64, i64* %3, align 8
  %115 = icmp eq i64 %114, 2
  %116 = zext i1 %115 to i32
  %117 = call i32 (i32, i8*, ...) @ok(i32 %116, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %118 = load i32, i32* %1, align 4
  %119 = icmp ne i32 %118, 0
  %120 = xor i1 %119, true
  %121 = zext i1 %120 to i32
  %122 = call i32 (i32, i8*, ...) @ok(i32 %121, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %123 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  %126 = icmp eq i32 %125, 130
  %127 = zext i1 %126 to i32
  %128 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %129 = load i8, i8* %128, align 1
  %130 = zext i8 %129 to i32
  %131 = call i32 (i32, i8*, ...) @ok(i32 %127, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %130)
  %132 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 1
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  %135 = icmp eq i32 %134, 160
  %136 = zext i1 %135 to i32
  %137 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 1
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  %140 = call i32 (i32, i8*, ...) @ok(i32 %136, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %139)
  %141 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 2
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i32
  %144 = icmp eq i32 %143, 97
  %145 = zext i1 %144 to i32
  %146 = call i32 (i32, i8*, ...) @ok(i32 %145, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %147 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %148 = call i32 @p_wcrtomb_s(i64* %3, i8* %147, i32 10, i32 12354, i32* null)
  store i32 %148, i32* %4, align 4
  %149 = load i32, i32* %4, align 4
  %150 = icmp ne i32 %149, 0
  %151 = xor i1 %150, true
  %152 = zext i1 %151 to i32
  %153 = load i32, i32* %4, align 4
  %154 = call i32 (i32, i8*, ...) @ok(i32 %152, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32 %153)
  %155 = load i64, i64* %3, align 8
  %156 = icmp eq i64 %155, 2
  %157 = zext i1 %156 to i32
  %158 = call i32 (i32, i8*, ...) @ok(i32 %157, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %159 = load i32, i32* %1, align 4
  %160 = icmp ne i32 %159, 0
  %161 = xor i1 %160, true
  %162 = zext i1 %161 to i32
  %163 = call i32 (i32, i8*, ...) @ok(i32 %162, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %164 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %165 = load i8, i8* %164, align 1
  %166 = zext i8 %165 to i32
  %167 = icmp eq i32 %166, 130
  %168 = zext i1 %167 to i32
  %169 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %170 = load i8, i8* %169, align 1
  %171 = zext i8 %170 to i32
  %172 = call i32 (i32, i8*, ...) @ok(i32 %168, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %171)
  %173 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 1
  %174 = load i8, i8* %173, align 1
  %175 = zext i8 %174 to i32
  %176 = icmp eq i32 %175, 160
  %177 = zext i1 %176 to i32
  %178 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 1
  %179 = load i8, i8* %178, align 1
  %180 = zext i8 %179 to i32
  %181 = call i32 (i32, i8*, ...) @ok(i32 %177, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %180)
  %182 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %183 = call i32 @p_wcrtomb_s(i64* %3, i8* %182, i32 10, i32 32, i32* null)
  store i32 %183, i32* %4, align 4
  %184 = load i32, i32* %4, align 4
  %185 = icmp ne i32 %184, 0
  %186 = xor i1 %185, true
  %187 = zext i1 %186 to i32
  %188 = load i32, i32* %4, align 4
  %189 = call i32 (i32, i8*, ...) @ok(i32 %187, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32 %188)
  %190 = load i64, i64* %3, align 8
  %191 = icmp eq i64 %190, 1
  %192 = zext i1 %191 to i32
  %193 = call i32 (i32, i8*, ...) @ok(i32 %192, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  %194 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %195 = load i8, i8* %194, align 1
  %196 = zext i8 %195 to i32
  %197 = icmp eq i32 %196, 32
  %198 = zext i1 %197 to i32
  %199 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %200 = load i8, i8* %199, align 1
  %201 = zext i8 %200 to i32
  %202 = call i32 (i32, i8*, ...) @ok(i32 %198, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32 %201)
  %203 = call i32 @p_wcrtomb_s(i64* %3, i8* null, i32 0, i32 32, i32* null)
  store i32 %203, i32* %4, align 4
  %204 = load i32, i32* %4, align 4
  %205 = icmp ne i32 %204, 0
  %206 = xor i1 %205, true
  %207 = zext i1 %206 to i32
  %208 = load i32, i32* %4, align 4
  %209 = call i32 (i32, i8*, ...) @ok(i32 %207, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32 %208)
  %210 = load i64, i64* %3, align 8
  %211 = icmp eq i64 %210, 1
  %212 = zext i1 %211 to i32
  %213 = call i32 (i32, i8*, ...) @ok(i32 %212, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  %214 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %215 = call i32 @p_wcrtomb_s(i64* %3, i8* %214, i32 10, i32 65535, i32* null)
  store i32 %215, i32* %4, align 4
  %216 = load i32, i32* %4, align 4
  %217 = load i32, i32* @EILSEQ, align 4
  %218 = icmp eq i32 %216, %217
  %219 = zext i1 %218 to i32
  %220 = load i32, i32* %4, align 4
  %221 = call i32 (i32, i8*, ...) @ok(i32 %219, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32 %220)
  %222 = load i64, i64* %3, align 8
  %223 = icmp eq i64 %222, -1
  %224 = zext i1 %223 to i32
  %225 = call i32 (i32, i8*, ...) @ok(i32 %224, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  %226 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %227 = load i8, i8* %226, align 1
  %228 = zext i8 %227 to i32
  %229 = icmp eq i32 %228, 63
  %230 = zext i1 %229 to i32
  %231 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0
  %232 = load i8, i8* %231, align 1
  %233 = zext i8 %232 to i32
  %234 = call i32 (i32, i8*, ...) @ok(i32 %230, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i32 %233)
  %235 = load i32, i32* @LC_ALL, align 4
  %236 = call i32 @setlocale(i32 %235, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  br label %237

237:                                              ; preds = %10, %8
  ret void
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i64 @p_wcrtomb(i8*, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @p_wcrtomb_s(i64*, i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
