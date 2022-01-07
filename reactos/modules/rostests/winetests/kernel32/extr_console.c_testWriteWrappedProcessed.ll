; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_console.c_testWriteWrappedProcessed.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_console.c_testWriteWrappedProcessed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"abcd\0Af\09g\00", align 1
@ENABLE_WRAP_AT_EOL_OUTPUT = common dso_local global i32 0, align 4
@ENABLE_PROCESSED_OUTPUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"setting wrap at EOL & processed output\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Cursor in upper-left-9\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"WriteConsole\0A\00", align 1
@TEST_ATTRIB = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [48 x i8] c"Win9x/WinMe changes attribs for '\\n' up to 'f'\0A\00", align 1
@DEFAULT_ATTRIB = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"Cursor in upper-left-3\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64)* @testWriteWrappedProcessed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testWriteWrappedProcessed(i32 %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_7__, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = bitcast %struct.TYPE_7__* %3 to i64*
  store i64 %1, i64* %12, align 4
  store i32 %0, i32* %4, align 4
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = call i32 @strlen(i8* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @GetConsoleMode(i32 %15, i32* %7)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @ENABLE_WRAP_AT_EOL_OUTPUT, align 4
  %22 = load i32, i32* @ENABLE_PROCESSED_OUTPUT, align 4
  %23 = or i32 %21, %22
  %24 = or i32 %20, %23
  %25 = call i64 @SetConsoleMode(i32 %19, i32 %24)
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %18, %2
  %28 = phi i1 [ false, %2 ], [ %26, %18 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @ok(i32 %29, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %32, 9
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  store i32 0, i32* %35, align 4
  %36 = load i32, i32* %4, align 4
  %37 = bitcast %struct.TYPE_7__* %5 to i64*
  %38 = load i64, i64* %37, align 4
  %39 = call i64 @SetConsoleCursorPosition(i32 %36, i64 %38)
  %40 = icmp ne i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32, i32* %4, align 4
  %44 = load i8*, i8** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i64 @WriteConsoleA(i32 %43, i8* %44, i32 %45, i32* %6, i32* null)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %27
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp eq i32 %49, %50
  br label %52

52:                                               ; preds = %48, %27
  %53 = phi i1 [ false, %27 ], [ %51, %48 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 @ok(i32 %54, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %56

56:                                               ; preds = %76, %52
  %57 = load i32, i32* %10, align 4
  %58 = icmp slt i32 %57, 4
  br i1 %58, label %59, label %79

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %61, 9
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %62, %63
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* %4, align 4
  %67 = load i8*, i8** %8, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = load i64, i64* @TEST_ATTRIB, align 8
  %73 = bitcast %struct.TYPE_7__* %5 to i64*
  %74 = load i64, i64* %73, align 4
  %75 = call i32 @okCHAR(i32 %66, i64 %74, i8 signext %71, i64 %72)
  br label %76

76:                                               ; preds = %59
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %10, align 4
  br label %56

79:                                               ; preds = %56
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %81, 9
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %82, %83
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i32 %84, i32* %85, align 4
  %86 = load i32, i32* %4, align 4
  %87 = bitcast %struct.TYPE_7__* %5 to i64*
  %88 = load i64, i64* %87, align 4
  %89 = call i32 @ReadConsoleOutputAttribute(i32 %86, i64* %11, i32 1, i64 %88, i32* %6)
  %90 = load i64, i64* %11, align 8
  %91 = load i64, i64* @TEST_ATTRIB, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %79
  %94 = call i32 @win_skip(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  br label %101

95:                                               ; preds = %79
  %96 = load i32, i32* %4, align 4
  %97 = load i64, i64* @DEFAULT_ATTRIB, align 8
  %98 = bitcast %struct.TYPE_7__* %5 to i64*
  %99 = load i64, i64* %98, align 4
  %100 = call i32 @okCHAR(i32 %96, i64 %99, i8 signext 32, i64 %97)
  br label %101

101:                                              ; preds = %95, %93
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i32 0, i32* %102, align 4
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  %106 = load i32, i32* %4, align 4
  %107 = load i8*, i8** %8, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 5
  %109 = load i8, i8* %108, align 1
  %110 = load i64, i64* @TEST_ATTRIB, align 8
  %111 = bitcast %struct.TYPE_7__* %5 to i64*
  %112 = load i64, i64* %111, align 4
  %113 = call i32 @okCHAR(i32 %106, i64 %112, i8 signext %109, i64 %110)
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i32 1, i32* %114, align 4
  br label %115

115:                                              ; preds = %125, %101
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp slt i32 %117, 8
  br i1 %118, label %119, label %129

119:                                              ; preds = %115
  %120 = load i32, i32* %4, align 4
  %121 = load i64, i64* @TEST_ATTRIB, align 8
  %122 = bitcast %struct.TYPE_7__* %5 to i64*
  %123 = load i64, i64* %122, align 4
  %124 = call i32 @okCHAR(i32 %120, i64 %123, i8 signext 32, i64 %121)
  br label %125

125:                                              ; preds = %119
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 4
  br label %115

129:                                              ; preds = %115
  %130 = load i32, i32* %4, align 4
  %131 = load i8*, i8** %8, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 7
  %133 = load i8, i8* %132, align 1
  %134 = load i64, i64* @TEST_ATTRIB, align 8
  %135 = bitcast %struct.TYPE_7__* %5 to i64*
  %136 = load i64, i64* %135, align 4
  %137 = call i32 @okCHAR(i32 %130, i64 %136, i8 signext %133, i64 %134)
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 4
  %141 = load i32, i32* %4, align 4
  %142 = load i64, i64* @DEFAULT_ATTRIB, align 8
  %143 = bitcast %struct.TYPE_7__* %5 to i64*
  %144 = load i64, i64* %143, align 4
  %145 = call i32 @okCHAR(i32 %141, i64 %144, i8 signext 32, i64 %142)
  %146 = load i32, i32* %4, align 4
  %147 = bitcast %struct.TYPE_7__* %5 to i64*
  %148 = load i64, i64* %147, align 4
  %149 = call i32 @okCURSOR(i32 %146, i64 %148)
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = sub nsw i32 %151, 3
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i32 %152, i32* %153, align 4
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  store i32 2, i32* %154, align 4
  %155 = load i32, i32* %4, align 4
  %156 = bitcast %struct.TYPE_7__* %5 to i64*
  %157 = load i64, i64* %156, align 4
  %158 = call i64 @SetConsoleCursorPosition(i32 %155, i64 %157)
  %159 = icmp ne i64 %158, 0
  %160 = zext i1 %159 to i32
  %161 = call i32 @ok(i32 %160, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %162 = load i32, i32* %4, align 4
  %163 = load i8*, i8** %8, align 8
  %164 = load i32, i32* %9, align 4
  %165 = call i64 @WriteConsoleA(i32 %162, i8* %163, i32 %164, i32* %6, i32* null)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %129
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* %9, align 4
  %170 = icmp eq i32 %168, %169
  br label %171

171:                                              ; preds = %167, %129
  %172 = phi i1 [ false, %129 ], [ %170, %167 ]
  %173 = zext i1 %172 to i32
  %174 = call i32 @ok(i32 %173, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %175

175:                                              ; preds = %195, %171
  %176 = load i32, i32* %10, align 4
  %177 = icmp slt i32 %176, 3
  br i1 %177, label %178, label %198

178:                                              ; preds = %175
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = sub nsw i32 %180, 3
  %182 = load i32, i32* %10, align 4
  %183 = add nsw i32 %181, %182
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i32 %183, i32* %184, align 4
  %185 = load i32, i32* %4, align 4
  %186 = load i8*, i8** %8, align 8
  %187 = load i32, i32* %10, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8, i8* %186, i64 %188
  %190 = load i8, i8* %189, align 1
  %191 = load i64, i64* @TEST_ATTRIB, align 8
  %192 = bitcast %struct.TYPE_7__* %5 to i64*
  %193 = load i64, i64* %192, align 4
  %194 = call i32 @okCHAR(i32 %185, i64 %193, i8 signext %190, i64 %191)
  br label %195

195:                                              ; preds = %178
  %196 = load i32, i32* %10, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %10, align 4
  br label %175

198:                                              ; preds = %175
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i32 0, i32* %199, align 4
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %200, align 4
  %203 = load i32, i32* %4, align 4
  %204 = load i8*, i8** %8, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 3
  %206 = load i8, i8* %205, align 1
  %207 = load i64, i64* @TEST_ATTRIB, align 8
  %208 = bitcast %struct.TYPE_7__* %5 to i64*
  %209 = load i64, i64* %208, align 4
  %210 = call i32 @okCHAR(i32 %203, i64 %209, i8 signext %206, i64 %207)
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %211, align 4
  %214 = load i32, i32* %4, align 4
  %215 = bitcast %struct.TYPE_7__* %5 to i64*
  %216 = load i64, i64* %215, align 4
  %217 = call i32 @ReadConsoleOutputAttribute(i32 %214, i64* %11, i32 1, i64 %216, i32* %6)
  %218 = load i64, i64* %11, align 8
  %219 = load i64, i64* @TEST_ATTRIB, align 8
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %221, label %223

221:                                              ; preds = %198
  %222 = call i32 @win_skip(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  br label %229

223:                                              ; preds = %198
  %224 = load i32, i32* %4, align 4
  %225 = load i64, i64* @DEFAULT_ATTRIB, align 8
  %226 = bitcast %struct.TYPE_7__* %5 to i64*
  %227 = load i64, i64* %226, align 4
  %228 = call i32 @okCHAR(i32 %224, i64 %227, i8 signext 32, i64 %225)
  br label %229

229:                                              ; preds = %223, %221
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i32 0, i32* %230, align 4
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %231, align 4
  %234 = load i32, i32* %4, align 4
  %235 = load i8*, i8** %8, align 8
  %236 = getelementptr inbounds i8, i8* %235, i64 5
  %237 = load i8, i8* %236, align 1
  %238 = load i64, i64* @TEST_ATTRIB, align 8
  %239 = bitcast %struct.TYPE_7__* %5 to i64*
  %240 = load i64, i64* %239, align 4
  %241 = call i32 @okCHAR(i32 %234, i64 %240, i8 signext %237, i64 %238)
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i32 1, i32* %242, align 4
  br label %243

243:                                              ; preds = %253, %229
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = icmp slt i32 %245, 8
  br i1 %246, label %247, label %257

247:                                              ; preds = %243
  %248 = load i32, i32* %4, align 4
  %249 = load i64, i64* @TEST_ATTRIB, align 8
  %250 = bitcast %struct.TYPE_7__* %5 to i64*
  %251 = load i64, i64* %250, align 4
  %252 = call i32 @okCHAR(i32 %248, i64 %251, i8 signext 32, i64 %249)
  br label %253

253:                                              ; preds = %247
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %254, align 4
  br label %243

257:                                              ; preds = %243
  %258 = load i32, i32* %4, align 4
  %259 = load i8*, i8** %8, align 8
  %260 = getelementptr inbounds i8, i8* %259, i64 7
  %261 = load i8, i8* %260, align 1
  %262 = load i64, i64* @TEST_ATTRIB, align 8
  %263 = bitcast %struct.TYPE_7__* %5 to i64*
  %264 = load i64, i64* %263, align 4
  %265 = call i32 @okCHAR(i32 %258, i64 %264, i8 signext %261, i64 %262)
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %266, align 4
  %269 = load i32, i32* %4, align 4
  %270 = load i64, i64* @DEFAULT_ATTRIB, align 8
  %271 = bitcast %struct.TYPE_7__* %5 to i64*
  %272 = load i64, i64* %271, align 4
  %273 = call i32 @okCHAR(i32 %269, i64 %272, i8 signext 32, i64 %270)
  %274 = load i32, i32* %4, align 4
  %275 = bitcast %struct.TYPE_7__* %5 to i64*
  %276 = load i64, i64* %275, align 4
  %277 = call i32 @okCURSOR(i32 %274, i64 %276)
  ret void
}

declare dso_local i32 @strlen(i8*) #1

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
