; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_locale.c_test_GetNumberFormatA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_locale.c_test_GetNumberFormatA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i8*, i8*, i8* }

@test_GetNumberFormatA.szDot = internal global [2 x i8] c".\00", align 1
@test_GetNumberFormatA.szComma = internal global [2 x i8] c",\00", align 1
@LANG_ENGLISH = common dso_local global i32 0, align 4
@SUBLANG_ENGLISH_US = common dso_local global i32 0, align 4
@SORT_DEFAULT = common dso_local global i32 0, align 4
@BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"23\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Expected ERROR_INVALID_PARAMETER, got %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"23,53\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"0-\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"0..\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c" 0.1\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"1234\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@NUO = common dso_local global i32 0, align 4
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [44 x i8] c"Expected ERROR_INSUFFICIENT_BUFFER, got %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"2353\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"Expected ret == 0, got %d\0A\00", align 1
@ERROR_INVALID_FLAGS = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [38 x i8] c"Expected ERROR_INVALID_FLAGS, got %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"2,353.00\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"Expected ret != 0, got %d, error %d\0A\00", align 1
@EXPECT_LENA = common dso_local global i32 0, align 4
@EXPECT_EQA = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [6 x i8] c"-2353\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"-2,353.00\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"-353\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"-353.00\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"2353.1\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"2,353.10\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"2353.111\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"2,353.11\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"2353.119\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"2,353.12\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"2353.0\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"23,53.0\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"235\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"235.0\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"-235\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"-235.0\00", align 1
@NEG_LEFT = common dso_local global i8* null, align 8
@.str.32 = private unnamed_addr constant [3 x i8] c".5\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"0.5\00", align 1
@NEG_PARENS = common dso_local global i8* null, align 8
@.str.34 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"(1.0)\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"-1.0\00", align 1
@NEG_LEFT_SPACE = common dso_local global i8* null, align 8
@.str.37 = private unnamed_addr constant [6 x i8] c"- 1.0\00", align 1
@NEG_RIGHT = common dso_local global i8* null, align 8
@.str.38 = private unnamed_addr constant [5 x i8] c"1.0-\00", align 1
@NEG_RIGHT_SPACE = common dso_local global i8* null, align 8
@.str.39 = private unnamed_addr constant [6 x i8] c"1.0 -\00", align 1
@LANG_FRENCH = common dso_local global i32 0, align 4
@SUBLANG_DEFAULT = common dso_local global i32 0, align 4
@.str.40 = private unnamed_addr constant [7 x i8] c"-12345\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"-12 345,00\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetNumberFormatA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetNumberFormatA() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__, align 8
  %8 = load i32, i32* @LANG_ENGLISH, align 4
  %9 = load i32, i32* @SUBLANG_ENGLISH_US, align 4
  %10 = call i32 @MAKELANGID(i32 %8, i32 %9)
  %11 = load i32, i32* @SORT_DEFAULT, align 4
  %12 = call i32 @MAKELCID(i32 %10, i32 %11)
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* @BUFFER_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %3, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %4, align 8
  %17 = load i32, i32* @BUFFER_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %5, align 8
  %20 = load i32, i32* @BUFFER_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %6, align 8
  %23 = call i32 @memset(%struct.TYPE_4__* %7, i32 0, i32 40)
  %24 = call i32 @STRINGSA(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i32 @SetLastError(i32 -559038737)
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @COUNTOF(i8* %16)
  %28 = call i32 @GetNumberFormatA(i32 %26, i32 0, i8* %22, %struct.TYPE_4__* null, i8* null, i32 %27)
  store i32 %28, i32* %1, align 4
  %29 = load i32, i32* %1, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %0
  %32 = call i32 (...) @GetLastError()
  %33 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %34 = icmp eq i32 %32, %33
  br label %35

35:                                               ; preds = %31, %0
  %36 = phi i1 [ false, %0 ], [ %34, %31 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 (...) @GetLastError()
  %39 = call i32 (i32, i8*, i32, ...) @ok(i32 %37, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = call i32 @STRINGSA(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %41 = call i32 @SetLastError(i32 -559038737)
  %42 = load i32, i32* %2, align 4
  %43 = call i32 @COUNTOF(i8* %16)
  %44 = call i32 @GetNumberFormatA(i32 %42, i32 0, i8* %22, %struct.TYPE_4__* null, i8* %16, i32 %43)
  store i32 %44, i32* %1, align 4
  %45 = load i32, i32* %1, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %35
  %48 = call i32 (...) @GetLastError()
  %49 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %50 = icmp eq i32 %48, %49
  br label %51

51:                                               ; preds = %47, %35
  %52 = phi i1 [ false, %35 ], [ %50, %47 ]
  %53 = zext i1 %52 to i32
  %54 = call i32 (...) @GetLastError()
  %55 = call i32 (i32, i8*, i32, ...) @ok(i32 %53, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  %56 = call i32 @STRINGSA(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %57 = call i32 @SetLastError(i32 -559038737)
  %58 = load i32, i32* %2, align 4
  %59 = call i32 @COUNTOF(i8* %16)
  %60 = call i32 @GetNumberFormatA(i32 %58, i32 0, i8* %22, %struct.TYPE_4__* null, i8* %16, i32 %59)
  store i32 %60, i32* %1, align 4
  %61 = load i32, i32* %1, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %51
  %64 = call i32 (...) @GetLastError()
  %65 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %66 = icmp eq i32 %64, %65
  br label %67

67:                                               ; preds = %63, %51
  %68 = phi i1 [ false, %51 ], [ %66, %63 ]
  %69 = zext i1 %68 to i32
  %70 = call i32 (...) @GetLastError()
  %71 = call i32 (i32, i8*, i32, ...) @ok(i32 %69, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = call i32 @STRINGSA(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %73 = call i32 @SetLastError(i32 -559038737)
  %74 = load i32, i32* %2, align 4
  %75 = call i32 @COUNTOF(i8* %16)
  %76 = call i32 @GetNumberFormatA(i32 %74, i32 0, i8* %22, %struct.TYPE_4__* null, i8* %16, i32 %75)
  store i32 %76, i32* %1, align 4
  %77 = load i32, i32* %1, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %67
  %80 = call i32 (...) @GetLastError()
  %81 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %82 = icmp eq i32 %80, %81
  br label %83

83:                                               ; preds = %79, %67
  %84 = phi i1 [ false, %67 ], [ %82, %79 ]
  %85 = zext i1 %84 to i32
  %86 = call i32 (...) @GetLastError()
  %87 = call i32 (i32, i8*, i32, ...) @ok(i32 %85, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  %88 = call i32 @STRINGSA(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %89 = call i32 @SetLastError(i32 -559038737)
  %90 = load i32, i32* %2, align 4
  %91 = call i32 @COUNTOF(i8* %16)
  %92 = call i32 @GetNumberFormatA(i32 %90, i32 0, i8* %22, %struct.TYPE_4__* null, i8* %16, i32 %91)
  store i32 %92, i32* %1, align 4
  %93 = load i32, i32* %1, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %83
  %96 = call i32 (...) @GetLastError()
  %97 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %98 = icmp eq i32 %96, %97
  br label %99

99:                                               ; preds = %95, %83
  %100 = phi i1 [ false, %83 ], [ %98, %95 ]
  %101 = zext i1 %100 to i32
  %102 = call i32 (...) @GetLastError()
  %103 = call i32 (i32, i8*, i32, ...) @ok(i32 %101, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %102)
  %104 = call i32 @STRINGSA(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %105 = call i32 @SetLastError(i32 -559038737)
  %106 = load i32, i32* %2, align 4
  %107 = call i32 @COUNTOF(i8* %16)
  %108 = call i32 @GetNumberFormatA(i32 %106, i32 0, i8* %22, %struct.TYPE_4__* null, i8* %16, i32 %107)
  store i32 %108, i32* %1, align 4
  %109 = load i32, i32* %1, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %99
  %112 = call i32 (...) @GetLastError()
  %113 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %114 = icmp eq i32 %112, %113
  br label %115

115:                                              ; preds = %111, %99
  %116 = phi i1 [ false, %99 ], [ %114, %111 ]
  %117 = zext i1 %116 to i32
  %118 = call i32 (...) @GetLastError()
  %119 = call i32 (i32, i8*, i32, ...) @ok(i32 %117, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %118)
  %120 = call i32 @STRINGSA(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %121 = call i32 @SetLastError(i32 -559038737)
  %122 = load i32, i32* %2, align 4
  %123 = load i32, i32* @NUO, align 4
  %124 = call i32 @GetNumberFormatA(i32 %122, i32 %123, i8* %22, %struct.TYPE_4__* null, i8* %16, i32 2)
  store i32 %124, i32* %1, align 4
  %125 = load i32, i32* %1, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %115
  %128 = call i32 (...) @GetLastError()
  %129 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %130 = icmp eq i32 %128, %129
  br label %131

131:                                              ; preds = %127, %115
  %132 = phi i1 [ false, %115 ], [ %130, %127 ]
  %133 = zext i1 %132 to i32
  %134 = call i32 (...) @GetLastError()
  %135 = call i32 (i32, i8*, i32, ...) @ok(i32 %133, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i32 %134)
  %136 = call i32 @STRINGSA(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %137 = call i32 @SetLastError(i32 -559038737)
  %138 = load i32, i32* %2, align 4
  %139 = load i32, i32* @NUO, align 4
  %140 = call i32 @COUNTOF(i8* %16)
  %141 = call i32 @GetNumberFormatA(i32 %138, i32 %139, i8* %22, %struct.TYPE_4__* %7, i8* %16, i32 %140)
  store i32 %141, i32* %1, align 4
  %142 = load i32, i32* %1, align 4
  %143 = icmp ne i32 %142, 0
  %144 = xor i1 %143, true
  %145 = zext i1 %144 to i32
  %146 = load i32, i32* %1, align 4
  %147 = call i32 (i32, i8*, i32, ...) @ok(i32 %145, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i32 %146)
  %148 = call i32 (...) @GetLastError()
  %149 = load i32, i32* @ERROR_INVALID_FLAGS, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %155, label %151

151:                                              ; preds = %131
  %152 = call i32 (...) @GetLastError()
  %153 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %154 = icmp eq i32 %152, %153
  br label %155

155:                                              ; preds = %151, %131
  %156 = phi i1 [ true, %131 ], [ %154, %151 ]
  %157 = zext i1 %156 to i32
  %158 = call i32 (...) @GetLastError()
  %159 = call i32 (i32, i8*, i32, ...) @ok(i32 %157, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0), i32 %158)
  %160 = call i32 @STRINGSA(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %161 = call i32 @SetLastError(i32 -559038737)
  %162 = load i32, i32* %2, align 4
  %163 = call i32 @COUNTOF(i8* %16)
  %164 = call i32 @GetNumberFormatA(i32 %162, i32 0, i8* %22, %struct.TYPE_4__* %7, i8* %16, i32 %163)
  store i32 %164, i32* %1, align 4
  %165 = load i32, i32* %1, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %171, label %167

167:                                              ; preds = %155
  %168 = call i32 (...) @GetLastError()
  %169 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %170 = icmp eq i32 %168, %169
  br label %171

171:                                              ; preds = %167, %155
  %172 = phi i1 [ false, %155 ], [ %170, %167 ]
  %173 = zext i1 %172 to i32
  %174 = call i32 (...) @GetLastError()
  %175 = call i32 (i32, i8*, i32, ...) @ok(i32 %173, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %174)
  %176 = call i32 @STRINGSA(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  %177 = load i32, i32* %2, align 4
  %178 = load i32, i32* @NUO, align 4
  %179 = call i32 @COUNTOF(i8* %16)
  %180 = call i32 @GetNumberFormatA(i32 %177, i32 %178, i8* %22, %struct.TYPE_4__* null, i8* %16, i32 %179)
  store i32 %180, i32* %1, align 4
  %181 = load i32, i32* %1, align 4
  %182 = load i32, i32* %1, align 4
  %183 = call i32 (...) @GetLastError()
  %184 = call i32 (i32, i8*, i32, ...) @ok(i32 %181, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0), i32 %182, i32 %183)
  %185 = load i32, i32* @EXPECT_LENA, align 4
  %186 = load i32, i32* @EXPECT_EQA, align 4
  %187 = call i32 @STRINGSA(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0))
  %188 = load i32, i32* %2, align 4
  %189 = load i32, i32* @NUO, align 4
  %190 = call i32 @COUNTOF(i8* %16)
  %191 = call i32 @GetNumberFormatA(i32 %188, i32 %189, i8* %22, %struct.TYPE_4__* null, i8* %16, i32 %190)
  store i32 %191, i32* %1, align 4
  %192 = load i32, i32* %1, align 4
  %193 = load i32, i32* %1, align 4
  %194 = call i32 (...) @GetLastError()
  %195 = call i32 (i32, i8*, i32, ...) @ok(i32 %192, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0), i32 %193, i32 %194)
  %196 = load i32, i32* @EXPECT_LENA, align 4
  %197 = load i32, i32* @EXPECT_EQA, align 4
  %198 = call i32 @STRINGSA(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0))
  %199 = load i32, i32* %2, align 4
  %200 = load i32, i32* @NUO, align 4
  %201 = call i32 @COUNTOF(i8* %16)
  %202 = call i32 @GetNumberFormatA(i32 %199, i32 %200, i8* %22, %struct.TYPE_4__* null, i8* %16, i32 %201)
  store i32 %202, i32* %1, align 4
  %203 = load i32, i32* %1, align 4
  %204 = load i32, i32* %1, align 4
  %205 = call i32 (...) @GetLastError()
  %206 = call i32 (i32, i8*, i32, ...) @ok(i32 %203, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0), i32 %204, i32 %205)
  %207 = load i32, i32* @EXPECT_LENA, align 4
  %208 = load i32, i32* @EXPECT_EQA, align 4
  %209 = call i32 @STRINGSA(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0))
  %210 = load i32, i32* %2, align 4
  %211 = load i32, i32* @NUO, align 4
  %212 = call i32 @COUNTOF(i8* %16)
  %213 = call i32 @GetNumberFormatA(i32 %210, i32 %211, i8* %22, %struct.TYPE_4__* null, i8* %16, i32 %212)
  store i32 %213, i32* %1, align 4
  %214 = load i32, i32* %1, align 4
  %215 = load i32, i32* %1, align 4
  %216 = call i32 (...) @GetLastError()
  %217 = call i32 (i32, i8*, i32, ...) @ok(i32 %214, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0), i32 %215, i32 %216)
  %218 = load i32, i32* @EXPECT_LENA, align 4
  %219 = load i32, i32* @EXPECT_EQA, align 4
  %220 = call i32 @STRINGSA(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0))
  %221 = load i32, i32* %2, align 4
  %222 = load i32, i32* @NUO, align 4
  %223 = call i32 @COUNTOF(i8* %16)
  %224 = call i32 @GetNumberFormatA(i32 %221, i32 %222, i8* %22, %struct.TYPE_4__* null, i8* %16, i32 %223)
  store i32 %224, i32* %1, align 4
  %225 = load i32, i32* %1, align 4
  %226 = load i32, i32* %1, align 4
  %227 = call i32 (...) @GetLastError()
  %228 = call i32 (i32, i8*, i32, ...) @ok(i32 %225, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0), i32 %226, i32 %227)
  %229 = load i32, i32* @EXPECT_LENA, align 4
  %230 = load i32, i32* @EXPECT_EQA, align 4
  %231 = call i32 @STRINGSA(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0))
  %232 = load i32, i32* %2, align 4
  %233 = load i32, i32* @NUO, align 4
  %234 = call i32 @COUNTOF(i8* %16)
  %235 = call i32 @GetNumberFormatA(i32 %232, i32 %233, i8* %22, %struct.TYPE_4__* null, i8* %16, i32 %234)
  store i32 %235, i32* %1, align 4
  %236 = load i32, i32* %1, align 4
  %237 = load i32, i32* %1, align 4
  %238 = call i32 (...) @GetLastError()
  %239 = call i32 (i32, i8*, i32, ...) @ok(i32 %236, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0), i32 %237, i32 %238)
  %240 = load i32, i32* @EXPECT_LENA, align 4
  %241 = load i32, i32* @EXPECT_EQA, align 4
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i32 0, i32* %242, align 8
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  store i32 0, i32* %243, align 4
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  store i32 0, i32* %244, align 8
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 5
  store i8* null, i8** %245, align 8
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 3
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_GetNumberFormatA.szDot, i64 0, i64 0), i8** %246, align 8
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_GetNumberFormatA.szComma, i64 0, i64 0), i8** %247, align 8
  %248 = call i32 @STRINGSA(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %249 = load i32, i32* %2, align 4
  %250 = call i32 @COUNTOF(i8* %16)
  %251 = call i32 @GetNumberFormatA(i32 %249, i32 0, i8* %22, %struct.TYPE_4__* %7, i8* %16, i32 %250)
  store i32 %251, i32* %1, align 4
  %252 = load i32, i32* %1, align 4
  %253 = load i32, i32* %1, align 4
  %254 = call i32 (...) @GetLastError()
  %255 = call i32 (i32, i8*, i32, ...) @ok(i32 %252, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0), i32 %253, i32 %254)
  %256 = load i32, i32* @EXPECT_LENA, align 4
  %257 = load i32, i32* @EXPECT_EQA, align 4
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i32 1, i32* %258, align 8
  %259 = call i32 @STRINGSA(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0))
  %260 = load i32, i32* %2, align 4
  %261 = call i32 @COUNTOF(i8* %16)
  %262 = call i32 @GetNumberFormatA(i32 %260, i32 0, i8* %22, %struct.TYPE_4__* %7, i8* %16, i32 %261)
  store i32 %262, i32* %1, align 4
  %263 = load i32, i32* %1, align 4
  %264 = load i32, i32* %1, align 4
  %265 = call i32 (...) @GetLastError()
  %266 = call i32 (i32, i8*, i32, ...) @ok(i32 %263, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0), i32 %264, i32 %265)
  %267 = load i32, i32* @EXPECT_LENA, align 4
  %268 = load i32, i32* @EXPECT_EQA, align 4
  %269 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  store i32 2, i32* %269, align 8
  %270 = call i32 @STRINGSA(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0))
  %271 = load i32, i32* %2, align 4
  %272 = call i32 @COUNTOF(i8* %16)
  %273 = call i32 @GetNumberFormatA(i32 %271, i32 0, i8* %22, %struct.TYPE_4__* %7, i8* %16, i32 %272)
  store i32 %273, i32* %1, align 4
  %274 = load i32, i32* %1, align 4
  %275 = load i32, i32* %1, align 4
  %276 = call i32 (...) @GetLastError()
  %277 = call i32 (i32, i8*, i32, ...) @ok(i32 %274, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0), i32 %275, i32 %276)
  %278 = load i32, i32* @EXPECT_LENA, align 4
  %279 = load i32, i32* @EXPECT_EQA, align 4
  %280 = call i32 @STRINGSA(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0))
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  store i32 3, i32* %281, align 8
  %282 = load i32, i32* %2, align 4
  %283 = call i32 @COUNTOF(i8* %16)
  %284 = call i32 @GetNumberFormatA(i32 %282, i32 0, i8* %22, %struct.TYPE_4__* %7, i8* %16, i32 %283)
  store i32 %284, i32* %1, align 4
  %285 = load i32, i32* %1, align 4
  %286 = load i32, i32* %1, align 4
  %287 = call i32 (...) @GetLastError()
  %288 = call i32 (i32, i8*, i32, ...) @ok(i32 %285, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0), i32 %286, i32 %287)
  %289 = load i32, i32* @EXPECT_LENA, align 4
  %290 = load i32, i32* @EXPECT_EQA, align 4
  %291 = call i32 @STRINGSA(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0))
  %292 = load i8*, i8** @NEG_LEFT, align 8
  %293 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 5
  store i8* %292, i8** %293, align 8
  %294 = load i32, i32* %2, align 4
  %295 = call i32 @COUNTOF(i8* %16)
  %296 = call i32 @GetNumberFormatA(i32 %294, i32 0, i8* %22, %struct.TYPE_4__* %7, i8* %16, i32 %295)
  store i32 %296, i32* %1, align 4
  %297 = load i32, i32* %1, align 4
  %298 = load i32, i32* %1, align 4
  %299 = call i32 (...) @GetLastError()
  %300 = call i32 (i32, i8*, i32, ...) @ok(i32 %297, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0), i32 %298, i32 %299)
  %301 = load i32, i32* @EXPECT_LENA, align 4
  %302 = load i32, i32* @EXPECT_EQA, align 4
  %303 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  store i32 1, i32* %303, align 4
  %304 = call i32 @STRINGSA(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0))
  %305 = load i32, i32* %2, align 4
  %306 = call i32 @COUNTOF(i8* %16)
  %307 = call i32 @GetNumberFormatA(i32 %305, i32 0, i8* %22, %struct.TYPE_4__* %7, i8* %16, i32 %306)
  store i32 %307, i32* %1, align 4
  %308 = load i32, i32* %1, align 4
  %309 = load i32, i32* %1, align 4
  %310 = call i32 (...) @GetLastError()
  %311 = call i32 (i32, i8*, i32, ...) @ok(i32 %308, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0), i32 %309, i32 %310)
  %312 = load i32, i32* @EXPECT_LENA, align 4
  %313 = load i32, i32* @EXPECT_EQA, align 4
  %314 = load i8*, i8** @NEG_PARENS, align 8
  %315 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 5
  store i8* %314, i8** %315, align 8
  %316 = call i32 @STRINGSA(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0))
  %317 = load i32, i32* %2, align 4
  %318 = call i32 @COUNTOF(i8* %16)
  %319 = call i32 @GetNumberFormatA(i32 %317, i32 0, i8* %22, %struct.TYPE_4__* %7, i8* %16, i32 %318)
  store i32 %319, i32* %1, align 4
  %320 = load i32, i32* %1, align 4
  %321 = load i32, i32* %1, align 4
  %322 = call i32 (...) @GetLastError()
  %323 = call i32 (i32, i8*, i32, ...) @ok(i32 %320, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0), i32 %321, i32 %322)
  %324 = load i32, i32* @EXPECT_LENA, align 4
  %325 = load i32, i32* @EXPECT_EQA, align 4
  %326 = load i8*, i8** @NEG_LEFT, align 8
  %327 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 5
  store i8* %326, i8** %327, align 8
  %328 = call i32 @STRINGSA(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0))
  %329 = load i32, i32* %2, align 4
  %330 = call i32 @COUNTOF(i8* %16)
  %331 = call i32 @GetNumberFormatA(i32 %329, i32 0, i8* %22, %struct.TYPE_4__* %7, i8* %16, i32 %330)
  store i32 %331, i32* %1, align 4
  %332 = load i32, i32* %1, align 4
  %333 = load i32, i32* %1, align 4
  %334 = call i32 (...) @GetLastError()
  %335 = call i32 (i32, i8*, i32, ...) @ok(i32 %332, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0), i32 %333, i32 %334)
  %336 = load i32, i32* @EXPECT_LENA, align 4
  %337 = load i32, i32* @EXPECT_EQA, align 4
  %338 = load i8*, i8** @NEG_LEFT_SPACE, align 8
  %339 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 5
  store i8* %338, i8** %339, align 8
  %340 = call i32 @STRINGSA(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0))
  %341 = load i32, i32* %2, align 4
  %342 = call i32 @COUNTOF(i8* %16)
  %343 = call i32 @GetNumberFormatA(i32 %341, i32 0, i8* %22, %struct.TYPE_4__* %7, i8* %16, i32 %342)
  store i32 %343, i32* %1, align 4
  %344 = load i32, i32* %1, align 4
  %345 = load i32, i32* %1, align 4
  %346 = call i32 (...) @GetLastError()
  %347 = call i32 (i32, i8*, i32, ...) @ok(i32 %344, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0), i32 %345, i32 %346)
  %348 = load i32, i32* @EXPECT_LENA, align 4
  %349 = load i32, i32* @EXPECT_EQA, align 4
  %350 = load i8*, i8** @NEG_RIGHT, align 8
  %351 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 5
  store i8* %350, i8** %351, align 8
  %352 = call i32 @STRINGSA(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0))
  %353 = load i32, i32* %2, align 4
  %354 = call i32 @COUNTOF(i8* %16)
  %355 = call i32 @GetNumberFormatA(i32 %353, i32 0, i8* %22, %struct.TYPE_4__* %7, i8* %16, i32 %354)
  store i32 %355, i32* %1, align 4
  %356 = load i32, i32* %1, align 4
  %357 = load i32, i32* %1, align 4
  %358 = call i32 (...) @GetLastError()
  %359 = call i32 (i32, i8*, i32, ...) @ok(i32 %356, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0), i32 %357, i32 %358)
  %360 = load i32, i32* @EXPECT_LENA, align 4
  %361 = load i32, i32* @EXPECT_EQA, align 4
  %362 = load i8*, i8** @NEG_RIGHT_SPACE, align 8
  %363 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 5
  store i8* %362, i8** %363, align 8
  %364 = call i32 @STRINGSA(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i64 0, i64 0))
  %365 = load i32, i32* %2, align 4
  %366 = call i32 @COUNTOF(i8* %16)
  %367 = call i32 @GetNumberFormatA(i32 %365, i32 0, i8* %22, %struct.TYPE_4__* %7, i8* %16, i32 %366)
  store i32 %367, i32* %1, align 4
  %368 = load i32, i32* %1, align 4
  %369 = load i32, i32* %1, align 4
  %370 = call i32 (...) @GetLastError()
  %371 = call i32 (i32, i8*, i32, ...) @ok(i32 %368, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0), i32 %369, i32 %370)
  %372 = load i32, i32* @EXPECT_LENA, align 4
  %373 = load i32, i32* @EXPECT_EQA, align 4
  %374 = load i32, i32* @LANG_FRENCH, align 4
  %375 = load i32, i32* @SUBLANG_DEFAULT, align 4
  %376 = call i32 @MAKELANGID(i32 %374, i32 %375)
  %377 = load i32, i32* @SORT_DEFAULT, align 4
  %378 = call i32 @MAKELCID(i32 %376, i32 %377)
  store i32 %378, i32* %2, align 4
  %379 = load i32, i32* %2, align 4
  %380 = call i64 @IsValidLocale(i32 %379, i32 0)
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %382, label %395

382:                                              ; preds = %171
  %383 = call i32 @STRINGSA(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0))
  %384 = getelementptr inbounds i8, i8* %19, i64 3
  store i8 -96, i8* %384, align 1
  %385 = load i32, i32* %2, align 4
  %386 = load i32, i32* @NUO, align 4
  %387 = call i32 @COUNTOF(i8* %16)
  %388 = call i32 @GetNumberFormatA(i32 %385, i32 %386, i8* %22, %struct.TYPE_4__* null, i8* %16, i32 %387)
  store i32 %388, i32* %1, align 4
  %389 = load i32, i32* %1, align 4
  %390 = load i32, i32* %1, align 4
  %391 = call i32 (...) @GetLastError()
  %392 = call i32 (i32, i8*, i32, ...) @ok(i32 %389, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0), i32 %390, i32 %391)
  %393 = load i32, i32* @EXPECT_LENA, align 4
  %394 = load i32, i32* @EXPECT_EQA, align 4
  br label %395

395:                                              ; preds = %382, %171
  %396 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %396)
  ret void
}

declare dso_local i32 @MAKELCID(i32, i32) #1

declare dso_local i32 @MAKELANGID(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @STRINGSA(i8*, i8*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @GetNumberFormatA(i32, i32, i8*, %struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @COUNTOF(i8*) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i64 @IsValidLocale(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
