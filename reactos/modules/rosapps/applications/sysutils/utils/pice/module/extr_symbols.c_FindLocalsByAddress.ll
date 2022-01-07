; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_symbols.c_FindLocalsByAddress.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_symbols.c_FindLocalsByAddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i8*, i8*, i32, i32, i8* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }

@FindLocalsByAddress.szCurrentFunction = internal global [256 x i8] zeroinitializer, align 16
@FindLocalsByAddress.szCurrentPath = internal global [256 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [23 x i8] c"FindLocalsByAddress()\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"FindLocalsByAddress(): pFunctionName = %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"FindLocalsByAddress(): %x %x %x %x %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"changing source file1 %s, %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"changing source file %s, %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"local variable1 %.8X %.8X %.8X %.8X %.8X %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"type number = %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"pTypedef: %x\0A\00", align 1
@local_vars = common dso_local global %struct.TYPE_9__* null, align 8
@CurrentEBP = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [48 x i8] c"parameter variable %.8X %.8X %.8X %.8X %.8X %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"type number = %x\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"local variable2 %.8X %.8X %.8X %.8X %.8X %s\0A\00", align 1
@LocalRegs = common dso_local global i8** null, align 8
@TRUE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"function %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"END of function %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @FindLocalsByAddress(i32 %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %19, align 4
  %21 = call i32 @DPRINT(i32 ptrtoint ([23 x i8]* @.str to i32))
  %22 = load i32, i32* %3, align 4
  %23 = call i8* @FindFunctionByAddress(i32 %22, i32* %13, i32* %14)
  store i8* %23, i8** %12, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = ptrtoint i8* %24 to i32
  %26 = call i32 @DPRINT(i32 %25)
  %27 = load i8*, i8** %12, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %438

29:                                               ; preds = %1
  %30 = load i32, i32* %3, align 4
  %31 = call %struct.TYPE_10__* @FindModuleSymbols(i32 %30)
  store %struct.TYPE_10__* %31, %struct.TYPE_10__** %11, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %33 = icmp ne %struct.TYPE_10__* %32, null
  br i1 %33, label %34, label %437

34:                                               ; preds = %29
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %36 = ptrtoint %struct.TYPE_10__* %35 to i32
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %36, %39
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %42, %struct.TYPE_8__** %5, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %8, align 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %47 = ptrtoint %struct.TYPE_10__* %46 to i32
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %47, %50
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to i8*
  store i8* %53, i8** %6, align 8
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %433, %34
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = udiv i64 %58, 4
  %60 = icmp ult i64 %56, %59
  br i1 %60, label %61, label %436

61:                                               ; preds = %54
  %62 = load i8*, i8** %6, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %62, i64 %68
  store i8* %69, i8** %7, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @DPRINT(i32 %84)
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  switch i32 %88, label %430 [
    i32 128, label %89
    i32 129, label %96
    i32 132, label %130
    i32 131, label %227
    i32 130, label %307
    i32 133, label %402
  ]

89:                                               ; preds = %61
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, %90
  store i32 %92, i32* %9, align 4
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %10, align 4
  br label %430

96:                                               ; preds = %61
  %97 = load i8*, i8** %7, align 8
  %98 = call i32 @PICE_strlen(i8* %97)
  store i32 %98, i32* %15, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %128

100:                                              ; preds = %96
  %101 = load i8*, i8** %7, align 8
  %102 = load i32, i32* %15, align 4
  %103 = sub nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %101, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp ne i32 %107, 47
  br i1 %108, label %109, label %124

109:                                              ; preds = %100
  %110 = load i32, i32* %17, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %17, align 4
  %112 = call i32 @PICE_strlen(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @FindLocalsByAddress.szCurrentPath, i64 0, i64 0))
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %109
  %115 = load i8*, i8** %7, align 8
  %116 = call i32 @PICE_strcat(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @FindLocalsByAddress.szCurrentPath, i64 0, i64 0), i8* %115)
  %117 = load i32, i32* %17, align 4
  %118 = call i32 @DPRINT(i32 %117)
  br label %123

119:                                              ; preds = %109
  %120 = load i8*, i8** %7, align 8
  %121 = load i32, i32* %17, align 4
  %122 = call i32 @DPRINT(i32 %121)
  br label %123

123:                                              ; preds = %119, %114
  br label %127

124:                                              ; preds = %100
  %125 = load i8*, i8** %7, align 8
  %126 = call i32 @PICE_strcpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @FindLocalsByAddress.szCurrentPath, i64 0, i64 0), i8* %125)
  br label %127

127:                                              ; preds = %124, %123
  br label %129

128:                                              ; preds = %96
  store i8 0, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @FindLocalsByAddress.szCurrentPath, i64 0, i64 0), align 16
  br label %129

129:                                              ; preds = %128, %127
  br label %430

130:                                              ; preds = %61
  %131 = load i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @FindLocalsByAddress.szCurrentFunction, i64 0, i64 0), align 16
  %132 = sext i8 %131 to i32
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %226

134:                                              ; preds = %130
  %135 = load i8*, i8** %12, align 8
  %136 = call i32 @PICE_fncmp(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @FindLocalsByAddress.szCurrentFunction, i64 0, i64 0), i8* %135)
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %226

138:                                              ; preds = %134
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = load i8*, i8** %7, align 8
  %155 = ptrtoint i8* %154 to i32
  %156 = call i32 @DPRINT(i32 %155)
  %157 = load i8*, i8** %7, align 8
  %158 = call i32 @ExtractTypeNumber(i8* %157)
  store i32 %158, i32* %16, align 4
  %159 = load i32, i32* %16, align 4
  %160 = call i32 @DPRINT(i32 %159)
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %162 = load i32, i32* %16, align 4
  %163 = load i32, i32* %17, align 4
  %164 = call i8* @FindTypeDefinition(%struct.TYPE_10__* %161, i32 %162, i32 %163)
  store i8* %164, i8** %18, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %166, label %225

166:                                              ; preds = %138
  %167 = load i8*, i8** %18, align 8
  %168 = ptrtoint i8* %167 to i32
  %169 = call i32 @DPRINT(i32 %168)
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** @local_vars, align 8
  %171 = load i32, i32* %19, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 0
  %175 = load i8*, i8** %174, align 8
  %176 = load i8*, i8** %18, align 8
  %177 = call i8* @TruncateString(i8* %176, i8 signext 58)
  %178 = call i32 @PICE_strcpy(i8* %175, i8* %177)
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** @local_vars, align 8
  %180 = load i32, i32* %19, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 1
  %184 = load i8*, i8** %183, align 8
  %185 = load i8*, i8** %7, align 8
  %186 = call i8* @TruncateString(i8* %185, i8 signext 58)
  %187 = call i32 @PICE_strcpy(i8* %184, i8* %186)
  %188 = load i8*, i8** @CurrentEBP, align 8
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr i8, i8* %188, i64 %192
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** @local_vars, align 8
  %195 = load i32, i32* %19, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 5
  store i8* %193, i8** %198, align 8
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = sext i32 %201 to i64
  %203 = inttoptr i64 %202 to i8*
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** @local_vars, align 8
  %205 = load i32, i32* %19, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 2
  store i8* %203, i8** %208, align 8
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.TYPE_9__*, %struct.TYPE_9__** @local_vars, align 8
  %213 = load i32, i32* %19, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 4
  store i32 %211, i32* %216, align 4
  %217 = load i32, i32* @FALSE, align 4
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** @local_vars, align 8
  %219 = load i32, i32* %19, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 3
  store i32 %217, i32* %222, align 8
  %223 = load i32, i32* %19, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %19, align 4
  br label %225

225:                                              ; preds = %166, %138
  br label %226

226:                                              ; preds = %225, %134, %130
  br label %430

227:                                              ; preds = %61
  %228 = load i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @FindLocalsByAddress.szCurrentFunction, i64 0, i64 0), align 16
  %229 = sext i8 %228 to i32
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %306

231:                                              ; preds = %227
  %232 = load i8*, i8** %12, align 8
  %233 = call i32 @PICE_fncmp(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @FindLocalsByAddress.szCurrentFunction, i64 0, i64 0), i8* %232)
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %306

235:                                              ; preds = %231
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 4
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 4
  %251 = load i8*, i8** %7, align 8
  %252 = ptrtoint i8* %251 to i32
  %253 = call i32 @DPRINT(i32 %252)
  %254 = load i8*, i8** %7, align 8
  %255 = call i32 @ExtractTypeNumber(i8* %254)
  store i32 %255, i32* %16, align 4
  %256 = load i32, i32* %16, align 4
  %257 = call i32 @DPRINT(i32 %256)
  %258 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %259 = load i32, i32* %16, align 4
  %260 = load i32, i32* %17, align 4
  %261 = call i8* @FindTypeDefinition(%struct.TYPE_10__* %258, i32 %259, i32 %260)
  store i8* %261, i8** %18, align 8
  %262 = icmp ne i8* %261, null
  br i1 %262, label %263, label %305

263:                                              ; preds = %235
  %264 = load %struct.TYPE_9__*, %struct.TYPE_9__** @local_vars, align 8
  %265 = load i32, i32* %19, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %267, i32 0, i32 0
  %269 = load i8*, i8** %268, align 8
  %270 = load i8*, i8** %18, align 8
  %271 = call i8* @TruncateString(i8* %270, i8 signext 58)
  %272 = call i32 @PICE_strcpy(i8* %269, i8* %271)
  %273 = load %struct.TYPE_9__*, %struct.TYPE_9__** @local_vars, align 8
  %274 = load i32, i32* %19, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %273, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %276, i32 0, i32 1
  %278 = load i8*, i8** %277, align 8
  %279 = load i8*, i8** %7, align 8
  %280 = call i8* @TruncateString(i8* %279, i8 signext 58)
  %281 = call i32 @PICE_strcpy(i8* %278, i8* %280)
  %282 = load i8*, i8** @CurrentEBP, align 8
  %283 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr i8, i8* %282, i64 %286
  %288 = load %struct.TYPE_9__*, %struct.TYPE_9__** @local_vars, align 8
  %289 = load i32, i32* %19, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %288, i64 %290
  %292 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %291, i32 0, i32 5
  store i8* %287, i8** %292, align 8
  %293 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %294 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 4
  %296 = sext i32 %295 to i64
  %297 = inttoptr i64 %296 to i8*
  %298 = load %struct.TYPE_9__*, %struct.TYPE_9__** @local_vars, align 8
  %299 = load i32, i32* %19, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %298, i64 %300
  %302 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %301, i32 0, i32 2
  store i8* %297, i8** %302, align 8
  %303 = load i32, i32* %19, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %19, align 4
  br label %305

305:                                              ; preds = %263, %235
  br label %306

306:                                              ; preds = %305, %231, %227
  br label %430

307:                                              ; preds = %61
  %308 = load i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @FindLocalsByAddress.szCurrentFunction, i64 0, i64 0), align 16
  %309 = sext i8 %308 to i32
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %401

311:                                              ; preds = %307
  %312 = load i8*, i8** %12, align 8
  %313 = call i32 @PICE_fncmp(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @FindLocalsByAddress.szCurrentFunction, i64 0, i64 0), i8* %312)
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %401

315:                                              ; preds = %311
  %316 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %317 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %320 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %323 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %322, i32 0, i32 4
  %324 = load i32, i32* %323, align 4
  %325 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %326 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %325, i32 0, i32 3
  %327 = load i32, i32* %326, align 4
  %328 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %329 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %328, i32 0, i32 2
  %330 = load i32, i32* %329, align 4
  %331 = load i8*, i8** %7, align 8
  %332 = ptrtoint i8* %331 to i32
  %333 = call i32 @DPRINT(i32 %332)
  %334 = load i8*, i8** %7, align 8
  %335 = call i32 @ExtractTypeNumber(i8* %334)
  store i32 %335, i32* %16, align 4
  %336 = load i32, i32* %16, align 4
  %337 = call i32 @DPRINT(i32 %336)
  %338 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %339 = load i32, i32* %16, align 4
  %340 = load i32, i32* %17, align 4
  %341 = call i8* @FindTypeDefinition(%struct.TYPE_10__* %338, i32 %339, i32 %340)
  store i8* %341, i8** %18, align 8
  %342 = icmp ne i8* %341, null
  br i1 %342, label %343, label %400

343:                                              ; preds = %315
  %344 = load %struct.TYPE_9__*, %struct.TYPE_9__** @local_vars, align 8
  %345 = load i32, i32* %19, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %344, i64 %346
  %348 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %347, i32 0, i32 0
  %349 = load i8*, i8** %348, align 8
  %350 = load i8*, i8** %18, align 8
  %351 = call i8* @TruncateString(i8* %350, i8 signext 58)
  %352 = call i32 @PICE_strcpy(i8* %349, i8* %351)
  %353 = load %struct.TYPE_9__*, %struct.TYPE_9__** @local_vars, align 8
  %354 = load i32, i32* %19, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %353, i64 %355
  %357 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %356, i32 0, i32 1
  %358 = load i8*, i8** %357, align 8
  %359 = load i8*, i8** %7, align 8
  %360 = call i8* @TruncateString(i8* %359, i8 signext 58)
  %361 = call i32 @PICE_strcpy(i8* %358, i8* %360)
  %362 = load i8**, i8*** @LocalRegs, align 8
  %363 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %364 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %363, i32 0, i32 2
  %365 = load i32, i32* %364, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i8*, i8** %362, i64 %366
  %368 = load i8*, i8** %367, align 8
  %369 = load %struct.TYPE_9__*, %struct.TYPE_9__** @local_vars, align 8
  %370 = load i32, i32* %19, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %369, i64 %371
  %373 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %372, i32 0, i32 5
  store i8* %368, i8** %373, align 8
  %374 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %375 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %374, i32 0, i32 2
  %376 = load i32, i32* %375, align 4
  %377 = sext i32 %376 to i64
  %378 = inttoptr i64 %377 to i8*
  %379 = load %struct.TYPE_9__*, %struct.TYPE_9__** @local_vars, align 8
  %380 = load i32, i32* %19, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %379, i64 %381
  %383 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %382, i32 0, i32 2
  store i8* %378, i8** %383, align 8
  %384 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %385 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %384, i32 0, i32 3
  %386 = load i32, i32* %385, align 4
  %387 = load %struct.TYPE_9__*, %struct.TYPE_9__** @local_vars, align 8
  %388 = load i32, i32* %19, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %387, i64 %389
  %391 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %390, i32 0, i32 4
  store i32 %386, i32* %391, align 4
  %392 = load i32, i32* @TRUE, align 4
  %393 = load %struct.TYPE_9__*, %struct.TYPE_9__** @local_vars, align 8
  %394 = load i32, i32* %19, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %393, i64 %395
  %397 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %396, i32 0, i32 3
  store i32 %392, i32* %397, align 8
  %398 = load i32, i32* %19, align 4
  %399 = add nsw i32 %398, 1
  store i32 %399, i32* %19, align 4
  br label %400

400:                                              ; preds = %343, %315
  br label %401

401:                                              ; preds = %400, %311, %307
  br label %430

402:                                              ; preds = %61
  %403 = load i8*, i8** %7, align 8
  %404 = call i32 @PICE_strlen(i8* %403)
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %416

406:                                              ; preds = %402
  %407 = load i8*, i8** %7, align 8
  %408 = call i32 @StrLenUpToWhiteChar(i8* %407, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  store i32 %408, i32* %20, align 4
  %409 = load i8*, i8** %7, align 8
  %410 = load i32, i32* %20, align 4
  %411 = call i32 @PICE_strncpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @FindLocalsByAddress.szCurrentFunction, i64 0, i64 0), i8* %409, i32 %410)
  %412 = load i32, i32* %20, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds [256 x i8], [256 x i8]* @FindLocalsByAddress.szCurrentFunction, i64 0, i64 %413
  store i8 0, i8* %414, align 1
  %415 = call i32 @DPRINT(i32 ptrtoint ([256 x i8]* @FindLocalsByAddress.szCurrentFunction to i32))
  br label %429

416:                                              ; preds = %402
  %417 = call i32 @DPRINT(i32 ptrtoint ([256 x i8]* @FindLocalsByAddress.szCurrentFunction to i32))
  store i8 0, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @FindLocalsByAddress.szCurrentFunction, i64 0, i64 0), align 16
  %418 = load i32, i32* %19, align 4
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %428

420:                                              ; preds = %416
  %421 = load %struct.TYPE_9__*, %struct.TYPE_9__** @local_vars, align 8
  %422 = load i32, i32* %19, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %421, i64 %423
  %425 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %424, i32 0, i32 1
  %426 = load i8*, i8** %425, align 8
  store i8 0, i8* %426, align 1
  %427 = load %struct.TYPE_9__*, %struct.TYPE_9__** @local_vars, align 8
  store %struct.TYPE_9__* %427, %struct.TYPE_9__** %2, align 8
  br label %439

428:                                              ; preds = %416
  br label %429

429:                                              ; preds = %428, %406
  br label %430

430:                                              ; preds = %61, %429, %401, %306, %226, %129, %89
  %431 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %432 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %431, i32 1
  store %struct.TYPE_8__* %432, %struct.TYPE_8__** %5, align 8
  br label %433

433:                                              ; preds = %430
  %434 = load i32, i32* %4, align 4
  %435 = add nsw i32 %434, 1
  store i32 %435, i32* %4, align 4
  br label %54

436:                                              ; preds = %54
  br label %437

437:                                              ; preds = %436, %29
  br label %438

438:                                              ; preds = %437, %1
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %439

439:                                              ; preds = %438, %420
  %440 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  ret %struct.TYPE_9__* %440
}

declare dso_local i32 @DPRINT(i32) #1

declare dso_local i8* @FindFunctionByAddress(i32, i32*, i32*) #1

declare dso_local %struct.TYPE_10__* @FindModuleSymbols(i32) #1

declare dso_local i32 @PICE_strlen(i8*) #1

declare dso_local i32 @PICE_strcat(i8*, i8*) #1

declare dso_local i32 @PICE_strcpy(i8*, i8*) #1

declare dso_local i32 @PICE_fncmp(i8*, i8*) #1

declare dso_local i32 @ExtractTypeNumber(i8*) #1

declare dso_local i8* @FindTypeDefinition(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i8* @TruncateString(i8*, i8 signext) #1

declare dso_local i32 @StrLenUpToWhiteChar(i8*, i8*) #1

declare dso_local i32 @PICE_strncpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
