; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/regtest/extr_regtest.c_test2.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/regtest/extr_regtest.c_test2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i8**, i8*, i32 }

@.str = private unnamed_addr constant [24 x i8] c"NtCreateKey volatile: \0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"  \\Registry\\Machine\\Software\\test2reactos: \00", align 1
@.str.2 = private unnamed_addr constant [40 x i32] [i32 92, i32 82, i32 101, i32 103, i32 105, i32 115, i32 116, i32 114, i32 121, i32 92, i32 77, i32 97, i32 99, i32 104, i32 105, i32 110, i32 101, i32 92, i32 83, i32 111, i32 102, i32 116, i32 119, i32 97, i32 114, i32 101, i32 92, i32 116, i32 101, i32 115, i32 116, i32 50, i32 114, i32 101, i32 97, i32 99, i32 116, i32 111, i32 115, i32 0], align 4
@OBJ_CASE_INSENSITIVE = common dso_local global i32 0, align 4
@KEY_ALL_ACCESS = common dso_local global i32 0, align 4
@REG_OPTION_VOLATILE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"\09\09Status=%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i32] [i32 92, i32 82, i32 101, i32 103, i32 105, i32 115, i32 116, i32 114, i32 121, i32 92, i32 77, i32 97, i32 99, i32 104, i32 105, i32 110, i32 101, i32 92, i32 83, i32 111, i32 102, i32 116, i32 119, i32 97, i32 114, i32 101, i32 0], align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"  ...\\test2 :\00", align 1
@.str.6 = private unnamed_addr constant [46 x i32] [i32 92, i32 82, i32 101, i32 103, i32 105, i32 115, i32 116, i32 114, i32 121, i32 92, i32 77, i32 97, i32 99, i32 104, i32 105, i32 110, i32 101, i32 92, i32 83, i32 111, i32 102, i32 116, i32 119, i32 97, i32 114, i32 101, i32 92, i32 116, i32 101, i32 115, i32 116, i32 50, i32 114, i32 101, i32 97, i32 99, i32 116, i32 111, i32 115, i32 92, i32 116, i32 101, i32 115, i32 116, i32 50, i32 0], align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"\09\09\09\09\09Status=%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"  ...\\TestVolatile :\00", align 1
@.str.9 = private unnamed_addr constant [13 x i32] [i32 84, i32 101, i32 115, i32 116, i32 86, i32 111, i32 108, i32 97, i32 116, i32 105, i32 108, i32 101, i32 0], align 4
@.str.10 = private unnamed_addr constant [15 x i8] c"\09\09\09\09Status=%x\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i32] [i32 84, i32 101, i32 115, i32 116, i32 82, i32 69, i32 71, i32 95, i32 83, i32 90, i32 0], align 4
@.str.12 = private unnamed_addr constant [23 x i8] c"NtSetValueKey reg_sz: \00", align 1
@REG_SZ = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [12 x i32] [i32 84, i32 101, i32 115, i32 116, i32 32, i32 82, i32 101, i32 103, i32 95, i32 115, i32 122, i32 0], align 4
@.str.14 = private unnamed_addr constant [10 x i32] [i32 84, i32 101, i32 115, i32 116, i32 68, i32 87, i32 79, i32 82, i32 68, i32 0], align 4
@.str.15 = private unnamed_addr constant [26 x i8] c"NtSetValueKey reg_dword: \00", align 1
@REG_DWORD = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [5 x i8] c"reac\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"\09\09\09Status=%x\0A\00", align 1
@.str.18 = private unnamed_addr constant [72 x i8] c"NtOpenKey \\Registry\\Machine\\Software\\test2reactos\\test2\\TestVolatile : \00", align 1
@.str.19 = private unnamed_addr constant [59 x i32] [i32 92, i32 82, i32 101, i32 103, i32 105, i32 115, i32 116, i32 114, i32 121, i32 92, i32 77, i32 97, i32 99, i32 104, i32 105, i32 110, i32 101, i32 92, i32 83, i32 111, i32 102, i32 116, i32 119, i32 97, i32 114, i32 101, i32 92, i32 116, i32 101, i32 115, i32 116, i32 50, i32 114, i32 101, i32 97, i32 99, i32 116, i32 111, i32 115, i32 92, i32 116, i32 101, i32 115, i32 116, i32 50, i32 92, i32 84, i32 101, i32 115, i32 116, i32 86, i32 111, i32 108, i32 97, i32 116, i32 105, i32 108, i32 101, i32 0], align 4
@MAXIMUM_ALLOWED = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [16 x i8] c"\09\09\09\09Status =%x\0A\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"NtEnumerateValueKey : \0A\00", align 1
@STATUS_SUCCESS = common dso_local global i8* null, align 8
@KeyValueFullInformation = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [36 x i8] c"\09Value:DO=%d, DL=%d, NL=%d, Name = \00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"%C\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c", Type = %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"\09\09Value = %S\0A\00", align 1
@.str.26 = private unnamed_addr constant [49 x i8] c"delete \\Registry\\Machine\\software\\test2reactos ?\00", align 1
@InputHandle = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [13 x i8] c"NtOpenKey : \00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"NtDeleteKey : \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test2() #0 {
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
  %13 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %15 = call i32 @RtlRosInitUnicodeStringFromLiteral(i32* %4, i8* bitcast ([40 x i32]* @.str.2 to i8*))
  %16 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %17 = call i32 @InitializeObjectAttributes(i32* %3, i32* %4, i32 %16, i32* null, i32* null)
  %18 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %19 = load i32, i32* @REG_OPTION_VOLATILE, align 4
  %20 = call i8* @NtCreateKey(i32** %1, i32 %18, i32* %3, i32 0, i32* null, i32 %19, i32* null)
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %21)
  %23 = load i32*, i32** %1, align 8
  %24 = call i32 @NtClose(i32* %23)
  %25 = call i32 @do_enumeratekey(i8* bitcast ([27 x i32]* @.str.4 to i8*))
  %26 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %27 = call i32 @RtlRosInitUnicodeStringFromLiteral(i32* %4, i8* bitcast ([46 x i32]* @.str.6 to i8*))
  %28 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %29 = call i32 @InitializeObjectAttributes(i32* %3, i32* %4, i32 %28, i32* null, i32* null)
  %30 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %31 = load i32, i32* @REG_OPTION_VOLATILE, align 4
  %32 = call i8* @NtCreateKey(i32** %2, i32 %30, i32* %3, i32 0, i32* null, i32 %31, i32* null)
  store i8* %32, i8** %6, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* %33)
  %35 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %36 = call i32 @RtlRosInitUnicodeStringFromLiteral(i32* %4, i8* bitcast ([13 x i32]* @.str.9 to i8*))
  %37 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @InitializeObjectAttributes(i32* %3, i32* %4, i32 %37, i32* %38, i32* null)
  %40 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %41 = load i32, i32* @REG_OPTION_VOLATILE, align 4
  %42 = call i8* @NtCreateKey(i32** %1, i32 %40, i32* %3, i32 0, i32* null, i32 %41, i32* null)
  store i8* %42, i8** %6, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8* %43)
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @NtClose(i32* %45)
  %47 = call i32 @RtlRosInitUnicodeStringFromLiteral(i32* %5, i8* bitcast ([11 x i32]* @.str.11 to i8*))
  %48 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  %49 = load i32*, i32** %1, align 8
  %50 = load i64, i64* @REG_SZ, align 8
  %51 = call i8* @NtSetValueKey(i32* %49, i32* %5, i32 0, i64 %50, i32 ptrtoint ([12 x i32]* @.str.13 to i32), i32 24)
  store i8* %51, i8** %6, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8* %52)
  %54 = call i32 @RtlRosInitUnicodeStringFromLiteral(i32* %5, i8* bitcast ([10 x i32]* @.str.14 to i8*))
  %55 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0))
  %56 = load i32*, i32** %1, align 8
  %57 = load i64, i64* @REG_DWORD, align 8
  %58 = call i8* @NtSetValueKey(i32* %56, i32* %5, i32 0, i64 %57, i32 ptrtoint ([5 x i8]* @.str.16 to i32), i32 4)
  store i8* %58, i8** %6, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i8* %59)
  %61 = load i32*, i32** %1, align 8
  %62 = call i32 @NtClose(i32* %61)
  %63 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.18, i64 0, i64 0))
  %64 = call i32 @RtlRosInitUnicodeStringFromLiteral(i32* %4, i8* bitcast ([59 x i32]* @.str.19 to i8*))
  %65 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %66 = call i32 @InitializeObjectAttributes(i32* %3, i32* %4, i32 %65, i32* null, i32* null)
  %67 = load i32, i32* @MAXIMUM_ALLOWED, align 4
  %68 = call i8* @NtOpenKey(i32** %1, i32 %67, i32* %3)
  store i8* %68, i8** %6, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i8* %69)
  %71 = load i8*, i8** %6, align 8
  %72 = icmp eq i8* %71, null
  br i1 %72, label %73, label %142

73:                                               ; preds = %0
  %74 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %75

75:                                               ; preds = %140, %73
  %76 = load i8*, i8** %6, align 8
  %77 = load i8*, i8** @STATUS_SUCCESS, align 8
  %78 = icmp eq i8* %76, %77
  br i1 %78, label %79, label %141

79:                                               ; preds = %75
  %80 = load i32*, i32** %1, align 8
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* @KeyValueFullInformation, align 4
  %84 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %7, i64 0, i64 0
  %85 = call i8* @NtEnumerateValueKey(i32* %80, i32 %81, i32 %83, %struct.TYPE_3__* %84, i32 160, i32* %9)
  store i8* %85, i8** %6, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = load i8*, i8** @STATUS_SUCCESS, align 8
  %88 = icmp eq i8* %86, %87
  br i1 %88, label %89, label %140

89:                                               ; preds = %79
  %90 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %7, i64 0, i64 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 16
  %93 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %7, i64 0, i64 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %7, i64 0, i64 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.22, i64 0, i64 0), i32 %92, i32 %95, i32 %98)
  store i32 0, i32* %10, align 4
  br label %100

100:                                              ; preds = %116, %89
  %101 = load i32, i32* %10, align 4
  %102 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %7, i64 0, i64 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = sdiv i32 %104, 2
  %106 = icmp slt i32 %101, %105
  br i1 %106, label %107, label %119

107:                                              ; preds = %100
  %108 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %7, i64 0, i64 0
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 2
  %110 = load i8**, i8*** %109, align 8
  %111 = load i32, i32* %10, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8*, i8** %110, i64 %112
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i8* %114)
  br label %116

116:                                              ; preds = %107
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %10, align 4
  br label %100

119:                                              ; preds = %100
  %120 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %7, i64 0, i64 0
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 3
  %122 = load i8*, i8** %121, align 16
  %123 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i8* %122)
  %124 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %7, i64 0, i64 0
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 3
  %126 = load i8*, i8** %125, align 16
  %127 = load i64, i64* @REG_SZ, align 8
  %128 = inttoptr i64 %127 to i8*
  %129 = icmp eq i8* %126, %128
  br i1 %129, label %130, label %139

130:                                              ; preds = %119
  %131 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %7, i64 0, i64 0
  %132 = bitcast %struct.TYPE_3__* %131 to i8*
  %133 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %7, i64 0, i64 0
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 16
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %132, i64 %136
  %138 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0), i8* %137)
  br label %139

139:                                              ; preds = %130, %119
  br label %140

140:                                              ; preds = %139, %79
  br label %75

141:                                              ; preds = %75
  br label %142

142:                                              ; preds = %141, %0
  %143 = load i32*, i32** %1, align 8
  %144 = call i32 @NtClose(i32* %143)
  %145 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.26, i64 0, i64 0))
  %146 = load i32, i32* @InputHandle, align 4
  %147 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %148 = call i32 @ReadConsoleA(i32 %146, i8* %147, i32 3, i32* %12, i32* null)
  %149 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp ne i32 %151, 121
  br i1 %152, label %153, label %159

153:                                              ; preds = %142
  %154 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp ne i32 %156, 89
  br i1 %157, label %158, label %159

158:                                              ; preds = %153
  br label %205

159:                                              ; preds = %153, %142
  %160 = call i32 @RtlRosInitUnicodeStringFromLiteral(i32* %4, i8* bitcast ([59 x i32]* @.str.19 to i8*))
  %161 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %162 = call i32 @InitializeObjectAttributes(i32* %3, i32* %4, i32 %161, i32* null, i32* null)
  %163 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0))
  %164 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %165 = call i8* @NtOpenKey(i32** %1, i32 %164, i32* %3)
  store i8* %165, i8** %6, align 8
  %166 = load i8*, i8** %6, align 8
  %167 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i8* %166)
  %168 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0))
  %169 = load i32*, i32** %1, align 8
  %170 = call i8* @NtDeleteKey(i32* %169)
  store i8* %170, i8** %6, align 8
  %171 = load i8*, i8** %6, align 8
  %172 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i8* %171)
  %173 = load i32*, i32** %1, align 8
  %174 = call i32 @NtClose(i32* %173)
  %175 = call i32 @RtlRosInitUnicodeStringFromLiteral(i32* %4, i8* bitcast ([46 x i32]* @.str.6 to i8*))
  %176 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %177 = call i32 @InitializeObjectAttributes(i32* %3, i32* %4, i32 %176, i32* null, i32* null)
  %178 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0))
  %179 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %180 = call i8* @NtOpenKey(i32** %1, i32 %179, i32* %3)
  store i8* %180, i8** %6, align 8
  %181 = load i8*, i8** %6, align 8
  %182 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i8* %181)
  %183 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0))
  %184 = load i32*, i32** %1, align 8
  %185 = call i8* @NtDeleteKey(i32* %184)
  store i8* %185, i8** %6, align 8
  %186 = load i8*, i8** %6, align 8
  %187 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i8* %186)
  %188 = load i32*, i32** %1, align 8
  %189 = call i32 @NtClose(i32* %188)
  %190 = call i32 @RtlRosInitUnicodeStringFromLiteral(i32* %4, i8* bitcast ([40 x i32]* @.str.2 to i8*))
  %191 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %192 = call i32 @InitializeObjectAttributes(i32* %3, i32* %4, i32 %191, i32* null, i32* null)
  %193 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0))
  %194 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %195 = call i8* @NtOpenKey(i32** %1, i32 %194, i32* %3)
  store i8* %195, i8** %6, align 8
  %196 = load i8*, i8** %6, align 8
  %197 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i8* %196)
  %198 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0))
  %199 = load i32*, i32** %1, align 8
  %200 = call i8* @NtDeleteKey(i32* %199)
  store i8* %200, i8** %6, align 8
  %201 = load i8*, i8** %6, align 8
  %202 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i8* %201)
  %203 = load i32*, i32** %1, align 8
  %204 = call i32 @NtClose(i32* %203)
  br label %205

205:                                              ; preds = %159, %158
  ret void
}

declare dso_local i32 @dprintf(i8*, ...) #1

declare dso_local i32 @RtlRosInitUnicodeStringFromLiteral(i32*, i8*) #1

declare dso_local i32 @InitializeObjectAttributes(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i8* @NtCreateKey(i32**, i32, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @NtClose(i32*) #1

declare dso_local i32 @do_enumeratekey(i8*) #1

declare dso_local i8* @NtSetValueKey(i32*, i32*, i32, i64, i32, i32) #1

declare dso_local i8* @NtOpenKey(i32**, i32, i32*) #1

declare dso_local i8* @NtEnumerateValueKey(i32*, i32, i32, %struct.TYPE_3__*, i32, i32*) #1

declare dso_local i32 @ReadConsoleA(i32, i8*, i32, i32*, i32*) #1

declare dso_local i8* @NtDeleteKey(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
