; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_registry.c_test_reg_query_value.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_registry.c_test_reg_query_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@test_reg_query_value.expected = internal constant [5 x i8] c"data\00", align 1
@hkey_main = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"subkey\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Expected ERROR_SUCCESS, got %d\0A\00", align 1
@REG_SZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@ERROR_INVALID_HANDLE = common dso_local global i32 0, align 4
@ERROR_BADKEY = common dso_local global i32 0, align 4
@ERROR_ACCESS_DENIED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"Expected ERROR_INVALID_HANDLE or ERROR_BADKEY, got %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Expected 0xdeadbeef, got %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Expected 5, got %d\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [42 x i8] c"Expected ERROR_INVALID_PARAMETER, got %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Expected val to be untouched, got %s\0A\00", align 1
@ERROR_MORE_DATA = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"Expected ERROR_MORE_DATA, got %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Expected 'data', got '%s'\0A\00", align 1
@ERROR_CALL_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [35 x i8] c"RegQueryValueW is not implemented\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"Expected valW to be untouched\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"Got wrong size: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"Got wrong value\0A\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_reg_query_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_reg_query_value() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca [5 x i8], align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @MAX_PATH, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %2, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %3, align 8
  %11 = load i32*, i32** @hkey_main, align 8
  %12 = call i32 @RegCreateKeyA(i32* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32** %1)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @ERROR_SUCCESS, align 4
  %15 = icmp eq i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* %6, align 4
  %18 = call i32 (i32, i8*, ...) @ok(i32 %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = load i32*, i32** %1, align 8
  %20 = load i32, i32* @REG_SZ, align 4
  %21 = call i32 @RegSetValueA(i32* %19, i32* null, i32 %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @ERROR_SUCCESS, align 4
  %24 = icmp eq i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* %6, align 4
  %27 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = call i32 @SetLastError(i32 -559038737)
  %29 = load i32, i32* @MAX_PATH, align 4
  store i32 %29, i32* %5, align 4
  %30 = call i32 @RegQueryValueA(i32* inttoptr (i64 3405691582 to i32*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %10, i32* %5)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %42, label %34

34:                                               ; preds = %0
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @ERROR_BADKEY, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @ERROR_ACCESS_DENIED, align 4
  %41 = icmp eq i32 %39, %40
  br label %42

42:                                               ; preds = %38, %34, %0
  %43 = phi i1 [ true, %34 ], [ true, %0 ], [ %41, %38 ]
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* %6, align 4
  %46 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  %47 = call i32 (...) @GetLastError()
  %48 = icmp eq i32 %47, -559038737
  %49 = zext i1 %48 to i32
  %50 = call i32 (...) @GetLastError()
  %51 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %50)
  %52 = call i32 @SetLastError(i32 -559038737)
  %53 = load i32, i32* @MAX_PATH, align 4
  store i32 %53, i32* %5, align 4
  %54 = call i32 @RegQueryValueA(i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %10, i32* %5)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %42
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @ERROR_BADKEY, align 4
  %61 = icmp eq i32 %59, %60
  br label %62

62:                                               ; preds = %58, %42
  %63 = phi i1 [ true, %42 ], [ %61, %58 ]
  %64 = zext i1 %63 to i32
  %65 = load i32, i32* %6, align 4
  %66 = call i32 (i32, i8*, ...) @ok(i32 %64, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  %67 = call i32 (...) @GetLastError()
  %68 = icmp eq i32 %67, -559038737
  %69 = zext i1 %68 to i32
  %70 = call i32 (...) @GetLastError()
  %71 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @MAX_PATH, align 4
  store i32 %72, i32* %5, align 4
  %73 = load i32*, i32** @hkey_main, align 8
  %74 = call i32 @RegQueryValueA(i32* %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* null, i32* %5)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @ERROR_SUCCESS, align 4
  %77 = icmp eq i32 %75, %76
  %78 = zext i1 %77 to i32
  %79 = load i32, i32* %6, align 4
  %80 = call i32 (i32, i8*, ...) @ok(i32 %78, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %5, align 4
  %82 = icmp eq i32 %81, 5
  %83 = zext i1 %82 to i32
  %84 = load i32, i32* %5, align 4
  %85 = call i32 (i32, i8*, ...) @ok(i32 %83, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %84)
  %86 = call i32 @SetLastError(i32 -559038737)
  %87 = getelementptr inbounds i8, i8* %10, i64 0
  store i8 0, i8* %87, align 16
  %88 = load i32*, i32** @hkey_main, align 8
  %89 = call i32 @RegQueryValueA(i32* %88, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %10, i32* null)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %92 = icmp eq i32 %90, %91
  %93 = zext i1 %92 to i32
  %94 = load i32, i32* %6, align 4
  %95 = call i32 (i32, i8*, ...) @ok(i32 %93, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %94)
  %96 = call i32 (...) @GetLastError()
  %97 = icmp eq i32 %96, -559038737
  %98 = zext i1 %97 to i32
  %99 = call i32 (...) @GetLastError()
  %100 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %99)
  %101 = getelementptr inbounds i8, i8* %10, i64 0
  %102 = load i8, i8* %101, align 16
  %103 = icmp ne i8 %102, 0
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = call i32 (i32, i8*, ...) @ok(i32 %105, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i8* %10)
  %107 = load i32*, i32** @hkey_main, align 8
  %108 = call i32 @RegQueryValueA(i32* %107, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* null, i32* null)
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @ERROR_SUCCESS, align 4
  %111 = icmp eq i32 %109, %110
  %112 = zext i1 %111 to i32
  %113 = load i32, i32* %6, align 4
  %114 = call i32 (i32, i8*, ...) @ok(i32 %112, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %113)
  %115 = call i32 @SetLastError(i32 -559038737)
  %116 = getelementptr inbounds i8, i8* %10, i64 0
  store i8 0, i8* %116, align 16
  store i32 1, i32* %5, align 4
  %117 = load i32*, i32** @hkey_main, align 8
  %118 = call i32 @RegQueryValueA(i32* %117, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %10, i32* %5)
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* @ERROR_MORE_DATA, align 4
  %121 = icmp eq i32 %119, %120
  %122 = zext i1 %121 to i32
  %123 = load i32, i32* %6, align 4
  %124 = call i32 (i32, i8*, ...) @ok(i32 %122, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %123)
  %125 = call i32 (...) @GetLastError()
  %126 = icmp eq i32 %125, -559038737
  %127 = zext i1 %126 to i32
  %128 = call i32 (...) @GetLastError()
  %129 = call i32 (i32, i8*, ...) @ok(i32 %127, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %128)
  %130 = getelementptr inbounds i8, i8* %10, i64 0
  %131 = load i8, i8* %130, align 16
  %132 = icmp ne i8 %131, 0
  %133 = xor i1 %132, true
  %134 = zext i1 %133 to i32
  %135 = call i32 (i32, i8*, ...) @ok(i32 %134, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i8* %10)
  %136 = load i32, i32* %5, align 4
  %137 = icmp eq i32 %136, 5
  %138 = zext i1 %137 to i32
  %139 = load i32, i32* %5, align 4
  %140 = call i32 (i32, i8*, ...) @ok(i32 %138, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %139)
  %141 = load i32, i32* @MAX_PATH, align 4
  store i32 %141, i32* %5, align 4
  %142 = load i32*, i32** @hkey_main, align 8
  %143 = call i32 @RegQueryValueA(i32* %142, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %10, i32* %5)
  store i32 %143, i32* %6, align 4
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* @ERROR_SUCCESS, align 4
  %146 = icmp eq i32 %144, %145
  %147 = zext i1 %146 to i32
  %148 = load i32, i32* %6, align 4
  %149 = call i32 (i32, i8*, ...) @ok(i32 %147, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %148)
  %150 = call i32 @lstrcmpA(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %151 = icmp ne i32 %150, 0
  %152 = xor i1 %151, true
  %153 = zext i1 %152 to i32
  %154 = call i32 (i32, i8*, ...) @ok(i32 %153, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i8* %10)
  %155 = load i32, i32* %5, align 4
  %156 = icmp eq i32 %155, 5
  %157 = zext i1 %156 to i32
  %158 = load i32, i32* %5, align 4
  %159 = call i32 (i32, i8*, ...) @ok(i32 %157, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %158)
  %160 = load i32, i32* @MAX_PATH, align 4
  store i32 %160, i32* %5, align 4
  %161 = load i32*, i32** %1, align 8
  %162 = call i32 @RegQueryValueA(i32* %161, i8* null, i8* %10, i32* %5)
  store i32 %162, i32* %6, align 4
  %163 = load i32, i32* %6, align 4
  %164 = load i32, i32* @ERROR_SUCCESS, align 4
  %165 = icmp eq i32 %163, %164
  %166 = zext i1 %165 to i32
  %167 = load i32, i32* %6, align 4
  %168 = call i32 (i32, i8*, ...) @ok(i32 %166, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %167)
  %169 = call i32 @lstrcmpA(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %170 = icmp ne i32 %169, 0
  %171 = xor i1 %170, true
  %172 = zext i1 %171 to i32
  %173 = call i32 (i32, i8*, ...) @ok(i32 %172, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i8* %10)
  %174 = load i32, i32* %5, align 4
  %175 = icmp eq i32 %174, 5
  %176 = zext i1 %175 to i32
  %177 = load i32, i32* %5, align 4
  %178 = call i32 (i32, i8*, ...) @ok(i32 %176, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %177)
  %179 = call i32 @SetLastError(i32 -559038737)
  %180 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 0
  store i8 0, i8* %180, align 1
  store i32 0, i32* %5, align 4
  %181 = load i32*, i32** %1, align 8
  %182 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 0
  %183 = call i32 @RegQueryValueW(i32* %181, i32* null, i8* %182, i32* %5)
  store i32 %183, i32* %6, align 4
  %184 = call i32 (...) @GetLastError()
  %185 = load i32, i32* @ERROR_CALL_NOT_IMPLEMENTED, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %189

187:                                              ; preds = %62
  %188 = call i32 @win_skip(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  br label %293

189:                                              ; preds = %62
  %190 = load i32, i32* %6, align 4
  %191 = load i32, i32* @ERROR_MORE_DATA, align 4
  %192 = icmp eq i32 %190, %191
  %193 = zext i1 %192 to i32
  %194 = load i32, i32* %6, align 4
  %195 = call i32 (i32, i8*, ...) @ok(i32 %193, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %194)
  %196 = call i32 (...) @GetLastError()
  %197 = icmp eq i32 %196, -559038737
  %198 = zext i1 %197 to i32
  %199 = call i32 (...) @GetLastError()
  %200 = call i32 (i32, i8*, ...) @ok(i32 %198, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %199)
  %201 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 0
  %202 = load i8, i8* %201, align 1
  %203 = icmp ne i8 %202, 0
  %204 = xor i1 %203, true
  %205 = zext i1 %204 to i32
  %206 = call i32 (i32, i8*, ...) @ok(i32 %205, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  %207 = load i32, i32* %5, align 4
  %208 = sext i32 %207 to i64
  %209 = icmp eq i64 %208, 5
  %210 = zext i1 %209 to i32
  %211 = load i32, i32* %5, align 4
  %212 = call i32 (i32, i8*, ...) @ok(i32 %210, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32 %211)
  %213 = call i32 @SetLastError(i32 -559038737)
  store i32 5, i32* %5, align 4
  %214 = load i32*, i32** %1, align 8
  %215 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 0
  %216 = call i32 @RegQueryValueW(i32* %214, i32* null, i8* %215, i32* %5)
  store i32 %216, i32* %6, align 4
  %217 = load i32, i32* %6, align 4
  %218 = load i32, i32* @ERROR_MORE_DATA, align 4
  %219 = icmp eq i32 %217, %218
  %220 = zext i1 %219 to i32
  %221 = load i32, i32* %6, align 4
  %222 = call i32 (i32, i8*, ...) @ok(i32 %220, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %221)
  %223 = call i32 (...) @GetLastError()
  %224 = icmp eq i32 %223, -559038737
  %225 = zext i1 %224 to i32
  %226 = call i32 (...) @GetLastError()
  %227 = call i32 (i32, i8*, ...) @ok(i32 %225, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %226)
  %228 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 0
  %229 = load i8, i8* %228, align 1
  %230 = icmp ne i8 %229, 0
  %231 = xor i1 %230, true
  %232 = zext i1 %231 to i32
  %233 = call i32 (i32, i8*, ...) @ok(i32 %232, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  %234 = load i32, i32* %5, align 4
  %235 = sext i32 %234 to i64
  %236 = icmp eq i64 %235, 5
  %237 = zext i1 %236 to i32
  %238 = load i32, i32* %5, align 4
  %239 = call i32 (i32, i8*, ...) @ok(i32 %237, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32 %238)
  store i32 5, i32* %5, align 4
  %240 = load i32*, i32** %1, align 8
  %241 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 0
  %242 = call i32 @RegQueryValueW(i32* %240, i32* null, i8* %241, i32* %5)
  store i32 %242, i32* %6, align 4
  %243 = load i32, i32* %6, align 4
  %244 = load i32, i32* @ERROR_SUCCESS, align 4
  %245 = icmp eq i32 %243, %244
  %246 = zext i1 %245 to i32
  %247 = load i32, i32* %6, align 4
  %248 = call i32 (i32, i8*, ...) @ok(i32 %246, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %247)
  %249 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 0
  %250 = call i32 @lstrcmpW(i8* %249, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_reg_query_value.expected, i64 0, i64 0))
  %251 = icmp ne i32 %250, 0
  %252 = xor i1 %251, true
  %253 = zext i1 %252 to i32
  %254 = call i32 (i32, i8*, ...) @ok(i32 %253, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0))
  %255 = load i32, i32* %5, align 4
  %256 = sext i32 %255 to i64
  %257 = icmp eq i64 %256, 5
  %258 = zext i1 %257 to i32
  %259 = load i32, i32* %5, align 4
  %260 = call i32 (i32, i8*, ...) @ok(i32 %258, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32 %259)
  %261 = load i32*, i32** %1, align 8
  %262 = load i32, i32* @REG_SZ, align 4
  %263 = call i32 @RegSetValueW(i32* %261, i32* null, i32 %262, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_reg_query_value.expected, i64 0, i64 0), i32 4)
  store i32 %263, i32* %6, align 4
  %264 = load i32, i32* %6, align 4
  %265 = load i32, i32* @ERROR_SUCCESS, align 4
  %266 = icmp eq i32 %264, %265
  %267 = zext i1 %266 to i32
  %268 = load i32, i32* %6, align 4
  %269 = call i32 (i32, i8*, ...) @ok(i32 %267, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %268)
  %270 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 0
  %271 = call i32 @memset(i8* %270, i8 signext 97, i32 5)
  store i32 5, i32* %5, align 4
  %272 = load i32*, i32** %1, align 8
  %273 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 0
  %274 = call i32 @RegQueryValueW(i32* %272, i32* null, i8* %273, i32* %5)
  store i32 %274, i32* %6, align 4
  %275 = load i32, i32* %6, align 4
  %276 = load i32, i32* @ERROR_SUCCESS, align 4
  %277 = icmp eq i32 %275, %276
  %278 = zext i1 %277 to i32
  %279 = load i32, i32* %6, align 4
  %280 = call i32 (i32, i8*, ...) @ok(i32 %278, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %279)
  %281 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 0
  %282 = call i32 @lstrcmpW(i8* %281, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_reg_query_value.expected, i64 0, i64 0))
  %283 = icmp ne i32 %282, 0
  %284 = xor i1 %283, true
  %285 = zext i1 %284 to i32
  %286 = call i32 (i32, i8*, ...) @ok(i32 %285, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0))
  %287 = load i32, i32* %5, align 4
  %288 = sext i32 %287 to i64
  %289 = icmp eq i64 %288, 5
  %290 = zext i1 %289 to i32
  %291 = load i32, i32* %5, align 4
  %292 = call i32 (i32, i8*, ...) @ok(i32 %290, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32 %291)
  br label %293

293:                                              ; preds = %189, %187
  %294 = load i32*, i32** %1, align 8
  %295 = call i32 @RegDeleteKeyA(i32* %294, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0))
  %296 = load i32*, i32** %1, align 8
  %297 = call i32 @RegCloseKey(i32* %296)
  %298 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %298)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @RegCreateKeyA(i32*, i8*, i32**) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @RegSetValueA(i32*, i32*, i32, i8*, i32) #2

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @RegQueryValueA(i32*, i8*, i8*, i32*) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @lstrcmpA(i8*, i8*) #2

declare dso_local i32 @RegQueryValueW(i32*, i32*, i8*, i32*) #2

declare dso_local i32 @win_skip(i8*) #2

declare dso_local i32 @lstrcmpW(i8*, i8*) #2

declare dso_local i32 @RegSetValueW(i32*, i32*, i32, i8*, i32) #2

declare dso_local i32 @memset(i8*, i8 signext, i32) #2

declare dso_local i32 @RegDeleteKeyA(i32*, i8*) #2

declare dso_local i32 @RegCloseKey(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
