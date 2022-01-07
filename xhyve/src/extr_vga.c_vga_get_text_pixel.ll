; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_vga.c_vga_get_text_pixel.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_vga.c_vga_get_text_pixel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vga_softc = type { i32, i32*, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i64, i32, i64, i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i64 }

@KB = common dso_local global i32 0, align 4
@CRTC_CS_CS = common dso_local global i32 0, align 4
@CRTC_CE_CE = common dso_local global i32 0, align 4
@SEQ_MM_EM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vga_softc*, i32, i32)* @vga_get_text_pixel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vga_get_text_pixel(%struct.vga_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vga_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.vga_softc* %0, %struct.vga_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %17 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sge i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %24 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %9, align 4
  %28 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %29 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = mul nsw i32 2, %31
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %7, align 4
  %34 = sdiv i32 %33, 16
  %35 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %36 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = mul nsw i32 %34, %37
  %39 = load i32, i32* %9, align 4
  %40 = udiv i32 %38, %39
  %41 = mul i32 %40, 2
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %9, align 4
  %44 = udiv i32 %42, %43
  %45 = mul i32 %44, 2
  %46 = add i32 %41, %45
  %47 = load i32, i32* %10, align 4
  %48 = add i32 %47, %46
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %9, align 4
  %51 = urem i32 %49, %50
  %52 = icmp ugt i32 %51, 7
  br i1 %52, label %53, label %54

53:                                               ; preds = %3
  br label %58

54:                                               ; preds = %3
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %9, align 4
  %57 = urem i32 %55, %56
  br label %58

58:                                               ; preds = %54, %53
  %59 = phi i32 [ 7, %53 ], [ %57, %54 ]
  %60 = sub i32 7, %59
  store i32 %60, i32* %8, align 4
  %61 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %62 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @KB, align 4
  %66 = mul nsw i32 0, %65
  %67 = add i32 %64, %66
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %63, i64 %68
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %12, align 4
  %71 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %72 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @KB, align 4
  %76 = mul nsw i32 64, %75
  %77 = add i32 %74, %76
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %73, i64 %78
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %13, align 4
  %81 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %82 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %81, i32 0, i32 5
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %132

86:                                               ; preds = %58
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %89 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %88, i32 0, i32 5
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = mul nsw i32 %91, 2
  %93 = icmp eq i32 %87, %92
  br i1 %93, label %94, label %132

94:                                               ; preds = %86
  %95 = load i32, i32* %7, align 4
  %96 = srem i32 %95, 16
  %97 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %98 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %97, i32 0, i32 5
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @CRTC_CS_CS, align 4
  %102 = and i32 %100, %101
  %103 = icmp sge i32 %96, %102
  br i1 %103, label %104, label %132

104:                                              ; preds = %94
  %105 = load i32, i32* %7, align 4
  %106 = srem i32 %105, 16
  %107 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %108 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %107, i32 0, i32 5
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @CRTC_CE_CE, align 4
  %112 = and i32 %110, %111
  %113 = icmp sle i32 %106, %112
  br i1 %113, label %114, label %132

114:                                              ; preds = %104
  %115 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %116 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %13, align 4
  %120 = and i32 %119, 15
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %118, i64 %121
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %15, align 4
  %124 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %125 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %15, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %4, align 4
  br label %232

132:                                              ; preds = %104, %94, %86, %58
  %133 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %134 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @SEQ_MM_EM, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %181

140:                                              ; preds = %132
  %141 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %142 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %141, i32 0, i32 4
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %146 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %145, i32 0, i32 4
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %144, %148
  br i1 %149, label %150, label %181

150:                                              ; preds = %140
  %151 = load i32, i32* %13, align 4
  %152 = and i32 %151, 8
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %166

154:                                              ; preds = %150
  %155 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %156 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %155, i32 0, i32 4
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = trunc i64 %158 to i32
  %160 = load i32, i32* %12, align 4
  %161 = shl i32 %160, 5
  %162 = add i32 %159, %161
  %163 = load i32, i32* %7, align 4
  %164 = srem i32 %163, 16
  %165 = add i32 %162, %164
  store i32 %165, i32* %11, align 4
  br label %178

166:                                              ; preds = %150
  %167 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %168 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %167, i32 0, i32 4
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = trunc i64 %170 to i32
  %172 = load i32, i32* %12, align 4
  %173 = shl i32 %172, 5
  %174 = add i32 %171, %173
  %175 = load i32, i32* %7, align 4
  %176 = srem i32 %175, 16
  %177 = add i32 %174, %176
  store i32 %177, i32* %11, align 4
  br label %178

178:                                              ; preds = %166, %154
  %179 = load i32, i32* %13, align 4
  %180 = and i32 %179, -9
  store i32 %180, i32* %13, align 4
  br label %187

181:                                              ; preds = %140, %132
  %182 = load i32, i32* %12, align 4
  %183 = shl i32 %182, 5
  %184 = load i32, i32* %7, align 4
  %185 = srem i32 %184, 16
  %186 = add i32 %183, %185
  store i32 %186, i32* %11, align 4
  br label %187

187:                                              ; preds = %181, %178
  %188 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %189 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %188, i32 0, i32 1
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %11, align 4
  %192 = load i32, i32* @KB, align 4
  %193 = mul nsw i32 128, %192
  %194 = add i32 %191, %193
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %190, i64 %195
  %197 = load i32, i32* %196, align 4
  store i32 %197, i32* %14, align 4
  %198 = load i32, i32* %14, align 4
  %199 = load i32, i32* %8, align 4
  %200 = shl i32 1, %199
  %201 = and i32 %198, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %213

203:                                              ; preds = %187
  %204 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %205 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %204, i32 0, i32 3
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* %13, align 4
  %209 = and i32 %208, 15
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %207, i64 %210
  %212 = load i32, i32* %211, align 4
  store i32 %212, i32* %15, align 4
  br label %223

213:                                              ; preds = %187
  %214 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %215 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %214, i32 0, i32 3
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 0
  %217 = load i32*, i32** %216, align 8
  %218 = load i32, i32* %13, align 4
  %219 = ashr i32 %218, 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %217, i64 %220
  %222 = load i32, i32* %221, align 4
  store i32 %222, i32* %15, align 4
  br label %223

223:                                              ; preds = %213, %203
  %224 = load %struct.vga_softc*, %struct.vga_softc** %5, align 8
  %225 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 0
  %227 = load i32*, i32** %226, align 8
  %228 = load i32, i32* %15, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  %231 = load i32, i32* %230, align 4
  store i32 %231, i32* %4, align 4
  br label %232

232:                                              ; preds = %223, %114
  %233 = load i32, i32* %4, align 4
  ret i32 %233
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
