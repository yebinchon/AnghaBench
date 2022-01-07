; ModuleID = '/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/bios/extr_vidbios.c_VgaSetRegisters.c'
source_filename = "/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/bios/extr_vidbios.c_VgaSetRegisters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32*, i32*, i32*, i32* }

@FALSE = common dso_local global i32 0, align 4
@VGA_CRTC_INDEX_COLOR = common dso_local global i32 0, align 4
@VGA_CRTC_INDEX_MONO = common dso_local global i32 0, align 4
@Bda = common dso_local global %struct.TYPE_5__* null, align 8
@VGA_AC_CONTROL_REG = common dso_local global i64 0, align 8
@VGA_AC_CONTROL_BLINK = common dso_local global i32 0, align 4
@VGA_SEQ_INDEX = common dso_local global i32 0, align 4
@VGA_SEQ_CLOCK_REG = common dso_local global i32 0, align 4
@VGA_SEQ_DATA = common dso_local global i32 0, align 4
@VGA_SEQ_CLOCK_SD = common dso_local global i32 0, align 4
@VGA_MISC_WRITE = common dso_local global i32 0, align 4
@VGA_SEQ_RESET_REG = common dso_local global i32 0, align 4
@VGA_SEQ_RESET_AR = common dso_local global i32 0, align 4
@VGA_SEQ_MAX_REG = common dso_local global i64 0, align 8
@VGA_SEQ_RESET_SR = common dso_local global i32 0, align 4
@VGA_CRTC_INDEX = common dso_local global i32 0, align 4
@VGA_CRTC_END_HORZ_BLANKING_REG = common dso_local global i64 0, align 8
@VGA_CRTC_DATA = common dso_local global i32 0, align 4
@VGA_CRTC_END_VERT_RETRACE_REG = common dso_local global i64 0, align 8
@VGA_CRTC_MAX_REG = common dso_local global i64 0, align 8
@VGA_GC_MAX_REG = common dso_local global i64 0, align 8
@VGA_GC_INDEX = common dso_local global i32 0, align 4
@VGA_GC_DATA = common dso_local global i32 0, align 4
@VGA_AC_MAX_REG = common dso_local global i64 0, align 8
@VGA_DAC_MASK = common dso_local global i32 0, align 4
@VGA_INSTAT1_READ = common dso_local global i32 0, align 4
@VGA_AC_INDEX = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @VgaSetRegisters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @VgaSetRegisters(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %6 = icmp eq %struct.TYPE_4__* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @FALSE, align 4
  store i32 %8, i32* %2, align 4
  br label %232

9:                                                ; preds = %1
  %10 = call i32 @setIF(i32 0)
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, 1
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = load i32, i32* @VGA_CRTC_INDEX_COLOR, align 4
  br label %20

18:                                               ; preds = %9
  %19 = load i32, i32* @VGA_CRTC_INDEX_MONO, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Bda, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Bda, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 253
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, 1
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = shl i32 %34, 1
  %36 = or i32 %27, %35
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Bda, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Bda, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 251
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, 1
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = shl i32 %49, 1
  %51 = or i32 %42, %50
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Bda, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @VGA_AC_CONTROL_REG, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @VGA_AC_CONTROL_BLINK, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %20
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Bda, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, 32
  store i32 %67, i32* %65, align 4
  br label %73

68:                                               ; preds = %20
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Bda, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, -33
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %68, %63
  %74 = load i32, i32* @VGA_SEQ_INDEX, align 4
  %75 = load i32, i32* @VGA_SEQ_CLOCK_REG, align 4
  %76 = call i32 @IOWriteB(i32 %74, i32 %75)
  %77 = load i32, i32* @VGA_SEQ_DATA, align 4
  %78 = load i32, i32* @VGA_SEQ_DATA, align 4
  %79 = call i32 @IOReadB(i32 %78)
  %80 = load i32, i32* @VGA_SEQ_CLOCK_SD, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @IOWriteB(i32 %77, i32 %81)
  %83 = load i32, i32* @VGA_MISC_WRITE, align 4
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @IOWriteB(i32 %83, i32 %86)
  %88 = load i32, i32* @VGA_SEQ_INDEX, align 4
  %89 = load i32, i32* @VGA_SEQ_RESET_REG, align 4
  %90 = call i32 @IOWriteB(i32 %88, i32 %89)
  %91 = load i32, i32* @VGA_SEQ_DATA, align 4
  %92 = load i32, i32* @VGA_SEQ_RESET_AR, align 4
  %93 = call i32 @IOWriteB(i32 %91, i32 %92)
  store i64 1, i64* %4, align 8
  br label %94

94:                                               ; preds = %111, %73
  %95 = load i64, i64* %4, align 8
  %96 = load i64, i64* @VGA_SEQ_MAX_REG, align 8
  %97 = icmp ult i64 %95, %96
  br i1 %97, label %98, label %114

98:                                               ; preds = %94
  %99 = load i32, i32* @VGA_SEQ_INDEX, align 4
  %100 = load i64, i64* %4, align 8
  %101 = trunc i64 %100 to i32
  %102 = call i32 @IOWriteB(i32 %99, i32 %101)
  %103 = load i32, i32* @VGA_SEQ_DATA, align 4
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = load i64, i64* %4, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @IOWriteB(i32 %103, i32 %109)
  br label %111

111:                                              ; preds = %98
  %112 = load i64, i64* %4, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %4, align 8
  br label %94

114:                                              ; preds = %94
  %115 = load i32, i32* @VGA_SEQ_INDEX, align 4
  %116 = load i32, i32* @VGA_SEQ_RESET_REG, align 4
  %117 = call i32 @IOWriteB(i32 %115, i32 %116)
  %118 = load i32, i32* @VGA_SEQ_DATA, align 4
  %119 = load i32, i32* @VGA_SEQ_RESET_SR, align 4
  %120 = load i32, i32* @VGA_SEQ_RESET_AR, align 4
  %121 = or i32 %119, %120
  %122 = call i32 @IOWriteB(i32 %118, i32 %121)
  %123 = load i32, i32* @VGA_CRTC_INDEX, align 4
  %124 = load i64, i64* @VGA_CRTC_END_HORZ_BLANKING_REG, align 8
  %125 = trunc i64 %124 to i32
  %126 = call i32 @IOWriteB(i32 %123, i32 %125)
  %127 = load i32, i32* @VGA_CRTC_DATA, align 4
  %128 = load i32, i32* @VGA_CRTC_DATA, align 4
  %129 = call i32 @IOReadB(i32 %128)
  %130 = or i32 %129, 128
  %131 = call i32 @IOWriteB(i32 %127, i32 %130)
  %132 = load i32, i32* @VGA_CRTC_INDEX, align 4
  %133 = load i64, i64* @VGA_CRTC_END_VERT_RETRACE_REG, align 8
  %134 = trunc i64 %133 to i32
  %135 = call i32 @IOWriteB(i32 %132, i32 %134)
  %136 = load i32, i32* @VGA_CRTC_DATA, align 4
  %137 = load i32, i32* @VGA_CRTC_DATA, align 4
  %138 = call i32 @IOReadB(i32 %137)
  %139 = and i32 %138, -129
  %140 = call i32 @IOWriteB(i32 %136, i32 %139)
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 3
  %143 = load i32*, i32** %142, align 8
  %144 = load i64, i64* @VGA_CRTC_END_HORZ_BLANKING_REG, align 8
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %146, 128
  store i32 %147, i32* %145, align 4
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 3
  %150 = load i32*, i32** %149, align 8
  %151 = load i64, i64* @VGA_CRTC_END_VERT_RETRACE_REG, align 8
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = and i32 %153, -129
  store i32 %154, i32* %152, align 4
  store i64 0, i64* %4, align 8
  br label %155

155:                                              ; preds = %172, %114
  %156 = load i64, i64* %4, align 8
  %157 = load i64, i64* @VGA_CRTC_MAX_REG, align 8
  %158 = icmp ult i64 %156, %157
  br i1 %158, label %159, label %175

159:                                              ; preds = %155
  %160 = load i32, i32* @VGA_CRTC_INDEX, align 4
  %161 = load i64, i64* %4, align 8
  %162 = trunc i64 %161 to i32
  %163 = call i32 @IOWriteB(i32 %160, i32 %162)
  %164 = load i32, i32* @VGA_CRTC_DATA, align 4
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 3
  %167 = load i32*, i32** %166, align 8
  %168 = load i64, i64* %4, align 8
  %169 = getelementptr inbounds i32, i32* %167, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @IOWriteB(i32 %164, i32 %170)
  br label %172

172:                                              ; preds = %159
  %173 = load i64, i64* %4, align 8
  %174 = add i64 %173, 1
  store i64 %174, i64* %4, align 8
  br label %155

175:                                              ; preds = %155
  store i64 0, i64* %4, align 8
  br label %176

176:                                              ; preds = %193, %175
  %177 = load i64, i64* %4, align 8
  %178 = load i64, i64* @VGA_GC_MAX_REG, align 8
  %179 = icmp ult i64 %177, %178
  br i1 %179, label %180, label %196

180:                                              ; preds = %176
  %181 = load i32, i32* @VGA_GC_INDEX, align 4
  %182 = load i64, i64* %4, align 8
  %183 = trunc i64 %182 to i32
  %184 = call i32 @IOWriteB(i32 %181, i32 %183)
  %185 = load i32, i32* @VGA_GC_DATA, align 4
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 4
  %188 = load i32*, i32** %187, align 8
  %189 = load i64, i64* %4, align 8
  %190 = getelementptr inbounds i32, i32* %188, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @IOWriteB(i32 %185, i32 %191)
  br label %193

193:                                              ; preds = %180
  %194 = load i64, i64* %4, align 8
  %195 = add i64 %194, 1
  store i64 %195, i64* %4, align 8
  br label %176

196:                                              ; preds = %176
  store i64 0, i64* %4, align 8
  br label %197

197:                                              ; preds = %210, %196
  %198 = load i64, i64* %4, align 8
  %199 = load i64, i64* @VGA_AC_MAX_REG, align 8
  %200 = icmp ult i64 %198, %199
  br i1 %200, label %201, label %213

201:                                              ; preds = %197
  %202 = load i64, i64* %4, align 8
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 1
  %205 = load i32*, i32** %204, align 8
  %206 = load i64, i64* %4, align 8
  %207 = getelementptr inbounds i32, i32* %205, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @VgaSetSinglePaletteRegister(i64 %202, i32 %208)
  br label %210

210:                                              ; preds = %201
  %211 = load i64, i64* %4, align 8
  %212 = add i64 %211, 1
  store i64 %212, i64* %4, align 8
  br label %197

213:                                              ; preds = %197
  %214 = load i32, i32* @VGA_DAC_MASK, align 4
  %215 = call i32 @IOWriteB(i32 %214, i32 255)
  %216 = load i32, i32* @VGA_INSTAT1_READ, align 4
  %217 = call i32 @IOReadB(i32 %216)
  %218 = load i32, i32* @VGA_AC_INDEX, align 4
  %219 = call i32 @IOWriteB(i32 %218, i32 32)
  %220 = load i32, i32* @VGA_SEQ_INDEX, align 4
  %221 = load i32, i32* @VGA_SEQ_CLOCK_REG, align 4
  %222 = call i32 @IOWriteB(i32 %220, i32 %221)
  %223 = load i32, i32* @VGA_SEQ_DATA, align 4
  %224 = load i32, i32* @VGA_SEQ_DATA, align 4
  %225 = call i32 @IOReadB(i32 %224)
  %226 = load i32, i32* @VGA_SEQ_CLOCK_SD, align 4
  %227 = xor i32 %226, -1
  %228 = and i32 %225, %227
  %229 = call i32 @IOWriteB(i32 %223, i32 %228)
  %230 = call i32 @setIF(i32 1)
  %231 = load i32, i32* @TRUE, align 4
  store i32 %231, i32* %2, align 4
  br label %232

232:                                              ; preds = %213, %7
  %233 = load i32, i32* %2, align 4
  ret i32 %233
}

declare dso_local i32 @setIF(i32) #1

declare dso_local i32 @IOWriteB(i32, i32) #1

declare dso_local i32 @IOReadB(i32) #1

declare dso_local i32 @VgaSetSinglePaletteRegister(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
