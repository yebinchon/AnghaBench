; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/global_mem/extr_global_mem.c_TestGlobalReAllocFixed.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/global_mem/extr_global_mem.c_TestGlobalReAllocFixed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SKIPPED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"Testing GlobalReAlloc() on memory allocated as GMEM_FIXED\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Allocating buffer\00", align 1
@GMEM_FIXED = common dso_local global i32 0, align 4
@MEM_BLOCK_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [57 x i8] c"Testing to see if this is converted into a movable block\00", align 1
@GMEM_MOVEABLE = common dso_local global i32 0, align 4
@GMEM_MODIFY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"GlobalReAlloc failed-- returned NULL\00", align 1
@FAILED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [40 x i8] c"GlobalReAlloc returned a fixed pointer.\00", align 1
@PASSED = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [20 x i8] c"Memory Read failed.\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Memory Write failed.\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Global Alloc Failed.\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"Subtest result:\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"Testing to see if a new fixed block is returned.\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"Alloced Handle: \00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"ReAlloced Handle: \00", align 1
@.str.13 = private unnamed_addr constant [118 x i8] c"GlobalReAlloc returned the same pointer.  The documentation states that this is wrong, but Windows NT works this way.\00", align 1
@.str.14 = private unnamed_addr constant [59 x i8] c"Testing to see if a fixed pointer is reallocated in place.\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"GlobalReAlloc returned a different.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @TestGlobalReAllocFixed() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  store i64 0, i64* %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load i64, i64* @SKIPPED, align 8
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* @SKIPPED, align 8
  store i64 %7, i64* %5, align 8
  %8 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %10 = load i32, i32* @GMEM_FIXED, align 4
  %11 = load i64, i64* @MEM_BLOCK_SIZE, align 8
  %12 = call i64 @GlobalAlloc(i32 %10, i64 %11)
  store i64 %12, i64* %1, align 8
  %13 = load i64, i64* %1, align 8
  %14 = icmp ne i64 0, %13
  br i1 %14, label %15, label %81

15:                                               ; preds = %0
  %16 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  %17 = load i64, i64* %1, align 8
  %18 = load i64, i64* @MEM_BLOCK_SIZE, align 8
  %19 = add nsw i64 %18, 100
  %20 = load i32, i32* @GMEM_MOVEABLE, align 4
  %21 = load i32, i32* @GMEM_MODIFY, align 4
  %22 = or i32 %20, %21
  %23 = call i64 @GlobalReAlloc(i64 %17, i64 %19, i32 %22)
  store i64 %23, i64* %2, align 8
  %24 = load i64, i64* %2, align 8
  %25 = icmp eq i64 0, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %15
  %27 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* @FAILED, align 8
  %30 = call i64 @TEST_CombineStatus(i64 %28, i64 %29)
  store i64 %30, i64* %4, align 8
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @OUTPUT_Result(i64 %31)
  br label %78

33:                                               ; preds = %15
  %34 = load i64, i64* %2, align 8
  store i64 %34, i64* %1, align 8
  %35 = load i64, i64* %1, align 8
  %36 = call i64 @IsMovable(i64 %35)
  %37 = icmp eq i64 0, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %40 = load i64, i64* %4, align 8
  %41 = load i64, i64* @FAILED, align 8
  %42 = call i64 @TEST_CombineStatus(i64 %40, i64 %41)
  store i64 %42, i64* %4, align 8
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @OUTPUT_Result(i64 %43)
  br label %77

45:                                               ; preds = %33
  %46 = load i64, i64* %1, align 8
  %47 = call i32 @GlobalLock(i64 %46)
  store i32 %47, i32* %3, align 4
  %48 = load i64, i64* %4, align 8
  %49 = load i64, i64* @PASSED, align 8
  %50 = call i64 @TEST_CombineStatus(i64 %48, i64 %49)
  store i64 %50, i64* %4, align 8
  %51 = load i64, i64* %4, align 8
  %52 = load i32, i32* %3, align 4
  %53 = load i64, i64* @MEM_BLOCK_SIZE, align 8
  %54 = add nsw i64 %53, 100
  %55 = call i64 @TEST_MemoryRead(i32 %52, i64 %54)
  %56 = call i64 @TEST_CombineStatus(i64 %51, i64 %55)
  store i64 %56, i64* %4, align 8
  %57 = load i64, i64* @FAILED, align 8
  %58 = load i64, i64* %4, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %45
  %61 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %45
  %63 = load i64, i64* %4, align 8
  %64 = load i32, i32* %3, align 4
  %65 = load i64, i64* @MEM_BLOCK_SIZE, align 8
  %66 = add nsw i64 %65, 100
  %67 = call i64 @TEST_MemoryWrite(i32 %64, i64 %66)
  %68 = call i64 @TEST_CombineStatus(i64 %63, i64 %67)
  store i64 %68, i64* %4, align 8
  %69 = load i64, i64* @FAILED, align 8
  %70 = load i64, i64* %4, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %62
  %73 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %62
  %75 = load i64, i64* %1, align 8
  %76 = call i32 @GlobalUnlock(i64 %75)
  br label %77

77:                                               ; preds = %74, %38
  br label %78

78:                                               ; preds = %77, %26
  %79 = load i64, i64* %1, align 8
  %80 = call i32 @GlobalFree(i64 %79)
  br label %86

81:                                               ; preds = %0
  %82 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %83 = load i64, i64* %4, align 8
  %84 = load i64, i64* @FAILED, align 8
  %85 = call i64 @TEST_CombineStatus(i64 %83, i64 %84)
  store i64 %85, i64* %4, align 8
  br label %86

86:                                               ; preds = %81, %78
  %87 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %88 = load i64, i64* %4, align 8
  %89 = call i32 @OUTPUT_Result(i64 %88)
  %90 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0))
  %91 = load i64, i64* %5, align 8
  %92 = load i64, i64* %4, align 8
  %93 = call i64 @TEST_CombineStatus(i64 %91, i64 %92)
  store i64 %93, i64* %5, align 8
  %94 = load i64, i64* @SKIPPED, align 8
  store i64 %94, i64* %4, align 8
  %95 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %96 = load i32, i32* @GMEM_FIXED, align 4
  %97 = load i64, i64* @MEM_BLOCK_SIZE, align 8
  %98 = call i64 @GlobalAlloc(i32 %96, i64 %97)
  store i64 %98, i64* %1, align 8
  %99 = load i64, i64* %1, align 8
  %100 = icmp ne i64 0, %99
  br i1 %100, label %101, label %151

101:                                              ; preds = %86
  %102 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0))
  %103 = load i64, i64* %1, align 8
  %104 = load i64, i64* @MEM_BLOCK_SIZE, align 8
  %105 = sub nsw i64 %104, 100
  %106 = load i32, i32* @GMEM_MOVEABLE, align 4
  %107 = call i64 @GlobalReAlloc(i64 %103, i64 %105, i32 %106)
  store i64 %107, i64* %2, align 8
  %108 = load i64, i64* %2, align 8
  %109 = icmp eq i64 0, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %101
  %111 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %112 = load i64, i64* %4, align 8
  %113 = load i64, i64* @FAILED, align 8
  %114 = call i64 @TEST_CombineStatus(i64 %112, i64 %113)
  store i64 %114, i64* %4, align 8
  %115 = load i64, i64* %4, align 8
  %116 = call i32 @OUTPUT_Result(i64 %115)
  br label %148

117:                                              ; preds = %101
  %118 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  %119 = load i64, i64* %1, align 8
  %120 = call i32 @OUTPUT_Handle(i64 %119)
  %121 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0))
  %122 = load i64, i64* %2, align 8
  %123 = call i32 @OUTPUT_Handle(i64 %122)
  %124 = load i64, i64* %1, align 8
  %125 = load i64, i64* %2, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %117
  %128 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.13, i64 0, i64 0))
  br label %129

129:                                              ; preds = %127, %117
  %130 = load i64, i64* %2, align 8
  store i64 %130, i64* %1, align 8
  %131 = load i64, i64* %4, align 8
  %132 = load i64, i64* @PASSED, align 8
  %133 = call i64 @TEST_CombineStatus(i64 %131, i64 %132)
  store i64 %133, i64* %4, align 8
  %134 = load i64, i64* %4, align 8
  %135 = load i64, i64* %1, align 8
  %136 = trunc i64 %135 to i32
  %137 = load i64, i64* @MEM_BLOCK_SIZE, align 8
  %138 = sub nsw i64 %137, 100
  %139 = call i64 @TEST_MemoryRead(i32 %136, i64 %138)
  %140 = call i64 @TEST_CombineStatus(i64 %134, i64 %139)
  store i64 %140, i64* %4, align 8
  %141 = load i64, i64* %4, align 8
  %142 = load i64, i64* %1, align 8
  %143 = trunc i64 %142 to i32
  %144 = load i64, i64* @MEM_BLOCK_SIZE, align 8
  %145 = sub nsw i64 %144, 100
  %146 = call i64 @TEST_MemoryWrite(i32 %143, i64 %145)
  %147 = call i64 @TEST_CombineStatus(i64 %141, i64 %146)
  store i64 %147, i64* %4, align 8
  br label %148

148:                                              ; preds = %129, %110
  %149 = load i64, i64* %1, align 8
  %150 = call i32 @GlobalFree(i64 %149)
  br label %155

151:                                              ; preds = %86
  %152 = load i64, i64* %4, align 8
  %153 = load i64, i64* @FAILED, align 8
  %154 = call i64 @TEST_CombineStatus(i64 %152, i64 %153)
  store i64 %154, i64* %4, align 8
  br label %155

155:                                              ; preds = %151, %148
  %156 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %157 = load i64, i64* %4, align 8
  %158 = call i32 @OUTPUT_Result(i64 %157)
  %159 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0))
  %160 = load i64, i64* %5, align 8
  %161 = load i64, i64* %4, align 8
  %162 = call i64 @TEST_CombineStatus(i64 %160, i64 %161)
  store i64 %162, i64* %5, align 8
  %163 = load i64, i64* @SKIPPED, align 8
  store i64 %163, i64* %4, align 8
  %164 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %165 = load i32, i32* @GMEM_FIXED, align 4
  %166 = load i64, i64* @MEM_BLOCK_SIZE, align 8
  %167 = call i64 @GlobalAlloc(i32 %165, i64 %166)
  store i64 %167, i64* %1, align 8
  %168 = load i64, i64* %1, align 8
  %169 = icmp ne i64 0, %168
  br i1 %169, label %170, label %224

170:                                              ; preds = %155
  %171 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.14, i64 0, i64 0))
  %172 = load i64, i64* %1, align 8
  %173 = load i64, i64* @MEM_BLOCK_SIZE, align 8
  %174 = sub nsw i64 %173, 100
  %175 = call i64 @GlobalReAlloc(i64 %172, i64 %174, i32 0)
  store i64 %175, i64* %2, align 8
  %176 = load i64, i64* %2, align 8
  %177 = icmp eq i64 0, %176
  br i1 %177, label %178, label %185

178:                                              ; preds = %170
  %179 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %180 = load i64, i64* %4, align 8
  %181 = load i64, i64* @FAILED, align 8
  %182 = call i64 @TEST_CombineStatus(i64 %180, i64 %181)
  store i64 %182, i64* %4, align 8
  %183 = load i64, i64* %4, align 8
  %184 = call i32 @OUTPUT_Result(i64 %183)
  br label %221

185:                                              ; preds = %170
  %186 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  %187 = load i64, i64* %1, align 8
  %188 = call i32 @OUTPUT_Handle(i64 %187)
  %189 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0))
  %190 = load i64, i64* %2, align 8
  %191 = call i32 @OUTPUT_Handle(i64 %190)
  %192 = load i64, i64* %1, align 8
  %193 = load i64, i64* %2, align 8
  %194 = icmp ne i64 %192, %193
  br i1 %194, label %195, label %202

195:                                              ; preds = %185
  %196 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0))
  %197 = load i64, i64* %4, align 8
  %198 = load i64, i64* @FAILED, align 8
  %199 = call i64 @TEST_CombineStatus(i64 %197, i64 %198)
  store i64 %199, i64* %4, align 8
  %200 = load i64, i64* %4, align 8
  %201 = call i32 @OUTPUT_Result(i64 %200)
  br label %220

202:                                              ; preds = %185
  %203 = load i64, i64* %4, align 8
  %204 = load i64, i64* @PASSED, align 8
  %205 = call i64 @TEST_CombineStatus(i64 %203, i64 %204)
  store i64 %205, i64* %4, align 8
  %206 = load i64, i64* %4, align 8
  %207 = load i64, i64* %1, align 8
  %208 = trunc i64 %207 to i32
  %209 = load i64, i64* @MEM_BLOCK_SIZE, align 8
  %210 = sub nsw i64 %209, 100
  %211 = call i64 @TEST_MemoryRead(i32 %208, i64 %210)
  %212 = call i64 @TEST_CombineStatus(i64 %206, i64 %211)
  store i64 %212, i64* %4, align 8
  %213 = load i64, i64* %4, align 8
  %214 = load i64, i64* %1, align 8
  %215 = trunc i64 %214 to i32
  %216 = load i64, i64* @MEM_BLOCK_SIZE, align 8
  %217 = sub nsw i64 %216, 100
  %218 = call i64 @TEST_MemoryWrite(i32 %215, i64 %217)
  %219 = call i64 @TEST_CombineStatus(i64 %213, i64 %218)
  store i64 %219, i64* %4, align 8
  br label %220

220:                                              ; preds = %202, %195
  br label %221

221:                                              ; preds = %220, %178
  %222 = load i64, i64* %1, align 8
  %223 = call i32 @GlobalFree(i64 %222)
  br label %228

224:                                              ; preds = %155
  %225 = load i64, i64* %4, align 8
  %226 = load i64, i64* @FAILED, align 8
  %227 = call i64 @TEST_CombineStatus(i64 %225, i64 %226)
  store i64 %227, i64* %4, align 8
  br label %228

228:                                              ; preds = %224, %221
  %229 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %230 = load i64, i64* %4, align 8
  %231 = call i32 @OUTPUT_Result(i64 %230)
  %232 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0))
  %233 = load i64, i64* %5, align 8
  %234 = load i64, i64* %4, align 8
  %235 = call i64 @TEST_CombineStatus(i64 %233, i64 %234)
  store i64 %235, i64* %5, align 8
  %236 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0))
  %237 = load i64, i64* %5, align 8
  ret i64 %237
}

declare dso_local i32 @OUTPUT_Line(i8*) #1

declare dso_local i64 @GlobalAlloc(i32, i64) #1

declare dso_local i64 @GlobalReAlloc(i64, i64, i32) #1

declare dso_local i64 @TEST_CombineStatus(i64, i64) #1

declare dso_local i32 @OUTPUT_Result(i64) #1

declare dso_local i64 @IsMovable(i64) #1

declare dso_local i32 @GlobalLock(i64) #1

declare dso_local i64 @TEST_MemoryRead(i32, i64) #1

declare dso_local i64 @TEST_MemoryWrite(i32, i64) #1

declare dso_local i32 @GlobalUnlock(i64) #1

declare dso_local i32 @GlobalFree(i64) #1

declare dso_local i32 @OUTPUT_Handle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
