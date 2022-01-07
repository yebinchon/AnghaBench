; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/winmm/extr_lolvldrv.c_MMDRV_InitPerType.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/winmm/extr_lolvldrv.c_MMDRV_InitPerType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i64, i64, i64 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i64 (i32, i64, i64, i64, i64)* }

@.str = private unnamed_addr constant [18 x i8] c"(%p, %04x, %04x)\0A\00", align 1
@DRVM_INIT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"DRVM_INIT => %s\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Got %u dev for (%s:%s)\0A\00", align 1
@llTypes = common dso_local global %struct.TYPE_11__* null, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"Two mappers for type %s (%d, %s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Strange: mapper with %d > 1 devices\0A\00", align 1
@MMDrvsHi = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"Setting min=%d max=%d (ttop=%d) for (%s:%s)\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"%s:Trans[%d] -> %s\0A\00", align 1
@MMDrvs = common dso_local global %struct.TYPE_12__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@DRVM_ENABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i64, i64)* @MMDRV_InitPerType to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MMDRV_InitPerType(%struct.TYPE_10__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = load i64, i64* %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i64 %16
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %8, align 8
  store i64 0, i64* %10, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__* %18, i64 %19, i64 %20)
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  store i32 0, i32* %23, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 2
  %28 = load i64 (i32, i64, i64, i64, i64)*, i64 (i32, i64, i64, i64, i64)** %27, align 8
  %29 = icmp ne i64 (i32, i64, i64, i64, i64)* %28, null
  br i1 %29, label %30, label %44

30:                                               ; preds = %3
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 2
  %33 = load i64 (i32, i64, i64, i64, i64)*, i64 (i32, i64, i64, i64, i64)** %32, align 8
  %34 = load i64, i64* @DRVM_INIT, align 8
  %35 = call i64 %33(i32 0, i64 %34, i64 0, i64 0, i64 0)
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @WINMM_ErrorToString(i64 %36)
  %38 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 2
  %41 = load i64 (i32, i64, i64, i64, i64)*, i64 (i32, i64, i64, i64, i64)** %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i64 %41(i32 0, i64 %42, i64 0, i64 0, i64 0)
  store i64 %43, i64* %10, align 8
  br label %46

44:                                               ; preds = %3
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %4, align 4
  br label %356

46:                                               ; preds = %30
  %47 = load i64, i64* %10, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** @llTypes, align 8
  %52 = load i64, i64* %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %47, i32 %50, i64 %55)
  %57 = load i64, i64* %10, align 8
  %58 = call i64 @HIWORD(i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %46
  %61 = load i32, i32* @FALSE, align 4
  store i32 %61, i32* %4, align 4
  br label %356

62:                                               ; preds = %46
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %101

67:                                               ; preds = %62
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** @llTypes, align 8
  %69 = load i64, i64* %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, -1
  br i1 %73, label %74, label %89

74:                                               ; preds = %67
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** @llTypes, align 8
  %76 = load i64, i64* %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** @llTypes, align 8
  %81 = load i64, i64* %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 (i8*, i64, ...) @ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i64 %79, i32 %84, i32 %87)
  br label %89

89:                                               ; preds = %74, %67
  %90 = load i64, i64* %10, align 8
  %91 = icmp ugt i64 %90, 1
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i64, i64* %10, align 8
  %94 = call i32 (i8*, i64, ...) @ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i64 %93)
  br label %95

95:                                               ; preds = %92, %89
  %96 = load i32, i32* @MMDrvsHi, align 4
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** @llTypes, align 8
  %98 = load i64, i64* %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  store i32 %96, i32* %100, align 8
  br label %130

101:                                              ; preds = %62
  %102 = load i64, i64* %10, align 8
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = load i32, i32* @FALSE, align 4
  store i32 %105, i32* %4, align 4
  br label %356

106:                                              ; preds = %101
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** @llTypes, align 8
  %108 = load i64, i64* %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load i64, i64* %10, align 8
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** @llTypes, align 8
  %116 = load i64, i64* %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = add i64 %120, %114
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %118, align 4
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** @llTypes, align 8
  %124 = load i64, i64* %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  br label %130

130:                                              ; preds = %106, %95
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** @llTypes, align 8
  %138 = load i64, i64* %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** @llTypes, align 8
  %146 = load i64, i64* %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %133, i32 %136, i32 %141, i32 %144, i64 %149)
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** @llTypes, align 8
  %152 = load i64, i64* %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 3
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %154, align 8
  %156 = icmp ne %struct.TYPE_13__* %155, null
  br i1 %156, label %157, label %182

157:                                              ; preds = %130
  %158 = call i32 (...) @GetProcessHeap()
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** @llTypes, align 8
  %160 = load i64, i64* %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 3
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i64 -1
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** @llTypes, align 8
  %166 = load i64, i64* %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = mul i64 4, %171
  %173 = trunc i64 %172 to i32
  %174 = call i64 @HeapReAlloc(i32 %158, i32 0, %struct.TYPE_13__* %164, i32 %173)
  %175 = inttoptr i64 %174 to i8*
  %176 = getelementptr i8, i8* %175, i64 1
  %177 = bitcast i8* %176 to %struct.TYPE_13__*
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** @llTypes, align 8
  %179 = load i64, i64* %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 3
  store %struct.TYPE_13__* %177, %struct.TYPE_13__** %181, align 8
  br label %201

182:                                              ; preds = %130
  %183 = call i32 (...) @GetProcessHeap()
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** @llTypes, align 8
  %185 = load i64, i64* %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = add nsw i32 %188, 1
  %190 = sext i32 %189 to i64
  %191 = mul i64 4, %190
  %192 = trunc i64 %191 to i32
  %193 = call i64 @HeapAlloc(i32 %183, i32 0, i32 %192)
  %194 = inttoptr i64 %193 to i8*
  %195 = getelementptr i8, i8* %194, i64 1
  %196 = bitcast i8* %195 to %struct.TYPE_13__*
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** @llTypes, align 8
  %198 = load i64, i64* %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 3
  store %struct.TYPE_13__* %196, %struct.TYPE_13__** %200, align 8
  br label %201

201:                                              ; preds = %182, %157
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** @llTypes, align 8
  %203 = load i64, i64* %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = icmp ne i32 %206, -1
  br i1 %207, label %208, label %260

208:                                              ; preds = %201
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** @llTypes, align 8
  %210 = load i64, i64* %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** @MMDrvs, align 8
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** @llTypes, align 8
  %216 = load i64, i64* %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i64 %213, i32 -1, i64 %223)
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** @llTypes, align 8
  %226 = load i64, i64* %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 3
  %229 = load %struct.TYPE_13__*, %struct.TYPE_13__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i64 -1
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 0
  store i32 -1, i32* %231, align 8
  %232 = load i64, i64* %6, align 8
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** @llTypes, align 8
  %234 = load i64, i64* %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 3
  %237 = load %struct.TYPE_13__*, %struct.TYPE_13__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i64 -1
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i32 0, i32 1
  store i64 %232, i64* %239, align 8
  %240 = load %struct.TYPE_11__*, %struct.TYPE_11__** @llTypes, align 8
  %241 = load i64, i64* %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = sext i32 %244 to i64
  %246 = load %struct.TYPE_11__*, %struct.TYPE_11__** @llTypes, align 8
  %247 = load i64, i64* %6, align 8
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 3
  %250 = load %struct.TYPE_13__*, %struct.TYPE_13__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i64 -1
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 2
  store i64 %245, i64* %252, align 8
  %253 = load %struct.TYPE_11__*, %struct.TYPE_11__** @llTypes, align 8
  %254 = load i64, i64* %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 3
  %257 = load %struct.TYPE_13__*, %struct.TYPE_13__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i64 -1
  %259 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %258, i32 0, i32 3
  store i64 0, i64* %259, align 8
  br label %260

260:                                              ; preds = %208, %201
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %261

261:                                              ; preds = %351, %260
  %262 = load i32, i32* %11, align 4
  %263 = load i32, i32* @MMDrvsHi, align 4
  %264 = icmp sle i32 %262, %263
  br i1 %264, label %265, label %354

265:                                              ; preds = %261
  br label %266

266:                                              ; preds = %294, %265
  %267 = load %struct.TYPE_12__*, %struct.TYPE_12__** @MMDrvs, align 8
  %268 = load i32, i32* %11, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %267, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %270, i32 0, i32 1
  %272 = load %struct.TYPE_8__*, %struct.TYPE_8__** %271, align 8
  %273 = load i64, i64* %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* %12, align 4
  %278 = icmp sle i32 %276, %277
  br i1 %278, label %279, label %292

279:                                              ; preds = %266
  %280 = load i32, i32* %12, align 4
  %281 = load %struct.TYPE_12__*, %struct.TYPE_12__** @MMDrvs, align 8
  %282 = load i32, i32* %11, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %281, i64 %283
  %285 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %284, i32 0, i32 1
  %286 = load %struct.TYPE_8__*, %struct.TYPE_8__** %285, align 8
  %287 = load i64, i64* %6, align 8
  %288 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %286, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = icmp slt i32 %280, %290
  br label %292

292:                                              ; preds = %279, %266
  %293 = phi i1 [ false, %266 ], [ %291, %279 ]
  br i1 %293, label %294, label %350

294:                                              ; preds = %292
  %295 = load %struct.TYPE_11__*, %struct.TYPE_11__** @llTypes, align 8
  %296 = load i64, i64* %6, align 8
  %297 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %295, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = load i32, i32* %12, align 4
  %301 = load %struct.TYPE_12__*, %struct.TYPE_12__** @MMDrvs, align 8
  %302 = load i32, i32* %11, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %301, i64 %303
  %305 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %304, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i64 %299, i32 %300, i64 %306)
  %308 = load i32, i32* %12, align 4
  %309 = load %struct.TYPE_11__*, %struct.TYPE_11__** @llTypes, align 8
  %310 = load i64, i64* %6, align 8
  %311 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %309, i64 %310
  %312 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %311, i32 0, i32 3
  %313 = load %struct.TYPE_13__*, %struct.TYPE_13__** %312, align 8
  %314 = load i32, i32* %12, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %313, i64 %315
  %317 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %316, i32 0, i32 0
  store i32 %308, i32* %317, align 8
  %318 = load i64, i64* %6, align 8
  %319 = load %struct.TYPE_11__*, %struct.TYPE_11__** @llTypes, align 8
  %320 = load i64, i64* %6, align 8
  %321 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %319, i64 %320
  %322 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %321, i32 0, i32 3
  %323 = load %struct.TYPE_13__*, %struct.TYPE_13__** %322, align 8
  %324 = load i32, i32* %12, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %323, i64 %325
  %327 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %326, i32 0, i32 1
  store i64 %318, i64* %327, align 8
  %328 = load i32, i32* %11, align 4
  %329 = sext i32 %328 to i64
  %330 = load %struct.TYPE_11__*, %struct.TYPE_11__** @llTypes, align 8
  %331 = load i64, i64* %6, align 8
  %332 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %330, i64 %331
  %333 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %332, i32 0, i32 3
  %334 = load %struct.TYPE_13__*, %struct.TYPE_13__** %333, align 8
  %335 = load i32, i32* %12, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %334, i64 %336
  %338 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %337, i32 0, i32 2
  store i64 %329, i64* %338, align 8
  %339 = load %struct.TYPE_11__*, %struct.TYPE_11__** @llTypes, align 8
  %340 = load i64, i64* %6, align 8
  %341 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %339, i64 %340
  %342 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %341, i32 0, i32 3
  %343 = load %struct.TYPE_13__*, %struct.TYPE_13__** %342, align 8
  %344 = load i32, i32* %12, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %343, i64 %345
  %347 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %346, i32 0, i32 3
  store i64 0, i64* %347, align 8
  %348 = load i32, i32* %12, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %12, align 4
  br label %266

350:                                              ; preds = %292
  br label %351

351:                                              ; preds = %350
  %352 = load i32, i32* %11, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %11, align 4
  br label %261

354:                                              ; preds = %261
  %355 = load i32, i32* @TRUE, align 4
  store i32 %355, i32* %4, align 4
  br label %356

356:                                              ; preds = %354, %104, %60, %44
  %357 = load i32, i32* %4, align 4
  ret i32 %357
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @WINMM_ErrorToString(i64) #1

declare dso_local i64 @HIWORD(i64) #1

declare dso_local i32 @ERR(i8*, i64, ...) #1

declare dso_local i64 @HeapReAlloc(i32, i32, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @HeapAlloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
