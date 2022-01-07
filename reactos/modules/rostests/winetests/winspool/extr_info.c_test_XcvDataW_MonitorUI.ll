; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/winspool/extr_info.c_test_XcvDataW_MonitorUI.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/winspool/extr_info.c_test_XcvDataW_MonitorUI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32* }

@MAX_PATH = common dso_local global i32 0, align 4
@SERVER_ACCESS_ADMINISTER = common dso_local global i32 0, align 4
@xcv_localport = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"returned %d with %u and handle %p (expected '!= 0')\0A\00", align 1
@cmd_MonitorUIW = common dso_local global i32* null, align 8
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [115 x i8] c"returned %d with %u and %u for status %u (expected '!= 0' and '<= MAX_PATH' for status ERROR_INSUFFICIENT_BUFFER)\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"buffer overflow (%u)\0A\00", align 1
@emptyW = common dso_local global i32* null, align 8
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [89 x i8] c"returned %d with %u and %u for status %u (expected '!= 0' with ERROR_INVALID_PARAMETER)\0A\00", align 1
@RPC_X_NULL_REF_POINTER = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [85 x i8] c"returned %d with %u and %u for status %u (expected '0' with RPC_X_NULL_REF_POINTER)\0A\00", align 1
@.str.5 = private unnamed_addr constant [86 x i8] c"returned %d with %u and %u for status %u (expected '0' with ERROR_INVALID_PARAMETER)\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [85 x i8] c"returned %d with %u and %u for status %u (expected '!= 0' for status ERROR_SUCCESS)\0A\00", align 1
@.str.7 = private unnamed_addr constant [97 x i8] c"returned %d with %u and %u for status %u (expected '!= 0' for status ERROR_INSUFFICIENT_BUFFER)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_XcvDataW_MonitorUI to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_XcvDataW_MonitorUI() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_3__, align 8
  %9 = alloca i32, align 4
  %10 = load i32, i32* @MAX_PATH, align 4
  %11 = add nsw i32 %10, 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %3, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  store i32* null, i32** %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i32* null, i32** %16, align 8
  %17 = load i32, i32* @SERVER_ACCESS_ADMINISTER, align 4
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i32 %17, i32* %18, align 8
  store i32* null, i32** %2, align 8
  %19 = call i32 @SetLastError(i32 -559038737)
  %20 = load i32, i32* @xcv_localport, align 4
  %21 = call i64 @OpenPrinterA(i32 %20, i32** %2, %struct.TYPE_3__* %8)
  store i64 %21, i64* %1, align 8
  %22 = load i64, i64* %1, align 8
  %23 = call i64 (...) @GetLastError()
  %24 = call i64 @is_spooler_deactivated(i64 %22, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %0
  store i32 1, i32* %9, align 4
  br label %236

27:                                               ; preds = %0
  %28 = load i64, i64* %1, align 8
  %29 = call i64 (...) @GetLastError()
  %30 = call i64 @is_access_denied(i64 %28, i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 1, i32* %9, align 4
  br label %236

33:                                               ; preds = %27
  %34 = load i64, i64* %1, align 8
  %35 = trunc i64 %34 to i32
  %36 = load i64, i64* %1, align 8
  %37 = call i64 (...) @GetLastError()
  %38 = load i32*, i32** %2, align 8
  %39 = ptrtoint i32* %38 to i64
  %40 = call i32 (i32, i8*, i64, i64, i64, ...) @ok(i32 %35, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %36, i64 %37, i64 %39)
  %41 = load i64, i64* %1, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %33
  store i32 1, i32* %9, align 4
  br label %236

44:                                               ; preds = %33
  store i64 3735928559, i64* %5, align 8
  store i64 3735928559, i64* %6, align 8
  %45 = call i32 @SetLastError(i32 -559038737)
  %46 = load i32*, i32** %2, align 8
  %47 = load i32*, i32** @cmd_MonitorUIW, align 8
  %48 = call i64 @pXcvDataW(i32* %46, i32* %47, i32* null, i32 0, i32* null, i64 0, i64* %5, i64* %6)
  store i64 %48, i64* %1, align 8
  %49 = load i64, i64* %1, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %44
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load i64, i64* %5, align 8
  %57 = load i32, i32* @MAX_PATH, align 4
  %58 = sext i32 %57 to i64
  %59 = icmp sle i64 %56, %58
  br label %60

60:                                               ; preds = %55, %51, %44
  %61 = phi i1 [ false, %51 ], [ false, %44 ], [ %59, %55 ]
  %62 = zext i1 %61 to i32
  %63 = load i64, i64* %1, align 8
  %64 = call i64 (...) @GetLastError()
  %65 = load i64, i64* %5, align 8
  %66 = load i64, i64* %6, align 8
  %67 = call i32 (i32, i8*, i64, i64, i64, ...) @ok(i32 %62, i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.1, i64 0, i64 0), i64 %63, i64 %64, i64 %65, i64 %66)
  %68 = load i64, i64* %5, align 8
  %69 = load i32, i32* @MAX_PATH, align 4
  %70 = sext i32 %69 to i64
  %71 = icmp sgt i64 %68, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %60
  %73 = load i32*, i32** %2, align 8
  %74 = call i32 @ClosePrinter(i32* %73)
  %75 = load i64, i64* %5, align 8
  %76 = call i32 @skip(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %75)
  store i32 1, i32* %9, align 4
  br label %236

77:                                               ; preds = %60
  %78 = load i64, i64* %5, align 8
  store i64 %78, i64* %7, align 8
  store i64 3735928559, i64* %5, align 8
  store i64 3735928559, i64* %6, align 8
  %79 = call i32 @SetLastError(i32 -559038737)
  %80 = load i32*, i32** %2, align 8
  %81 = load i32*, i32** @emptyW, align 8
  %82 = call i64 @pXcvDataW(i32* %80, i32* %81, i32* null, i32 0, i32* null, i64 0, i64* %5, i64* %6)
  store i64 %82, i64* %1, align 8
  %83 = load i64, i64* %1, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %77
  %86 = load i64, i64* %6, align 8
  %87 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %88 = icmp eq i64 %86, %87
  br label %89

89:                                               ; preds = %85, %77
  %90 = phi i1 [ false, %77 ], [ %88, %85 ]
  %91 = zext i1 %90 to i32
  %92 = load i64, i64* %1, align 8
  %93 = call i64 (...) @GetLastError()
  %94 = load i64, i64* %5, align 8
  %95 = load i64, i64* %6, align 8
  %96 = call i32 (i32, i8*, i64, i64, i64, ...) @ok(i32 %91, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.3, i64 0, i64 0), i64 %92, i64 %93, i64 %94, i64 %95)
  store i64 3735928559, i64* %5, align 8
  store i64 3735928559, i64* %6, align 8
  %97 = call i32 @SetLastError(i32 -559038737)
  %98 = load i32*, i32** %2, align 8
  %99 = load i32, i32* @MAX_PATH, align 4
  %100 = sext i32 %99 to i64
  %101 = call i64 @pXcvDataW(i32* %98, i32* null, i32* null, i32 0, i32* %14, i64 %100, i64* %5, i64* %6)
  store i64 %101, i64* %1, align 8
  %102 = load i64, i64* %1, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %89
  %105 = call i64 (...) @GetLastError()
  %106 = load i64, i64* @RPC_X_NULL_REF_POINTER, align 8
  %107 = icmp eq i64 %105, %106
  br label %108

108:                                              ; preds = %104, %89
  %109 = phi i1 [ false, %89 ], [ %107, %104 ]
  %110 = zext i1 %109 to i32
  %111 = load i64, i64* %1, align 8
  %112 = call i64 (...) @GetLastError()
  %113 = load i64, i64* %5, align 8
  %114 = load i64, i64* %6, align 8
  %115 = call i32 (i32, i8*, i64, i64, i64, ...) @ok(i32 %110, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.4, i64 0, i64 0), i64 %111, i64 %112, i64 %113, i64 %114)
  store i64 3735928559, i64* %5, align 8
  store i64 3735928559, i64* %6, align 8
  %116 = call i32 @SetLastError(i32 -559038737)
  %117 = load i32*, i32** %2, align 8
  %118 = load i32*, i32** @cmd_MonitorUIW, align 8
  %119 = load i64, i64* %7, align 8
  %120 = call i64 @pXcvDataW(i32* %117, i32* %118, i32* null, i32 0, i32* %14, i64 %119, i64* null, i64* %6)
  store i64 %120, i64* %1, align 8
  %121 = load i64, i64* %1, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %108
  %124 = call i64 (...) @GetLastError()
  %125 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %126 = icmp eq i64 %124, %125
  br label %127

127:                                              ; preds = %123, %108
  %128 = phi i1 [ false, %108 ], [ %126, %123 ]
  %129 = zext i1 %128 to i32
  %130 = load i64, i64* %1, align 8
  %131 = call i64 (...) @GetLastError()
  %132 = load i64, i64* %5, align 8
  %133 = load i64, i64* %6, align 8
  %134 = call i32 (i32, i8*, i64, i64, i64, ...) @ok(i32 %129, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.5, i64 0, i64 0), i64 %130, i64 %131, i64 %132, i64 %133)
  store i64 3735928559, i64* %5, align 8
  store i64 3735928559, i64* %6, align 8
  %135 = call i32 @SetLastError(i32 -559038737)
  %136 = load i32*, i32** %2, align 8
  %137 = load i32*, i32** @cmd_MonitorUIW, align 8
  %138 = load i64, i64* %7, align 8
  %139 = call i64 @pXcvDataW(i32* %136, i32* %137, i32* null, i32 0, i32* null, i64 %138, i64* %5, i64* %6)
  store i64 %139, i64* %1, align 8
  %140 = load i64, i64* %1, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %146, label %142

142:                                              ; preds = %127
  %143 = call i64 (...) @GetLastError()
  %144 = load i64, i64* @RPC_X_NULL_REF_POINTER, align 8
  %145 = icmp eq i64 %143, %144
  br label %146

146:                                              ; preds = %142, %127
  %147 = phi i1 [ false, %127 ], [ %145, %142 ]
  %148 = zext i1 %147 to i32
  %149 = load i64, i64* %1, align 8
  %150 = call i64 (...) @GetLastError()
  %151 = load i64, i64* %5, align 8
  %152 = load i64, i64* %6, align 8
  %153 = call i32 (i32, i8*, i64, i64, i64, ...) @ok(i32 %148, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.4, i64 0, i64 0), i64 %149, i64 %150, i64 %151, i64 %152)
  store i64 3735928559, i64* %5, align 8
  store i64 3735928559, i64* %6, align 8
  %154 = call i32 @SetLastError(i32 -559038737)
  %155 = load i32*, i32** %2, align 8
  %156 = load i32*, i32** @cmd_MonitorUIW, align 8
  %157 = load i64, i64* %7, align 8
  %158 = call i64 @pXcvDataW(i32* %155, i32* %156, i32* null, i32 0, i32* %14, i64 %157, i64* %5, i64* null)
  store i64 %158, i64* %1, align 8
  %159 = load i64, i64* %1, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %165, label %161

161:                                              ; preds = %146
  %162 = call i64 (...) @GetLastError()
  %163 = load i64, i64* @RPC_X_NULL_REF_POINTER, align 8
  %164 = icmp eq i64 %162, %163
  br label %165

165:                                              ; preds = %161, %146
  %166 = phi i1 [ false, %146 ], [ %164, %161 ]
  %167 = zext i1 %166 to i32
  %168 = load i64, i64* %1, align 8
  %169 = call i64 (...) @GetLastError()
  %170 = load i64, i64* %5, align 8
  %171 = load i64, i64* %6, align 8
  %172 = call i32 (i32, i8*, i64, i64, i64, ...) @ok(i32 %167, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.4, i64 0, i64 0), i64 %168, i64 %169, i64 %170, i64 %171)
  store i64 3735928559, i64* %5, align 8
  store i64 3735928559, i64* %6, align 8
  %173 = call i32 @SetLastError(i32 -559038737)
  %174 = load i32*, i32** %2, align 8
  %175 = load i32*, i32** @cmd_MonitorUIW, align 8
  %176 = load i64, i64* %7, align 8
  %177 = add nsw i64 %176, 1
  %178 = call i64 @pXcvDataW(i32* %174, i32* %175, i32* null, i32 0, i32* %14, i64 %177, i64* %5, i64* %6)
  store i64 %178, i64* %1, align 8
  %179 = load i64, i64* %1, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %165
  %182 = load i64, i64* %6, align 8
  %183 = load i64, i64* @ERROR_SUCCESS, align 8
  %184 = icmp eq i64 %182, %183
  br label %185

185:                                              ; preds = %181, %165
  %186 = phi i1 [ false, %165 ], [ %184, %181 ]
  %187 = zext i1 %186 to i32
  %188 = load i64, i64* %1, align 8
  %189 = call i64 (...) @GetLastError()
  %190 = load i64, i64* %5, align 8
  %191 = load i64, i64* %6, align 8
  %192 = call i32 (i32, i8*, i64, i64, i64, ...) @ok(i32 %187, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.6, i64 0, i64 0), i64 %188, i64 %189, i64 %190, i64 %191)
  store i64 3735928559, i64* %5, align 8
  store i64 3735928559, i64* %6, align 8
  %193 = call i32 @SetLastError(i32 -559038737)
  %194 = load i32*, i32** %2, align 8
  %195 = load i32*, i32** @cmd_MonitorUIW, align 8
  %196 = load i64, i64* %7, align 8
  %197 = sub nsw i64 %196, 1
  %198 = call i64 @pXcvDataW(i32* %194, i32* %195, i32* null, i32 0, i32* %14, i64 %197, i64* %5, i64* %6)
  store i64 %198, i64* %1, align 8
  %199 = load i64, i64* %1, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %185
  %202 = load i64, i64* %6, align 8
  %203 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %204 = icmp eq i64 %202, %203
  br label %205

205:                                              ; preds = %201, %185
  %206 = phi i1 [ false, %185 ], [ %204, %201 ]
  %207 = zext i1 %206 to i32
  %208 = load i64, i64* %1, align 8
  %209 = call i64 (...) @GetLastError()
  %210 = load i64, i64* %5, align 8
  %211 = load i64, i64* %6, align 8
  %212 = call i32 (i32, i8*, i64, i64, i64, ...) @ok(i32 %207, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.7, i64 0, i64 0), i64 %208, i64 %209, i64 %210, i64 %211)
  %213 = load i64, i64* %7, align 8
  %214 = call i32 @memset(i32* %14, i32 0, i64 %213)
  store i64 3735928559, i64* %5, align 8
  store i64 3735928559, i64* %6, align 8
  %215 = call i32 @SetLastError(i32 -559038737)
  %216 = load i32*, i32** %2, align 8
  %217 = load i32*, i32** @cmd_MonitorUIW, align 8
  %218 = load i64, i64* %7, align 8
  %219 = call i64 @pXcvDataW(i32* %216, i32* %217, i32* null, i32 0, i32* %14, i64 %218, i64* %5, i64* %6)
  store i64 %219, i64* %1, align 8
  %220 = load i64, i64* %1, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %205
  %223 = load i64, i64* %6, align 8
  %224 = load i64, i64* @ERROR_SUCCESS, align 8
  %225 = icmp eq i64 %223, %224
  br label %226

226:                                              ; preds = %222, %205
  %227 = phi i1 [ false, %205 ], [ %225, %222 ]
  %228 = zext i1 %227 to i32
  %229 = load i64, i64* %1, align 8
  %230 = call i64 (...) @GetLastError()
  %231 = load i64, i64* %5, align 8
  %232 = load i64, i64* %6, align 8
  %233 = call i32 (i32, i8*, i64, i64, i64, ...) @ok(i32 %228, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.6, i64 0, i64 0), i64 %229, i64 %230, i64 %231, i64 %232)
  %234 = load i32*, i32** %2, align 8
  %235 = call i32 @ClosePrinter(i32* %234)
  store i32 0, i32* %9, align 4
  br label %236

236:                                              ; preds = %226, %72, %43, %32, %26
  %237 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %237)
  %238 = load i32, i32* %9, align 4
  switch i32 %238, label %240 [
    i32 0, label %239
    i32 1, label %239
  ]

239:                                              ; preds = %236, %236
  ret void

240:                                              ; preds = %236
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i64 @OpenPrinterA(i32, i32**, %struct.TYPE_3__*) #2

declare dso_local i64 @is_spooler_deactivated(i64, i64) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i64 @is_access_denied(i64, i64) #2

declare dso_local i32 @ok(i32, i8*, i64, i64, i64, ...) #2

declare dso_local i64 @pXcvDataW(i32*, i32*, i32*, i32, i32*, i64, i64*, i64*) #2

declare dso_local i32 @ClosePrinter(i32*) #2

declare dso_local i32 @skip(i8*, i64) #2

declare dso_local i32 @memset(i32*, i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
