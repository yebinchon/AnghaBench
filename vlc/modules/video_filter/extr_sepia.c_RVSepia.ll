; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_sepia.c_RVSepia.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_sepia.c_RVSepia.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_8__ }
%struct.TYPE_6__ = type { i32*, i32, i32, i32 }
%struct.TYPE_8__ = type { i64 }

@VLC_CODEC_RGB32 = common dso_local global i64 0, align 8
@ONE_HALF = common dso_local global i32 0, align 4
@SCALEBITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_7__*, i32)* @RVSepia to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RVSepia(%struct.TYPE_7__* %0, %struct.TYPE_7__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i32 %2, i32* %6, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @VLC_CODEC_RGB32, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 1, i32* %13, align 4
  store i32 2, i32* %14, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = call i32 @GetPackedRgbIndexes(%struct.TYPE_8__* %27, i32* %12, i32* %13, i32* %14)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %7, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %41, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %35, i64 %49
  store i32* %50, i32** %8, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  store i32* %56, i32** %10, align 8
  %57 = load i32, i32* %6, align 4
  %58 = mul nsw i32 %57, 14
  %59 = mul nsw i32 1634, %58
  %60 = add nsw i32 %59, 512
  %61 = ashr i32 %60, 10
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %6, align 4
  %63 = sub nsw i32 0, %62
  %64 = sdiv i32 %63, 6
  %65 = mul nsw i32 -401, %64
  %66 = load i32, i32* %6, align 4
  %67 = mul nsw i32 %66, 14
  %68 = mul nsw i32 832, %67
  %69 = sub nsw i32 %65, %68
  %70 = add nsw i32 %69, 512
  %71 = ashr i32 %70, 10
  store i32 %71, i32* %16, align 4
  %72 = load i32, i32* %6, align 4
  %73 = sub nsw i32 0, %72
  %74 = sdiv i32 %73, 6
  %75 = mul nsw i32 2066, %74
  %76 = add nsw i32 %75, 512
  %77 = ashr i32 %76, 10
  store i32 %77, i32* %17, align 4
  br label %78

78:                                               ; preds = %185, %3
  %79 = load i32*, i32** %7, align 8
  %80 = load i32*, i32** %8, align 8
  %81 = icmp ult i32* %79, %80
  br i1 %81, label %82, label %218

82:                                               ; preds = %78
  %83 = load i32*, i32** %7, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %83, i64 %90
  store i32* %91, i32** %9, align 8
  br label %92

92:                                               ; preds = %184, %82
  %93 = load i32*, i32** %7, align 8
  %94 = load i32*, i32** %9, align 8
  %95 = icmp ult i32* %93, %94
  br i1 %95, label %96, label %185

96:                                               ; preds = %92
  %97 = load i32*, i32** %7, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = mul nsw i32 66, %101
  %103 = load i32*, i32** %7, align 8
  %104 = load i32, i32* %13, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = mul nsw i32 129, %107
  %109 = add nsw i32 %102, %108
  %110 = load i32*, i32** %7, align 8
  %111 = load i32, i32* %14, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = mul nsw i32 25, %114
  %116 = add nsw i32 %109, %115
  %117 = add nsw i32 %116, 128
  %118 = ashr i32 %117, 8
  %119 = mul nsw i32 %118, 1192
  %120 = load i32*, i32** %7, align 8
  %121 = load i32, i32* %12, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = mul nsw i32 66, %124
  %126 = load i32*, i32** %7, align 8
  %127 = load i32, i32* %13, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = mul nsw i32 129, %130
  %132 = add nsw i32 %125, %131
  %133 = load i32*, i32** %7, align 8
  %134 = load i32, i32* %14, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = mul nsw i32 25, %137
  %139 = add nsw i32 %132, %138
  %140 = add nsw i32 %139, 128
  %141 = ashr i32 %140, 8
  %142 = mul nsw i32 %141, 1192
  %143 = ashr i32 %142, 2
  %144 = sub nsw i32 %119, %143
  %145 = load i32, i32* %6, align 4
  %146 = ashr i32 %145, 2
  %147 = add nsw i32 %144, %146
  store i32 %147, i32* %18, align 4
  %148 = load i32, i32* %18, align 4
  %149 = load i32, i32* %15, align 4
  %150 = add nsw i32 %148, %149
  %151 = call i32 @vlc_uint8(i32 %150)
  %152 = load i32*, i32** %10, align 8
  %153 = load i32, i32* %12, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  store i32 %151, i32* %155, align 4
  %156 = load i32, i32* %18, align 4
  %157 = load i32, i32* %16, align 4
  %158 = add nsw i32 %156, %157
  %159 = call i32 @vlc_uint8(i32 %158)
  %160 = load i32*, i32** %10, align 8
  %161 = load i32, i32* %13, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  store i32 %159, i32* %163, align 4
  %164 = load i32, i32* %18, align 4
  %165 = load i32, i32* %17, align 4
  %166 = add nsw i32 %164, %165
  %167 = call i32 @vlc_uint8(i32 %166)
  %168 = load i32*, i32** %10, align 8
  %169 = load i32, i32* %14, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  store i32 %167, i32* %171, align 4
  %172 = load i32*, i32** %7, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 3
  store i32* %173, i32** %7, align 8
  %174 = load i32*, i32** %10, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 3
  store i32* %175, i32** %10, align 8
  %176 = load i32, i32* %11, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %96
  %179 = load i32*, i32** %7, align 8
  %180 = getelementptr inbounds i32, i32* %179, i32 1
  store i32* %180, i32** %7, align 8
  %181 = load i32, i32* %179, align 4
  %182 = load i32*, i32** %10, align 8
  %183 = getelementptr inbounds i32, i32* %182, i32 1
  store i32* %183, i32** %10, align 8
  store i32 %181, i32* %182, align 4
  br label %184

184:                                              ; preds = %178, %96
  br label %92

185:                                              ; preds = %92
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i64 0
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i64 0
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 8
  %198 = sub nsw i32 %191, %197
  %199 = load i32*, i32** %7, align 8
  %200 = sext i32 %198 to i64
  %201 = getelementptr inbounds i32, i32* %199, i64 %200
  store i32* %201, i32** %7, align 8
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i64 0
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 0
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i64 0
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 8
  %214 = sub nsw i32 %207, %213
  %215 = load i32*, i32** %10, align 8
  %216 = sext i32 %214 to i64
  %217 = getelementptr inbounds i32, i32* %215, i64 %216
  store i32* %217, i32** %10, align 8
  br label %78

218:                                              ; preds = %78
  ret void
}

declare dso_local i32 @GetPackedRgbIndexes(%struct.TYPE_8__*, i32*, i32*, i32*) #1

declare dso_local i32 @vlc_uint8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
