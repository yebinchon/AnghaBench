; ModuleID = '/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/nvlist_to_lua/extr_nvlist_to_lua.c_run_tests.c'
source_filename = "/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/nvlist_to_lua/extr_nvlist_to_lua.c_run_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"key\00", align 1
@nvl = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"boolean\00", align 1
@B_TRUE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"boolean_value\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"byte\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"int8\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"uint8\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"int16\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"uint16\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"int32\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"uint32\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"int64\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"uint64\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"subkey\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"subvalue\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"nvlist\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"boolean_array\00", align 1
@__const.run_tests.val = private unnamed_addr constant [2 x i32] [i32 0, i32 1], align 4
@.str.18 = private unnamed_addr constant [11 x i8] c"byte_array\00", align 1
@__const.run_tests.val.19 = private unnamed_addr constant [2 x i32] [i32 0, i32 1], align 4
@.str.20 = private unnamed_addr constant [11 x i8] c"int8_array\00", align 1
@__const.run_tests.val.21 = private unnamed_addr constant [2 x i32] [i32 0, i32 1], align 4
@.str.22 = private unnamed_addr constant [12 x i8] c"uint8_array\00", align 1
@__const.run_tests.val.23 = private unnamed_addr constant [2 x i32] [i32 0, i32 1], align 4
@.str.24 = private unnamed_addr constant [12 x i8] c"int16_array\00", align 1
@__const.run_tests.val.25 = private unnamed_addr constant [2 x i32] [i32 0, i32 1], align 4
@.str.26 = private unnamed_addr constant [13 x i8] c"uint16_array\00", align 1
@__const.run_tests.val.27 = private unnamed_addr constant [2 x i32] [i32 0, i32 1], align 4
@.str.28 = private unnamed_addr constant [12 x i8] c"int32_array\00", align 1
@__const.run_tests.val.29 = private unnamed_addr constant [2 x i32] [i32 0, i32 1], align 4
@.str.30 = private unnamed_addr constant [13 x i8] c"uint32_array\00", align 1
@__const.run_tests.val.31 = private unnamed_addr constant [2 x i32] [i32 0, i32 1], align 4
@.str.32 = private unnamed_addr constant [12 x i8] c"int64_array\00", align 1
@__const.run_tests.val.33 = private unnamed_addr constant [2 x i32] [i32 0, i32 1], align 4
@.str.34 = private unnamed_addr constant [13 x i8] c"uint64_array\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@__const.run_tests.val.36 = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0)], align 16
@.str.37 = private unnamed_addr constant [13 x i8] c"string_array\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"subkey2\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"subvalue2\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"nvlist_array\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"large_key\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"large_value\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"key-%u\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"many_keys\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"deeply_nested_pos\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"deeply_nested_neg\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @run_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_tests() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca [2 x i32], align 4
  %13 = alloca [2 x i32], align 4
  %14 = alloca [2 x i32], align 4
  %15 = alloca [2 x i32], align 4
  %16 = alloca [2 x i8*], align 16
  %17 = alloca [2 x i32*], align 16
  %18 = alloca i32, align 4
  %19 = alloca [32 x i8], align 16
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  store i32 31744, i32* %2, align 4
  %24 = load i32, i32* %2, align 4
  %25 = call i8* @malloc(i32 %24)
  store i8* %25, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %39, %0
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %2, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %26
  %31 = load i32, i32* %4, align 4
  %32 = srem i32 %31, 26
  %33 = add nsw i32 97, %32
  %34 = trunc i32 %33 to i8
  %35 = load i8*, i8** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  store i8 %34, i8* %38, align 1
  br label %39

39:                                               ; preds = %30
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %26

42:                                               ; preds = %26
  %43 = load i8*, i8** %3, align 8
  %44 = load i32, i32* %2, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  store i8 0, i8* %47, align 1
  %48 = call i32* (...) @fnvlist_alloc()
  store i32* %48, i32** @nvl, align 8
  %49 = load i32*, i32** @nvl, align 8
  %50 = load i8*, i8** %1, align 8
  %51 = call i32 @fnvlist_add_boolean(i32* %49, i8* %50)
  %52 = load i32, i32* @B_TRUE, align 4
  %53 = load i32, i32* @B_FALSE, align 4
  %54 = call i32 @test(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %53)
  %55 = load i32*, i32** @nvl, align 8
  %56 = load i8*, i8** %1, align 8
  %57 = load i32, i32* @B_TRUE, align 4
  %58 = call i32 @fnvlist_add_boolean_value(i32* %55, i8* %56, i32 %57)
  %59 = load i32, i32* @B_FALSE, align 4
  %60 = load i32, i32* @B_FALSE, align 4
  %61 = call i32 @test(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %59, i32 %60)
  %62 = load i32*, i32** @nvl, align 8
  %63 = load i8*, i8** %1, align 8
  %64 = call i32 @fnvlist_add_byte(i32* %62, i8* %63, i32 1)
  %65 = load i32, i32* @B_FALSE, align 4
  %66 = load i32, i32* @B_FALSE, align 4
  %67 = call i32 @test(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %65, i32 %66)
  %68 = load i32*, i32** @nvl, align 8
  %69 = load i8*, i8** %1, align 8
  %70 = call i32 @fnvlist_add_int8(i32* %68, i8* %69, i32 1)
  %71 = load i32, i32* @B_FALSE, align 4
  %72 = load i32, i32* @B_FALSE, align 4
  %73 = call i32 @test(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %71, i32 %72)
  %74 = load i32*, i32** @nvl, align 8
  %75 = load i8*, i8** %1, align 8
  %76 = call i32 @fnvlist_add_uint8(i32* %74, i8* %75, i32 1)
  %77 = load i32, i32* @B_FALSE, align 4
  %78 = load i32, i32* @B_FALSE, align 4
  %79 = call i32 @test(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %77, i32 %78)
  %80 = load i32*, i32** @nvl, align 8
  %81 = load i8*, i8** %1, align 8
  %82 = call i32 @fnvlist_add_int16(i32* %80, i8* %81, i32 1)
  %83 = load i32, i32* @B_FALSE, align 4
  %84 = load i32, i32* @B_FALSE, align 4
  %85 = call i32 @test(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %83, i32 %84)
  %86 = load i32*, i32** @nvl, align 8
  %87 = load i8*, i8** %1, align 8
  %88 = call i32 @fnvlist_add_uint16(i32* %86, i8* %87, i32 1)
  %89 = load i32, i32* @B_FALSE, align 4
  %90 = load i32, i32* @B_FALSE, align 4
  %91 = call i32 @test(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %89, i32 %90)
  %92 = load i32*, i32** @nvl, align 8
  %93 = load i8*, i8** %1, align 8
  %94 = call i32 @fnvlist_add_int32(i32* %92, i8* %93, i32 1)
  %95 = load i32, i32* @B_FALSE, align 4
  %96 = load i32, i32* @B_FALSE, align 4
  %97 = call i32 @test(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %95, i32 %96)
  %98 = load i32*, i32** @nvl, align 8
  %99 = load i8*, i8** %1, align 8
  %100 = call i32 @fnvlist_add_uint32(i32* %98, i8* %99, i32 1)
  %101 = load i32, i32* @B_FALSE, align 4
  %102 = load i32, i32* @B_FALSE, align 4
  %103 = call i32 @test(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %101, i32 %102)
  %104 = load i32*, i32** @nvl, align 8
  %105 = load i8*, i8** %1, align 8
  %106 = call i32 @fnvlist_add_int64(i32* %104, i8* %105, i32 1)
  %107 = load i32, i32* @B_TRUE, align 4
  %108 = load i32, i32* @B_TRUE, align 4
  %109 = call i32 @test(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %107, i32 %108)
  %110 = load i32*, i32** @nvl, align 8
  %111 = load i8*, i8** %1, align 8
  %112 = call i32 @fnvlist_add_uint64(i32* %110, i8* %111, i32 1)
  %113 = load i32, i32* @B_FALSE, align 4
  %114 = load i32, i32* @B_FALSE, align 4
  %115 = call i32 @test(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 %113, i32 %114)
  %116 = load i32*, i32** @nvl, align 8
  %117 = load i8*, i8** %1, align 8
  %118 = call i32 @fnvlist_add_string(i32* %116, i8* %117, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %119 = load i32, i32* @B_TRUE, align 4
  %120 = load i32, i32* @B_TRUE, align 4
  %121 = call i32 @test(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 %119, i32 %120)
  %122 = call i32* (...) @fnvlist_alloc()
  store i32* %122, i32** %5, align 8
  %123 = load i32*, i32** %5, align 8
  %124 = call i32 @fnvlist_add_string(i32* %123, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  %125 = load i32*, i32** @nvl, align 8
  %126 = load i8*, i8** %1, align 8
  %127 = load i32*, i32** %5, align 8
  %128 = call i32 @fnvlist_add_nvlist(i32* %125, i8* %126, i32* %127)
  %129 = load i32*, i32** %5, align 8
  %130 = call i32 @fnvlist_free(i32* %129)
  %131 = load i32, i32* @B_TRUE, align 4
  %132 = load i32, i32* @B_TRUE, align 4
  %133 = call i32 @test(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i32 %131, i32 %132)
  %134 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %135 = load i32, i32* @B_FALSE, align 4
  store i32 %135, i32* %134, align 4
  %136 = getelementptr inbounds i32, i32* %134, i64 1
  %137 = load i32, i32* @B_TRUE, align 4
  store i32 %137, i32* %136, align 4
  %138 = load i32*, i32** @nvl, align 8
  %139 = load i8*, i8** %1, align 8
  %140 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %141 = call i32 @fnvlist_add_boolean_array(i32* %138, i8* %139, i32* %140, i32 2)
  %142 = load i32, i32* @B_FALSE, align 4
  %143 = load i32, i32* @B_FALSE, align 4
  %144 = call i32 @test(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 %142, i32 %143)
  %145 = bitcast [2 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %145, i8* align 4 bitcast ([2 x i32]* @__const.run_tests.val to i8*), i64 8, i1 false)
  %146 = load i32*, i32** @nvl, align 8
  %147 = load i8*, i8** %1, align 8
  %148 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %149 = call i32 @fnvlist_add_byte_array(i32* %146, i8* %147, i32* %148, i32 2)
  %150 = load i32, i32* @B_FALSE, align 4
  %151 = load i32, i32* @B_FALSE, align 4
  %152 = call i32 @test(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i32 %150, i32 %151)
  %153 = bitcast [2 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %153, i8* align 4 bitcast ([2 x i32]* @__const.run_tests.val.19 to i8*), i64 8, i1 false)
  %154 = load i32*, i32** @nvl, align 8
  %155 = load i8*, i8** %1, align 8
  %156 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %157 = call i32 @fnvlist_add_int8_array(i32* %154, i8* %155, i32* %156, i32 2)
  %158 = load i32, i32* @B_FALSE, align 4
  %159 = load i32, i32* @B_FALSE, align 4
  %160 = call i32 @test(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i32 %158, i32 %159)
  %161 = bitcast [2 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %161, i8* align 4 bitcast ([2 x i32]* @__const.run_tests.val.21 to i8*), i64 8, i1 false)
  %162 = load i32*, i32** @nvl, align 8
  %163 = load i8*, i8** %1, align 8
  %164 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %165 = call i32 @fnvlist_add_uint8_array(i32* %162, i8* %163, i32* %164, i32 2)
  %166 = load i32, i32* @B_FALSE, align 4
  %167 = load i32, i32* @B_FALSE, align 4
  %168 = call i32 @test(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i32 %166, i32 %167)
  %169 = bitcast [2 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %169, i8* align 4 bitcast ([2 x i32]* @__const.run_tests.val.23 to i8*), i64 8, i1 false)
  %170 = load i32*, i32** @nvl, align 8
  %171 = load i8*, i8** %1, align 8
  %172 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %173 = call i32 @fnvlist_add_int16_array(i32* %170, i8* %171, i32* %172, i32 2)
  %174 = load i32, i32* @B_FALSE, align 4
  %175 = load i32, i32* @B_FALSE, align 4
  %176 = call i32 @test(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i32 %174, i32 %175)
  %177 = bitcast [2 x i32]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %177, i8* align 4 bitcast ([2 x i32]* @__const.run_tests.val.25 to i8*), i64 8, i1 false)
  %178 = load i32*, i32** @nvl, align 8
  %179 = load i8*, i8** %1, align 8
  %180 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %181 = call i32 @fnvlist_add_uint16_array(i32* %178, i8* %179, i32* %180, i32 2)
  %182 = load i32, i32* @B_FALSE, align 4
  %183 = load i32, i32* @B_FALSE, align 4
  %184 = call i32 @test(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0), i32 %182, i32 %183)
  %185 = bitcast [2 x i32]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %185, i8* align 4 bitcast ([2 x i32]* @__const.run_tests.val.27 to i8*), i64 8, i1 false)
  %186 = load i32*, i32** @nvl, align 8
  %187 = load i8*, i8** %1, align 8
  %188 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %189 = call i32 @fnvlist_add_int32_array(i32* %186, i8* %187, i32* %188, i32 2)
  %190 = load i32, i32* @B_FALSE, align 4
  %191 = load i32, i32* @B_FALSE, align 4
  %192 = call i32 @test(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i32 %190, i32 %191)
  %193 = bitcast [2 x i32]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %193, i8* align 4 bitcast ([2 x i32]* @__const.run_tests.val.29 to i8*), i64 8, i1 false)
  %194 = load i32*, i32** @nvl, align 8
  %195 = load i8*, i8** %1, align 8
  %196 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %197 = call i32 @fnvlist_add_uint32_array(i32* %194, i8* %195, i32* %196, i32 2)
  %198 = load i32, i32* @B_FALSE, align 4
  %199 = load i32, i32* @B_FALSE, align 4
  %200 = call i32 @test(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0), i32 %198, i32 %199)
  %201 = bitcast [2 x i32]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %201, i8* align 4 bitcast ([2 x i32]* @__const.run_tests.val.31 to i8*), i64 8, i1 false)
  %202 = load i32*, i32** @nvl, align 8
  %203 = load i8*, i8** %1, align 8
  %204 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %205 = call i32 @fnvlist_add_int64_array(i32* %202, i8* %203, i32* %204, i32 2)
  %206 = load i32, i32* @B_TRUE, align 4
  %207 = load i32, i32* @B_FALSE, align 4
  %208 = call i32 @test(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0), i32 %206, i32 %207)
  %209 = bitcast [2 x i32]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %209, i8* align 4 bitcast ([2 x i32]* @__const.run_tests.val.33 to i8*), i64 8, i1 false)
  %210 = load i32*, i32** @nvl, align 8
  %211 = load i8*, i8** %1, align 8
  %212 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %213 = call i32 @fnvlist_add_uint64_array(i32* %210, i8* %211, i32* %212, i32 2)
  %214 = load i32, i32* @B_FALSE, align 4
  %215 = load i32, i32* @B_FALSE, align 4
  %216 = call i32 @test(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i64 0, i64 0), i32 %214, i32 %215)
  %217 = bitcast [2 x i8*]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %217, i8* align 16 bitcast ([2 x i8*]* @__const.run_tests.val.36 to i8*), i64 16, i1 false)
  %218 = load i32*, i32** @nvl, align 8
  %219 = load i8*, i8** %1, align 8
  %220 = getelementptr inbounds [2 x i8*], [2 x i8*]* %16, i64 0, i64 0
  %221 = call i32 @fnvlist_add_string_array(i32* %218, i8* %219, i8** %220, i32 2)
  %222 = load i32, i32* @B_TRUE, align 4
  %223 = load i32, i32* @B_FALSE, align 4
  %224 = call i32 @test(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0), i32 %222, i32 %223)
  %225 = call i32* (...) @fnvlist_alloc()
  %226 = getelementptr inbounds [2 x i32*], [2 x i32*]* %17, i64 0, i64 0
  store i32* %225, i32** %226, align 16
  %227 = getelementptr inbounds [2 x i32*], [2 x i32*]* %17, i64 0, i64 0
  %228 = load i32*, i32** %227, align 16
  %229 = call i32 @fnvlist_add_string(i32* %228, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  %230 = call i32* (...) @fnvlist_alloc()
  %231 = getelementptr inbounds [2 x i32*], [2 x i32*]* %17, i64 0, i64 1
  store i32* %230, i32** %231, align 8
  %232 = getelementptr inbounds [2 x i32*], [2 x i32*]* %17, i64 0, i64 1
  %233 = load i32*, i32** %232, align 8
  %234 = call i32 @fnvlist_add_string(i32* %233, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i64 0, i64 0))
  %235 = load i32*, i32** @nvl, align 8
  %236 = load i8*, i8** %1, align 8
  %237 = getelementptr inbounds [2 x i32*], [2 x i32*]* %17, i64 0, i64 0
  %238 = call i32 @fnvlist_add_nvlist_array(i32* %235, i8* %236, i32** %237, i32 2)
  %239 = getelementptr inbounds [2 x i32*], [2 x i32*]* %17, i64 0, i64 0
  %240 = load i32*, i32** %239, align 16
  %241 = call i32 @fnvlist_free(i32* %240)
  %242 = getelementptr inbounds [2 x i32*], [2 x i32*]* %17, i64 0, i64 1
  %243 = load i32*, i32** %242, align 8
  %244 = call i32 @fnvlist_free(i32* %243)
  %245 = load i32, i32* @B_FALSE, align 4
  %246 = load i32, i32* @B_FALSE, align 4
  %247 = call i32 @test(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i64 0, i64 0), i32 %245, i32 %246)
  %248 = load i32*, i32** @nvl, align 8
  %249 = load i8*, i8** %3, align 8
  %250 = call i32 @fnvlist_add_string(i32* %248, i8* %249, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %251 = load i32, i32* @B_TRUE, align 4
  %252 = load i32, i32* @B_TRUE, align 4
  %253 = call i32 @test(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i64 0, i64 0), i32 %251, i32 %252)
  %254 = load i32*, i32** @nvl, align 8
  %255 = load i8*, i8** %1, align 8
  %256 = load i8*, i8** %3, align 8
  %257 = call i32 @fnvlist_add_string(i32* %254, i8* %255, i8* %256)
  %258 = load i32, i32* @B_TRUE, align 4
  %259 = load i32, i32* @B_TRUE, align 4
  %260 = call i32 @test(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i32 %258, i32 %259)
  store i32 0, i32* %18, align 4
  br label %261

261:                                              ; preds = %272, %42
  %262 = load i32, i32* %18, align 4
  %263 = icmp slt i32 %262, 1024
  br i1 %263, label %264, label %275

264:                                              ; preds = %261
  %265 = getelementptr inbounds [32 x i8], [32 x i8]* %19, i64 0, i64 0
  %266 = load i32, i32* %18, align 4
  %267 = call i32 @snprintf(i8* %265, i32 32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0), i32 %266)
  %268 = load i32*, i32** @nvl, align 8
  %269 = getelementptr inbounds [32 x i8], [32 x i8]* %19, i64 0, i64 0
  %270 = load i32, i32* %18, align 4
  %271 = call i32 @fnvlist_add_int64(i32* %268, i8* %269, i32 %270)
  br label %272

272:                                              ; preds = %264
  %273 = load i32, i32* %18, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %18, align 4
  br label %261

275:                                              ; preds = %261
  %276 = load i32, i32* @B_TRUE, align 4
  %277 = load i32, i32* @B_TRUE, align 4
  %278 = call i32 @test(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i64 0, i64 0), i32 %276, i32 %277)
  store i32 0, i32* %20, align 4
  br label %279

279:                                              ; preds = %290, %275
  %280 = load i32, i32* %20, align 4
  %281 = icmp slt i32 %280, 10
  br i1 %281, label %282, label %293

282:                                              ; preds = %279
  %283 = call i32* (...) @fnvlist_alloc()
  store i32* %283, i32** %21, align 8
  %284 = load i32*, i32** %21, align 8
  %285 = load i32*, i32** @nvl, align 8
  %286 = call i32 @fnvlist_add_nvlist(i32* %284, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %285)
  %287 = load i32*, i32** @nvl, align 8
  %288 = call i32 @fnvlist_free(i32* %287)
  %289 = load i32*, i32** %21, align 8
  store i32* %289, i32** @nvl, align 8
  br label %290

290:                                              ; preds = %282
  %291 = load i32, i32* %20, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %20, align 4
  br label %279

293:                                              ; preds = %279
  %294 = load i32, i32* @B_TRUE, align 4
  %295 = load i32, i32* @B_TRUE, align 4
  %296 = call i32 @test(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.45, i64 0, i64 0), i32 %294, i32 %295)
  store i32 0, i32* %22, align 4
  br label %297

297:                                              ; preds = %308, %293
  %298 = load i32, i32* %22, align 4
  %299 = icmp slt i32 %298, 90
  br i1 %299, label %300, label %311

300:                                              ; preds = %297
  %301 = call i32* (...) @fnvlist_alloc()
  store i32* %301, i32** %23, align 8
  %302 = load i32*, i32** %23, align 8
  %303 = load i32*, i32** @nvl, align 8
  %304 = call i32 @fnvlist_add_nvlist(i32* %302, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %303)
  %305 = load i32*, i32** @nvl, align 8
  %306 = call i32 @fnvlist_free(i32* %305)
  %307 = load i32*, i32** %23, align 8
  store i32* %307, i32** @nvl, align 8
  br label %308

308:                                              ; preds = %300
  %309 = load i32, i32* %22, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %22, align 4
  br label %297

311:                                              ; preds = %297
  %312 = load i32, i32* @B_FALSE, align 4
  %313 = load i32, i32* @B_FALSE, align 4
  %314 = call i32 @test(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.46, i64 0, i64 0), i32 %312, i32 %313)
  %315 = load i8*, i8** %3, align 8
  %316 = call i32 @free(i8* %315)
  %317 = load i32*, i32** @nvl, align 8
  %318 = call i32 @fnvlist_free(i32* %317)
  ret void
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i32 @fnvlist_add_boolean(i32*, i8*) #1

declare dso_local i32 @test(i8*, i32, i32) #1

declare dso_local i32 @fnvlist_add_boolean_value(i32*, i8*, i32) #1

declare dso_local i32 @fnvlist_add_byte(i32*, i8*, i32) #1

declare dso_local i32 @fnvlist_add_int8(i32*, i8*, i32) #1

declare dso_local i32 @fnvlist_add_uint8(i32*, i8*, i32) #1

declare dso_local i32 @fnvlist_add_int16(i32*, i8*, i32) #1

declare dso_local i32 @fnvlist_add_uint16(i32*, i8*, i32) #1

declare dso_local i32 @fnvlist_add_int32(i32*, i8*, i32) #1

declare dso_local i32 @fnvlist_add_uint32(i32*, i8*, i32) #1

declare dso_local i32 @fnvlist_add_int64(i32*, i8*, i32) #1

declare dso_local i32 @fnvlist_add_uint64(i32*, i8*, i32) #1

declare dso_local i32 @fnvlist_add_string(i32*, i8*, i8*) #1

declare dso_local i32 @fnvlist_add_nvlist(i32*, i8*, i32*) #1

declare dso_local i32 @fnvlist_free(i32*) #1

declare dso_local i32 @fnvlist_add_boolean_array(i32*, i8*, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fnvlist_add_byte_array(i32*, i8*, i32*, i32) #1

declare dso_local i32 @fnvlist_add_int8_array(i32*, i8*, i32*, i32) #1

declare dso_local i32 @fnvlist_add_uint8_array(i32*, i8*, i32*, i32) #1

declare dso_local i32 @fnvlist_add_int16_array(i32*, i8*, i32*, i32) #1

declare dso_local i32 @fnvlist_add_uint16_array(i32*, i8*, i32*, i32) #1

declare dso_local i32 @fnvlist_add_int32_array(i32*, i8*, i32*, i32) #1

declare dso_local i32 @fnvlist_add_uint32_array(i32*, i8*, i32*, i32) #1

declare dso_local i32 @fnvlist_add_int64_array(i32*, i8*, i32*, i32) #1

declare dso_local i32 @fnvlist_add_uint64_array(i32*, i8*, i32*, i32) #1

declare dso_local i32 @fnvlist_add_string_array(i32*, i8*, i8**, i32) #1

declare dso_local i32 @fnvlist_add_nvlist_array(i32*, i8*, i32**, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
