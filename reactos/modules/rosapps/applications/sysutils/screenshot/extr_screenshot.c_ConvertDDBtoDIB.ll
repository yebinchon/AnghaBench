; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/screenshot/extr_screenshot.c_ConvertDDBtoDIB.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/screenshot/extr_screenshot.c_ConvertDDBtoDIB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_9__*, i32*, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@BI_RGB = common dso_local global i32 0, align 4
@DIB_RGB_COLORS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @ConvertDDBtoDIB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ConvertDDBtoDIB(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_8__, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = ptrtoint %struct.TYPE_8__* %5 to i32
  %11 = call i32 @GetObjectW(i32 %9, i32 16, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = call i32 (...) @GetError()
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %2, align 4
  br label %198

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %18, %20
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store i32 1, i32* %6, align 4
  br label %46

25:                                               ; preds = %16
  %26 = load i32, i32* %6, align 4
  %27 = icmp sle i32 %26, 4
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 4, i32* %6, align 4
  br label %45

29:                                               ; preds = %25
  %30 = load i32, i32* %6, align 4
  %31 = icmp sle i32 %30, 8
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 8, i32* %6, align 4
  br label %44

33:                                               ; preds = %29
  %34 = load i32, i32* %6, align 4
  %35 = icmp sle i32 %34, 16
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 16, i32* %6, align 4
  br label %43

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = icmp sle i32 %38, 24
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 24, i32* %6, align 4
  br label %42

41:                                               ; preds = %37
  store i32 32, i32* %6, align 4
  br label %42

42:                                               ; preds = %41, %40
  br label %43

43:                                               ; preds = %42, %36
  br label %44

44:                                               ; preds = %43, %32
  br label %45

45:                                               ; preds = %44, %28
  br label %46

46:                                               ; preds = %45, %24
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 24
  br i1 %48, label %49, label %62

49:                                               ; preds = %46
  %50 = call i32 (...) @GetProcessHeap()
  %51 = load i32, i32* %6, align 4
  %52 = shl i32 1, %51
  %53 = sext i32 %52 to i64
  %54 = mul i64 4, %53
  %55 = add i64 4, %54
  %56 = trunc i64 %55 to i32
  %57 = call i32* @HeapAlloc(i32 %50, i32 0, i32 %56)
  %58 = bitcast i32* %57 to i8*
  %59 = bitcast i8* %58 to %struct.TYPE_9__*
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  store %struct.TYPE_9__* %59, %struct.TYPE_9__** %61, align 8
  br label %69

62:                                               ; preds = %46
  %63 = call i32 (...) @GetProcessHeap()
  %64 = call i32* @HeapAlloc(i32 %63, i32 0, i32 4)
  %65 = bitcast i32* %64 to i8*
  %66 = bitcast i8* %65 to %struct.TYPE_9__*
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  store %struct.TYPE_9__* %66, %struct.TYPE_9__** %68, align 8
  br label %69

69:                                               ; preds = %62, %49
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = icmp ne %struct.TYPE_9__* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = call i32 (...) @GetError()
  %76 = load i32, i32* @FALSE, align 4
  store i32 %76, i32* %2, align 4
  br label %198

77:                                               ; preds = %69
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  store i32 4, i32* %82, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  store i32 %84, i32* %89, align 4
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 2
  store i32 %91, i32* %96, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 3
  store i32 %98, i32* %103, align 4
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 4
  store i32 %105, i32* %110, align 8
  %111 = load i32, i32* %6, align 4
  %112 = icmp slt i32 %111, 24
  br i1 %112, label %113, label %121

113:                                              ; preds = %77
  %114 = load i32, i32* %6, align 4
  %115 = shl i32 1, %114
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 5
  store i32 %115, i32* %120, align 4
  br label %121

121:                                              ; preds = %113, %77
  %122 = load i32, i32* @BI_RGB, align 4
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 8
  store i32 %122, i32* %127, align 8
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %6, align 4
  %135 = mul nsw i32 %133, %134
  %136 = add nsw i32 %135, 31
  %137 = and i32 %136, -32
  %138 = sdiv i32 %137, 8
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = mul nsw i32 %138, %144
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 6
  store i32 %145, i32* %150, align 8
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 7
  store i64 0, i64* %155, align 8
  %156 = call i32 (...) @GetProcessHeap()
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 6
  %162 = load i32, i32* %161, align 8
  %163 = call i32* @HeapAlloc(i32 %156, i32 0, i32 %162)
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 1
  store i32* %163, i32** %165, align 8
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = icmp eq i32* %168, null
  br i1 %169, label %170, label %173

170:                                              ; preds = %121
  %171 = call i32 (...) @GetError()
  %172 = load i32, i32* @FALSE, align 4
  store i32 %172, i32* %2, align 4
  br label %198

173:                                              ; preds = %121
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 1
  %185 = load i32*, i32** %184, align 8
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %187, align 8
  %189 = load i32, i32* @DIB_RGB_COLORS, align 4
  %190 = call i64 @GetDIBits(i32 %176, i32 %179, i32 0, i32 %182, i32* %185, %struct.TYPE_9__* %188, i32 %189)
  store i64 %190, i64* %4, align 8
  %191 = load i64, i64* %4, align 8
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %173
  %194 = call i32 (...) @GetError()
  %195 = load i32, i32* @FALSE, align 4
  store i32 %195, i32* %2, align 4
  br label %198

196:                                              ; preds = %173
  %197 = load i32, i32* @TRUE, align 4
  store i32 %197, i32* %2, align 4
  br label %198

198:                                              ; preds = %196, %193, %170, %74, %13
  %199 = load i32, i32* %2, align 4
  ret i32 %199
}

declare dso_local i32 @GetObjectW(i32, i32, i32) #1

declare dso_local i32 @GetError(...) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @GetDIBits(i32, i32, i32, i32, i32*, %struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
