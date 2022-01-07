; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/winspool/extr_info.c_test_EnumPrinterDrivers.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/winspool/extr_info.c_test_EnumPrinterDrivers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }

@test_EnumPrinterDrivers.env_all = internal global [4 x i8] c"all\00", align 1
@ERROR_INVALID_LEVEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [87 x i8] c"(%d) got %u with %u and 0x%x (expected '0' with ERROR_INVALID_LEVEL or '!=0' and 0x0)\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Level %d not supported\0A\00", align 1
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i32 0, align 4
@default_printer = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [102 x i8] c"(%u) got %u with %u for %s (expected '0' with ERROR_INSUFFICIENT_BUFFER or '!= 0' without a printer)\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"no valid buffer size returned\0A\00", align 1
@on_win9x = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [88 x i8] c"level %d: EnumPrinterDriversA returned different size %d than EnumPrinterDriversW (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"(%u) got %u with %u (expected '!=0')\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"(%d) returned %d (expected %d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"(%u) got %s for %s (expected a full path)\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"(%u) returned %u (expected %u)\0A\00", align 1
@.str.9 = private unnamed_addr constant [67 x i8] c"(%u) got %u with %u (expected '0' with ERROR_INSUFFICIENT_BUFFER)\0A\00", align 1
@RPC_X_NULL_REF_POINTER = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [73 x i8] c"(%u) got %u with %u (expected '!=0' or '0' with RPC_X_NULL_REF_POINTER)\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"no printer drivers found\0A\00", align 1
@ERROR_INVALID_ENVIRONMENT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [57 x i8] c"NT4 and below don't support the 'all' environment value\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"unexpected error %u\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"EnumPrinterDriversA failed %u\0A\00", align 1
@.str.15 = private unnamed_addr constant [62 x i8] c"Driver Information not in sequence; pName %p, top of data %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_EnumPrinterDrivers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_EnumPrinterDrivers() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %239, %0
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 10
  br i1 %13, label %14, label %242

14:                                               ; preds = %11
  store i32 -559038737, i32* %3, align 4
  store i32 -559038737, i32* %5, align 4
  %15 = call i32 @SetLastError(i32 -559038737)
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @EnumPrinterDriversA(i32* null, i8* null, i32 %16, i32* null, i32 0, i32* %3, i32* %5)
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  %19 = call i32 (...) @GetLastError()
  %20 = call i64 @is_spooler_deactivated(i32 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %318

23:                                               ; preds = %14
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 7
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  %31 = icmp sgt i32 %30, 8
  br i1 %31, label %32, label %55

32:                                               ; preds = %29, %26, %23
  %33 = load i32, i32* %1, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = call i32 (...) @GetLastError()
  %37 = load i32, i32* @ERROR_INVALID_LEVEL, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %47, label %39

39:                                               ; preds = %35, %32
  %40 = load i32, i32* %1, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* %5, align 4
  %44 = icmp eq i32 %43, 0
  br label %45

45:                                               ; preds = %42, %39
  %46 = phi i1 [ false, %39 ], [ %44, %42 ]
  br label %47

47:                                               ; preds = %45, %35
  %48 = phi i1 [ true, %35 ], [ %46, %45 ]
  %49 = zext i1 %48 to i32
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %1, align 4
  %52 = call i32 (...) @GetLastError()
  %53 = load i32, i32* %5, align 4
  %54 = call i32 (i32, i8*, i32, ...) @ok(i32 %49, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51, i32 %52, i32 %53)
  br label %239

55:                                               ; preds = %29
  %56 = load i32, i32* %1, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %55
  %59 = call i32 (...) @GetLastError()
  %60 = load i32, i32* @ERROR_INVALID_LEVEL, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* %6, align 4
  %64 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  br label %239

65:                                               ; preds = %58, %55
  %66 = load i32, i32* %1, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %65
  %69 = call i32 (...) @GetLastError()
  %70 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %80, label %72

72:                                               ; preds = %68, %65
  %73 = load i32, i32* %1, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32*, i32** @default_printer, align 8
  %77 = icmp eq i32* %76, null
  br label %78

78:                                               ; preds = %75, %72
  %79 = phi i1 [ false, %72 ], [ %77, %75 ]
  br label %80

80:                                               ; preds = %78, %68
  %81 = phi i1 [ true, %68 ], [ %79, %78 ]
  %82 = zext i1 %81 to i32
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %1, align 4
  %85 = call i32 (...) @GetLastError()
  %86 = load i32*, i32** @default_printer, align 8
  %87 = call i32 (i32, i8*, i32, ...) @ok(i32 %82, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.2, i64 0, i64 0), i32 %83, i32 %84, i32 %85, i32* %86)
  %88 = load i32, i32* %3, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %80
  %91 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %239

92:                                               ; preds = %80
  %93 = load i32, i32* @on_win9x, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %107, label %95

95:                                               ; preds = %92
  br i1 true, label %96, label %107

96:                                               ; preds = %95
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @pEnumPrinterDriversW(i32* null, i32* null, i32 %97, i32* null, i32 0, i32* %7, i32* %8)
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %3, align 4
  %101 = icmp eq i32 %99, %100
  %102 = zext i1 %101 to i32
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* %3, align 4
  %105 = load i32, i32* %7, align 4
  %106 = call i32 (i32, i8*, i32, ...) @ok(i32 %102, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.4, i64 0, i64 0), i32 %103, i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %96, %95, %92
  %108 = call i32 (...) @GetProcessHeap()
  %109 = load i32, i32* %3, align 4
  %110 = add nsw i32 %109, 4
  %111 = call i32* @HeapAlloc(i32 %108, i32 0, i32 %110)
  store i32* %111, i32** %2, align 8
  %112 = load i32*, i32** %2, align 8
  %113 = icmp eq i32* %112, null
  br i1 %113, label %114, label %115

114:                                              ; preds = %107
  br label %239

115:                                              ; preds = %107
  %116 = call i32 @SetLastError(i32 -559038737)
  store i32 -559038737, i32* %4, align 4
  %117 = load i32, i32* %6, align 4
  %118 = load i32*, i32** %2, align 8
  %119 = load i32, i32* %3, align 4
  %120 = call i32 @EnumPrinterDriversA(i32* null, i8* null, i32 %117, i32* %118, i32 %119, i32* %4, i32* %5)
  store i32 %120, i32* %1, align 4
  %121 = load i32, i32* %1, align 4
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* %1, align 4
  %124 = call i32 (...) @GetLastError()
  %125 = call i32 (i32, i8*, i32, ...) @ok(i32 %121, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %122, i32 %123, i32 %124)
  %126 = load i32, i32* %4, align 4
  %127 = load i32, i32* %3, align 4
  %128 = icmp eq i32 %126, %127
  %129 = zext i1 %128 to i32
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* %4, align 4
  %132 = load i32, i32* %3, align 4
  %133 = call i32 (i32, i8*, i32, ...) @ok(i32 %129, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %130, i32 %131, i32 %132)
  %134 = load i32, i32* %6, align 4
  %135 = icmp sgt i32 %134, 1
  br i1 %135, label %136, label %153

136:                                              ; preds = %115
  %137 = load i32*, i32** %2, align 8
  %138 = bitcast i32* %137 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %138, %struct.TYPE_3__** %9, align 8
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32* @strrchr(i32 %141, i8 signext 92)
  %143 = icmp ne i32* %142, null
  %144 = zext i1 %143 to i32
  %145 = load i32, i32* %6, align 4
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 (i32, i8*, i32, ...) @ok(i32 %144, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32 %145, i32 %148, i32 %151)
  br label %153

153:                                              ; preds = %136, %115
  %154 = call i32 @SetLastError(i32 -559038737)
  store i32 -559038737, i32* %5, align 4
  store i32 -559038737, i32* %4, align 4
  %155 = load i32, i32* %6, align 4
  %156 = load i32*, i32** %2, align 8
  %157 = load i32, i32* %3, align 4
  %158 = add nsw i32 %157, 1
  %159 = call i32 @EnumPrinterDriversA(i32* null, i8* null, i32 %155, i32* %156, i32 %158, i32* %4, i32* %5)
  store i32 %159, i32* %1, align 4
  %160 = load i32, i32* %1, align 4
  %161 = load i32, i32* %6, align 4
  %162 = load i32, i32* %1, align 4
  %163 = call i32 (...) @GetLastError()
  %164 = call i32 (i32, i8*, i32, ...) @ok(i32 %160, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %161, i32 %162, i32 %163)
  %165 = load i32, i32* %4, align 4
  %166 = load i32, i32* %3, align 4
  %167 = icmp eq i32 %165, %166
  %168 = zext i1 %167 to i32
  %169 = load i32, i32* %6, align 4
  %170 = load i32, i32* %4, align 4
  %171 = load i32, i32* %3, align 4
  %172 = call i32 (i32, i8*, i32, ...) @ok(i32 %168, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %169, i32 %170, i32 %171)
  %173 = call i32 @SetLastError(i32 -559038737)
  store i32 -559038737, i32* %4, align 4
  %174 = load i32, i32* %6, align 4
  %175 = load i32*, i32** %2, align 8
  %176 = load i32, i32* %3, align 4
  %177 = sub nsw i32 %176, 1
  %178 = call i32 @EnumPrinterDriversA(i32* null, i8* null, i32 %174, i32* %175, i32 %177, i32* %4, i32* %5)
  store i32 %178, i32* %1, align 4
  %179 = load i32, i32* %1, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %185, label %181

181:                                              ; preds = %153
  %182 = call i32 (...) @GetLastError()
  %183 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %184 = icmp eq i32 %182, %183
  br label %185

185:                                              ; preds = %181, %153
  %186 = phi i1 [ false, %153 ], [ %184, %181 ]
  %187 = zext i1 %186 to i32
  %188 = load i32, i32* %6, align 4
  %189 = load i32, i32* %1, align 4
  %190 = call i32 (...) @GetLastError()
  %191 = call i32 (i32, i8*, i32, ...) @ok(i32 %187, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.9, i64 0, i64 0), i32 %188, i32 %189, i32 %190)
  %192 = load i32, i32* %4, align 4
  %193 = load i32, i32* %3, align 4
  %194 = icmp eq i32 %192, %193
  %195 = zext i1 %194 to i32
  %196 = load i32, i32* %6, align 4
  %197 = load i32, i32* %4, align 4
  %198 = load i32, i32* %3, align 4
  %199 = call i32 (i32, i8*, i32, ...) @ok(i32 %195, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %196, i32 %197, i32 %198)
  %200 = call i32 @SetLastError(i32 -559038737)
  store i32 -559038737, i32* %4, align 4
  store i32 -559038737, i32* %5, align 4
  %201 = load i32, i32* %6, align 4
  %202 = load i32*, i32** %2, align 8
  %203 = load i32, i32* %3, align 4
  %204 = call i32 @EnumPrinterDriversA(i32* null, i8* null, i32 %201, i32* %202, i32 %203, i32* null, i32* %5)
  store i32 %204, i32* %1, align 4
  %205 = load i32, i32* %1, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %211, label %207

207:                                              ; preds = %185
  %208 = call i32 (...) @GetLastError()
  %209 = load i32, i32* @RPC_X_NULL_REF_POINTER, align 4
  %210 = icmp eq i32 %208, %209
  br label %211

211:                                              ; preds = %207, %185
  %212 = phi i1 [ true, %185 ], [ %210, %207 ]
  %213 = zext i1 %212 to i32
  %214 = load i32, i32* %6, align 4
  %215 = load i32, i32* %1, align 4
  %216 = call i32 (...) @GetLastError()
  %217 = call i32 (i32, i8*, i32, ...) @ok(i32 %213, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.10, i64 0, i64 0), i32 %214, i32 %215, i32 %216)
  store i32 -559038737, i32* %4, align 4
  store i32 -559038737, i32* %5, align 4
  %218 = call i32 @SetLastError(i32 -559038737)
  %219 = load i32, i32* %6, align 4
  %220 = load i32*, i32** %2, align 8
  %221 = load i32, i32* %3, align 4
  %222 = call i32 @EnumPrinterDriversA(i32* null, i8* null, i32 %219, i32* %220, i32 %221, i32* %4, i32* null)
  store i32 %222, i32* %1, align 4
  %223 = load i32, i32* %1, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %229, label %225

225:                                              ; preds = %211
  %226 = call i32 (...) @GetLastError()
  %227 = load i32, i32* @RPC_X_NULL_REF_POINTER, align 4
  %228 = icmp eq i32 %226, %227
  br label %229

229:                                              ; preds = %225, %211
  %230 = phi i1 [ true, %211 ], [ %228, %225 ]
  %231 = zext i1 %230 to i32
  %232 = load i32, i32* %6, align 4
  %233 = load i32, i32* %1, align 4
  %234 = call i32 (...) @GetLastError()
  %235 = call i32 (i32, i8*, i32, ...) @ok(i32 %231, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.10, i64 0, i64 0), i32 %232, i32 %233, i32 %234)
  %236 = call i32 (...) @GetProcessHeap()
  %237 = load i32*, i32** %2, align 8
  %238 = call i32 @HeapFree(i32 %236, i32 0, i32* %237)
  br label %239

239:                                              ; preds = %229, %114, %90, %62, %47
  %240 = load i32, i32* %6, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %6, align 4
  br label %11

242:                                              ; preds = %11
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %243 = call i32 @SetLastError(i32 -559038737)
  %244 = call i32 @EnumPrinterDriversA(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_EnumPrinterDrivers.env_all, i64 0, i64 0), i32 1, i32* null, i32 0, i32* %4, i32* %5)
  store i32 %244, i32* %1, align 4
  %245 = load i32, i32* %1, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %242
  %248 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  br label %318

249:                                              ; preds = %242
  %250 = call i32 (...) @GetLastError()
  %251 = load i32, i32* @ERROR_INVALID_ENVIRONMENT, align 4
  %252 = icmp eq i32 %250, %251
  br i1 %252, label %253, label %255

253:                                              ; preds = %249
  %254 = call i32 @win_skip(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.12, i64 0, i64 0))
  br label %318

255:                                              ; preds = %249
  %256 = call i32 (...) @GetLastError()
  %257 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %258 = icmp eq i32 %256, %257
  %259 = zext i1 %258 to i32
  %260 = call i32 (...) @GetLastError()
  %261 = call i32 (i32, i8*, i32, ...) @ok(i32 %259, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i32 %260)
  %262 = call i32 (...) @GetProcessHeap()
  %263 = load i32, i32* %4, align 4
  %264 = call i32* @HeapAlloc(i32 %262, i32 0, i32 %263)
  store i32* %264, i32** %2, align 8
  %265 = load i32*, i32** %2, align 8
  %266 = load i32, i32* %4, align 4
  %267 = call i32 @EnumPrinterDriversA(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_EnumPrinterDrivers.env_all, i64 0, i64 0), i32 1, i32* %265, i32 %266, i32* %4, i32* %5)
  store i32 %267, i32* %1, align 4
  %268 = load i32, i32* %1, align 4
  %269 = call i32 (...) @GetLastError()
  %270 = call i32 (i32, i8*, i32, ...) @ok(i32 %268, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0), i32 %269)
  %271 = load i32, i32* %1, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %314

273:                                              ; preds = %255
  %274 = load i32, i32* %5, align 4
  %275 = icmp sgt i32 %274, 0
  br i1 %275, label %276, label %314

276:                                              ; preds = %273
  %277 = load i32*, i32** %2, align 8
  %278 = bitcast i32* %277 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %278, %struct.TYPE_4__** %10, align 8
  %279 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %280 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = inttoptr i64 %281 to i32*
  %283 = icmp eq i32* %282, null
  br i1 %283, label %302, label %284

284:                                              ; preds = %276
  %285 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = inttoptr i64 %287 to i32*
  %289 = load i32*, i32** %2, align 8
  %290 = icmp ult i32* %288, %289
  br i1 %290, label %302, label %291

291:                                              ; preds = %284
  %292 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %293 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = inttoptr i64 %294 to i32*
  %296 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %297 = load i32, i32* %5, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %296, i64 %298
  %300 = bitcast %struct.TYPE_4__* %299 to i32*
  %301 = icmp uge i32* %295, %300
  br label %302

302:                                              ; preds = %291, %284, %276
  %303 = phi i1 [ true, %284 ], [ true, %276 ], [ %301, %291 ]
  %304 = zext i1 %303 to i32
  %305 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %306 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = trunc i64 %307 to i32
  %309 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %310 = load i32, i32* %5, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %309, i64 %311
  %313 = call i32 (i32, i8*, i32, ...) @ok(i32 %304, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.15, i64 0, i64 0), i32 %308, %struct.TYPE_4__* %312)
  br label %314

314:                                              ; preds = %302, %273, %255
  %315 = call i32 (...) @GetProcessHeap()
  %316 = load i32*, i32** %2, align 8
  %317 = call i32 @HeapFree(i32 %315, i32 0, i32* %316)
  br label %318

318:                                              ; preds = %314, %253, %247, %22
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @EnumPrinterDriversA(i32*, i8*, i32, i32*, i32, i32*, i32*) #1

declare dso_local i64 @is_spooler_deactivated(i32, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @skip(i8*, ...) #1

declare dso_local i32 @pEnumPrinterDriversW(i32*, i32*, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32* @strrchr(i32, i8 signext) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @win_skip(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
