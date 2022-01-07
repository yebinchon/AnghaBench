; ModuleID = '/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/dos/dos32krnl/extr_memory.c_DosResizeMemory.c'
source_filename = "/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/dos/dos32krnl/extr_memory.c_DosResizeMemory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i64, i64, i8 }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"DosResizeMemory: BlockData 0x%04X, NewSize 0x%04X\0A\00", align 1
@ERROR_INVALID_BLOCK = common dso_local global i8* null, align 8
@Sda = common dso_local global %struct.TYPE_6__* null, align 8
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [74 x i8] c"Cannot expand memory block 0x%04X: this is the last block (size 0x%04X)!\0A\00", align 1
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"The DOS memory arena is corrupted!\0A\00", align 1
@ERROR_ARENA_TRASHED = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [62 x i8] c"Cannot expand memory block 0x%04X: next segment is not free!\0A\00", align 1
@.str.4 = private unnamed_addr constant [74 x i8] c"Cannot expand memory block 0x%04X: insufficient free segments available!\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"Block too large, reducing size from 0x%04X to 0x%04X\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Shrinking block from 0x%04X to 0x%04X\0A\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"DosResizeMemory FAILED. Maximum available: 0x%04X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DosResizeMemory(i64 %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %14 = load i32, i32* @TRUE, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i64, i64* %5, align 8
  %16 = sub nsw i64 %15, 1
  store i64 %16, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %17 = load i64, i64* %9, align 8
  %18 = call %struct.TYPE_5__* @SEGMENT_TO_MCB(i64 %17)
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %12, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i32 (i8*, i64, ...) @DPRINT(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %19, i64 %20)
  %22 = call i32 (...) @DosMemValidate()
  %23 = load i64, i64* %5, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %3
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %27 = call i32 @ValidateMcb(%struct.TYPE_5__* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29, %25, %3
  %35 = load i8*, i8** @ERROR_INVALID_BLOCK, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Sda, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* @FALSE, align 4
  store i32 %38, i32* %8, align 4
  br label %203

39:                                               ; preds = %29
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %10, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %43, %46
  br i1 %47, label %48, label %161

48:                                               ; preds = %39
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load i8, i8* %50, align 8
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 90
  br i1 %53, label %54, label %64

54:                                               ; preds = %48
  %55 = load i64, i64* %9, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i32 (i8*, i64, ...) @DPRINT(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i64 %55, i64 %58)
  %60 = load i8*, i8** @ERROR_NOT_ENOUGH_MEMORY, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Sda, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  %63 = load i32, i32* @FALSE, align 4
  store i32 %63, i32* %8, align 4
  br label %203

64:                                               ; preds = %48
  %65 = load i64, i64* %9, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %65, %68
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %11, align 8
  %71 = load i64, i64* %11, align 8
  %72 = call %struct.TYPE_5__* @SEGMENT_TO_MCB(i64 %71)
  store %struct.TYPE_5__* %72, %struct.TYPE_5__** %13, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %74 = call i32 @ValidateMcb(%struct.TYPE_5__* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %64
  %77 = call i32 @DPRINT1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %78 = load i8*, i8** @ERROR_ARENA_TRASHED, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Sda, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  store i8* %78, i8** %80, align 8
  %81 = load i32, i32* @FALSE, align 4
  store i32 %81, i32* %4, align 4
  br label %218

82:                                               ; preds = %64
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %82
  %88 = load i64, i64* %9, align 8
  %89 = call i32 (i8*, i64, ...) @DPRINT(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), i64 %88)
  %90 = load i8*, i8** @ERROR_NOT_ENOUGH_MEMORY, align 8
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Sda, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  store i8* %90, i8** %92, align 8
  %93 = load i32, i32* @FALSE, align 4
  store i32 %93, i32* %8, align 4
  br label %203

94:                                               ; preds = %82
  %95 = load i64, i64* %11, align 8
  %96 = call i32 @DosCombineFreeBlocks(i64 %95)
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %99, 1
  %101 = load i64, i64* %10, align 8
  %102 = add nsw i64 %101, %100
  store i64 %102, i64* %10, align 8
  %103 = load i64, i64* %10, align 8
  %104 = load i64, i64* %6, align 8
  %105 = icmp slt i64 %103, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %94
  %107 = load i64, i64* %9, align 8
  %108 = call i32 (i8*, i64, ...) @DPRINT(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i64 0, i64 0), i64 %107)
  %109 = load i8*, i8** @ERROR_NOT_ENOUGH_MEMORY, align 8
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Sda, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  store i8* %109, i8** %111, align 8
  %112 = load i32, i32* @FALSE, align 4
  store i32 %112, i32* %8, align 4
  br label %203

113:                                              ; preds = %94
  %114 = load i64, i64* %10, align 8
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  store i64 %114, i64* %116, align 8
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 2
  %119 = load i8, i8* %118, align 8
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 2
  store i8 %119, i8* %121, align 8
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 2
  store i8 73, i8* %123, align 8
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* %6, align 8
  %128 = icmp sgt i64 %126, %127
  br i1 %128, label %129, label %160

129:                                              ; preds = %113
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* %6, align 8
  %134 = call i32 (i8*, i64, ...) @DPRINT(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i64 %132, i64 %133)
  %135 = load i64, i64* %9, align 8
  %136 = load i64, i64* %6, align 8
  %137 = add nsw i64 %135, %136
  %138 = add nsw i64 %137, 1
  %139 = call %struct.TYPE_5__* @SEGMENT_TO_MCB(i64 %138)
  store %struct.TYPE_5__* %139, %struct.TYPE_5__** %13, align 8
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 2
  %142 = load i8, i8* %141, align 8
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 2
  store i8 %142, i8* %144, align 8
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* %6, align 8
  %149 = sub nsw i64 %147, %148
  %150 = sub nsw i64 %149, 1
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 1
  store i64 %150, i64* %152, align 8
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  store i64 0, i64* %154, align 8
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 2
  store i8 77, i8* %156, align 8
  %157 = load i64, i64* %6, align 8
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 1
  store i64 %157, i64* %159, align 8
  br label %160

160:                                              ; preds = %129, %113
  br label %202

161:                                              ; preds = %39
  %162 = load i64, i64* %6, align 8
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = icmp slt i64 %162, %165
  br i1 %166, label %167, label %201

167:                                              ; preds = %161
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* %6, align 8
  %172 = call i32 (i8*, i64, ...) @DPRINT(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i64 %170, i64 %171)
  %173 = load i64, i64* %9, align 8
  %174 = load i64, i64* %6, align 8
  %175 = add nsw i64 %173, %174
  %176 = add nsw i64 %175, 1
  store i64 %176, i64* %11, align 8
  %177 = load i64, i64* %11, align 8
  %178 = call %struct.TYPE_5__* @SEGMENT_TO_MCB(i64 %177)
  store %struct.TYPE_5__* %178, %struct.TYPE_5__** %13, align 8
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 2
  %181 = load i8, i8* %180, align 8
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 2
  store i8 %181, i8* %183, align 8
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* %6, align 8
  %188 = sub nsw i64 %186, %187
  %189 = sub nsw i64 %188, 1
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 1
  store i64 %189, i64* %191, align 8
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 0
  store i64 0, i64* %193, align 8
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 2
  store i8 77, i8* %195, align 8
  %196 = load i64, i64* %6, align 8
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 1
  store i64 %196, i64* %198, align 8
  %199 = load i64, i64* %11, align 8
  %200 = call i32 @DosCombineFreeBlocks(i64 %199)
  br label %201

201:                                              ; preds = %167, %161
  br label %202

202:                                              ; preds = %201, %160
  br label %203

203:                                              ; preds = %202, %106, %87, %54, %34
  %204 = load i32, i32* %8, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %215, label %206

206:                                              ; preds = %203
  %207 = load i64, i64* %10, align 8
  %208 = call i32 (i8*, i64, ...) @DPRINT(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0), i64 %207)
  %209 = load i64*, i64** %7, align 8
  %210 = icmp ne i64* %209, null
  br i1 %210, label %211, label %214

211:                                              ; preds = %206
  %212 = load i64, i64* %10, align 8
  %213 = load i64*, i64** %7, align 8
  store i64 %212, i64* %213, align 8
  br label %214

214:                                              ; preds = %211, %206
  br label %215

215:                                              ; preds = %214, %203
  %216 = call i32 (...) @DosMemValidate()
  %217 = load i32, i32* %8, align 4
  store i32 %217, i32* %4, align 4
  br label %218

218:                                              ; preds = %215, %76
  %219 = load i32, i32* %4, align 4
  ret i32 %219
}

declare dso_local %struct.TYPE_5__* @SEGMENT_TO_MCB(i64) #1

declare dso_local i32 @DPRINT(i8*, i64, ...) #1

declare dso_local i32 @DosMemValidate(...) #1

declare dso_local i32 @ValidateMcb(%struct.TYPE_5__*) #1

declare dso_local i32 @DPRINT1(i8*) #1

declare dso_local i32 @DosCombineFreeBlocks(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
