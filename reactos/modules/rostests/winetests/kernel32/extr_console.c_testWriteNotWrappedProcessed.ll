; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_console.c_testWriteNotWrappedProcessed.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_console.c_testWriteNotWrappedProcessed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"abcd\0Af\09g\00", align 1
@ENABLE_PROCESSED_OUTPUT = common dso_local global i32 0, align 4
@ENABLE_WRAP_AT_EOL_OUTPUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"clearing wrap at EOL & setting processed output\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Cursor in upper-left-5\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"WriteConsole\0A\00", align 1
@TEST_ATTRIB = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [54 x i8] c"Win9x/WinMe don't respect ~ENABLE_WRAP_AT_EOL_OUTPUT\0A\00", align 1
@DEFAULT_ATTRIB = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"Cursor in upper-left-4\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64)* @testWriteNotWrappedProcessed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testWriteNotWrappedProcessed(i32 %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_7__, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = bitcast %struct.TYPE_7__* %3 to i64*
  store i64 %1, i64* %13, align 4
  store i32 %0, i32* %4, align 4
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i32 @strlen(i8* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = call i8* @strchr(i8* %16, i8 signext 10)
  %18 = load i8*, i8** %8, align 8
  %19 = ptrtoint i8* %17 to i64
  %20 = ptrtoint i8* %18 to i64
  %21 = sub i64 %19, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @GetConsoleMode(i32 %23, i32* %7)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %2
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @ENABLE_PROCESSED_OUTPUT, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @ENABLE_WRAP_AT_EOL_OUTPUT, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  %34 = call i64 @SetConsoleMode(i32 %27, i32 %33)
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %26, %2
  %37 = phi i1 [ false, %2 ], [ %35, %26 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @ok(i32 %38, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %41, 5
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  store i32 0, i32* %44, align 4
  %45 = load i32, i32* %4, align 4
  %46 = bitcast %struct.TYPE_7__* %5 to i64*
  %47 = load i64, i64* %46, align 4
  %48 = call i64 @SetConsoleCursorPosition(i32 %45, i64 %47)
  %49 = icmp ne i64 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @ok(i32 %50, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* %4, align 4
  %53 = load i8*, i8** %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i64 @WriteConsoleA(i32 %52, i8* %53, i32 %54, i32* %6, i32* null)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %36
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp eq i32 %58, %59
  br label %61

61:                                               ; preds = %57, %36
  %62 = phi i1 [ false, %36 ], [ %60, %57 ]
  %63 = zext i1 %62 to i32
  %64 = call i32 @ok(i32 %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  store i32 0, i32* %65, align 4
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 %67, 5
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i32 %68, i32* %69, align 4
  br label %70

70:                                               ; preds = %93, %61
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %74, 1
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %97

77:                                               ; preds = %70
  %78 = load i32, i32* %4, align 4
  %79 = load i8*, i8** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 %81, %83
  %85 = add nsw i32 %84, 5
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %79, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = load i64, i64* @TEST_ATTRIB, align 8
  %90 = bitcast %struct.TYPE_7__* %5 to i64*
  %91 = load i64, i64* %90, align 4
  %92 = call i32 @okCHAR(i32 %78, i64 %91, i8 signext %88, i64 %89)
  br label %93

93:                                               ; preds = %77
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  br label %70

97:                                               ; preds = %70
  %98 = load i32, i32* %4, align 4
  %99 = bitcast %struct.TYPE_7__* %5 to i64*
  %100 = load i64, i64* %99, align 4
  %101 = call i32 @ReadConsoleOutputAttribute(i32 %98, i64* %12, i32 1, i64 %100, i32* %6)
  %102 = load i64, i64* %12, align 8
  %103 = load i64, i64* @TEST_ATTRIB, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %97
  %106 = call i32 @win_skip(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  br label %366

107:                                              ; preds = %97
  %108 = load i32, i32* %4, align 4
  %109 = load i64, i64* @DEFAULT_ATTRIB, align 8
  %110 = bitcast %struct.TYPE_7__* %5 to i64*
  %111 = load i64, i64* %110, align 4
  %112 = call i32 @okCHAR(i32 %108, i64 %111, i8 signext 32, i64 %109)
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i32 0, i32* %113, align 4
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 4
  %117 = load i32, i32* %4, align 4
  %118 = load i8*, i8** %8, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 5
  %120 = load i8, i8* %119, align 1
  %121 = load i64, i64* @TEST_ATTRIB, align 8
  %122 = bitcast %struct.TYPE_7__* %5 to i64*
  %123 = load i64, i64* %122, align 4
  %124 = call i32 @okCHAR(i32 %117, i64 %123, i8 signext %120, i64 %121)
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i32 1, i32* %125, align 4
  br label %126

126:                                              ; preds = %136, %107
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = icmp slt i32 %128, 8
  br i1 %129, label %130, label %140

130:                                              ; preds = %126
  %131 = load i32, i32* %4, align 4
  %132 = load i64, i64* @TEST_ATTRIB, align 8
  %133 = bitcast %struct.TYPE_7__* %5 to i64*
  %134 = load i64, i64* %133, align 4
  %135 = call i32 @okCHAR(i32 %131, i64 %134, i8 signext 32, i64 %132)
  br label %136

136:                                              ; preds = %130
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 4
  br label %126

140:                                              ; preds = %126
  %141 = load i32, i32* %4, align 4
  %142 = load i8*, i8** %8, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 7
  %144 = load i8, i8* %143, align 1
  %145 = load i64, i64* @TEST_ATTRIB, align 8
  %146 = bitcast %struct.TYPE_7__* %5 to i64*
  %147 = load i64, i64* %146, align 4
  %148 = call i32 @okCHAR(i32 %141, i64 %147, i8 signext %144, i64 %145)
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %149, align 4
  %152 = load i32, i32* %4, align 4
  %153 = load i64, i64* @DEFAULT_ATTRIB, align 8
  %154 = bitcast %struct.TYPE_7__* %5 to i64*
  %155 = load i64, i64* %154, align 4
  %156 = call i32 @okCHAR(i32 %152, i64 %155, i8 signext 32, i64 %153)
  %157 = load i32, i32* %4, align 4
  %158 = bitcast %struct.TYPE_7__* %5 to i64*
  %159 = load i64, i64* %158, align 4
  %160 = call i32 @okCURSOR(i32 %157, i64 %159)
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = sub nsw i32 %162, 4
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i32 %163, i32* %164, align 4
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  store i32 0, i32* %165, align 4
  %166 = load i32, i32* %4, align 4
  %167 = bitcast %struct.TYPE_7__* %5 to i64*
  %168 = load i64, i64* %167, align 4
  %169 = call i64 @SetConsoleCursorPosition(i32 %166, i64 %168)
  %170 = icmp ne i64 %169, 0
  %171 = zext i1 %170 to i32
  %172 = call i32 @ok(i32 %171, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %173 = load i32, i32* %4, align 4
  %174 = load i8*, i8** %8, align 8
  %175 = load i32, i32* %9, align 4
  %176 = call i64 @WriteConsoleA(i32 %173, i8* %174, i32 %175, i32* %6, i32* null)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %140
  %179 = load i32, i32* %6, align 4
  %180 = load i32, i32* %9, align 4
  %181 = icmp eq i32 %179, %180
  br label %182

182:                                              ; preds = %178, %140
  %183 = phi i1 [ false, %140 ], [ %181, %178 ]
  %184 = zext i1 %183 to i32
  %185 = call i32 @ok(i32 %184, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  store i32 0, i32* %186, align 4
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = sub nsw i32 %188, 4
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i32 %189, i32* %190, align 4
  br label %191

191:                                              ; preds = %213, %182
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = icmp slt i32 %193, %195
  br i1 %196, label %197, label %217

197:                                              ; preds = %191
  %198 = load i32, i32* %4, align 4
  %199 = load i8*, i8** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = sub nsw i32 %201, %203
  %205 = add nsw i32 %204, 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8, i8* %199, i64 %206
  %208 = load i8, i8* %207, align 1
  %209 = load i64, i64* @TEST_ATTRIB, align 8
  %210 = bitcast %struct.TYPE_7__* %5 to i64*
  %211 = load i64, i64* %210, align 4
  %212 = call i32 @okCHAR(i32 %198, i64 %211, i8 signext %208, i64 %209)
  br label %213

213:                                              ; preds = %197
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %214, align 4
  br label %191

217:                                              ; preds = %191
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i32 0, i32* %218, align 4
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %219, align 4
  %222 = load i32, i32* %4, align 4
  %223 = load i8*, i8** %8, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 5
  %225 = load i8, i8* %224, align 1
  %226 = load i64, i64* @TEST_ATTRIB, align 8
  %227 = bitcast %struct.TYPE_7__* %5 to i64*
  %228 = load i64, i64* %227, align 4
  %229 = call i32 @okCHAR(i32 %222, i64 %228, i8 signext %225, i64 %226)
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i32 1, i32* %230, align 4
  br label %231

231:                                              ; preds = %241, %217
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = icmp slt i32 %233, 8
  br i1 %234, label %235, label %245

235:                                              ; preds = %231
  %236 = load i32, i32* %4, align 4
  %237 = load i64, i64* @TEST_ATTRIB, align 8
  %238 = bitcast %struct.TYPE_7__* %5 to i64*
  %239 = load i64, i64* %238, align 4
  %240 = call i32 @okCHAR(i32 %236, i64 %239, i8 signext 32, i64 %237)
  br label %241

241:                                              ; preds = %235
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %242, align 4
  br label %231

245:                                              ; preds = %231
  %246 = load i32, i32* %4, align 4
  %247 = load i8*, i8** %8, align 8
  %248 = getelementptr inbounds i8, i8* %247, i64 7
  %249 = load i8, i8* %248, align 1
  %250 = load i64, i64* @TEST_ATTRIB, align 8
  %251 = bitcast %struct.TYPE_7__* %5 to i64*
  %252 = load i64, i64* %251, align 4
  %253 = call i32 @okCHAR(i32 %246, i64 %252, i8 signext %249, i64 %250)
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %254, align 4
  %257 = load i32, i32* %4, align 4
  %258 = load i64, i64* @DEFAULT_ATTRIB, align 8
  %259 = bitcast %struct.TYPE_7__* %5 to i64*
  %260 = load i64, i64* %259, align 4
  %261 = call i32 @okCHAR(i32 %257, i64 %260, i8 signext 32, i64 %258)
  %262 = load i32, i32* %4, align 4
  %263 = bitcast %struct.TYPE_7__* %5 to i64*
  %264 = load i64, i64* %263, align 4
  %265 = call i32 @okCURSOR(i32 %262, i64 %264)
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = sub nsw i32 %267, 3
  %269 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i32 %268, i32* %269, align 4
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  store i32 0, i32* %270, align 4
  %271 = load i32, i32* %4, align 4
  %272 = bitcast %struct.TYPE_7__* %5 to i64*
  %273 = load i64, i64* %272, align 4
  %274 = call i64 @SetConsoleCursorPosition(i32 %271, i64 %273)
  %275 = icmp ne i64 %274, 0
  %276 = zext i1 %275 to i32
  %277 = call i32 @ok(i32 %276, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %278 = load i32, i32* %4, align 4
  %279 = load i8*, i8** %8, align 8
  %280 = load i32, i32* %9, align 4
  %281 = call i64 @WriteConsoleA(i32 %278, i8* %279, i32 %280, i32* %6, i32* null)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %287

283:                                              ; preds = %245
  %284 = load i32, i32* %6, align 4
  %285 = load i32, i32* %9, align 4
  %286 = icmp eq i32 %284, %285
  br label %287

287:                                              ; preds = %283, %245
  %288 = phi i1 [ false, %245 ], [ %286, %283 ]
  %289 = zext i1 %288 to i32
  %290 = call i32 @ok(i32 %289, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %291 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  store i32 0, i32* %291, align 4
  %292 = load i32, i32* %10, align 4
  %293 = sub nsw i32 %292, 3
  store i32 %293, i32* %11, align 4
  br label %294

294:                                              ; preds = %316, %287
  %295 = load i32, i32* %11, align 4
  %296 = load i32, i32* %10, align 4
  %297 = icmp slt i32 %295, %296
  br i1 %297, label %298, label %319

298:                                              ; preds = %294
  %299 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  %301 = sub nsw i32 %300, 3
  %302 = load i32, i32* %11, align 4
  %303 = srem i32 %302, 3
  %304 = add nsw i32 %301, %303
  %305 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i32 %304, i32* %305, align 4
  %306 = load i32, i32* %4, align 4
  %307 = load i8*, i8** %8, align 8
  %308 = load i32, i32* %11, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i8, i8* %307, i64 %309
  %311 = load i8, i8* %310, align 1
  %312 = load i64, i64* @TEST_ATTRIB, align 8
  %313 = bitcast %struct.TYPE_7__* %5 to i64*
  %314 = load i64, i64* %313, align 4
  %315 = call i32 @okCHAR(i32 %306, i64 %314, i8 signext %311, i64 %312)
  br label %316

316:                                              ; preds = %298
  %317 = load i32, i32* %11, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %11, align 4
  br label %294

319:                                              ; preds = %294
  %320 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i32 0, i32* %320, align 4
  %321 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  store i32 1, i32* %321, align 4
  %322 = load i32, i32* %4, align 4
  %323 = load i8*, i8** %8, align 8
  %324 = getelementptr inbounds i8, i8* %323, i64 5
  %325 = load i8, i8* %324, align 1
  %326 = load i64, i64* @TEST_ATTRIB, align 8
  %327 = bitcast %struct.TYPE_7__* %5 to i64*
  %328 = load i64, i64* %327, align 4
  %329 = call i32 @okCHAR(i32 %322, i64 %328, i8 signext %325, i64 %326)
  %330 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i32 1, i32* %330, align 4
  br label %331

331:                                              ; preds = %341, %319
  %332 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %333 = load i32, i32* %332, align 4
  %334 = icmp slt i32 %333, 8
  br i1 %334, label %335, label %345

335:                                              ; preds = %331
  %336 = load i32, i32* %4, align 4
  %337 = load i64, i64* @TEST_ATTRIB, align 8
  %338 = bitcast %struct.TYPE_7__* %5 to i64*
  %339 = load i64, i64* %338, align 4
  %340 = call i32 @okCHAR(i32 %336, i64 %339, i8 signext 32, i64 %337)
  br label %341

341:                                              ; preds = %335
  %342 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %343 = load i32, i32* %342, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %342, align 4
  br label %331

345:                                              ; preds = %331
  %346 = load i32, i32* %4, align 4
  %347 = load i8*, i8** %8, align 8
  %348 = getelementptr inbounds i8, i8* %347, i64 7
  %349 = load i8, i8* %348, align 1
  %350 = load i64, i64* @TEST_ATTRIB, align 8
  %351 = bitcast %struct.TYPE_7__* %5 to i64*
  %352 = load i64, i64* %351, align 4
  %353 = call i32 @okCHAR(i32 %346, i64 %352, i8 signext %349, i64 %350)
  %354 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %355 = load i32, i32* %354, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %354, align 4
  %357 = load i32, i32* %4, align 4
  %358 = load i64, i64* @DEFAULT_ATTRIB, align 8
  %359 = bitcast %struct.TYPE_7__* %5 to i64*
  %360 = load i64, i64* %359, align 4
  %361 = call i32 @okCHAR(i32 %357, i64 %360, i8 signext 32, i64 %358)
  %362 = load i32, i32* %4, align 4
  %363 = bitcast %struct.TYPE_7__* %5 to i64*
  %364 = load i64, i64* %363, align 4
  %365 = call i32 @okCURSOR(i32 %362, i64 %364)
  br label %366

366:                                              ; preds = %345, %105
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i64 @GetConsoleMode(i32, i32*) #1

declare dso_local i64 @SetConsoleMode(i32, i32) #1

declare dso_local i64 @SetConsoleCursorPosition(i32, i64) #1

declare dso_local i64 @WriteConsoleA(i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @okCHAR(i32, i64, i8 signext, i64) #1

declare dso_local i32 @ReadConsoleOutputAttribute(i32, i64*, i32, i64, i32*) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @okCURSOR(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
