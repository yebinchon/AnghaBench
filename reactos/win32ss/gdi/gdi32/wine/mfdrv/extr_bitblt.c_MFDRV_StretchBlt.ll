; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/mfdrv/extr_bitblt.c_MFDRV_StretchBlt.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/mfdrv/extr_bitblt.c_MFDRV_StretchBlt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32 }
%struct.bitblt_coords = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32*, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32 }

@OBJ_BITMAP = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"bad bitmap object %p passed for hdc %p\0A\00", align 1
@META_STRETCHBLT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"len = %ld  rop=%lx\0A\00", align 1
@BI_RGB = common dso_local global i32 0, align 4
@DIB_RGB_COLORS = common dso_local global i32 0, align 4
@LOGPIXELSX = common dso_local global i32 0, align 4
@LOGPIXELSY = common dso_local global i32 0, align 4
@META_DIBSTRETCHBLT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MFDRV_StretchBlt(%struct.TYPE_12__* %0, %struct.bitblt_coords* %1, %struct.TYPE_12__* %2, %struct.bitblt_coords* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.bitblt_coords*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.bitblt_coords*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca %struct.TYPE_15__, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store %struct.bitblt_coords* %1, %struct.bitblt_coords** %8, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %9, align 8
  store %struct.bitblt_coords* %3, %struct.bitblt_coords** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @OBJ_BITMAP, align 4
  %21 = call i32 @GetCurrentObject(i32 %19, i32 %20)
  store i32 %21, i32* %16, align 4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %5
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %6, align 4
  br label %195

31:                                               ; preds = %5
  %32 = load i32, i32* %16, align 4
  %33 = call i32 @GetObjectW(i32 %32, i32 20, %struct.TYPE_15__* %15)
  %34 = sext i32 %33 to i64
  %35 = icmp ne i64 %34, 20
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load i32, i32* %16, align 4
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @WARN(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40)
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %6, align 4
  br label %195

43:                                               ; preds = %31
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %45, %47
  %49 = sext i32 %48 to i64
  %50 = add i64 76, %49
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %13, align 4
  %52 = call i32 (...) @GetProcessHeap()
  %53 = load i32, i32* %13, align 4
  %54 = call %struct.TYPE_13__* @HeapAlloc(i32 %52, i32 0, i32 %53)
  store %struct.TYPE_13__* %54, %struct.TYPE_13__** %14, align 8
  %55 = icmp ne %struct.TYPE_13__* %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %43
  %57 = load i32, i32* @FALSE, align 4
  store i32 %57, i32* %6, align 4
  br label %195

58:                                               ; preds = %43
  %59 = load i32, i32* @META_STRETCHBLT, align 4
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 10
  store i32 %63, i32* %67, align 4
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 11
  store i32 %69, i32* %73, align 4
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 12
  store i32 %75, i32* %79, align 4
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 13
  store i32 %81, i32* %85, align 4
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 14
  store i32 %87, i32* %91, align 4
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %11, align 4
  %94 = call i32 (i8*, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %92, i32 %93)
  %95 = load i32, i32* %16, align 4
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = mul nsw i32 %97, %99
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 15
  %105 = call i64 @GetBitmapBits(i32 %95, i32 %100, i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %188

107:                                              ; preds = %58
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = udiv i64 %109, 4
  %111 = trunc i64 %110 to i32
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 8
  %114 = load i32, i32* %11, align 4
  %115 = call i32 @LOWORD(i32 %114)
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  store i32 %115, i32* %118, align 4
  %119 = load i32, i32* %11, align 4
  %120 = call i32 @HIWORD(i32 %119)
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  store i32 %120, i32* %124, align 4
  %125 = load %struct.bitblt_coords*, %struct.bitblt_coords** %10, align 8
  %126 = getelementptr inbounds %struct.bitblt_coords, %struct.bitblt_coords* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 2
  store i32 %127, i32* %131, align 4
  %132 = load %struct.bitblt_coords*, %struct.bitblt_coords** %10, align 8
  %133 = getelementptr inbounds %struct.bitblt_coords, %struct.bitblt_coords* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 3
  store i32 %134, i32* %138, align 4
  %139 = load %struct.bitblt_coords*, %struct.bitblt_coords** %10, align 8
  %140 = getelementptr inbounds %struct.bitblt_coords, %struct.bitblt_coords* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 4
  store i32 %141, i32* %145, align 4
  %146 = load %struct.bitblt_coords*, %struct.bitblt_coords** %10, align 8
  %147 = getelementptr inbounds %struct.bitblt_coords, %struct.bitblt_coords* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 5
  store i32 %148, i32* %152, align 4
  %153 = load %struct.bitblt_coords*, %struct.bitblt_coords** %8, align 8
  %154 = getelementptr inbounds %struct.bitblt_coords, %struct.bitblt_coords* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 6
  store i32 %155, i32* %159, align 4
  %160 = load %struct.bitblt_coords*, %struct.bitblt_coords** %8, align 8
  %161 = getelementptr inbounds %struct.bitblt_coords, %struct.bitblt_coords* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 7
  store i32 %162, i32* %166, align 4
  %167 = load %struct.bitblt_coords*, %struct.bitblt_coords** %8, align 8
  %168 = getelementptr inbounds %struct.bitblt_coords, %struct.bitblt_coords* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 8
  store i32 %169, i32* %173, align 4
  %174 = load %struct.bitblt_coords*, %struct.bitblt_coords** %8, align 8
  %175 = getelementptr inbounds %struct.bitblt_coords, %struct.bitblt_coords* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 9
  store i32 %176, i32* %180, align 4
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = mul nsw i32 %185, 2
  %187 = call i32 @MFDRV_WriteRecord(%struct.TYPE_12__* %181, %struct.TYPE_13__* %182, i32 %186)
  store i32 %187, i32* %12, align 4
  br label %190

188:                                              ; preds = %58
  %189 = load i32, i32* @FALSE, align 4
  store i32 %189, i32* %12, align 4
  br label %190

190:                                              ; preds = %188, %107
  %191 = call i32 (...) @GetProcessHeap()
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %193 = call i32 @HeapFree(i32 %191, i32 0, %struct.TYPE_13__* %192)
  %194 = load i32, i32* %12, align 4
  store i32 %194, i32* %6, align 4
  br label %195

195:                                              ; preds = %190, %56, %36, %29
  %196 = load i32, i32* %6, align 4
  ret i32 %196
}

declare dso_local i32 @GetCurrentObject(i32, i32) #1

declare dso_local i32 @GetObjectW(i32, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @WARN(i8*, i32, i32) #1

declare dso_local %struct.TYPE_13__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @TRACE(i8*, i32, i32, ...) #1

declare dso_local i64 @GetBitmapBits(i32, i32, i32*) #1

declare dso_local i32 @LOWORD(i32) #1

declare dso_local i32 @HIWORD(i32) #1

declare dso_local i32 @MFDRV_WriteRecord(%struct.TYPE_12__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
