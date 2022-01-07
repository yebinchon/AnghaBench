; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/regtest/extr_regtest.c_test1.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/regtest/extr_regtest.c_test1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i8** }
%struct.TYPE_7__ = type { i32, i32, i8**, i8*, i32 }

@.str = private unnamed_addr constant [10 x i32] [i32 92, i32 82, i32 101, i32 103, i32 105, i32 115, i32 116, i32 114, i32 121, i32 0], align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"NtOpenKey \\Registry : \00", align 1
@OBJ_CASE_INSENSITIVE = common dso_local global i32 0, align 4
@MAXIMUM_ALLOWED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"\09\09\09\09Status =%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"NtQueryKey : \00", align 1
@KeyBasicInformation = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"\09\09\09\09\09Status =%x\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"\09Key Name = \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%C\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"NtEnumerateKey : \0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"\09SubKey Name = \00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"NtClose : \00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"NtOpenKey \\Registry\\Machine : \00", align 1
@.str.12 = private unnamed_addr constant [18 x i32] [i32 92, i32 82, i32 101, i32 103, i32 105, i32 115, i32 116, i32 114, i32 121, i32 92, i32 77, i32 97, i32 99, i32 104, i32 105, i32 110, i32 101, i32 0], align 4
@.str.13 = private unnamed_addr constant [15 x i8] c"\09\09\09Status =%x\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"NtOpenKey System\\Setup : \00", align 1
@.str.15 = private unnamed_addr constant [13 x i32] [i32 83, i32 121, i32 115, i32 116, i32 101, i32 109, i32 92, i32 83, i32 101, i32 116, i32 117, i32 112, i32 0], align 4
@KEY_READ = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [19 x i8] c"NtQueryValueKey : \00", align 1
@.str.17 = private unnamed_addr constant [8 x i32] [i32 67, i32 109, i32 100, i32 76, i32 105, i32 110, i32 101, i32 0], align 4
@KeyValueFullInformation = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [36 x i8] c"\09Value:DO=%d, DL=%d, NL=%d, Name = \00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"\09\09Type = %d\0A\00", align 1
@REG_SZ = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [14 x i8] c"\09\09Value = %S\0A\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"NtEnumerateValueKey : \0A\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c", Type = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test1() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [5 x %struct.TYPE_8__], align 16
  %10 = alloca [5 x %struct.TYPE_7__], align 16
  store i32* null, i32** %1, align 8
  %11 = call i32 @ROS_STRING_INITIALIZER(i8* bitcast ([10 x i32]* @.str to i8*))
  store i32 %11, i32* %5, align 4
  %12 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %14 = call i32 @InitializeObjectAttributes(i32* %3, i32* %5, i32 %13, i32* null, i32* null)
  %15 = load i32, i32* @MAXIMUM_ALLOWED, align 4
  %16 = call i8* @NtOpenKey(i32** %2, i32 %15, i32* %3)
  store i8* %16, i8** %4, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %17)
  %19 = load i8*, i8** %4, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %101

21:                                               ; preds = %0
  %22 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %23 = load i32*, i32** %2, align 8
  %24 = load i32, i32* @KeyBasicInformation, align 4
  %25 = getelementptr inbounds [5 x %struct.TYPE_8__], [5 x %struct.TYPE_8__]* %9, i64 0, i64 0
  %26 = call i8* @NtQueryKey(i32* %23, i32 %24, %struct.TYPE_8__* %25, i32 80, i32* %7)
  store i8* %26, i8** %4, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %27)
  %29 = load i8*, i8** %4, align 8
  %30 = load i8*, i8** @STATUS_SUCCESS, align 8
  %31 = icmp eq i8* %29, %30
  br i1 %31, label %32, label %55

32:                                               ; preds = %21
  %33 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %50, %32
  %35 = load i32, i32* %8, align 4
  %36 = getelementptr inbounds [5 x %struct.TYPE_8__], [5 x %struct.TYPE_8__]* %9, i64 0, i64 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 16
  %39 = sdiv i32 %38, 2
  %40 = icmp slt i32 %35, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %34
  %42 = getelementptr inbounds [5 x %struct.TYPE_8__], [5 x %struct.TYPE_8__]* %9, i64 0, i64 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i8**, i8*** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %48)
  br label %50

50:                                               ; preds = %41
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %34

53:                                               ; preds = %34
  %54 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %21
  %56 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %94, %55
  %58 = load i8*, i8** %4, align 8
  %59 = load i8*, i8** @STATUS_SUCCESS, align 8
  %60 = icmp eq i8* %58, %59
  br i1 %60, label %61, label %95

61:                                               ; preds = %57
  %62 = load i32*, i32** %2, align 8
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* @KeyBasicInformation, align 4
  %66 = getelementptr inbounds [5 x %struct.TYPE_8__], [5 x %struct.TYPE_8__]* %9, i64 0, i64 0
  %67 = call i8* @NtEnumerateKey(i32* %62, i32 %63, i32 %65, %struct.TYPE_8__* %66, i32 80, i32* %7)
  store i8* %67, i8** %4, align 8
  %68 = load i8*, i8** %4, align 8
  %69 = load i8*, i8** @STATUS_SUCCESS, align 8
  %70 = icmp eq i8* %68, %69
  br i1 %70, label %71, label %94

71:                                               ; preds = %61
  %72 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %89, %71
  %74 = load i32, i32* %8, align 4
  %75 = getelementptr inbounds [5 x %struct.TYPE_8__], [5 x %struct.TYPE_8__]* %9, i64 0, i64 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 16
  %78 = sdiv i32 %77, 2
  %79 = icmp slt i32 %74, %78
  br i1 %79, label %80, label %92

80:                                               ; preds = %73
  %81 = getelementptr inbounds [5 x %struct.TYPE_8__], [5 x %struct.TYPE_8__]* %9, i64 0, i64 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = load i8**, i8*** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %83, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %87)
  br label %89

89:                                               ; preds = %80
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %73

92:                                               ; preds = %73
  %93 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %61
  br label %57

95:                                               ; preds = %57
  %96 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %97 = load i32*, i32** %2, align 8
  %98 = call i8* @NtClose(i32* %97)
  store i8* %98, i8** %4, align 8
  %99 = load i8*, i8** %4, align 8
  %100 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %99)
  br label %101

101:                                              ; preds = %95, %0
  %102 = load i32*, i32** %1, align 8
  %103 = call i8* @NtClose(i32* %102)
  %104 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  %105 = call i32 @RtlRosInitUnicodeStringFromLiteral(i32* %5, i8* bitcast ([18 x i32]* @.str.12 to i8*))
  %106 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %107 = call i32 @InitializeObjectAttributes(i32* %3, i32* %5, i32 %106, i32* null, i32* null)
  %108 = load i32, i32* @MAXIMUM_ALLOWED, align 4
  %109 = call i8* @NtOpenKey(i32** %2, i32 %108, i32* %3)
  store i8* %109, i8** %4, align 8
  %110 = load i8*, i8** %4, align 8
  %111 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i8* %110)
  %112 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0))
  %113 = call i32 @RtlRosInitUnicodeStringFromLiteral(i32* %5, i8* bitcast ([13 x i32]* @.str.15 to i8*))
  %114 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %115 = load i32*, i32** %2, align 8
  %116 = call i32 @InitializeObjectAttributes(i32* %3, i32* %5, i32 %114, i32* %115, i32* null)
  %117 = load i32, i32* @KEY_READ, align 4
  %118 = call i8* @NtOpenKey(i32** %1, i32 %117, i32* %3)
  store i8* %118, i8** %4, align 8
  %119 = load i8*, i8** %4, align 8
  %120 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i8* %119)
  %121 = load i8*, i8** %4, align 8
  %122 = icmp eq i8* %121, null
  br i1 %122, label %123, label %267

123:                                              ; preds = %101
  %124 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0))
  %125 = call i32 @RtlRosInitUnicodeStringFromLiteral(i32* %5, i8* bitcast ([8 x i32]* @.str.17 to i8*))
  %126 = load i32*, i32** %1, align 8
  %127 = load i32, i32* @KeyValueFullInformation, align 4
  %128 = getelementptr inbounds [5 x %struct.TYPE_7__], [5 x %struct.TYPE_7__]* %10, i64 0, i64 0
  %129 = call i8* @NtQueryValueKey(i32* %126, i32* %5, i32 %127, %struct.TYPE_7__* %128, i32 160, i32* %7)
  store i8* %129, i8** %4, align 8
  %130 = load i8*, i8** %4, align 8
  %131 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %130)
  %132 = load i8*, i8** %4, align 8
  %133 = load i8*, i8** @STATUS_SUCCESS, align 8
  %134 = icmp eq i8* %132, %133
  br i1 %134, label %135, label %193

135:                                              ; preds = %123
  %136 = getelementptr inbounds [5 x %struct.TYPE_7__], [5 x %struct.TYPE_7__]* %10, i64 0, i64 0
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 16
  %139 = getelementptr inbounds [5 x %struct.TYPE_7__], [5 x %struct.TYPE_7__]* %10, i64 0, i64 0
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = getelementptr inbounds [5 x %struct.TYPE_7__], [5 x %struct.TYPE_7__]* %10, i64 0, i64 0
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i64 0, i64 0), i32 %138, i32 %141, i32 %144)
  store i32 0, i32* %8, align 4
  br label %146

146:                                              ; preds = %167, %135
  %147 = load i32, i32* %8, align 4
  %148 = icmp slt i32 %147, 10
  br i1 %148, label %149, label %156

149:                                              ; preds = %146
  %150 = load i32, i32* %8, align 4
  %151 = getelementptr inbounds [5 x %struct.TYPE_7__], [5 x %struct.TYPE_7__]* %10, i64 0, i64 0
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = sdiv i32 %153, 2
  %155 = icmp slt i32 %150, %154
  br label %156

156:                                              ; preds = %149, %146
  %157 = phi i1 [ false, %146 ], [ %155, %149 ]
  br i1 %157, label %158, label %170

158:                                              ; preds = %156
  %159 = getelementptr inbounds [5 x %struct.TYPE_7__], [5 x %struct.TYPE_7__]* %10, i64 0, i64 0
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 2
  %161 = load i8**, i8*** %160, align 8
  %162 = load i32, i32* %8, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8*, i8** %161, i64 %163
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %165)
  br label %167

167:                                              ; preds = %158
  %168 = load i32, i32* %8, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %8, align 4
  br label %146

170:                                              ; preds = %156
  %171 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %172 = getelementptr inbounds [5 x %struct.TYPE_7__], [5 x %struct.TYPE_7__]* %10, i64 0, i64 0
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 3
  %174 = load i8*, i8** %173, align 16
  %175 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i8* %174)
  %176 = getelementptr inbounds [5 x %struct.TYPE_7__], [5 x %struct.TYPE_7__]* %10, i64 0, i64 0
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 3
  %178 = load i8*, i8** %177, align 16
  %179 = load i64, i64* @REG_SZ, align 8
  %180 = inttoptr i64 %179 to i8*
  %181 = icmp eq i8* %178, %180
  br i1 %181, label %182, label %192

182:                                              ; preds = %170
  %183 = getelementptr inbounds [5 x %struct.TYPE_7__], [5 x %struct.TYPE_7__]* %10, i64 0, i64 0
  %184 = ptrtoint %struct.TYPE_7__* %183 to i32
  %185 = getelementptr inbounds [5 x %struct.TYPE_7__], [5 x %struct.TYPE_7__]* %10, i64 0, i64 0
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 16
  %188 = add nsw i32 %184, %187
  %189 = sext i32 %188 to i64
  %190 = inttoptr i64 %189 to i8*
  %191 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* %190)
  br label %192

192:                                              ; preds = %182, %170
  br label %193

193:                                              ; preds = %192, %123
  %194 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %195

195:                                              ; preds = %260, %193
  %196 = load i8*, i8** %4, align 8
  %197 = load i8*, i8** @STATUS_SUCCESS, align 8
  %198 = icmp eq i8* %196, %197
  br i1 %198, label %199, label %261

199:                                              ; preds = %195
  %200 = load i32*, i32** %1, align 8
  %201 = load i32, i32* %6, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %6, align 4
  %203 = load i32, i32* @KeyValueFullInformation, align 4
  %204 = getelementptr inbounds [5 x %struct.TYPE_7__], [5 x %struct.TYPE_7__]* %10, i64 0, i64 0
  %205 = call i8* @NtEnumerateValueKey(i32* %200, i32 %201, i32 %203, %struct.TYPE_7__* %204, i32 160, i32* %7)
  store i8* %205, i8** %4, align 8
  %206 = load i8*, i8** %4, align 8
  %207 = load i8*, i8** @STATUS_SUCCESS, align 8
  %208 = icmp eq i8* %206, %207
  br i1 %208, label %209, label %260

209:                                              ; preds = %199
  %210 = getelementptr inbounds [5 x %struct.TYPE_7__], [5 x %struct.TYPE_7__]* %10, i64 0, i64 0
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 16
  %213 = getelementptr inbounds [5 x %struct.TYPE_7__], [5 x %struct.TYPE_7__]* %10, i64 0, i64 0
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 8
  %216 = getelementptr inbounds [5 x %struct.TYPE_7__], [5 x %struct.TYPE_7__]* %10, i64 0, i64 0
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i64 0, i64 0), i32 %212, i32 %215, i32 %218)
  store i32 0, i32* %8, align 4
  br label %220

220:                                              ; preds = %236, %209
  %221 = load i32, i32* %8, align 4
  %222 = getelementptr inbounds [5 x %struct.TYPE_7__], [5 x %struct.TYPE_7__]* %10, i64 0, i64 0
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = sdiv i32 %224, 2
  %226 = icmp slt i32 %221, %225
  br i1 %226, label %227, label %239

227:                                              ; preds = %220
  %228 = getelementptr inbounds [5 x %struct.TYPE_7__], [5 x %struct.TYPE_7__]* %10, i64 0, i64 0
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 2
  %230 = load i8**, i8*** %229, align 8
  %231 = load i32, i32* %8, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i8*, i8** %230, i64 %232
  %234 = load i8*, i8** %233, align 8
  %235 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %234)
  br label %236

236:                                              ; preds = %227
  %237 = load i32, i32* %8, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %8, align 4
  br label %220

239:                                              ; preds = %220
  %240 = getelementptr inbounds [5 x %struct.TYPE_7__], [5 x %struct.TYPE_7__]* %10, i64 0, i64 0
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 3
  %242 = load i8*, i8** %241, align 16
  %243 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), i8* %242)
  %244 = getelementptr inbounds [5 x %struct.TYPE_7__], [5 x %struct.TYPE_7__]* %10, i64 0, i64 0
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i32 0, i32 3
  %246 = load i8*, i8** %245, align 16
  %247 = load i64, i64* @REG_SZ, align 8
  %248 = inttoptr i64 %247 to i8*
  %249 = icmp eq i8* %246, %248
  br i1 %249, label %250, label %259

250:                                              ; preds = %239
  %251 = getelementptr inbounds [5 x %struct.TYPE_7__], [5 x %struct.TYPE_7__]* %10, i64 0, i64 0
  %252 = bitcast %struct.TYPE_7__* %251 to i8*
  %253 = getelementptr inbounds [5 x %struct.TYPE_7__], [5 x %struct.TYPE_7__]* %10, i64 0, i64 0
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 16
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i8, i8* %252, i64 %256
  %258 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* %257)
  br label %259

259:                                              ; preds = %250, %239
  br label %260

260:                                              ; preds = %259, %199
  br label %195

261:                                              ; preds = %195
  %262 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %263 = load i32*, i32** %1, align 8
  %264 = call i8* @NtClose(i32* %263)
  store i8* %264, i8** %4, align 8
  %265 = load i8*, i8** %4, align 8
  %266 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %265)
  br label %267

267:                                              ; preds = %261, %101
  %268 = load i32*, i32** %2, align 8
  %269 = call i8* @NtClose(i32* %268)
  ret void
}

declare dso_local i32 @ROS_STRING_INITIALIZER(i8*) #1

declare dso_local i32 @dprintf(i8*, ...) #1

declare dso_local i32 @InitializeObjectAttributes(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i8* @NtOpenKey(i32**, i32, i32*) #1

declare dso_local i8* @NtQueryKey(i32*, i32, %struct.TYPE_8__*, i32, i32*) #1

declare dso_local i8* @NtEnumerateKey(i32*, i32, i32, %struct.TYPE_8__*, i32, i32*) #1

declare dso_local i8* @NtClose(i32*) #1

declare dso_local i32 @RtlRosInitUnicodeStringFromLiteral(i32*, i8*) #1

declare dso_local i8* @NtQueryValueKey(i32*, i32*, i32, %struct.TYPE_7__*, i32, i32*) #1

declare dso_local i8* @NtEnumerateValueKey(i32*, i32, i32, %struct.TYPE_7__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
