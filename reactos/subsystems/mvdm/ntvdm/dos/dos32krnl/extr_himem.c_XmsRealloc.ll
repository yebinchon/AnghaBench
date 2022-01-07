; ModuleID = '/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/dos/dos32krnl/extr_himem.c_XmsRealloc.c'
source_filename = "/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/dos/dos32krnl/extr_himem.c_XmsRealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64 }

@XMS_STATUS_INVALID_HANDLE = common dso_local global i32 0, align 4
@XMS_STATUS_LOCKED = common dso_local global i32 0, align 4
@XMS_ADDRESS = common dso_local global i64 0, align 8
@XMS_BLOCK_SIZE = common dso_local global i64 0, align 8
@AllocBitmap = common dso_local global i32 0, align 4
@FreeBlocks = common dso_local global i32 0, align 4
@XMS_STATUS_SUCCESS = common dso_local global i32 0, align 4
@XMS_BLOCKS = common dso_local global i64 0, align 8
@XMS_STATUS_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @XmsRealloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @XmsRealloc(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call %struct.TYPE_4__* @GetXmsHandleRecord(i64 %11)
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %7, align 8
  store i64 0, i64* %8, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %14 = call i32 @ValidateXmsHandle(%struct.TYPE_4__* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @XMS_STATUS_INVALID_HANDLE, align 4
  store i32 %17, i32* %3, align 4
  br label %180

18:                                               ; preds = %2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @XMS_STATUS_LOCKED, align 4
  store i32 %24, i32* %3, align 4
  br label %180

25:                                               ; preds = %18
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @XMS_ADDRESS, align 8
  %30 = sub nsw i64 %28, %29
  %31 = load i64, i64* @XMS_BLOCK_SIZE, align 8
  %32 = sdiv i64 %30, %31
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %33, %36
  br i1 %37, label %38, label %60

38:                                               ; preds = %25
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* %5, align 8
  %41 = add nsw i64 %39, %40
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %5, align 8
  %46 = sub nsw i64 %44, %45
  %47 = call i32 @RtlClearBits(i32* @AllocBitmap, i64 %41, i64 %46)
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %5, align 8
  %52 = sub nsw i64 %50, %51
  %53 = load i32, i32* @FreeBlocks, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* @FreeBlocks, align 4
  %57 = load i64, i64* %5, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  br label %178

60:                                               ; preds = %25
  %61 = load i64, i64* %5, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp sgt i64 %61, %64
  br i1 %65, label %66, label %177

66:                                               ; preds = %60
  %67 = load i64, i64* %6, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %67, %70
  %72 = load i64, i64* %5, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = sub nsw i64 %72, %75
  %77 = call i64 @RtlAreBitsClear(i32* @AllocBitmap, i64 %71, i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %104

79:                                               ; preds = %66
  %80 = load i64, i64* %6, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %80, %83
  %85 = load i64, i64* %5, align 8
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = sub nsw i64 %85, %88
  %90 = call i32 @RtlSetBits(i32* @AllocBitmap, i64 %84, i64 %89)
  %91 = load i64, i64* %5, align 8
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = sub nsw i64 %91, %94
  %96 = load i32, i32* @FreeBlocks, align 4
  %97 = sext i32 %96 to i64
  %98 = sub nsw i64 %97, %95
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* @FreeBlocks, align 4
  %100 = load i64, i64* %5, align 8
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  store i64 %100, i64* %102, align 8
  %103 = load i32, i32* @XMS_STATUS_SUCCESS, align 4
  store i32 %103, i32* %3, align 4
  br label %180

104:                                              ; preds = %66
  %105 = load i64, i64* %6, align 8
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @RtlClearBits(i32* @AllocBitmap, i64 %105, i64 %108)
  br label %110

110:                                              ; preds = %166, %104
  %111 = load i64, i64* %8, align 8
  %112 = load i64, i64* @XMS_BLOCKS, align 8
  %113 = icmp slt i64 %111, %112
  br i1 %113, label %114, label %170

114:                                              ; preds = %110
  %115 = load i64, i64* %8, align 8
  %116 = call i64 @RtlFindNextForwardRunClear(i32* @AllocBitmap, i64 %115, i64* %9)
  store i64 %116, i64* %10, align 8
  %117 = load i64, i64* %10, align 8
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  br label %170

120:                                              ; preds = %114
  %121 = load i64, i64* %10, align 8
  %122 = load i64, i64* %5, align 8
  %123 = icmp sge i64 %121, %122
  br i1 %123, label %124, label %166

124:                                              ; preds = %120
  %125 = load i64, i64* %9, align 8
  %126 = load i64, i64* %5, align 8
  %127 = call i32 @RtlSetBits(i32* @AllocBitmap, i64 %125, i64 %126)
  %128 = load i64, i64* @XMS_ADDRESS, align 8
  %129 = load i64, i64* %9, align 8
  %130 = load i64, i64* @XMS_BLOCK_SIZE, align 8
  %131 = mul nsw i64 %129, %130
  %132 = add nsw i64 %128, %131
  %133 = call i64 @REAL_TO_PHYS(i64 %132)
  %134 = trunc i64 %133 to i32
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = call i64 @REAL_TO_PHYS(i64 %137)
  %139 = trunc i64 %138 to i32
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @XMS_BLOCK_SIZE, align 8
  %144 = mul nsw i64 %142, %143
  %145 = call i32 @RtlMoveMemory(i32 %134, i32 %139, i64 %144)
  %146 = load i64, i64* @XMS_ADDRESS, align 8
  %147 = load i64, i64* %9, align 8
  %148 = load i64, i64* @XMS_BLOCK_SIZE, align 8
  %149 = mul nsw i64 %147, %148
  %150 = add nsw i64 %146, %149
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  store i64 %150, i64* %152, align 8
  %153 = load i64, i64* %5, align 8
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 1
  store i64 %153, i64* %155, align 8
  %156 = load i64, i64* %5, align 8
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = sub nsw i64 %156, %159
  %161 = load i32, i32* @FreeBlocks, align 4
  %162 = sext i32 %161 to i64
  %163 = sub nsw i64 %162, %160
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* @FreeBlocks, align 4
  %165 = load i32, i32* @XMS_STATUS_SUCCESS, align 4
  store i32 %165, i32* %3, align 4
  br label %180

166:                                              ; preds = %120
  %167 = load i64, i64* %9, align 8
  %168 = load i64, i64* %10, align 8
  %169 = add nsw i64 %167, %168
  store i64 %169, i64* %8, align 8
  br label %110

170:                                              ; preds = %119, %110
  %171 = load i64, i64* %6, align 8
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @RtlSetBits(i32* @AllocBitmap, i64 %171, i64 %174)
  %176 = load i32, i32* @XMS_STATUS_OUT_OF_MEMORY, align 4
  store i32 %176, i32* %3, align 4
  br label %180

177:                                              ; preds = %60
  br label %178

178:                                              ; preds = %177, %38
  %179 = load i32, i32* @XMS_STATUS_SUCCESS, align 4
  store i32 %179, i32* %3, align 4
  br label %180

180:                                              ; preds = %178, %170, %124, %79, %23, %16
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local %struct.TYPE_4__* @GetXmsHandleRecord(i64) #1

declare dso_local i32 @ValidateXmsHandle(%struct.TYPE_4__*) #1

declare dso_local i32 @RtlClearBits(i32*, i64, i64) #1

declare dso_local i64 @RtlAreBitsClear(i32*, i64, i64) #1

declare dso_local i32 @RtlSetBits(i32*, i64, i64) #1

declare dso_local i64 @RtlFindNextForwardRunClear(i32*, i64, i64*) #1

declare dso_local i32 @RtlMoveMemory(i32, i32, i64) #1

declare dso_local i64 @REAL_TO_PHYS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
