; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/gendib/extr_gendib.c_CreatePrimitive.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/gendib/extr_gendib.c_CreatePrimitive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"static void\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"(PBLTINFO BltInfo)\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@ROPCODE_BLACKNESS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [69 x i8] c"DIB_%uBPP_ColorFill(BltInfo->DestSurface, &BltInfo->DestRect, 0x0);\0A\00", align 1
@ROPCODE_WHITENESS = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [68 x i8] c"DIB_%uBPP_ColorFill(BltInfo->DestSurface, &BltInfo->DestRect, ~0);\0A\00", align 1
@ROPCODE_NOOP = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"return;\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"ULONG LineIndex, LineCount;\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"ULONG i;\0A\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"LONG PatternX =0, PatternY = 0, BasePatternX = 0;\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"ULONG Source = 0\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"%s Pattern = 0\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"ULONG\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"char *DestBase;\0A\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"PULONG DestPtr;\0A\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"char *SourceBase;\0A\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"PULONG SourcePtr;\0A\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"ULONG RawSource;\0A\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"unsigned SourcePixels, BaseSourcePixels;\0A\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"ULONG CenterCount;\0A\00", align 1
@.str.22 = private unnamed_addr constant [43 x i8] c"ULONG LeftCount, CenterCount, RightCount;\0A\00", align 1
@ROPCODE_GENERIC = common dso_local global i64 0, align 8
@.str.23 = private unnamed_addr constant [34 x i8] c"BOOLEAN UsesSource, UsesPattern;\0A\00", align 1
@.str.24 = private unnamed_addr constant [47 x i8] c"UsesSource = ROP4_USES_SOURCE(BltInfo->Rop4);\0A\00", align 1
@.str.25 = private unnamed_addr constant [49 x i8] c"UsesPattern = ROP4_USES_PATTERN(BltInfo->Rop4);\0A\00", align 1
@.str.26 = private unnamed_addr constant [63 x i8] c"LineCount = BltInfo->DestRect.bottom - BltInfo->DestRect.top;\0A\00", align 1
@.str.27 = private unnamed_addr constant [53 x i8] c"if (UsesPattern && NULL != BltInfo->PatternSurface)\0A\00", align 1
@.str.28 = private unnamed_addr constant [38 x i8] c"if (NULL != BltInfo->PatternSurface)\0A\00", align 1
@FLAG_PATTERNSURFACE = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"else\0A\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"if (UsesPattern)\0A\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"if (!BltInfo->Brush)\0A\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"Pattern = 0;\0A\00", align 1
@.str.34 = private unnamed_addr constant [38 x i8] c"Pattern = BltInfo->Brush->iSolidColor\00", align 1
@.str.35 = private unnamed_addr constant [46 x i8] c"          (BltInfo->Brush->iSolidColor << %d)\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c" |\0A\00", align 1
@ROPCODE_PATINVERT = common dso_local global i64 0, align 8
@ROPCODE_MERGECOPY = common dso_local global i64 0, align 8
@.str.37 = private unnamed_addr constant [19 x i8] c"if (0 == Pattern)\0A\00", align 1
@ROPCODE_PATPAINT = common dso_local global i64 0, align 8
@.str.38 = private unnamed_addr constant [22 x i8] c"if ((~0) == Pattern)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.TYPE_5__*)* @CreatePrimitive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CreatePrimitive(i32* %0, i32 %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @MARK(i32* %9)
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 (i32*, i8*, ...) @Output(i32* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 (i32*, i8*, ...) @Output(i32* %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = call i32 @PrintRoutineName(i32* %15, i32 %16, %struct.TYPE_5__* %17)
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 (i32*, i8*, ...) @Output(i32* %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 (i32*, i8*, ...) @Output(i32* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %23 = load i64, i64* @ROPCODE_BLACKNESS, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %3
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 (i32*, i8*, ...) @Output(i32* %29, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i64 0, i64 0), i32 %30)
  br label %320

32:                                               ; preds = %3
  %33 = load i64, i64* @ROPCODE_WHITENESS, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 (i32*, i8*, ...) @Output(i32* %39, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i64 0, i64 0), i32 %40)
  br label %319

42:                                               ; preds = %32
  %43 = load i64, i64* @ROPCODE_NOOP, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %43, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 (i32*, i8*, ...) @Output(i32* %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  br label %318

51:                                               ; preds = %42
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 (i32*, i8*, ...) @Output(i32* %52, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 (i32*, i8*, ...) @Output(i32* %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %51
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 (i32*, i8*, ...) @Output(i32* %61, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %51
  store i32 1, i32* %7, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 (i32*, i8*, ...) @Output(i32* %69, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %71

71:                                               ; preds = %68, %63
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load i32*, i32** %4, align 8
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)
  %82 = call i32 (i32*, i8*, ...) @Output(i32* %77, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8* %81)
  store i32 0, i32* %7, align 4
  br label %83

83:                                               ; preds = %76, %71
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load i32*, i32** %4, align 8
  %88 = call i32 (i32*, i8*, ...) @Output(i32* %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  br label %89

89:                                               ; preds = %86, %83
  %90 = load i32*, i32** %4, align 8
  %91 = call i32 (i32*, i8*, ...) @Output(i32* %90, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0))
  %92 = load i32*, i32** %4, align 8
  %93 = call i32 (i32*, i8*, ...) @Output(i32* %92, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0))
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %89
  %99 = load i32*, i32** %4, align 8
  %100 = call i32 (i32*, i8*, ...) @Output(i32* %99, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0))
  %101 = load i32*, i32** %4, align 8
  %102 = call i32 (i32*, i8*, ...) @Output(i32* %101, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0))
  %103 = load i32*, i32** %4, align 8
  %104 = call i32 (i32*, i8*, ...) @Output(i32* %103, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0))
  %105 = load i32*, i32** %4, align 8
  %106 = call i32 (i32*, i8*, ...) @Output(i32* %105, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i64 0, i64 0))
  br label %107

107:                                              ; preds = %98, %89
  %108 = load i32, i32* %5, align 4
  %109 = icmp eq i32 32, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i32*, i32** %4, align 8
  %112 = call i32 (i32*, i8*, ...) @Output(i32* %111, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0))
  br label %116

113:                                              ; preds = %107
  %114 = load i32*, i32** %4, align 8
  %115 = call i32 (i32*, i8*, ...) @Output(i32* %114, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.22, i64 0, i64 0))
  br label %116

116:                                              ; preds = %113, %110
  %117 = load i64, i64* @ROPCODE_GENERIC, align 8
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp eq i64 %117, %120
  br i1 %121, label %122, label %131

122:                                              ; preds = %116
  %123 = load i32*, i32** %4, align 8
  %124 = call i32 (i32*, i8*, ...) @Output(i32* %123, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i64 0, i64 0))
  %125 = load i32*, i32** %4, align 8
  %126 = call i32 (i32*, i8*, ...) @Output(i32* %125, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %127 = load i32*, i32** %4, align 8
  %128 = call i32 (i32*, i8*, ...) @Output(i32* %127, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.24, i64 0, i64 0))
  %129 = load i32*, i32** %4, align 8
  %130 = call i32 (i32*, i8*, ...) @Output(i32* %129, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.25, i64 0, i64 0))
  br label %131

131:                                              ; preds = %122, %116
  %132 = load i32*, i32** %4, align 8
  %133 = call i32 (i32*, i8*, ...) @Output(i32* %132, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %147, label %138

138:                                              ; preds = %131
  %139 = load i32*, i32** %4, align 8
  %140 = load i32, i32* %5, align 4
  %141 = call i32 @CreateBase(i32* %139, i32 0, i32 0, i32 %140)
  %142 = load i32*, i32** %4, align 8
  %143 = load i32, i32* %5, align 4
  %144 = call i32 @CreateCounts(i32* %142, i32 %143)
  %145 = load i32*, i32** %4, align 8
  %146 = call i32 @MARK(i32* %145)
  br label %147

147:                                              ; preds = %138, %131
  %148 = load i32*, i32** %4, align 8
  %149 = call i32 (i32*, i8*, ...) @Output(i32* %148, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.26, i64 0, i64 0))
  %150 = load i32*, i32** %4, align 8
  %151 = call i32 (i32*, i8*, ...) @Output(i32* %150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %310

156:                                              ; preds = %147
  %157 = load i64, i64* @ROPCODE_GENERIC, align 8
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp eq i64 %157, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %156
  %163 = load i32*, i32** %4, align 8
  %164 = call i32 (i32*, i8*, ...) @Output(i32* %163, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.27, i64 0, i64 0))
  br label %168

165:                                              ; preds = %156
  %166 = load i32*, i32** %4, align 8
  %167 = call i32 (i32*, i8*, ...) @Output(i32* %166, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.28, i64 0, i64 0))
  br label %168

168:                                              ; preds = %165, %162
  %169 = load i32*, i32** %4, align 8
  %170 = call i32 (i32*, i8*, ...) @Output(i32* %169, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %171 = load i32*, i32** %4, align 8
  %172 = load i32, i32* %5, align 4
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %174 = load i32, i32* @FLAG_PATTERNSURFACE, align 4
  %175 = call i32 @CreateActionBlock(i32* %171, i32 %172, %struct.TYPE_5__* %173, i32 %174)
  %176 = load i32*, i32** %4, align 8
  %177 = call i32 @MARK(i32* %176)
  %178 = load i32*, i32** %4, align 8
  %179 = call i32 (i32*, i8*, ...) @Output(i32* %178, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0))
  %180 = load i32*, i32** %4, align 8
  %181 = call i32 (i32*, i8*, ...) @Output(i32* %180, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0))
  %182 = load i32*, i32** %4, align 8
  %183 = call i32 (i32*, i8*, ...) @Output(i32* %182, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %184 = load i64, i64* @ROPCODE_GENERIC, align 8
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = icmp eq i64 %184, %187
  br i1 %188, label %189, label %194

189:                                              ; preds = %168
  %190 = load i32*, i32** %4, align 8
  %191 = call i32 (i32*, i8*, ...) @Output(i32* %190, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i64 0, i64 0))
  %192 = load i32*, i32** %4, align 8
  %193 = call i32 (i32*, i8*, ...) @Output(i32* %192, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %194

194:                                              ; preds = %189, %168
  store i32 0, i32* %8, align 4
  br label %195

195:                                              ; preds = %239, %194
  %196 = load i32, i32* %8, align 4
  %197 = load i32, i32* %5, align 4
  %198 = udiv i32 32, %197
  %199 = icmp ult i32 %196, %198
  br i1 %199, label %200, label %242

200:                                              ; preds = %195
  %201 = load i32, i32* %8, align 4
  %202 = icmp eq i32 0, %201
  br i1 %202, label %203, label %218

203:                                              ; preds = %200
  %204 = load i32*, i32** %4, align 8
  %205 = call i32 (i32*, i8*, ...) @Output(i32* %204, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.32, i64 0, i64 0))
  %206 = load i32*, i32** %4, align 8
  %207 = call i32 (i32*, i8*, ...) @Output(i32* %206, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %208 = load i32*, i32** %4, align 8
  %209 = call i32 (i32*, i8*, ...) @Output(i32* %208, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i64 0, i64 0))
  %210 = load i32*, i32** %4, align 8
  %211 = call i32 (i32*, i8*, ...) @Output(i32* %210, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0))
  %212 = load i32*, i32** %4, align 8
  %213 = call i32 (i32*, i8*, ...) @Output(i32* %212, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0))
  %214 = load i32*, i32** %4, align 8
  %215 = call i32 (i32*, i8*, ...) @Output(i32* %214, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %216 = load i32*, i32** %4, align 8
  %217 = call i32 (i32*, i8*, ...) @Output(i32* %216, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.34, i64 0, i64 0))
  br label %224

218:                                              ; preds = %200
  %219 = load i32*, i32** %4, align 8
  %220 = load i32, i32* %8, align 4
  %221 = load i32, i32* %5, align 4
  %222 = mul i32 %220, %221
  %223 = call i32 (i32*, i8*, ...) @Output(i32* %219, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.35, i64 0, i64 0), i32 %222)
  br label %224

224:                                              ; preds = %218, %203
  %225 = load i32, i32* %5, align 4
  %226 = udiv i32 32, %225
  %227 = load i32, i32* %8, align 4
  %228 = add i32 %227, 1
  %229 = icmp ule i32 %226, %228
  br i1 %229, label %230, label %235

230:                                              ; preds = %224
  %231 = load i32*, i32** %4, align 8
  %232 = call i32 (i32*, i8*, ...) @Output(i32* %231, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  %233 = load i32*, i32** %4, align 8
  %234 = call i32 (i32*, i8*, ...) @Output(i32* %233, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0))
  br label %238

235:                                              ; preds = %224
  %236 = load i32*, i32** %4, align 8
  %237 = call i32 (i32*, i8*, ...) @Output(i32* %236, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0))
  br label %238

238:                                              ; preds = %235, %230
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %8, align 4
  %241 = add i32 %240, 1
  store i32 %241, i32* %8, align 4
  br label %195

242:                                              ; preds = %195
  %243 = load i64, i64* @ROPCODE_PATINVERT, align 8
  %244 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = icmp eq i64 %243, %246
  br i1 %247, label %254, label %248

248:                                              ; preds = %242
  %249 = load i64, i64* @ROPCODE_MERGECOPY, align 8
  %250 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = icmp eq i64 %249, %252
  br i1 %253, label %254, label %273

254:                                              ; preds = %248, %242
  %255 = load i32*, i32** %4, align 8
  %256 = call i32 (i32*, i8*, ...) @Output(i32* %255, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.37, i64 0, i64 0))
  %257 = load i32*, i32** %4, align 8
  %258 = call i32 (i32*, i8*, ...) @Output(i32* %257, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %259 = load i64, i64* @ROPCODE_MERGECOPY, align 8
  %260 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = icmp eq i64 %259, %262
  br i1 %263, label %264, label %268

264:                                              ; preds = %254
  %265 = load i32*, i32** %4, align 8
  %266 = load i32, i32* %5, align 4
  %267 = call i32 (i32*, i8*, ...) @Output(i32* %265, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i64 0, i64 0), i32 %266)
  br label %268

268:                                              ; preds = %264, %254
  %269 = load i32*, i32** %4, align 8
  %270 = call i32 (i32*, i8*, ...) @Output(i32* %269, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %271 = load i32*, i32** %4, align 8
  %272 = call i32 (i32*, i8*, ...) @Output(i32* %271, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0))
  br label %292

273:                                              ; preds = %248
  %274 = load i64, i64* @ROPCODE_PATPAINT, align 8
  %275 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %276 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = icmp eq i64 %274, %277
  br i1 %278, label %279, label %291

279:                                              ; preds = %273
  %280 = load i32*, i32** %4, align 8
  %281 = call i32 (i32*, i8*, ...) @Output(i32* %280, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.38, i64 0, i64 0))
  %282 = load i32*, i32** %4, align 8
  %283 = call i32 (i32*, i8*, ...) @Output(i32* %282, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %284 = load i32*, i32** %4, align 8
  %285 = load i32, i32* %5, align 4
  %286 = call i32 (i32*, i8*, ...) @Output(i32* %284, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i64 0, i64 0), i32 %285)
  %287 = load i32*, i32** %4, align 8
  %288 = call i32 (i32*, i8*, ...) @Output(i32* %287, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %289 = load i32*, i32** %4, align 8
  %290 = call i32 (i32*, i8*, ...) @Output(i32* %289, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0))
  br label %291

291:                                              ; preds = %279, %273
  br label %292

292:                                              ; preds = %291, %268
  %293 = load i64, i64* @ROPCODE_GENERIC, align 8
  %294 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %295 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = icmp eq i64 %293, %296
  br i1 %297, label %298, label %301

298:                                              ; preds = %292
  %299 = load i32*, i32** %4, align 8
  %300 = call i32 (i32*, i8*, ...) @Output(i32* %299, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0))
  br label %301

301:                                              ; preds = %298, %292
  %302 = load i32*, i32** %4, align 8
  %303 = load i32, i32* %5, align 4
  %304 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %305 = call i32 @CreateActionBlock(i32* %302, i32 %303, %struct.TYPE_5__* %304, i32 0)
  %306 = load i32*, i32** %4, align 8
  %307 = call i32 @MARK(i32* %306)
  %308 = load i32*, i32** %4, align 8
  %309 = call i32 (i32*, i8*, ...) @Output(i32* %308, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0))
  br label %317

310:                                              ; preds = %147
  %311 = load i32*, i32** %4, align 8
  %312 = load i32, i32* %5, align 4
  %313 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %314 = call i32 @CreateActionBlock(i32* %311, i32 %312, %struct.TYPE_5__* %313, i32 0)
  %315 = load i32*, i32** %4, align 8
  %316 = call i32 @MARK(i32* %315)
  br label %317

317:                                              ; preds = %310, %301
  br label %318

318:                                              ; preds = %317, %48
  br label %319

319:                                              ; preds = %318, %38
  br label %320

320:                                              ; preds = %319, %28
  %321 = load i32*, i32** %4, align 8
  %322 = call i32 (i32*, i8*, ...) @Output(i32* %321, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0))
  ret void
}

declare dso_local i32 @MARK(i32*) #1

declare dso_local i32 @Output(i32*, i8*, ...) #1

declare dso_local i32 @PrintRoutineName(i32*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @CreateBase(i32*, i32, i32, i32) #1

declare dso_local i32 @CreateCounts(i32*, i32) #1

declare dso_local i32 @CreateActionBlock(i32*, i32, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
