; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/localspl/extr_localmon.c_test_XcvDataPort_GetTransmissionRetryTimeout.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/localspl/extr_localmon.c_test_XcvDataPort_GetTransmissionRetryTimeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hXcv = common dso_local global i32 0, align 4
@cmd_GetTransmissionRetryTimeoutW = common dso_local global i32 0, align 4
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"'GetTransmissionRetryTimeout' not supported\0A\00", align 1
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [74 x i8] c"returned %d with %u and %u (expected ERROR_INSUFFICIENT_BUFFER and '%u')\0A\00", align 1
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@WinNT_CV_WindowsA = common dso_local global i32 0, align 4
@KEY_ALL_ACCESS = common dso_local global i32 0, align 4
@ERROR_ACCESS_DENIED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"ACCESS_DENIED\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@TransmissionRetryTimeoutA = common dso_local global i32 0, align 4
@ERROR_FILE_NOT_FOUND = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [78 x i8] c"returned %u and %u for \22%s\22 (expected ERROR_SUCCESS or ERROR_FILE_NOT_FOUND)\0A\00", align 1
@.str.5 = private unnamed_addr constant [70 x i8] c"returned %d with %u and %u for %d\0A (expected ERROR_SUCCESS for '45')\0A\00", align 1
@REG_SZ = common dso_local global i32 0, align 4
@emptyA = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [32 x i8] c"expected ERROR_SUCCESS, got %u\0A\00", align 1
@num_0A = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [69 x i8] c"returned %d with %u and %u for %d\0A (expected ERROR_SUCCESS for '0')\0A\00", align 1
@num_1A = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [71 x i8] c"returned %d with %u and %u for %d\0A (expected 'ERROR_SUCCESS' for '1')\0A\00", align 1
@num_999999A = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [74 x i8] c"returned %d with %u and %u for %d\0A (expected ERROR_SUCCESS for '999999')\0A\00", align 1
@num_1000000A = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [75 x i8] c"returned %d with %u and %u for %d\0A (expected ERROR_SUCCESS for '1000000')\0A\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"unable to restore original value (got %u): %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_XcvDataPort_GetTransmissionRetryTimeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_XcvDataPort_GetTransmissionRetryTimeout() #0 {
  %1 = alloca [16 x i8], align 16
  %2 = alloca i32*, align 8
  %3 = alloca [2 x i32], align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* null, i32** %2, align 8
  store i32 -559038737, i32* %5, align 4
  %7 = call i32 @SetLastError(i32 -559038737)
  %8 = load i32, i32* @hXcv, align 4
  %9 = load i32, i32* @cmd_GetTransmissionRetryTimeoutW, align 4
  %10 = call i32 @pXcvDataPort(i32 %8, i32 %9, i32* null, i32 0, i32* null, i32 0, i32* %5)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %0
  %15 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %309

16:                                               ; preds = %0
  store i32 4, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %21, %22
  br label %24

24:                                               ; preds = %20, %16
  %25 = phi i1 [ false, %16 ], [ %23, %20 ]
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* %4, align 4
  %28 = call i32 (...) @GetLastError()
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 (i32, i8*, i32, ...) @ok(i32 %26, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %28, i32 %29, i32 %30)
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %34 = load i32, i32* @WinNT_CV_WindowsA, align 4
  %35 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %36 = call i32 @RegOpenKeyExA(i32 %33, i32 %34, i32 0, i32 %35, i32** %2)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @ERROR_ACCESS_DENIED, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %24
  %41 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %309

42:                                               ; preds = %24
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @ERROR_SUCCESS, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* %4, align 4
  %48 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %47)
  br label %309

49:                                               ; preds = %42
  %50 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  store i8 0, i8* %50, align 16
  store i32 15, i32* %5, align 4
  %51 = load i32*, i32** %2, align 8
  %52 = load i32, i32* @TransmissionRetryTimeoutA, align 4
  %53 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %54 = bitcast i8* %53 to i32*
  %55 = call i32 @RegQueryValueExA(i32* %51, i32 %52, i32* null, i32* null, i32* %54, i32* %5)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @ERROR_SUCCESS, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %49
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %62 = icmp eq i32 %60, %61
  br label %63

63:                                               ; preds = %59, %49
  %64 = phi i1 [ true, %49 ], [ %62, %59 ]
  %65 = zext i1 %64 to i32
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* %5, align 4
  %68 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %69 = call i32 (i32, i8*, i32, ...) @ok(i32 %65, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.4, i64 0, i64 0), i32 %66, i32 %67, i8* %68)
  %70 = load i32*, i32** %2, align 8
  %71 = load i32, i32* @TransmissionRetryTimeoutA, align 4
  %72 = call i32 @RegDeleteValueA(i32* %70, i32 %71)
  store i32 -559038737, i32* %5, align 4
  %73 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  store i32 -559038737, i32* %73, align 4
  %74 = call i32 @SetLastError(i32 -559038737)
  %75 = load i32, i32* @hXcv, align 4
  %76 = load i32, i32* @cmd_GetTransmissionRetryTimeoutW, align 4
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @pXcvDataPort(i32 %75, i32 %76, i32* null, i32 0, i32* %77, i32 %78, i32* %5)
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @ERROR_SUCCESS, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %63
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 45
  br label %87

87:                                               ; preds = %83, %63
  %88 = phi i1 [ false, %63 ], [ %86, %83 ]
  %89 = zext i1 %88 to i32
  %90 = load i32, i32* %4, align 4
  %91 = call i32 (...) @GetLastError()
  %92 = load i32, i32* %5, align 4
  %93 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i32, i8*, i32, ...) @ok(i32 %89, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.5, i64 0, i64 0), i32 %90, i32 %91, i32 %92, i32 %94)
  %96 = load i32*, i32** %2, align 8
  %97 = load i32, i32* @TransmissionRetryTimeoutA, align 4
  %98 = load i32, i32* @REG_SZ, align 4
  %99 = load i64, i64* @emptyA, align 8
  %100 = inttoptr i64 %99 to i32*
  %101 = call i32 @RegSetValueExA(i32* %96, i32 %97, i32 0, i32 %98, i32* %100, i32 1)
  store i32 %101, i32* %4, align 4
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* @ERROR_SUCCESS, align 4
  %104 = icmp eq i32 %102, %103
  %105 = zext i1 %104 to i32
  %106 = call i32 (...) @GetLastError()
  %107 = call i32 (i32, i8*, i32, ...) @ok(i32 %105, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %106)
  store i32 -559038737, i32* %5, align 4
  %108 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  store i32 -559038737, i32* %108, align 4
  %109 = call i32 @SetLastError(i32 -559038737)
  %110 = load i32, i32* @hXcv, align 4
  %111 = load i32, i32* @cmd_GetTransmissionRetryTimeoutW, align 4
  %112 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @pXcvDataPort(i32 %110, i32 %111, i32* null, i32 0, i32* %112, i32 %113, i32* %5)
  store i32 %114, i32* %4, align 4
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* @ERROR_SUCCESS, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %87
  %119 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 45
  br label %122

122:                                              ; preds = %118, %87
  %123 = phi i1 [ false, %87 ], [ %121, %118 ]
  %124 = zext i1 %123 to i32
  %125 = load i32, i32* %4, align 4
  %126 = call i32 (...) @GetLastError()
  %127 = load i32, i32* %5, align 4
  %128 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (i32, i8*, i32, ...) @ok(i32 %124, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.5, i64 0, i64 0), i32 %125, i32 %126, i32 %127, i32 %129)
  %131 = load i32*, i32** %2, align 8
  %132 = load i32, i32* @TransmissionRetryTimeoutA, align 4
  %133 = load i32, i32* @REG_SZ, align 4
  %134 = load i8*, i8** @num_0A, align 8
  %135 = bitcast i8* %134 to i32*
  %136 = load i8*, i8** @num_0A, align 8
  %137 = call i32 @lstrlenA(i8* %136)
  %138 = add nsw i32 %137, 1
  %139 = call i32 @RegSetValueExA(i32* %131, i32 %132, i32 0, i32 %133, i32* %135, i32 %138)
  store i32 %139, i32* %4, align 4
  %140 = load i32, i32* %4, align 4
  %141 = load i32, i32* @ERROR_SUCCESS, align 4
  %142 = icmp eq i32 %140, %141
  %143 = zext i1 %142 to i32
  %144 = call i32 (...) @GetLastError()
  %145 = call i32 (i32, i8*, i32, ...) @ok(i32 %143, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %144)
  store i32 -559038737, i32* %5, align 4
  %146 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  store i32 -559038737, i32* %146, align 4
  %147 = call i32 @SetLastError(i32 -559038737)
  %148 = load i32, i32* @hXcv, align 4
  %149 = load i32, i32* @cmd_GetTransmissionRetryTimeoutW, align 4
  %150 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %151 = load i32, i32* %6, align 4
  %152 = call i32 @pXcvDataPort(i32 %148, i32 %149, i32* null, i32 0, i32* %150, i32 %151, i32* %5)
  store i32 %152, i32* %4, align 4
  %153 = load i32, i32* %4, align 4
  %154 = load i32, i32* @ERROR_SUCCESS, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %122
  %157 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %158 = load i32, i32* %157, align 4
  %159 = icmp eq i32 %158, 0
  br label %160

160:                                              ; preds = %156, %122
  %161 = phi i1 [ false, %122 ], [ %159, %156 ]
  %162 = zext i1 %161 to i32
  %163 = load i32, i32* %4, align 4
  %164 = call i32 (...) @GetLastError()
  %165 = load i32, i32* %5, align 4
  %166 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 (i32, i8*, i32, ...) @ok(i32 %162, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.7, i64 0, i64 0), i32 %163, i32 %164, i32 %165, i32 %167)
  %169 = load i32*, i32** %2, align 8
  %170 = load i32, i32* @TransmissionRetryTimeoutA, align 4
  %171 = load i32, i32* @REG_SZ, align 4
  %172 = load i8*, i8** @num_1A, align 8
  %173 = bitcast i8* %172 to i32*
  %174 = load i8*, i8** @num_1A, align 8
  %175 = call i32 @lstrlenA(i8* %174)
  %176 = add nsw i32 %175, 1
  %177 = call i32 @RegSetValueExA(i32* %169, i32 %170, i32 0, i32 %171, i32* %173, i32 %176)
  store i32 %177, i32* %4, align 4
  %178 = load i32, i32* %4, align 4
  %179 = load i32, i32* @ERROR_SUCCESS, align 4
  %180 = icmp eq i32 %178, %179
  %181 = zext i1 %180 to i32
  %182 = call i32 (...) @GetLastError()
  %183 = call i32 (i32, i8*, i32, ...) @ok(i32 %181, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %182)
  store i32 -559038737, i32* %5, align 4
  %184 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  store i32 -559038737, i32* %184, align 4
  %185 = call i32 @SetLastError(i32 -559038737)
  %186 = load i32, i32* @hXcv, align 4
  %187 = load i32, i32* @cmd_GetTransmissionRetryTimeoutW, align 4
  %188 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %189 = load i32, i32* %6, align 4
  %190 = call i32 @pXcvDataPort(i32 %186, i32 %187, i32* null, i32 0, i32* %188, i32 %189, i32* %5)
  store i32 %190, i32* %4, align 4
  %191 = load i32, i32* %4, align 4
  %192 = load i32, i32* @ERROR_SUCCESS, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %198

194:                                              ; preds = %160
  %195 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %196 = load i32, i32* %195, align 4
  %197 = icmp eq i32 %196, 1
  br label %198

198:                                              ; preds = %194, %160
  %199 = phi i1 [ false, %160 ], [ %197, %194 ]
  %200 = zext i1 %199 to i32
  %201 = load i32, i32* %4, align 4
  %202 = call i32 (...) @GetLastError()
  %203 = load i32, i32* %5, align 4
  %204 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %205 = load i32, i32* %204, align 4
  %206 = call i32 (i32, i8*, i32, ...) @ok(i32 %200, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.8, i64 0, i64 0), i32 %201, i32 %202, i32 %203, i32 %205)
  %207 = load i32*, i32** %2, align 8
  %208 = load i32, i32* @TransmissionRetryTimeoutA, align 4
  %209 = load i32, i32* @REG_SZ, align 4
  %210 = load i8*, i8** @num_999999A, align 8
  %211 = bitcast i8* %210 to i32*
  %212 = load i8*, i8** @num_999999A, align 8
  %213 = call i32 @lstrlenA(i8* %212)
  %214 = add nsw i32 %213, 1
  %215 = call i32 @RegSetValueExA(i32* %207, i32 %208, i32 0, i32 %209, i32* %211, i32 %214)
  store i32 %215, i32* %4, align 4
  %216 = load i32, i32* %4, align 4
  %217 = load i32, i32* @ERROR_SUCCESS, align 4
  %218 = icmp eq i32 %216, %217
  %219 = zext i1 %218 to i32
  %220 = call i32 (...) @GetLastError()
  %221 = call i32 (i32, i8*, i32, ...) @ok(i32 %219, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %220)
  store i32 -559038737, i32* %5, align 4
  %222 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  store i32 -559038737, i32* %222, align 4
  %223 = call i32 @SetLastError(i32 -559038737)
  %224 = load i32, i32* @hXcv, align 4
  %225 = load i32, i32* @cmd_GetTransmissionRetryTimeoutW, align 4
  %226 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %227 = load i32, i32* %6, align 4
  %228 = call i32 @pXcvDataPort(i32 %224, i32 %225, i32* null, i32 0, i32* %226, i32 %227, i32* %5)
  store i32 %228, i32* %4, align 4
  %229 = load i32, i32* %4, align 4
  %230 = load i32, i32* @ERROR_SUCCESS, align 4
  %231 = icmp eq i32 %229, %230
  br i1 %231, label %232, label %236

232:                                              ; preds = %198
  %233 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %234 = load i32, i32* %233, align 4
  %235 = icmp eq i32 %234, 999999
  br label %236

236:                                              ; preds = %232, %198
  %237 = phi i1 [ false, %198 ], [ %235, %232 ]
  %238 = zext i1 %237 to i32
  %239 = load i32, i32* %4, align 4
  %240 = call i32 (...) @GetLastError()
  %241 = load i32, i32* %5, align 4
  %242 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %243 = load i32, i32* %242, align 4
  %244 = call i32 (i32, i8*, i32, ...) @ok(i32 %238, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.9, i64 0, i64 0), i32 %239, i32 %240, i32 %241, i32 %243)
  %245 = load i32*, i32** %2, align 8
  %246 = load i32, i32* @TransmissionRetryTimeoutA, align 4
  %247 = load i32, i32* @REG_SZ, align 4
  %248 = load i8*, i8** @num_1000000A, align 8
  %249 = bitcast i8* %248 to i32*
  %250 = load i8*, i8** @num_1000000A, align 8
  %251 = call i32 @lstrlenA(i8* %250)
  %252 = add nsw i32 %251, 1
  %253 = call i32 @RegSetValueExA(i32* %245, i32 %246, i32 0, i32 %247, i32* %249, i32 %252)
  store i32 %253, i32* %4, align 4
  %254 = load i32, i32* %4, align 4
  %255 = load i32, i32* @ERROR_SUCCESS, align 4
  %256 = icmp eq i32 %254, %255
  %257 = zext i1 %256 to i32
  %258 = call i32 (...) @GetLastError()
  %259 = call i32 (i32, i8*, i32, ...) @ok(i32 %257, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %258)
  store i32 -559038737, i32* %5, align 4
  %260 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  store i32 -559038737, i32* %260, align 4
  %261 = call i32 @SetLastError(i32 -559038737)
  %262 = load i32, i32* @hXcv, align 4
  %263 = load i32, i32* @cmd_GetTransmissionRetryTimeoutW, align 4
  %264 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %265 = load i32, i32* %6, align 4
  %266 = call i32 @pXcvDataPort(i32 %262, i32 %263, i32* null, i32 0, i32* %264, i32 %265, i32* %5)
  store i32 %266, i32* %4, align 4
  %267 = load i32, i32* %4, align 4
  %268 = load i32, i32* @ERROR_SUCCESS, align 4
  %269 = icmp eq i32 %267, %268
  br i1 %269, label %270, label %274

270:                                              ; preds = %236
  %271 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %272 = load i32, i32* %271, align 4
  %273 = icmp eq i32 %272, 1000000
  br label %274

274:                                              ; preds = %270, %236
  %275 = phi i1 [ false, %236 ], [ %273, %270 ]
  %276 = zext i1 %275 to i32
  %277 = load i32, i32* %4, align 4
  %278 = call i32 (...) @GetLastError()
  %279 = load i32, i32* %5, align 4
  %280 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %281 = load i32, i32* %280, align 4
  %282 = call i32 (i32, i8*, i32, ...) @ok(i32 %276, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.10, i64 0, i64 0), i32 %277, i32 %278, i32 %279, i32 %281)
  %283 = load i32*, i32** %2, align 8
  %284 = load i32, i32* @TransmissionRetryTimeoutA, align 4
  %285 = call i32 @RegDeleteValueA(i32* %283, i32 %284)
  %286 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %287 = load i8, i8* %286, align 16
  %288 = icmp ne i8 %287, 0
  br i1 %288, label %289, label %306

289:                                              ; preds = %274
  %290 = load i32*, i32** %2, align 8
  %291 = load i32, i32* @TransmissionRetryTimeoutA, align 4
  %292 = load i32, i32* @REG_SZ, align 4
  %293 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %294 = bitcast i8* %293 to i32*
  %295 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %296 = call i32 @lstrlenA(i8* %295)
  %297 = add nsw i32 %296, 1
  %298 = call i32 @RegSetValueExA(i32* %290, i32 %291, i32 0, i32 %292, i32* %294, i32 %297)
  store i32 %298, i32* %4, align 4
  %299 = load i32, i32* %4, align 4
  %300 = load i32, i32* @ERROR_SUCCESS, align 4
  %301 = icmp eq i32 %299, %300
  %302 = zext i1 %301 to i32
  %303 = load i32, i32* %4, align 4
  %304 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %305 = call i32 (i32, i8*, i32, ...) @ok(i32 %302, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0), i32 %303, i8* %304)
  br label %306

306:                                              ; preds = %289, %274
  %307 = load i32*, i32** %2, align 8
  %308 = call i32 @RegCloseKey(i32* %307)
  br label %309

309:                                              ; preds = %306, %46, %40, %14
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @pXcvDataPort(i32, i32, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @skip(i8*, ...) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @RegOpenKeyExA(i32, i32, i32, i32, i32**) #1

declare dso_local i32 @RegQueryValueExA(i32*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @RegDeleteValueA(i32*, i32) #1

declare dso_local i32 @RegSetValueExA(i32*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @lstrlenA(i8*) #1

declare dso_local i32 @RegCloseKey(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
