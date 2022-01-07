; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_buffer_dec.c_AllocateBuffer.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_buffer_dec.c_AllocateBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i64, i64, %struct.TYPE_7__, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i64, i32* }
%struct.TYPE_8__ = type { i32, i64, i32, i64, i32, i64, i64, i32, i32*, i32*, i32*, i32* }

@VP8_STATUS_INVALID_PARAM = common dso_local global i32 0, align 4
@kModeBpp = common dso_local global i64* null, align 8
@MODE_YUVA = common dso_local global i64 0, align 8
@VP8_STATUS_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @AllocateBuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AllocateBuffer(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %4, align 4
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %6, align 8
  %26 = load i32, i32* %4, align 4
  %27 = icmp sle i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* %5, align 4
  %30 = icmp sle i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @IsValidColorspace(i64 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %31, %28, %1
  %36 = load i32, i32* @VP8_STATUS_INVALID_PARAM, align 4
  store i32 %36, i32* %2, align 4
  br label %191

37:                                               ; preds = %31
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp sle i64 %40, 0
  br i1 %41, label %42, label %188

42:                                               ; preds = %37
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 5
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %188

47:                                               ; preds = %42
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = load i64*, i64** @kModeBpp, align 8
  %51 = load i64, i64* %6, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = mul i64 %49, %53
  %55 = icmp uge i64 %54, 4294967296
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = load i32, i32* @VP8_STATUS_INVALID_PARAM, align 4
  store i32 %57, i32* %2, align 4
  br label %191

58:                                               ; preds = %47
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = load i64*, i64** @kModeBpp, align 8
  %62 = load i64, i64* %6, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = mul i64 %60, %64
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = mul i64 %68, %70
  store i64 %71, i64* %14, align 8
  %72 = load i64, i64* %6, align 8
  %73 = call i32 @WebPIsRGBMode(i64 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %97, label %75

75:                                               ; preds = %58
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, 1
  %78 = sdiv i32 %77, 2
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 1
  %83 = sdiv i32 %82, 2
  %84 = sext i32 %83 to i64
  %85 = mul i64 %80, %84
  store i64 %85, i64* %10, align 8
  %86 = load i64, i64* %6, align 8
  %87 = load i64, i64* @MODE_YUVA, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %75
  %90 = load i32, i32* %4, align 4
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = mul i64 %92, %94
  store i64 %95, i64* %11, align 8
  br label %96

96:                                               ; preds = %89, %75
  br label %97

97:                                               ; preds = %96, %58
  %98 = load i64, i64* %14, align 8
  %99 = load i64, i64* %10, align 8
  %100 = mul i64 2, %99
  %101 = add i64 %98, %100
  %102 = load i64, i64* %11, align 8
  %103 = add i64 %101, %102
  store i64 %103, i64* %12, align 8
  %104 = load i64, i64* %12, align 8
  %105 = call i64 @WebPSafeMalloc(i64 %104, i32 4)
  %106 = inttoptr i64 %105 to i32*
  store i32* %106, i32** %7, align 8
  %107 = load i32*, i32** %7, align 8
  %108 = icmp eq i32* %107, null
  br i1 %108, label %109, label %111

109:                                              ; preds = %97
  %110 = load i32, i32* @VP8_STATUS_OUT_OF_MEMORY, align 4
  store i32 %110, i32* %2, align 4
  br label %191

111:                                              ; preds = %97
  %112 = load i32*, i32** %7, align 8
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 5
  store i32* %112, i32** %114, align 8
  %115 = load i64, i64* %6, align 8
  %116 = call i32 @WebPIsRGBMode(i64 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %174, label %118

118:                                              ; preds = %111
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  store %struct.TYPE_8__* %121, %struct.TYPE_8__** %15, align 8
  %122 = load i32*, i32** %7, align 8
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 11
  store i32* %122, i32** %124, align 8
  %125 = load i32, i32* %13, align 4
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  %128 = load i64, i64* %14, align 8
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  store i64 %128, i64* %130, align 8
  %131 = load i32*, i32** %7, align 8
  %132 = load i64, i64* %14, align 8
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 10
  store i32* %133, i32** %135, align 8
  %136 = load i32, i32* %8, align 4
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 8
  %139 = load i64, i64* %10, align 8
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 3
  store i64 %139, i64* %141, align 8
  %142 = load i32*, i32** %7, align 8
  %143 = load i64, i64* %14, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  %145 = load i64, i64* %10, align 8
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 9
  store i32* %146, i32** %148, align 8
  %149 = load i32, i32* %8, align 4
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 4
  store i32 %149, i32* %151, align 8
  %152 = load i64, i64* %10, align 8
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 5
  store i64 %152, i64* %154, align 8
  %155 = load i64, i64* %6, align 8
  %156 = load i64, i64* @MODE_YUVA, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %167

158:                                              ; preds = %118
  %159 = load i32*, i32** %7, align 8
  %160 = load i64, i64* %14, align 8
  %161 = getelementptr inbounds i32, i32* %159, i64 %160
  %162 = load i64, i64* %10, align 8
  %163 = mul i64 2, %162
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 8
  store i32* %164, i32** %166, align 8
  br label %167

167:                                              ; preds = %158, %118
  %168 = load i64, i64* %11, align 8
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 6
  store i64 %168, i64* %170, align 8
  %171 = load i32, i32* %9, align 4
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 7
  store i32 %171, i32* %173, align 8
  br label %187

174:                                              ; preds = %111
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 4
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  store %struct.TYPE_9__* %177, %struct.TYPE_9__** %16, align 8
  %178 = load i32*, i32** %7, align 8
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 2
  store i32* %178, i32** %180, align 8
  %181 = load i32, i32* %13, align 4
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 8
  %184 = load i64, i64* %14, align 8
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 1
  store i64 %184, i64* %186, align 8
  br label %187

187:                                              ; preds = %174, %167
  br label %188

188:                                              ; preds = %187, %42, %37
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %190 = call i32 @CheckDecBuffer(%struct.TYPE_10__* %189)
  store i32 %190, i32* %2, align 4
  br label %191

191:                                              ; preds = %188, %109, %56, %35
  %192 = load i32, i32* %2, align 4
  ret i32 %192
}

declare dso_local i32 @IsValidColorspace(i64) #1

declare dso_local i32 @WebPIsRGBMode(i64) #1

declare dso_local i64 @WebPSafeMalloc(i64, i32) #1

declare dso_local i32 @CheckDecBuffer(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
