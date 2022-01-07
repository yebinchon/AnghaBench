; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_RtlComputePrivatizedDllName_U.c_test_dllnames.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_RtlComputePrivatizedDllName_U.c_test_dllnames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i32] [i32 107, i32 101, i32 114, i32 110, i32 101, i32 108, i32 51, i32 50, i32 46, i32 100, i32 108, i32 108, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"0x%lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i32] [i32 107, i32 101, i32 114, i32 110, i32 101, i32 108, i32 51, i32 50, i32 0], align 4
@.str.3 = private unnamed_addr constant [13 x i32] [i32 107, i32 101, i32 114, i32 110, i32 101, i32 108, i32 51, i32 50, i32 46, i32 68, i32 76, i32 76, i32 0], align 4
@.str.4 = private unnamed_addr constant [17 x i32] [i32 107, i32 101, i32 114, i32 110, i32 101, i32 108, i32 51, i32 50, i32 46, i32 100, i32 108, i32 108, i32 46, i32 100, i32 108, i32 108, i32 0], align 4
@.str.5 = private unnamed_addr constant [17 x i32] [i32 107, i32 101, i32 114, i32 110, i32 101, i32 108, i32 51, i32 50, i32 46, i32 100, i32 108, i32 108, i32 46, i32 101, i32 120, i32 101, i32 0], align 4
@.str.6 = private unnamed_addr constant [10 x i32] [i32 107, i32 101, i32 114, i32 110, i32 101, i32 108, i32 51, i32 50, i32 46, i32 0], align 4
@.str.7 = private unnamed_addr constant [10 x i32] [i32 46, i32 107, i32 101, i32 114, i32 110, i32 101, i32 108, i32 51, i32 50, i32 0], align 4
@.str.8 = private unnamed_addr constant [14 x i32] [i32 46, i32 107, i32 101, i32 114, i32 110, i32 101, i32 108, i32 51, i32 50, i32 46, i32 68, i32 76, i32 76, i32 0], align 4
@.str.9 = private unnamed_addr constant [11 x i32] [i32 46, i32 46, i32 107, i32 101, i32 114, i32 110, i32 101, i32 108, i32 51, i32 50, i32 0], align 4
@.str.10 = private unnamed_addr constant [11 x i32] [i32 46, i32 107, i32 101, i32 114, i32 110, i32 101, i32 108, i32 51, i32 50, i32 46, i32 0], align 4
@.str.11 = private unnamed_addr constant [18 x i32] [i32 116, i32 101, i32 115, i32 116, i32 92, i32 107, i32 101, i32 114, i32 110, i32 101, i32 108, i32 51, i32 50, i32 46, i32 100, i32 108, i32 108, i32 0], align 4
@.str.12 = private unnamed_addr constant [18 x i32] [i32 116, i32 101, i32 115, i32 116, i32 47, i32 107, i32 101, i32 114, i32 110, i32 101, i32 108, i32 51, i32 50, i32 46, i32 100, i32 108, i32 108, i32 0], align 4
@.str.13 = private unnamed_addr constant [18 x i32] [i32 116, i32 101, i32 115, i32 116, i32 46, i32 100, i32 108, i32 108, i32 47, i32 107, i32 101, i32 114, i32 110, i32 101, i32 108, i32 51, i32 50, i32 0], align 4
@.str.14 = private unnamed_addr constant [18 x i32] [i32 116, i32 101, i32 115, i32 116, i32 46, i32 100, i32 108, i32 108, i32 92, i32 107, i32 101, i32 114, i32 110, i32 101, i32 108, i32 51, i32 50, i32 0], align 4
@.str.15 = private unnamed_addr constant [3 x i32] [i32 47, i32 47, i32 0], align 4
@.str.16 = private unnamed_addr constant [5 x i32] [i32 46, i32 68, i32 76, i32 76, i32 0], align 4
@.str.17 = private unnamed_addr constant [2 x i32] [i32 92, i32 0], align 4
@.str.18 = private unnamed_addr constant [3 x i32] [i32 92, i32 92, i32 0], align 4
@.str.19 = private unnamed_addr constant [47 x i8] c"Allowing bug found in windows' implementation\0A\00", align 1
@.str.20 = private unnamed_addr constant [6 x i32] [i32 92, i32 46, i32 68, i32 76, i32 76, i32 0], align 4
@.str.21 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_dllnames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_dllnames() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_10__, align 4
  %5 = alloca %struct.TYPE_10__, align 4
  %6 = alloca %struct.TYPE_10__, align 4
  %7 = alloca i64, align 8
  %8 = load i32, i32* @MAX_PATH, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %1, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %2, align 8
  %12 = load i32, i32* @MAX_PATH, align 4
  %13 = zext i32 %12 to i64
  %14 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %3, align 8
  %15 = mul nuw i64 4, %9
  %16 = trunc i64 %15 to i32
  %17 = call i32 @RtlInitEmptyUnicodeString(%struct.TYPE_10__* %4, i32* %11, i32 %16)
  %18 = mul nuw i64 4, %13
  %19 = trunc i64 %18 to i32
  %20 = call i32 @RtlInitEmptyUnicodeString(%struct.TYPE_10__* %5, i32* %14, i32 %19)
  %21 = call i32 @RtlInitUnicodeString(%struct.TYPE_10__* %6, i8* bitcast ([13 x i32]* @.str to i8*))
  %22 = call i64 @RtlComputePrivatizedDllName_U(%struct.TYPE_10__* %6, %struct.TYPE_10__* %4, %struct.TYPE_10__* %5)
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @STATUS_SUCCESS, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %27)
  %29 = call i32 @ok_strings(%struct.TYPE_10__* %4, %struct.TYPE_10__* %5, i8* bitcast ([13 x i32]* @.str to i8*))
  %30 = mul nuw i64 4, %9
  %31 = trunc i64 %30 to i32
  %32 = call i32 @cleanup(%struct.TYPE_10__* %4, i32* %11, i32 %31)
  %33 = mul nuw i64 4, %13
  %34 = trunc i64 %33 to i32
  %35 = call i32 @cleanup(%struct.TYPE_10__* %5, i32* %14, i32 %34)
  %36 = call i32 @RtlInitUnicodeString(%struct.TYPE_10__* %6, i8* bitcast ([9 x i32]* @.str.2 to i8*))
  %37 = call i64 @RtlComputePrivatizedDllName_U(%struct.TYPE_10__* %6, %struct.TYPE_10__* %4, %struct.TYPE_10__* %5)
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @STATUS_SUCCESS, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %42)
  %44 = call i32 @ok_strings(%struct.TYPE_10__* %4, %struct.TYPE_10__* %5, i8* bitcast ([13 x i32]* @.str.3 to i8*))
  %45 = mul nuw i64 4, %9
  %46 = trunc i64 %45 to i32
  %47 = call i32 @cleanup(%struct.TYPE_10__* %4, i32* %11, i32 %46)
  %48 = mul nuw i64 4, %13
  %49 = trunc i64 %48 to i32
  %50 = call i32 @cleanup(%struct.TYPE_10__* %5, i32* %14, i32 %49)
  %51 = call i32 @RtlInitUnicodeString(%struct.TYPE_10__* %6, i8* bitcast ([17 x i32]* @.str.4 to i8*))
  %52 = call i64 @RtlComputePrivatizedDllName_U(%struct.TYPE_10__* %6, %struct.TYPE_10__* %4, %struct.TYPE_10__* %5)
  store i64 %52, i64* %7, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* @STATUS_SUCCESS, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @ok(i32 %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %57)
  %59 = call i32 @ok_strings(%struct.TYPE_10__* %4, %struct.TYPE_10__* %5, i8* bitcast ([17 x i32]* @.str.4 to i8*))
  %60 = mul nuw i64 4, %9
  %61 = trunc i64 %60 to i32
  %62 = call i32 @cleanup(%struct.TYPE_10__* %4, i32* %11, i32 %61)
  %63 = mul nuw i64 4, %13
  %64 = trunc i64 %63 to i32
  %65 = call i32 @cleanup(%struct.TYPE_10__* %5, i32* %14, i32 %64)
  %66 = call i32 @RtlInitUnicodeString(%struct.TYPE_10__* %6, i8* bitcast ([17 x i32]* @.str.5 to i8*))
  %67 = call i64 @RtlComputePrivatizedDllName_U(%struct.TYPE_10__* %6, %struct.TYPE_10__* %4, %struct.TYPE_10__* %5)
  store i64 %67, i64* %7, align 8
  %68 = load i64, i64* %7, align 8
  %69 = load i64, i64* @STATUS_SUCCESS, align 8
  %70 = icmp eq i64 %68, %69
  %71 = zext i1 %70 to i32
  %72 = load i64, i64* %7, align 8
  %73 = call i32 @ok(i32 %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %72)
  %74 = call i32 @ok_strings(%struct.TYPE_10__* %4, %struct.TYPE_10__* %5, i8* bitcast ([17 x i32]* @.str.5 to i8*))
  %75 = mul nuw i64 4, %9
  %76 = trunc i64 %75 to i32
  %77 = call i32 @cleanup(%struct.TYPE_10__* %4, i32* %11, i32 %76)
  %78 = mul nuw i64 4, %13
  %79 = trunc i64 %78 to i32
  %80 = call i32 @cleanup(%struct.TYPE_10__* %5, i32* %14, i32 %79)
  %81 = call i32 @RtlInitUnicodeString(%struct.TYPE_10__* %6, i8* bitcast ([10 x i32]* @.str.6 to i8*))
  %82 = call i64 @RtlComputePrivatizedDllName_U(%struct.TYPE_10__* %6, %struct.TYPE_10__* %4, %struct.TYPE_10__* %5)
  store i64 %82, i64* %7, align 8
  %83 = load i64, i64* %7, align 8
  %84 = load i64, i64* @STATUS_SUCCESS, align 8
  %85 = icmp eq i64 %83, %84
  %86 = zext i1 %85 to i32
  %87 = load i64, i64* %7, align 8
  %88 = call i32 @ok(i32 %86, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %87)
  %89 = call i32 @ok_strings(%struct.TYPE_10__* %4, %struct.TYPE_10__* %5, i8* bitcast ([10 x i32]* @.str.6 to i8*))
  %90 = mul nuw i64 4, %9
  %91 = trunc i64 %90 to i32
  %92 = call i32 @cleanup(%struct.TYPE_10__* %4, i32* %11, i32 %91)
  %93 = mul nuw i64 4, %13
  %94 = trunc i64 %93 to i32
  %95 = call i32 @cleanup(%struct.TYPE_10__* %5, i32* %14, i32 %94)
  %96 = call i32 @RtlInitUnicodeString(%struct.TYPE_10__* %6, i8* bitcast ([10 x i32]* @.str.7 to i8*))
  %97 = call i64 @RtlComputePrivatizedDllName_U(%struct.TYPE_10__* %6, %struct.TYPE_10__* %4, %struct.TYPE_10__* %5)
  store i64 %97, i64* %7, align 8
  %98 = load i64, i64* %7, align 8
  %99 = load i64, i64* @STATUS_SUCCESS, align 8
  %100 = icmp eq i64 %98, %99
  %101 = zext i1 %100 to i32
  %102 = load i64, i64* %7, align 8
  %103 = call i32 @ok(i32 %101, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %102)
  %104 = call i32 @ok_strings(%struct.TYPE_10__* %4, %struct.TYPE_10__* %5, i8* bitcast ([14 x i32]* @.str.8 to i8*))
  %105 = mul nuw i64 4, %9
  %106 = trunc i64 %105 to i32
  %107 = call i32 @cleanup(%struct.TYPE_10__* %4, i32* %11, i32 %106)
  %108 = mul nuw i64 4, %13
  %109 = trunc i64 %108 to i32
  %110 = call i32 @cleanup(%struct.TYPE_10__* %5, i32* %14, i32 %109)
  %111 = call i32 @RtlInitUnicodeString(%struct.TYPE_10__* %6, i8* bitcast ([11 x i32]* @.str.9 to i8*))
  %112 = call i64 @RtlComputePrivatizedDllName_U(%struct.TYPE_10__* %6, %struct.TYPE_10__* %4, %struct.TYPE_10__* %5)
  store i64 %112, i64* %7, align 8
  %113 = load i64, i64* %7, align 8
  %114 = load i64, i64* @STATUS_SUCCESS, align 8
  %115 = icmp eq i64 %113, %114
  %116 = zext i1 %115 to i32
  %117 = load i64, i64* %7, align 8
  %118 = call i32 @ok(i32 %116, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %117)
  %119 = call i32 @ok_strings(%struct.TYPE_10__* %4, %struct.TYPE_10__* %5, i8* bitcast ([11 x i32]* @.str.9 to i8*))
  %120 = mul nuw i64 4, %9
  %121 = trunc i64 %120 to i32
  %122 = call i32 @cleanup(%struct.TYPE_10__* %4, i32* %11, i32 %121)
  %123 = mul nuw i64 4, %13
  %124 = trunc i64 %123 to i32
  %125 = call i32 @cleanup(%struct.TYPE_10__* %5, i32* %14, i32 %124)
  %126 = call i32 @RtlInitUnicodeString(%struct.TYPE_10__* %6, i8* bitcast ([11 x i32]* @.str.10 to i8*))
  %127 = call i64 @RtlComputePrivatizedDllName_U(%struct.TYPE_10__* %6, %struct.TYPE_10__* %4, %struct.TYPE_10__* %5)
  store i64 %127, i64* %7, align 8
  %128 = load i64, i64* %7, align 8
  %129 = load i64, i64* @STATUS_SUCCESS, align 8
  %130 = icmp eq i64 %128, %129
  %131 = zext i1 %130 to i32
  %132 = load i64, i64* %7, align 8
  %133 = call i32 @ok(i32 %131, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %132)
  %134 = call i32 @ok_strings(%struct.TYPE_10__* %4, %struct.TYPE_10__* %5, i8* bitcast ([11 x i32]* @.str.10 to i8*))
  %135 = mul nuw i64 4, %9
  %136 = trunc i64 %135 to i32
  %137 = call i32 @cleanup(%struct.TYPE_10__* %4, i32* %11, i32 %136)
  %138 = mul nuw i64 4, %13
  %139 = trunc i64 %138 to i32
  %140 = call i32 @cleanup(%struct.TYPE_10__* %5, i32* %14, i32 %139)
  %141 = call i32 @RtlInitUnicodeString(%struct.TYPE_10__* %6, i8* bitcast ([18 x i32]* @.str.11 to i8*))
  %142 = call i64 @RtlComputePrivatizedDllName_U(%struct.TYPE_10__* %6, %struct.TYPE_10__* %4, %struct.TYPE_10__* %5)
  store i64 %142, i64* %7, align 8
  %143 = load i64, i64* %7, align 8
  %144 = load i64, i64* @STATUS_SUCCESS, align 8
  %145 = icmp eq i64 %143, %144
  %146 = zext i1 %145 to i32
  %147 = load i64, i64* %7, align 8
  %148 = call i32 @ok(i32 %146, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %147)
  %149 = call i32 @ok_strings(%struct.TYPE_10__* %4, %struct.TYPE_10__* %5, i8* bitcast ([13 x i32]* @.str to i8*))
  %150 = mul nuw i64 4, %9
  %151 = trunc i64 %150 to i32
  %152 = call i32 @cleanup(%struct.TYPE_10__* %4, i32* %11, i32 %151)
  %153 = mul nuw i64 4, %13
  %154 = trunc i64 %153 to i32
  %155 = call i32 @cleanup(%struct.TYPE_10__* %5, i32* %14, i32 %154)
  %156 = call i32 @RtlInitUnicodeString(%struct.TYPE_10__* %6, i8* bitcast ([18 x i32]* @.str.12 to i8*))
  %157 = call i64 @RtlComputePrivatizedDllName_U(%struct.TYPE_10__* %6, %struct.TYPE_10__* %4, %struct.TYPE_10__* %5)
  store i64 %157, i64* %7, align 8
  %158 = load i64, i64* %7, align 8
  %159 = load i64, i64* @STATUS_SUCCESS, align 8
  %160 = icmp eq i64 %158, %159
  %161 = zext i1 %160 to i32
  %162 = load i64, i64* %7, align 8
  %163 = call i32 @ok(i32 %161, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %162)
  %164 = call i32 @ok_strings(%struct.TYPE_10__* %4, %struct.TYPE_10__* %5, i8* bitcast ([13 x i32]* @.str to i8*))
  %165 = mul nuw i64 4, %9
  %166 = trunc i64 %165 to i32
  %167 = call i32 @cleanup(%struct.TYPE_10__* %4, i32* %11, i32 %166)
  %168 = mul nuw i64 4, %13
  %169 = trunc i64 %168 to i32
  %170 = call i32 @cleanup(%struct.TYPE_10__* %5, i32* %14, i32 %169)
  %171 = call i32 @RtlInitUnicodeString(%struct.TYPE_10__* %6, i8* bitcast ([18 x i32]* @.str.13 to i8*))
  %172 = call i64 @RtlComputePrivatizedDllName_U(%struct.TYPE_10__* %6, %struct.TYPE_10__* %4, %struct.TYPE_10__* %5)
  store i64 %172, i64* %7, align 8
  %173 = load i64, i64* %7, align 8
  %174 = load i64, i64* @STATUS_SUCCESS, align 8
  %175 = icmp eq i64 %173, %174
  %176 = zext i1 %175 to i32
  %177 = load i64, i64* %7, align 8
  %178 = call i32 @ok(i32 %176, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %177)
  %179 = call i32 @ok_strings(%struct.TYPE_10__* %4, %struct.TYPE_10__* %5, i8* bitcast ([13 x i32]* @.str.3 to i8*))
  %180 = mul nuw i64 4, %9
  %181 = trunc i64 %180 to i32
  %182 = call i32 @cleanup(%struct.TYPE_10__* %4, i32* %11, i32 %181)
  %183 = mul nuw i64 4, %13
  %184 = trunc i64 %183 to i32
  %185 = call i32 @cleanup(%struct.TYPE_10__* %5, i32* %14, i32 %184)
  %186 = call i32 @RtlInitUnicodeString(%struct.TYPE_10__* %6, i8* bitcast ([18 x i32]* @.str.14 to i8*))
  %187 = call i64 @RtlComputePrivatizedDllName_U(%struct.TYPE_10__* %6, %struct.TYPE_10__* %4, %struct.TYPE_10__* %5)
  store i64 %187, i64* %7, align 8
  %188 = load i64, i64* %7, align 8
  %189 = load i64, i64* @STATUS_SUCCESS, align 8
  %190 = icmp eq i64 %188, %189
  %191 = zext i1 %190 to i32
  %192 = load i64, i64* %7, align 8
  %193 = call i32 @ok(i32 %191, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %192)
  %194 = call i32 @ok_strings(%struct.TYPE_10__* %4, %struct.TYPE_10__* %5, i8* bitcast ([13 x i32]* @.str.3 to i8*))
  %195 = mul nuw i64 4, %9
  %196 = trunc i64 %195 to i32
  %197 = call i32 @cleanup(%struct.TYPE_10__* %4, i32* %11, i32 %196)
  %198 = mul nuw i64 4, %13
  %199 = trunc i64 %198 to i32
  %200 = call i32 @cleanup(%struct.TYPE_10__* %5, i32* %14, i32 %199)
  %201 = call i32 @RtlInitUnicodeString(%struct.TYPE_10__* %6, i8* bitcast ([3 x i32]* @.str.15 to i8*))
  %202 = call i64 @RtlComputePrivatizedDllName_U(%struct.TYPE_10__* %6, %struct.TYPE_10__* %4, %struct.TYPE_10__* %5)
  store i64 %202, i64* %7, align 8
  %203 = load i64, i64* %7, align 8
  %204 = load i64, i64* @STATUS_SUCCESS, align 8
  %205 = icmp eq i64 %203, %204
  %206 = zext i1 %205 to i32
  %207 = load i64, i64* %7, align 8
  %208 = call i32 @ok(i32 %206, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %207)
  %209 = call i32 @ok_strings(%struct.TYPE_10__* %4, %struct.TYPE_10__* %5, i8* bitcast ([5 x i32]* @.str.16 to i8*))
  %210 = mul nuw i64 4, %9
  %211 = trunc i64 %210 to i32
  %212 = call i32 @cleanup(%struct.TYPE_10__* %4, i32* %11, i32 %211)
  %213 = mul nuw i64 4, %13
  %214 = trunc i64 %213 to i32
  %215 = call i32 @cleanup(%struct.TYPE_10__* %5, i32* %14, i32 %214)
  %216 = call i32 @RtlInitUnicodeString(%struct.TYPE_10__* %6, i8* bitcast ([2 x i32]* @.str.17 to i8*))
  %217 = call i64 @RtlComputePrivatizedDllName_U(%struct.TYPE_10__* %6, %struct.TYPE_10__* %4, %struct.TYPE_10__* %5)
  store i64 %217, i64* %7, align 8
  %218 = load i64, i64* %7, align 8
  %219 = load i64, i64* @STATUS_SUCCESS, align 8
  %220 = icmp eq i64 %218, %219
  %221 = zext i1 %220 to i32
  %222 = load i64, i64* %7, align 8
  %223 = call i32 @ok(i32 %221, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %222)
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = call i64 @wcsstr(i32 %225, i8* bitcast ([3 x i32]* @.str.18 to i8*))
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %0
  %229 = call i32 @trace(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.19, i64 0, i64 0))
  %230 = call i32 @ok_strings(%struct.TYPE_10__* %4, %struct.TYPE_10__* %5, i8* bitcast ([6 x i32]* @.str.20 to i8*))
  br label %233

231:                                              ; preds = %0
  %232 = call i32 @ok_strings(%struct.TYPE_10__* %4, %struct.TYPE_10__* %5, i8* bitcast ([5 x i32]* @.str.16 to i8*))
  br label %233

233:                                              ; preds = %231, %228
  %234 = mul nuw i64 4, %9
  %235 = trunc i64 %234 to i32
  %236 = call i32 @cleanup(%struct.TYPE_10__* %4, i32* %11, i32 %235)
  %237 = mul nuw i64 4, %13
  %238 = trunc i64 %237 to i32
  %239 = call i32 @cleanup(%struct.TYPE_10__* %5, i32* %14, i32 %238)
  %240 = call i32 @RtlInitUnicodeString(%struct.TYPE_10__* %6, i8* bitcast ([1 x i32]* @.str.21 to i8*))
  %241 = call i64 @RtlComputePrivatizedDllName_U(%struct.TYPE_10__* %6, %struct.TYPE_10__* %4, %struct.TYPE_10__* %5)
  store i64 %241, i64* %7, align 8
  %242 = load i64, i64* %7, align 8
  %243 = load i64, i64* @STATUS_SUCCESS, align 8
  %244 = icmp eq i64 %242, %243
  %245 = zext i1 %244 to i32
  %246 = load i64, i64* %7, align 8
  %247 = call i32 @ok(i32 %245, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %246)
  %248 = call i32 @ok_strings(%struct.TYPE_10__* %4, %struct.TYPE_10__* %5, i8* bitcast ([5 x i32]* @.str.16 to i8*))
  %249 = mul nuw i64 4, %9
  %250 = trunc i64 %249 to i32
  %251 = call i32 @cleanup(%struct.TYPE_10__* %4, i32* %11, i32 %250)
  %252 = mul nuw i64 4, %13
  %253 = trunc i64 %252 to i32
  %254 = call i32 @cleanup(%struct.TYPE_10__* %5, i32* %14, i32 %253)
  %255 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %255)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @RtlInitEmptyUnicodeString(%struct.TYPE_10__*, i32*, i32) #2

declare dso_local i32 @RtlInitUnicodeString(%struct.TYPE_10__*, i8*) #2

declare dso_local i64 @RtlComputePrivatizedDllName_U(%struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*) #2

declare dso_local i32 @ok(i32, i8*, i64) #2

declare dso_local i32 @ok_strings(%struct.TYPE_10__*, %struct.TYPE_10__*, i8*) #2

declare dso_local i32 @cleanup(%struct.TYPE_10__*, i32*, i32) #2

declare dso_local i64 @wcsstr(i32, i8*) #2

declare dso_local i32 @trace(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
