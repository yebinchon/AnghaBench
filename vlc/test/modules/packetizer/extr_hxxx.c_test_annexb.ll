; ModuleID = '/home/carl/AnghaBench/vlc/test/modules/packetizer/extr_hxxx.c_test_annexb.c'
source_filename = "/home/carl/AnghaBench/vlc/test/modules/packetizer/extr_hxxx.c_test_annexb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_annexb.test1_annexbdata = private unnamed_addr constant [30 x i32] [i32 0, i32 0, i32 0, i32 1, i32 85, i32 85, i32 85, i32 85, i32 85, i32 0, i32 0, i32 1, i32 34, i32 34, i32 0, i32 0, i32 0, i32 1, i32 17, i32 0, i32 0, i32 1, i32 17, i32 0, i32 0, i32 0, i32 1, i32 51, i32 51, i32 51], align 16
@__const.test_annexb.test1_avcdata1 = private unnamed_addr constant [17 x i32] [i32 5, i32 85, i32 85, i32 85, i32 85, i32 85, i32 2, i32 34, i32 34, i32 1, i32 17, i32 1, i32 17, i32 3, i32 51, i32 51, i32 51], align 16
@__const.test_annexb.test1_avcdata2 = private unnamed_addr constant [22 x i32] [i32 0, i32 5, i32 85, i32 85, i32 85, i32 85, i32 85, i32 0, i32 2, i32 34, i32 34, i32 0, i32 1, i32 17, i32 0, i32 1, i32 17, i32 0, i32 3, i32 51, i32 51, i32 51], align 16
@__const.test_annexb.test1_avcdata4 = private unnamed_addr constant [32 x i32] [i32 0, i32 0, i32 0, i32 5, i32 85, i32 85, i32 85, i32 85, i32 85, i32 0, i32 0, i32 0, i32 2, i32 34, i32 34, i32 0, i32 0, i32 0, i32 1, i32 17, i32 0, i32 0, i32 0, i32 1, i32 17, i32 0, i32 0, i32 0, i32 3, i32 51, i32 51, i32 51], align 16
@__const.test_annexb.test2_avcdata1 = private unnamed_addr constant [6 x i32] [i32 5, i32 85, i32 85, i32 85, i32 85, i32 85], align 16
@__const.test_annexb.test2_avcdata2 = private unnamed_addr constant [7 x i32] [i32 0, i32 5, i32 85, i32 85, i32 85, i32 85, i32 85], align 16
@__const.test_annexb.test3_annexbdata = private unnamed_addr constant [4 x i32] [i32 0, i32 0, i32 1, i32 17], align 16
@__const.test_annexb.test3_avcdata1 = private unnamed_addr constant [2 x i32] [i32 1, i32 17], align 4
@__const.test_annexb.test3_avcdata2 = private unnamed_addr constant [3 x i32] [i32 0, i32 1, i32 17], align 4
@__const.test_annexb.test3_avcdata4 = private unnamed_addr constant [5 x i32] [i32 0, i32 0, i32 0, i32 1, i32 17], align 16
@__const.test_annexb.test4_annexbdata = private unnamed_addr constant [3 x i32] [i32 0, i32 0, i32 1], align 4
@__const.test_annexb.test5_avcdata1 = private unnamed_addr constant [5 x i32] [i32 1, i32 17, i32 2, i32 34, i32 34], align 16
@__const.test_annexb.test5_avcdata2 = private unnamed_addr constant [7 x i32] [i32 0, i32 1, i32 17, i32 0, i32 2, i32 34, i32 34], align 16
@__const.test_annexb.test6_avcdata1 = private unnamed_addr constant [4 x i32] [i32 1, i32 17, i32 0, i32 0], align 16
@__const.test_annexb.test6_avcdata2 = private unnamed_addr constant [7 x i32] [i32 0, i32 1, i32 17, i32 0, i32 0, i32 0, i32 0], align 16
@__const.test_annexb.test7_annexbdata = private unnamed_addr constant [4 x i32] [i32 0, i32 0, i32 0, i32 1], align 16
@.str = private unnamed_addr constant [15 x i8] c"empty nal test\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"single nal test\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"single nal test, startcode 3\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"4 bytes prefixed nal only (4 prefix optz)\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"mixed nal set\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"startcode repeat / empty nal\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"IT mixed nal set\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"IT single nal test\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"IT single nal test, startcode 3\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"IT empty nal test\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"IT 4 bytes prefixed nal only (4 prefix optz)\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"IT empty nal\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"\0ATEST 8 borkage test\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_annexb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_annexb() #0 {
  %1 = alloca [3 x i32*], align 16
  %2 = alloca [3 x i64], align 16
  %3 = alloca [30 x i32], align 16
  %4 = alloca [17 x i32], align 16
  %5 = alloca [22 x i32], align 16
  %6 = alloca [32 x i32], align 16
  %7 = alloca [9 x i32], align 16
  %8 = alloca [6 x i32], align 16
  %9 = alloca [7 x i32], align 16
  %10 = alloca [9 x i32], align 16
  %11 = alloca [4 x i32], align 16
  %12 = alloca [2 x i32], align 4
  %13 = alloca [3 x i32], align 4
  %14 = alloca [5 x i32], align 16
  %15 = alloca [3 x i32], align 4
  %16 = alloca [1 x i32], align 4
  %17 = alloca [2 x i32], align 4
  %18 = alloca [4 x i32], align 16
  %19 = alloca [11 x i32], align 16
  %20 = alloca [5 x i32], align 16
  %21 = alloca [7 x i32], align 16
  %22 = alloca [11 x i32], align 16
  %23 = alloca [10 x i32], align 16
  %24 = alloca [4 x i32], align 16
  %25 = alloca [7 x i32], align 16
  %26 = alloca [13 x i32], align 16
  %27 = alloca [4 x i32], align 16
  %28 = alloca [1 x i32], align 4
  %29 = alloca [2 x i32], align 4
  %30 = alloca [4 x i32], align 16
  %31 = bitcast [30 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %31, i8* align 16 bitcast ([30 x i32]* @__const.test_annexb.test1_annexbdata to i8*), i64 120, i1 false)
  %32 = bitcast [17 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %32, i8* align 16 bitcast ([17 x i32]* @__const.test_annexb.test1_avcdata1 to i8*), i64 68, i1 false)
  %33 = bitcast [22 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %33, i8* align 16 bitcast ([22 x i32]* @__const.test_annexb.test1_avcdata2 to i8*), i64 88, i1 false)
  %34 = bitcast [32 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %34, i8* align 16 bitcast ([32 x i32]* @__const.test_annexb.test1_avcdata4 to i8*), i64 128, i1 false)
  %35 = bitcast [9 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %35, i8 0, i64 36, i1 false)
  %36 = bitcast i8* %35 to [9 x i32]*
  %37 = getelementptr inbounds [9 x i32], [9 x i32]* %36, i32 0, i32 3
  store i32 1, i32* %37, align 4
  %38 = getelementptr inbounds [9 x i32], [9 x i32]* %36, i32 0, i32 4
  store i32 85, i32* %38, align 16
  %39 = getelementptr inbounds [9 x i32], [9 x i32]* %36, i32 0, i32 5
  store i32 85, i32* %39, align 4
  %40 = getelementptr inbounds [9 x i32], [9 x i32]* %36, i32 0, i32 6
  store i32 85, i32* %40, align 8
  %41 = getelementptr inbounds [9 x i32], [9 x i32]* %36, i32 0, i32 7
  store i32 85, i32* %41, align 4
  %42 = getelementptr inbounds [9 x i32], [9 x i32]* %36, i32 0, i32 8
  store i32 85, i32* %42, align 16
  %43 = bitcast [6 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %43, i8* align 16 bitcast ([6 x i32]* @__const.test_annexb.test2_avcdata1 to i8*), i64 24, i1 false)
  %44 = bitcast [7 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %44, i8* align 16 bitcast ([7 x i32]* @__const.test_annexb.test2_avcdata2 to i8*), i64 28, i1 false)
  %45 = bitcast [9 x i32]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %45, i8 0, i64 36, i1 false)
  %46 = bitcast i8* %45 to [9 x i32]*
  %47 = getelementptr inbounds [9 x i32], [9 x i32]* %46, i32 0, i32 3
  store i32 5, i32* %47, align 4
  %48 = getelementptr inbounds [9 x i32], [9 x i32]* %46, i32 0, i32 4
  store i32 85, i32* %48, align 16
  %49 = getelementptr inbounds [9 x i32], [9 x i32]* %46, i32 0, i32 5
  store i32 85, i32* %49, align 4
  %50 = getelementptr inbounds [9 x i32], [9 x i32]* %46, i32 0, i32 6
  store i32 85, i32* %50, align 8
  %51 = getelementptr inbounds [9 x i32], [9 x i32]* %46, i32 0, i32 7
  store i32 85, i32* %51, align 4
  %52 = getelementptr inbounds [9 x i32], [9 x i32]* %46, i32 0, i32 8
  store i32 85, i32* %52, align 16
  %53 = bitcast [4 x i32]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %53, i8* align 16 bitcast ([4 x i32]* @__const.test_annexb.test3_annexbdata to i8*), i64 16, i1 false)
  %54 = bitcast [2 x i32]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %54, i8* align 4 bitcast ([2 x i32]* @__const.test_annexb.test3_avcdata1 to i8*), i64 8, i1 false)
  %55 = bitcast [3 x i32]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %55, i8* align 4 bitcast ([3 x i32]* @__const.test_annexb.test3_avcdata2 to i8*), i64 12, i1 false)
  %56 = bitcast [5 x i32]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %56, i8* align 16 bitcast ([5 x i32]* @__const.test_annexb.test3_avcdata4 to i8*), i64 20, i1 false)
  %57 = bitcast [3 x i32]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %57, i8* align 4 bitcast ([3 x i32]* @__const.test_annexb.test4_annexbdata to i8*), i64 12, i1 false)
  %58 = bitcast [1 x i32]* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %58, i8 0, i64 4, i1 false)
  %59 = bitcast [2 x i32]* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %59, i8 0, i64 8, i1 false)
  %60 = bitcast [4 x i32]* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %60, i8 0, i64 16, i1 false)
  %61 = bitcast [11 x i32]* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %61, i8 0, i64 44, i1 false)
  %62 = bitcast i8* %61 to [11 x i32]*
  %63 = getelementptr inbounds [11 x i32], [11 x i32]* %62, i32 0, i32 3
  store i32 1, i32* %63, align 4
  %64 = getelementptr inbounds [11 x i32], [11 x i32]* %62, i32 0, i32 4
  store i32 17, i32* %64, align 16
  %65 = getelementptr inbounds [11 x i32], [11 x i32]* %62, i32 0, i32 8
  store i32 1, i32* %65, align 16
  %66 = getelementptr inbounds [11 x i32], [11 x i32]* %62, i32 0, i32 9
  store i32 34, i32* %66, align 4
  %67 = getelementptr inbounds [11 x i32], [11 x i32]* %62, i32 0, i32 10
  store i32 34, i32* %67, align 8
  %68 = bitcast [5 x i32]* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %68, i8* align 16 bitcast ([5 x i32]* @__const.test_annexb.test5_avcdata1 to i8*), i64 20, i1 false)
  %69 = bitcast [7 x i32]* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %69, i8* align 16 bitcast ([7 x i32]* @__const.test_annexb.test5_avcdata2 to i8*), i64 28, i1 false)
  %70 = bitcast [11 x i32]* %22 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %70, i8 0, i64 44, i1 false)
  %71 = bitcast i8* %70 to [11 x i32]*
  %72 = getelementptr inbounds [11 x i32], [11 x i32]* %71, i32 0, i32 3
  store i32 1, i32* %72, align 4
  %73 = getelementptr inbounds [11 x i32], [11 x i32]* %71, i32 0, i32 4
  store i32 17, i32* %73, align 16
  %74 = getelementptr inbounds [11 x i32], [11 x i32]* %71, i32 0, i32 8
  store i32 2, i32* %74, align 16
  %75 = getelementptr inbounds [11 x i32], [11 x i32]* %71, i32 0, i32 9
  store i32 34, i32* %75, align 4
  %76 = getelementptr inbounds [11 x i32], [11 x i32]* %71, i32 0, i32 10
  store i32 34, i32* %76, align 8
  %77 = bitcast [10 x i32]* %23 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %77, i8 0, i64 40, i1 false)
  %78 = bitcast i8* %77 to [10 x i32]*
  %79 = getelementptr inbounds [10 x i32], [10 x i32]* %78, i32 0, i32 2
  store i32 1, i32* %79, align 8
  %80 = getelementptr inbounds [10 x i32], [10 x i32]* %78, i32 0, i32 3
  store i32 17, i32* %80, align 4
  %81 = getelementptr inbounds [10 x i32], [10 x i32]* %78, i32 0, i32 6
  store i32 1, i32* %81, align 8
  %82 = getelementptr inbounds [10 x i32], [10 x i32]* %78, i32 0, i32 9
  store i32 1, i32* %82, align 4
  %83 = bitcast [4 x i32]* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %83, i8* align 16 bitcast ([4 x i32]* @__const.test_annexb.test6_avcdata1 to i8*), i64 16, i1 false)
  %84 = bitcast [7 x i32]* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %84, i8* align 16 bitcast ([7 x i32]* @__const.test_annexb.test6_avcdata2 to i8*), i64 28, i1 false)
  %85 = bitcast [13 x i32]* %26 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %85, i8 0, i64 52, i1 false)
  %86 = bitcast i8* %85 to <{ i32, i32, i32, i32, i32, [8 x i32] }>*
  %87 = getelementptr inbounds <{ i32, i32, i32, i32, i32, [8 x i32] }>, <{ i32, i32, i32, i32, i32, [8 x i32] }>* %86, i32 0, i32 3
  store i32 1, i32* %87, align 4
  %88 = getelementptr inbounds <{ i32, i32, i32, i32, i32, [8 x i32] }>, <{ i32, i32, i32, i32, i32, [8 x i32] }>* %86, i32 0, i32 4
  store i32 17, i32* %88, align 16
  %89 = bitcast [4 x i32]* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %89, i8* align 16 bitcast ([4 x i32]* @__const.test_annexb.test7_annexbdata to i8*), i64 16, i1 false)
  %90 = bitcast [1 x i32]* %28 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %90, i8 0, i64 4, i1 false)
  %91 = bitcast [2 x i32]* %29 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %91, i8 0, i64 8, i1 false)
  %92 = bitcast [4 x i32]* %30 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %92, i8 0, i64 16, i1 false)
  %93 = call i32 @runtest(i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 (i32*, i32, i32**, i64*)* @testannexbin)
  %94 = call i32 @runtest(i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 (i32*, i32, i32**, i64*)* @testannexbin)
  %95 = call i32 @runtest(i32 3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 (i32*, i32, i32**, i64*)* @testannexbin)
  %96 = call i32 @runtest(i32 5, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 (i32*, i32, i32**, i64*)* @testannexbin)
  %97 = call i32 @runtest(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 (i32*, i32, i32**, i64*)* @testannexbin)
  %98 = call i32 @runtest(i32 6, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 (i32*, i32, i32**, i64*)* @testannexbin)
  %99 = call i32 @runtest(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 (i32*, i32, i32**, i64*)* @test_iterators)
  %100 = call i32 @runtest(i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 (i32*, i32, i32**, i64*)* @test_iterators)
  %101 = call i32 @runtest(i32 3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 (i32*, i32, i32**, i64*)* @test_iterators)
  %102 = call i32 @runtest(i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 (i32*, i32, i32**, i64*)* @test_iterators)
  %103 = call i32 @runtest(i32 5, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0), i32 (i32*, i32, i32**, i64*)* @test_iterators)
  %104 = call i32 @runtest(i32 6, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 (i32*, i32, i32**, i64*)* @test_iterators)
  %105 = call i32 @runtest(i32 7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32 (i32*, i32, i32**, i64*)* @test_iterators)
  %106 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0))
  %107 = getelementptr inbounds [3 x i64], [3 x i64]* %2, i64 0, i64 0
  store i64 0, i64* %107, align 16
  %108 = getelementptr inbounds [3 x i64], [3 x i64]* %2, i64 0, i64 2
  store i64 1, i64* %108, align 16
  %109 = getelementptr inbounds [3 x i64], [3 x i64]* %2, i64 0, i64 1
  store i64 1, i64* %109, align 8
  %110 = getelementptr inbounds [3 x i32*], [3 x i32*]* %1, i64 0, i64 0
  store i32* null, i32** %110, align 16
  %111 = getelementptr inbounds [1 x i32], [1 x i32]* %28, i64 0, i64 0
  %112 = getelementptr inbounds [3 x i32*], [3 x i32*]* %1, i64 0, i64 2
  store i32* %111, i32** %112, align 16
  %113 = getelementptr inbounds [3 x i32*], [3 x i32*]* %1, i64 0, i64 1
  store i32* %111, i32** %113, align 8
  %114 = getelementptr inbounds [3 x i32*], [3 x i32*]* %1, i64 0, i64 0
  %115 = getelementptr inbounds [3 x i64], [3 x i64]* %2, i64 0, i64 0
  %116 = call i32 @test_iterators(i32* null, i32 0, i32** %114, i64* %115)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @runtest(i32, i8*, i32 (i32*, i32, i32**, i64*)*) #2

declare dso_local i32 @testannexbin(i32*, i32, i32**, i64*) #2

declare dso_local i32 @test_iterators(i32*, i32, i32**, i64*) #2

declare dso_local i32 @printf(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
