; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_buffer_dec.c_CheckDecBuffer.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_buffer_dec.c_CheckDecBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64, i32*, i32 }
%struct.TYPE_7__ = type { i64, i64, i64, i64, i32*, i32*, i32*, i32*, i32, i32, i32, i32 }

@MODE_YUVA = common dso_local global i64 0, align 8
@kModeBpp = common dso_local global i32* null, align 8
@VP8_STATUS_OK = common dso_local global i32 0, align 4
@VP8_STATUS_INVALID_PARAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @CheckDecBuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckDecBuffer(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_8__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  store i32 1, i32* %3, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %4, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %5, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %6, align 4
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @IsValidColorspace(i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %213

34:                                               ; preds = %1
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @WebPIsRGBMode(i64 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %169, label %38

38:                                               ; preds = %34
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %7, align 8
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  %44 = sdiv i32 %43, 2
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  %47 = sdiv i32 %46, 2
  store i32 %47, i32* %9, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 11
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @abs(i32 %50) #3
  store i32 %51, i32* %10, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 10
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @abs(i32 %54) #3
  store i32 %55, i32* %11, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 9
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @abs(i32 %58) #3
  store i32 %59, i32* %12, align 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 8
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @abs(i32 %62) #3
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %10, align 4
  %67 = call i64 @MIN_BUFFER_SIZE(i32 %64, i32 %65, i32 %66)
  store i64 %67, i64* %14, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %11, align 4
  %71 = call i64 @MIN_BUFFER_SIZE(i32 %68, i32 %69, i32 %70)
  store i64 %71, i64* %15, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %12, align 4
  %75 = call i64 @MIN_BUFFER_SIZE(i32 %72, i32 %73, i32 %74)
  store i64 %75, i64* %16, align 8
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %13, align 4
  %79 = call i64 @MIN_BUFFER_SIZE(i32 %76, i32 %77, i32 %78)
  store i64 %79, i64* %17, align 8
  %80 = load i64, i64* %14, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp sle i64 %80, %83
  %85 = zext i1 %84 to i32
  %86 = load i32, i32* %3, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %3, align 4
  %88 = load i64, i64* %15, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp sle i64 %88, %91
  %93 = zext i1 %92 to i32
  %94 = load i32, i32* %3, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %3, align 4
  %96 = load i64, i64* %16, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp sle i64 %96, %99
  %101 = zext i1 %100 to i32
  %102 = load i32, i32* %3, align 4
  %103 = and i32 %102, %101
  store i32 %103, i32* %3, align 4
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %5, align 4
  %106 = icmp sge i32 %104, %105
  %107 = zext i1 %106 to i32
  %108 = load i32, i32* %3, align 4
  %109 = and i32 %108, %107
  store i32 %109, i32* %3, align 4
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp sge i32 %110, %111
  %113 = zext i1 %112 to i32
  %114 = load i32, i32* %3, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %3, align 4
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp sge i32 %116, %117
  %119 = zext i1 %118 to i32
  %120 = load i32, i32* %3, align 4
  %121 = and i32 %120, %119
  store i32 %121, i32* %3, align 4
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 7
  %124 = load i32*, i32** %123, align 8
  %125 = icmp ne i32* %124, null
  %126 = zext i1 %125 to i32
  %127 = load i32, i32* %3, align 4
  %128 = and i32 %127, %126
  store i32 %128, i32* %3, align 4
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 6
  %131 = load i32*, i32** %130, align 8
  %132 = icmp ne i32* %131, null
  %133 = zext i1 %132 to i32
  %134 = load i32, i32* %3, align 4
  %135 = and i32 %134, %133
  store i32 %135, i32* %3, align 4
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 5
  %138 = load i32*, i32** %137, align 8
  %139 = icmp ne i32* %138, null
  %140 = zext i1 %139 to i32
  %141 = load i32, i32* %3, align 4
  %142 = and i32 %141, %140
  store i32 %142, i32* %3, align 4
  %143 = load i64, i64* %4, align 8
  %144 = load i64, i64* @MODE_YUVA, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %168

146:                                              ; preds = %38
  %147 = load i32, i32* %13, align 4
  %148 = load i32, i32* %5, align 4
  %149 = icmp sge i32 %147, %148
  %150 = zext i1 %149 to i32
  %151 = load i32, i32* %3, align 4
  %152 = and i32 %151, %150
  store i32 %152, i32* %3, align 4
  %153 = load i64, i64* %17, align 8
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = icmp sle i64 %153, %156
  %158 = zext i1 %157 to i32
  %159 = load i32, i32* %3, align 4
  %160 = and i32 %159, %158
  store i32 %160, i32* %3, align 4
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 4
  %163 = load i32*, i32** %162, align 8
  %164 = icmp ne i32* %163, null
  %165 = zext i1 %164 to i32
  %166 = load i32, i32* %3, align 4
  %167 = and i32 %166, %165
  store i32 %167, i32* %3, align 4
  br label %168

168:                                              ; preds = %146, %38
  br label %212

169:                                              ; preds = %34
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 3
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  store %struct.TYPE_8__* %172, %struct.TYPE_8__** %18, align 8
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @abs(i32 %175) #3
  store i32 %176, i32* %19, align 4
  %177 = load i32, i32* %5, align 4
  %178 = load i32*, i32** @kModeBpp, align 8
  %179 = load i64, i64* %4, align 8
  %180 = getelementptr inbounds i32, i32* %178, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = mul nsw i32 %177, %181
  %183 = load i32, i32* %6, align 4
  %184 = load i32, i32* %19, align 4
  %185 = call i64 @MIN_BUFFER_SIZE(i32 %182, i32 %183, i32 %184)
  store i64 %185, i64* %20, align 8
  %186 = load i64, i64* %20, align 8
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = icmp sle i64 %186, %189
  %191 = zext i1 %190 to i32
  %192 = load i32, i32* %3, align 4
  %193 = and i32 %192, %191
  store i32 %193, i32* %3, align 4
  %194 = load i32, i32* %19, align 4
  %195 = load i32, i32* %5, align 4
  %196 = load i32*, i32** @kModeBpp, align 8
  %197 = load i64, i64* %4, align 8
  %198 = getelementptr inbounds i32, i32* %196, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = mul nsw i32 %195, %199
  %201 = icmp sge i32 %194, %200
  %202 = zext i1 %201 to i32
  %203 = load i32, i32* %3, align 4
  %204 = and i32 %203, %202
  store i32 %204, i32* %3, align 4
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 1
  %207 = load i32*, i32** %206, align 8
  %208 = icmp ne i32* %207, null
  %209 = zext i1 %208 to i32
  %210 = load i32, i32* %3, align 4
  %211 = and i32 %210, %209
  store i32 %211, i32* %3, align 4
  br label %212

212:                                              ; preds = %169, %168
  br label %213

213:                                              ; preds = %212, %33
  %214 = load i32, i32* %3, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %213
  %217 = load i32, i32* @VP8_STATUS_OK, align 4
  br label %220

218:                                              ; preds = %213
  %219 = load i32, i32* @VP8_STATUS_INVALID_PARAM, align 4
  br label %220

220:                                              ; preds = %218, %216
  %221 = phi i32 [ %217, %216 ], [ %219, %218 ]
  ret i32 %221
}

declare dso_local i32 @IsValidColorspace(i64) #1

declare dso_local i32 @WebPIsRGBMode(i64) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i64 @MIN_BUFFER_SIZE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
