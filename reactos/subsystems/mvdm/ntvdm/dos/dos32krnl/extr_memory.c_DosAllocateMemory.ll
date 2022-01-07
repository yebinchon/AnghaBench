; ModuleID = '/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/dos/dos32krnl/extr_memory.c_DosAllocateMemory.c'
source_filename = "/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/dos/dos32krnl/extr_memory.c_DosAllocateMemory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i64 }
%struct.TYPE_8__ = type { i32, i64, i32 }
%struct.TYPE_6__ = type { i64, i64, i8, i32 }

@SysVars = common dso_local global %struct.TYPE_7__* null, align 8
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"DosAllocateMemory: Size 0x%04X\0A\00", align 1
@Sda = common dso_local global %struct.TYPE_8__* null, align 8
@DOS_ALLOC_HIGH = common dso_local global i32 0, align 4
@DOS_ALLOC_HIGH_LOW = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"The DOS memory arena is corrupted!\0A\00", align 1
@ERROR_ARENA_TRASHED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"DosAllocateMemory FAILED. Maximum available: 0x%04X\0A\00", align 1
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @DosAllocateMemory(i64 %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  store i64 %0, i64* %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 0, i64* %6, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** @SysVars, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %16 = load i64, i64* @FALSE, align 8
  store i64 %16, i64* %10, align 8
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @DPRINT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = call i32 (...) @DosMemValidate()
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** @SysVars, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %2
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** @SysVars, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 65535
  br i1 %28, label %29, label %44

29:                                               ; preds = %24
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Sda, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @DOS_ALLOC_HIGH, align 4
  %34 = load i32, i32* @DOS_ALLOC_HIGH_LOW, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %29
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** @SysVars, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* @TRUE, align 8
  store i64 %43, i64* %10, align 8
  br label %44

44:                                               ; preds = %38, %29, %24, %2
  br label %45

45:                                               ; preds = %140, %134, %44
  %46 = load i64, i64* @TRUE, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %147

48:                                               ; preds = %45
  %49 = load i64, i64* %7, align 8
  %50 = trunc i64 %49 to i32
  %51 = call %struct.TYPE_6__* @SEGMENT_TO_MCB(i32 %50)
  store %struct.TYPE_6__* %51, %struct.TYPE_6__** %9, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %53 = call i32 @ValidateMcb(%struct.TYPE_6__* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %48
  %56 = call i32 @DPRINT1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @ERROR_ARENA_TRASHED, align 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Sda, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  store i64 0, i64* %3, align 8
  br label %262

60:                                               ; preds = %48
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %115

66:                                               ; preds = %60
  %67 = load i64, i64* %7, align 8
  %68 = call i32 @DosCombineFreeBlocks(i64 %67)
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %8, align 8
  %73 = icmp sgt i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %66
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %8, align 8
  br label %78

78:                                               ; preds = %74, %66
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %4, align 8
  %83 = icmp slt i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %115

85:                                               ; preds = %78
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Sda, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @DOS_ALLOC_HIGH, align 4
  %90 = load i32, i32* @DOS_ALLOC_HIGH_LOW, align 4
  %91 = or i32 %89, %90
  %92 = xor i32 %91, -1
  %93 = and i32 %88, %92
  switch i32 %93, label %114 [
    i32 129, label %94
    i32 130, label %96
    i32 128, label %112
  ]

94:                                               ; preds = %85
  %95 = load i64, i64* %7, align 8
  store i64 %95, i64* %6, align 8
  br label %148

96:                                               ; preds = %85
  %97 = load i64, i64* %6, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %109, label %99

99:                                               ; preds = %96
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %6, align 8
  %104 = trunc i64 %103 to i32
  %105 = call %struct.TYPE_6__* @SEGMENT_TO_MCB(i32 %104)
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp slt i64 %102, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %99, %96
  %110 = load i64, i64* %7, align 8
  store i64 %110, i64* %6, align 8
  br label %111

111:                                              ; preds = %109, %99
  br label %114

112:                                              ; preds = %85
  %113 = load i64, i64* %7, align 8
  store i64 %113, i64* %6, align 8
  br label %114

114:                                              ; preds = %85, %112, %111
  br label %115

115:                                              ; preds = %114, %84, %65
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 2
  %118 = load i8, i8* %117, align 8
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 90
  br i1 %120, label %121, label %140

121:                                              ; preds = %115
  %122 = load i64, i64* %6, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %139

124:                                              ; preds = %121
  %125 = load i64, i64* %10, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %139

127:                                              ; preds = %124
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Sda, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @DOS_ALLOC_HIGH_LOW, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %127
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** @SysVars, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  store i64 %137, i64* %7, align 8
  %138 = load i64, i64* @FALSE, align 8
  store i64 %138, i64* %10, align 8
  br label %45

139:                                              ; preds = %127, %124, %121
  br label %147

140:                                              ; preds = %115
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = add nsw i64 %143, 1
  %145 = load i64, i64* %7, align 8
  %146 = add nsw i64 %145, %144
  store i64 %146, i64* %7, align 8
  br label %45

147:                                              ; preds = %139, %45
  br label %148

148:                                              ; preds = %147, %94
  %149 = call i32 (...) @DosMemValidate()
  %150 = load i64, i64* %6, align 8
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %164

152:                                              ; preds = %148
  %153 = load i64, i64* %8, align 8
  %154 = call i32 @DPRINT(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i64 %153)
  %155 = load i32, i32* @ERROR_NOT_ENOUGH_MEMORY, align 4
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Sda, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 2
  store i32 %155, i32* %157, align 8
  %158 = load i64*, i64** %5, align 8
  %159 = icmp ne i64* %158, null
  br i1 %159, label %160, label %163

160:                                              ; preds = %152
  %161 = load i64, i64* %8, align 8
  %162 = load i64*, i64** %5, align 8
  store i64 %161, i64* %162, align 8
  br label %163

163:                                              ; preds = %160, %152
  store i64 0, i64* %3, align 8
  br label %262

164:                                              ; preds = %148
  %165 = load i64, i64* %6, align 8
  %166 = trunc i64 %165 to i32
  %167 = call %struct.TYPE_6__* @SEGMENT_TO_MCB(i32 %166)
  store %struct.TYPE_6__* %167, %struct.TYPE_6__** %9, align 8
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* %4, align 8
  %172 = icmp sgt i64 %170, %171
  br i1 %172, label %173, label %241

173:                                              ; preds = %164
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Sda, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @DOS_ALLOC_HIGH, align 4
  %178 = load i32, i32* @DOS_ALLOC_HIGH_LOW, align 4
  %179 = or i32 %177, %178
  %180 = xor i32 %179, -1
  %181 = and i32 %176, %180
  %182 = icmp ne i32 %181, 128
  br i1 %182, label %183, label %210

183:                                              ; preds = %173
  %184 = load i64, i64* %6, align 8
  %185 = load i64, i64* %4, align 8
  %186 = add nsw i64 %184, %185
  %187 = add nsw i64 %186, 1
  %188 = trunc i64 %187 to i32
  %189 = call %struct.TYPE_6__* @SEGMENT_TO_MCB(i32 %188)
  store %struct.TYPE_6__* %189, %struct.TYPE_6__** %11, align 8
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 2
  %192 = load i8, i8* %191, align 8
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 2
  store i8 %192, i8* %194, align 8
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* %4, align 8
  %199 = sub nsw i64 %197, %198
  %200 = sub nsw i64 %199, 1
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 1
  store i64 %200, i64* %202, align 8
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 0
  store i64 0, i64* %204, align 8
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 2
  store i8 77, i8* %206, align 8
  %207 = load i64, i64* %4, align 8
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 1
  store i64 %207, i64* %209, align 8
  br label %240

210:                                              ; preds = %173
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* %211, %struct.TYPE_6__** %12, align 8
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* %4, align 8
  %216 = sub nsw i64 %214, %215
  %217 = load i64, i64* %6, align 8
  %218 = add nsw i64 %217, %216
  store i64 %218, i64* %6, align 8
  %219 = load i64, i64* %6, align 8
  %220 = trunc i64 %219 to i32
  %221 = call %struct.TYPE_6__* @SEGMENT_TO_MCB(i32 %220)
  store %struct.TYPE_6__* %221, %struct.TYPE_6__** %9, align 8
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 2
  %224 = load i8, i8* %223, align 8
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 2
  store i8 %224, i8* %226, align 8
  %227 = load i64, i64* %4, align 8
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 1
  store i64 %227, i64* %229, align 8
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 0
  store i64 0, i64* %231, align 8
  %232 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 2
  store i8 77, i8* %233, align 8
  %234 = load i64, i64* %4, align 8
  %235 = add nsw i64 %234, 1
  %236 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = sub nsw i64 %238, %235
  store i64 %239, i64* %237, align 8
  br label %240

240:                                              ; preds = %210, %183
  br label %241

241:                                              ; preds = %240, %164
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Sda, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 0
  store i64 %244, i64* %246, align 8
  %247 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Sda, align 8
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  %253 = sub nsw i64 %252, 1
  %254 = trunc i64 %253 to i32
  %255 = call %struct.TYPE_6__* @SEGMENT_TO_MCB(i32 %254)
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @RtlCopyMemory(i32 %249, i32 %257, i32 4)
  %259 = call i32 (...) @DosMemValidate()
  %260 = load i64, i64* %6, align 8
  %261 = add nsw i64 %260, 1
  store i64 %261, i64* %3, align 8
  br label %262

262:                                              ; preds = %241, %163, %55
  %263 = load i64, i64* %3, align 8
  ret i64 %263
}

declare dso_local i32 @DPRINT(i8*, i64) #1

declare dso_local i32 @DosMemValidate(...) #1

declare dso_local %struct.TYPE_6__* @SEGMENT_TO_MCB(i32) #1

declare dso_local i32 @ValidateMcb(%struct.TYPE_6__*) #1

declare dso_local i32 @DPRINT1(i8*) #1

declare dso_local i32 @DosCombineFreeBlocks(i64) #1

declare dso_local i32 @RtlCopyMemory(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
