; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/regtest/extr_regtest.c_test3.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/regtest/extr_regtest.c_test3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i8**, i8*, i32 }

@.str = private unnamed_addr constant [28 x i8] c"NtCreateKey non volatile: \0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"  \\Registry\\Machine\\Software\\test3reactos: \00", align 1
@.str.2 = private unnamed_addr constant [40 x i32] [i32 92, i32 82, i32 101, i32 103, i32 105, i32 115, i32 116, i32 114, i32 121, i32 92, i32 77, i32 97, i32 99, i32 104, i32 105, i32 110, i32 101, i32 92, i32 83, i32 111, i32 102, i32 116, i32 119, i32 97, i32 114, i32 101, i32 92, i32 116, i32 101, i32 115, i32 116, i32 51, i32 114, i32 101, i32 97, i32 99, i32 116, i32 111, i32 115, i32 0], align 4
@OBJ_CASE_INSENSITIVE = common dso_local global i32 0, align 4
@KEY_ALL_ACCESS = common dso_local global i32 0, align 4
@REG_OPTION_NON_VOLATILE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"\09\09Status=%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i32] [i32 92, i32 82, i32 101, i32 103, i32 105, i32 115, i32 116, i32 114, i32 121, i32 92, i32 77, i32 97, i32 99, i32 104, i32 105, i32 110, i32 101, i32 92, i32 83, i32 111, i32 102, i32 116, i32 119, i32 97, i32 114, i32 101, i32 0], align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"NtOpenKey: \00", align 1
@MAXIMUM_ALLOWED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"  ...\\test3 :\00", align 1
@.str.7 = private unnamed_addr constant [46 x i32] [i32 92, i32 82, i32 101, i32 103, i32 105, i32 115, i32 116, i32 114, i32 121, i32 92, i32 77, i32 97, i32 99, i32 104, i32 105, i32 110, i32 101, i32 92, i32 83, i32 111, i32 102, i32 116, i32 119, i32 97, i32 114, i32 101, i32 92, i32 116, i32 101, i32 115, i32 116, i32 51, i32 114, i32 101, i32 97, i32 99, i32 116, i32 111, i32 115, i32 92, i32 116, i32 101, i32 115, i32 116, i32 51, i32 0], align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"\09\09\09\09\09Status=%x\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"  ...\\testNonVolatile :\00", align 1
@.str.10 = private unnamed_addr constant [16 x i32] [i32 84, i32 101, i32 115, i32 116, i32 78, i32 111, i32 110, i32 86, i32 111, i32 108, i32 97, i32 116, i32 105, i32 108, i32 101, i32 0], align 4
@.str.11 = private unnamed_addr constant [15 x i8] c"\09\09\09\09Status=%x\0A\00", align 1
@.str.12 = private unnamed_addr constant [11 x i32] [i32 84, i32 101, i32 115, i32 116, i32 82, i32 69, i32 71, i32 95, i32 83, i32 90, i32 0], align 4
@.str.13 = private unnamed_addr constant [23 x i8] c"NtSetValueKey reg_sz: \00", align 1
@REG_SZ = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [12 x i32] [i32 84, i32 101, i32 115, i32 116, i32 32, i32 82, i32 101, i32 103, i32 95, i32 115, i32 122, i32 0], align 4
@.str.15 = private unnamed_addr constant [10 x i32] [i32 84, i32 101, i32 115, i32 116, i32 68, i32 87, i32 79, i32 82, i32 68, i32 0], align 4
@.str.16 = private unnamed_addr constant [26 x i8] c"NtSetValueKey reg_dword: \00", align 1
@REG_DWORD = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [5 x i8] c"reac\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"\09\09\09Status=%x\0A\00", align 1
@.str.19 = private unnamed_addr constant [75 x i8] c"NtOpenKey \\Registry\\Machine\\Software\\test3reactos\\test3\\testNonVolatile : \00", align 1
@.str.20 = private unnamed_addr constant [62 x i32] [i32 92, i32 82, i32 101, i32 103, i32 105, i32 115, i32 116, i32 114, i32 121, i32 92, i32 77, i32 97, i32 99, i32 104, i32 105, i32 110, i32 101, i32 92, i32 83, i32 111, i32 102, i32 116, i32 119, i32 97, i32 114, i32 101, i32 92, i32 116, i32 101, i32 115, i32 116, i32 51, i32 114, i32 101, i32 97, i32 99, i32 116, i32 111, i32 115, i32 92, i32 116, i32 101, i32 115, i32 116, i32 51, i32 92, i32 116, i32 101, i32 115, i32 116, i32 78, i32 111, i32 110, i32 86, i32 111, i32 108, i32 97, i32 116, i32 105, i32 108, i32 101, i32 0], align 4
@.str.21 = private unnamed_addr constant [16 x i8] c"\09\09\09\09Status =%x\0A\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"NtEnumerateValueKey : \0A\00", align 1
@STATUS_SUCCESS = common dso_local global i8* null, align 8
@KeyValueFullInformation = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [36 x i8] c"\09Value:DO=%d, DL=%d, NL=%d, Name = \00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"%C\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c", Type = %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"\09\09Value = %S\0A\00", align 1
@.str.27 = private unnamed_addr constant [49 x i8] c"delete \\Registry\\Machine\\software\\test3reactos ?\00", align 1
@InputHandle = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [62 x i32] [i32 92, i32 82, i32 101, i32 103, i32 105, i32 115, i32 116, i32 114, i32 121, i32 92, i32 77, i32 97, i32 99, i32 104, i32 105, i32 110, i32 101, i32 92, i32 83, i32 111, i32 102, i32 116, i32 119, i32 97, i32 114, i32 101, i32 92, i32 116, i32 101, i32 115, i32 116, i32 51, i32 114, i32 101, i32 97, i32 99, i32 116, i32 111, i32 115, i32 92, i32 116, i32 101, i32 115, i32 116, i32 51, i32 92, i32 116, i32 101, i32 115, i32 116, i32 78, i32 111, i32 110, i32 118, i32 111, i32 108, i32 97, i32 116, i32 105, i32 108, i32 101, i32 0], align 4
@.str.29 = private unnamed_addr constant [13 x i8] c"NtOpenKey : \00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"NtDeleteKey : \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test3() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca [5 x %struct.TYPE_3__], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [10 x i8], align 1
  %12 = alloca i32, align 4
  %13 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %15 = call i32 @RtlRosInitUnicodeStringFromLiteral(i32* %4, i8* bitcast ([40 x i32]* @.str.2 to i8*))
  %16 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %17 = call i32 @InitializeObjectAttributes(i32* %3, i32* %4, i32 %16, i32* null, i32* null)
  %18 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %19 = load i32, i32* @REG_OPTION_NON_VOLATILE, align 4
  %20 = call i8* @NtCreateKey(i32** %1, i32 %18, i32* %3, i32 0, i32* null, i32 %19, i32* null)
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %21)
  %23 = load i32*, i32** %1, align 8
  %24 = call i32 @NtClose(i32* %23)
  %25 = call i32 @do_enumeratekey(i8* bitcast ([27 x i32]* @.str.4 to i8*))
  %26 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %27 = load i32, i32* @MAXIMUM_ALLOWED, align 4
  %28 = call i8* @NtOpenKey(i32** %1, i32 %27, i32* %3)
  store i8* %28, i8** %6, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %29)
  %31 = load i32*, i32** %1, align 8
  %32 = call i32 @NtClose(i32* %31)
  %33 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %34 = call i32 @RtlRosInitUnicodeStringFromLiteral(i32* %4, i8* bitcast ([46 x i32]* @.str.7 to i8*))
  %35 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %36 = call i32 @InitializeObjectAttributes(i32* %3, i32* %4, i32 %35, i32* null, i32* null)
  %37 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %38 = load i32, i32* @REG_OPTION_NON_VOLATILE, align 4
  %39 = call i8* @NtCreateKey(i32** %1, i32 %37, i32* %3, i32 0, i32* null, i32 %38, i32* null)
  store i8* %39, i8** %6, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* %40)
  %42 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %43 = load i32, i32* @MAXIMUM_ALLOWED, align 4
  %44 = call i8* @NtOpenKey(i32** %2, i32 %43, i32* %3)
  store i8* %44, i8** %6, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %45)
  %47 = load i32*, i32** %1, align 8
  %48 = call i32 @NtClose(i32* %47)
  %49 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %50 = call i32 @RtlRosInitUnicodeStringFromLiteral(i32* %4, i8* bitcast ([16 x i32]* @.str.10 to i8*))
  %51 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %52 = load i32*, i32** %2, align 8
  %53 = call i32 @InitializeObjectAttributes(i32* %3, i32* %4, i32 %51, i32* %52, i32* null)
  %54 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %55 = load i32, i32* @REG_OPTION_NON_VOLATILE, align 4
  %56 = call i8* @NtCreateKey(i32** %1, i32 %54, i32* %3, i32 0, i32* null, i32 %55, i32* null)
  store i8* %56, i8** %6, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8* %57)
  %59 = load i32*, i32** %2, align 8
  %60 = call i32 @NtClose(i32* %59)
  %61 = call i32 @RtlRosInitUnicodeStringFromLiteral(i32* %5, i8* bitcast ([11 x i32]* @.str.12 to i8*))
  %62 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0))
  %63 = load i32*, i32** %1, align 8
  %64 = load i64, i64* @REG_SZ, align 8
  %65 = call i8* @NtSetValueKey(i32* %63, i32* %5, i32 0, i64 %64, i32 ptrtoint ([12 x i32]* @.str.14 to i32), i32 24)
  store i8* %65, i8** %6, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8* %66)
  %68 = call i32 @RtlRosInitUnicodeStringFromLiteral(i32* %5, i8* bitcast ([10 x i32]* @.str.15 to i8*))
  %69 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0))
  %70 = load i32*, i32** %1, align 8
  %71 = load i64, i64* @REG_DWORD, align 8
  %72 = call i8* @NtSetValueKey(i32* %70, i32* %5, i32 0, i64 %71, i32 ptrtoint ([5 x i8]* @.str.17 to i32), i32 4)
  store i8* %72, i8** %6, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* %73)
  %75 = load i32*, i32** %1, align 8
  %76 = call i32 @NtClose(i32* %75)
  %77 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.19, i64 0, i64 0))
  %78 = call i32 @RtlRosInitUnicodeStringFromLiteral(i32* %4, i8* bitcast ([62 x i32]* @.str.20 to i8*))
  %79 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %80 = call i32 @InitializeObjectAttributes(i32* %3, i32* %4, i32 %79, i32* null, i32* null)
  %81 = load i32, i32* @MAXIMUM_ALLOWED, align 4
  %82 = call i8* @NtOpenKey(i32** %1, i32 %81, i32* %3)
  store i8* %82, i8** %6, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i8* %83)
  %85 = load i8*, i8** %6, align 8
  %86 = icmp eq i8* %85, null
  br i1 %86, label %87, label %156

87:                                               ; preds = %0
  %88 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %89

89:                                               ; preds = %154, %87
  %90 = load i8*, i8** %6, align 8
  %91 = load i8*, i8** @STATUS_SUCCESS, align 8
  %92 = icmp eq i8* %90, %91
  br i1 %92, label %93, label %155

93:                                               ; preds = %89
  %94 = load i32*, i32** %1, align 8
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* @KeyValueFullInformation, align 4
  %98 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %7, i64 0, i64 0
  %99 = call i8* @NtEnumerateValueKey(i32* %94, i32 %95, i32 %97, %struct.TYPE_3__* %98, i32 160, i32* %9)
  store i8* %99, i8** %6, align 8
  %100 = load i8*, i8** %6, align 8
  %101 = load i8*, i8** @STATUS_SUCCESS, align 8
  %102 = icmp eq i8* %100, %101
  br i1 %102, label %103, label %154

103:                                              ; preds = %93
  %104 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %7, i64 0, i64 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 16
  %107 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %7, i64 0, i64 0
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %7, i64 0, i64 0
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.23, i64 0, i64 0), i32 %106, i32 %109, i32 %112)
  store i32 0, i32* %10, align 4
  br label %114

114:                                              ; preds = %130, %103
  %115 = load i32, i32* %10, align 4
  %116 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %7, i64 0, i64 0
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = sdiv i32 %118, 2
  %120 = icmp slt i32 %115, %119
  br i1 %120, label %121, label %133

121:                                              ; preds = %114
  %122 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %7, i64 0, i64 0
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 2
  %124 = load i8**, i8*** %123, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8*, i8** %124, i64 %126
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i8* %128)
  br label %130

130:                                              ; preds = %121
  %131 = load i32, i32* %10, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %10, align 4
  br label %114

133:                                              ; preds = %114
  %134 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %7, i64 0, i64 0
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 3
  %136 = load i8*, i8** %135, align 16
  %137 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0), i8* %136)
  %138 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %7, i64 0, i64 0
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 3
  %140 = load i8*, i8** %139, align 16
  %141 = load i64, i64* @REG_SZ, align 8
  %142 = inttoptr i64 %141 to i8*
  %143 = icmp eq i8* %140, %142
  br i1 %143, label %144, label %153

144:                                              ; preds = %133
  %145 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %7, i64 0, i64 0
  %146 = bitcast %struct.TYPE_3__* %145 to i8*
  %147 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %7, i64 0, i64 0
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 16
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %146, i64 %150
  %152 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0), i8* %151)
  br label %153

153:                                              ; preds = %144, %133
  br label %154

154:                                              ; preds = %153, %93
  br label %89

155:                                              ; preds = %89
  br label %156

156:                                              ; preds = %155, %0
  %157 = load i32*, i32** %1, align 8
  %158 = call i32 @NtClose(i32* %157)
  %159 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.27, i64 0, i64 0))
  %160 = load i32, i32* @InputHandle, align 4
  %161 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %162 = call i32 @ReadConsoleA(i32 %160, i8* %161, i32 3, i32* %12, i32* null)
  %163 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp ne i32 %165, 121
  br i1 %166, label %167, label %173

167:                                              ; preds = %156
  %168 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp ne i32 %170, 89
  br i1 %171, label %172, label %173

172:                                              ; preds = %167
  br label %217

173:                                              ; preds = %167, %156
  %174 = call i32 @RtlRosInitUnicodeStringFromLiteral(i32* %4, i8* bitcast ([62 x i32]* @.str.28 to i8*))
  %175 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %176 = call i32 @InitializeObjectAttributes(i32* %3, i32* %4, i32 %175, i32* null, i32* null)
  %177 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i64 0, i64 0))
  %178 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %179 = call i8* @NtOpenKey(i32** %1, i32 %178, i32* %3)
  store i8* %179, i8** %6, align 8
  %180 = load i8*, i8** %6, align 8
  %181 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i8* %180)
  %182 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0))
  %183 = load i32*, i32** %1, align 8
  %184 = call i8* @NtDeleteKey(i32* %183)
  store i8* %184, i8** %6, align 8
  %185 = load i8*, i8** %6, align 8
  %186 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i8* %185)
  %187 = call i32 @RtlRosInitUnicodeStringFromLiteral(i32* %4, i8* bitcast ([46 x i32]* @.str.7 to i8*))
  %188 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %189 = call i32 @InitializeObjectAttributes(i32* %3, i32* %4, i32 %188, i32* null, i32* null)
  %190 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i64 0, i64 0))
  %191 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %192 = call i8* @NtOpenKey(i32** %1, i32 %191, i32* %3)
  store i8* %192, i8** %6, align 8
  %193 = load i8*, i8** %6, align 8
  %194 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i8* %193)
  %195 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0))
  %196 = load i32*, i32** %1, align 8
  %197 = call i8* @NtDeleteKey(i32* %196)
  store i8* %197, i8** %6, align 8
  %198 = load i8*, i8** %6, align 8
  %199 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i8* %198)
  %200 = load i32*, i32** %1, align 8
  %201 = call i32 @NtClose(i32* %200)
  %202 = call i32 @RtlRosInitUnicodeStringFromLiteral(i32* %4, i8* bitcast ([40 x i32]* @.str.2 to i8*))
  %203 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %204 = call i32 @InitializeObjectAttributes(i32* %3, i32* %4, i32 %203, i32* null, i32* null)
  %205 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i64 0, i64 0))
  %206 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %207 = call i8* @NtOpenKey(i32** %1, i32 %206, i32* %3)
  store i8* %207, i8** %6, align 8
  %208 = load i8*, i8** %6, align 8
  %209 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i8* %208)
  %210 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0))
  %211 = load i32*, i32** %1, align 8
  %212 = call i8* @NtDeleteKey(i32* %211)
  store i8* %212, i8** %6, align 8
  %213 = load i8*, i8** %6, align 8
  %214 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i8* %213)
  %215 = load i32*, i32** %1, align 8
  %216 = call i32 @NtClose(i32* %215)
  br label %217

217:                                              ; preds = %173, %172
  ret void
}

declare dso_local i32 @dprintf(i8*, ...) #1

declare dso_local i32 @RtlRosInitUnicodeStringFromLiteral(i32*, i8*) #1

declare dso_local i32 @InitializeObjectAttributes(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i8* @NtCreateKey(i32**, i32, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @NtClose(i32*) #1

declare dso_local i32 @do_enumeratekey(i8*) #1

declare dso_local i8* @NtOpenKey(i32**, i32, i32*) #1

declare dso_local i8* @NtSetValueKey(i32*, i32*, i32, i64, i32, i32) #1

declare dso_local i8* @NtEnumerateValueKey(i32*, i32, i32, %struct.TYPE_3__*, i32, i32*) #1

declare dso_local i32 @ReadConsoleA(i32, i8*, i32, i32*, i32*) #1

declare dso_local i8* @NtDeleteKey(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
