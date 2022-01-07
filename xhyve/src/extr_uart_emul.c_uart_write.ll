; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_uart_emul.c_uart_write.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_uart_emul.c_uart_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@LCR_DLAB = common dso_local global i32 0, align 4
@REG_DLL = common dso_local global i32 0, align 4
@REG_DLH = common dso_local global i32 0, align 4
@MCR_LOOPBACK = common dso_local global i32 0, align 4
@LSR_OE = common dso_local global i32 0, align 4
@FCR_ENABLE = common dso_local global i32 0, align 4
@FIFOSZ = common dso_local global i32 0, align 4
@FCR_RCV_RST = common dso_local global i32 0, align 4
@FCR_DMA = common dso_local global i32 0, align 4
@FCR_RX_MASK = common dso_local global i32 0, align 4
@MCR_RTS = common dso_local global i32 0, align 4
@MSR_CTS = common dso_local global i32 0, align 4
@MCR_DTR = common dso_local global i32 0, align 4
@MSR_DSR = common dso_local global i32 0, align 4
@MCR_OUT1 = common dso_local global i32 0, align 4
@MSR_RI = common dso_local global i32 0, align 4
@MCR_OUT2 = common dso_local global i32 0, align 4
@MSR_DCD = common dso_local global i32 0, align 4
@MSR_DCTS = common dso_local global i32 0, align 4
@MSR_DDSR = common dso_local global i32 0, align 4
@MSR_DDCD = common dso_local global i32 0, align 4
@MSR_TERI = common dso_local global i32 0, align 4
@MSR_DELTA_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uart_write(%struct.uart_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.uart_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %10 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %9, i32 0, i32 9
  %11 = call i32 @pthread_mutex_lock(i32* %10)
  %12 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %13 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @LCR_DLAB, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @REG_DLL, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %25 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  br label %276

26:                                               ; preds = %18
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @REG_DLH, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %33 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  br label %276

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34, %3
  %36 = load i32, i32* %5, align 4
  switch i32 %36, label %274 [
    i32 135, label %37
    i32 133, label %71
    i32 134, label %76
    i32 132, label %128
    i32 130, label %132
    i32 131, label %268
    i32 129, label %269
    i32 128, label %270
  ]

37:                                               ; preds = %35
  %38 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %39 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MCR_LOOPBACK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %37
  %45 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @rxfifo_putchar(%struct.uart_softc* %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i32, i32* @LSR_OE, align 4
  %51 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %52 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %51, i32 0, i32 11
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %49, %44
  br label %68

56:                                               ; preds = %37
  %57 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %58 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %57, i32 0, i32 10
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %64 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %63, i32 0, i32 10
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @ttywrite(%struct.TYPE_2__* %64, i32 %65)
  br label %67

67:                                               ; preds = %62, %56
  br label %68

68:                                               ; preds = %67, %55
  %69 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %70 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %69, i32 0, i32 4
  store i32 1, i32* %70, align 4
  br label %275

71:                                               ; preds = %35
  %72 = load i32, i32* %6, align 4
  %73 = and i32 %72, 15
  %74 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %75 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %74, i32 0, i32 5
  store i32 %73, i32* %75, align 4
  br label %275

76:                                               ; preds = %35
  %77 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %78 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @FCR_ENABLE, align 4
  %81 = and i32 %79, %80
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @FCR_ENABLE, align 4
  %84 = and i32 %82, %83
  %85 = xor i32 %81, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %76
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @FCR_ENABLE, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = load i32, i32* @FIFOSZ, align 4
  br label %95

94:                                               ; preds = %87
  br label %95

95:                                               ; preds = %94, %92
  %96 = phi i32 [ %93, %92 ], [ 1, %94 ]
  store i32 %96, i32* %7, align 4
  %97 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @rxfifo_reset(%struct.uart_softc* %97, i32 %98)
  br label %100

100:                                              ; preds = %95, %76
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @FCR_ENABLE, align 4
  %103 = and i32 %101, %102
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %107 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %106, i32 0, i32 6
  store i32 0, i32* %107, align 4
  br label %127

108:                                              ; preds = %100
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @FCR_RCV_RST, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %115 = load i32, i32* @FIFOSZ, align 4
  %116 = call i32 @rxfifo_reset(%struct.uart_softc* %114, i32 %115)
  br label %117

117:                                              ; preds = %113, %108
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @FCR_ENABLE, align 4
  %120 = load i32, i32* @FCR_DMA, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @FCR_RX_MASK, align 4
  %123 = or i32 %121, %122
  %124 = and i32 %118, %123
  %125 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %126 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %125, i32 0, i32 6
  store i32 %124, i32* %126, align 4
  br label %127

127:                                              ; preds = %117, %105
  br label %275

128:                                              ; preds = %35
  %129 = load i32, i32* %6, align 4
  %130 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %131 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 4
  br label %275

132:                                              ; preds = %35
  %133 = load i32, i32* %6, align 4
  %134 = and i32 %133, 31
  %135 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %136 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %135, i32 0, i32 3
  store i32 %134, i32* %136, align 4
  store i32 0, i32* %8, align 4
  %137 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %138 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @MCR_LOOPBACK, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %188

143:                                              ; preds = %132
  %144 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %145 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @MCR_RTS, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %143
  %151 = load i32, i32* @MSR_CTS, align 4
  %152 = load i32, i32* %8, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %8, align 4
  br label %154

154:                                              ; preds = %150, %143
  %155 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %156 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @MCR_DTR, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %154
  %162 = load i32, i32* @MSR_DSR, align 4
  %163 = load i32, i32* %8, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %8, align 4
  br label %165

165:                                              ; preds = %161, %154
  %166 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %167 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @MCR_OUT1, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %165
  %173 = load i32, i32* @MSR_RI, align 4
  %174 = load i32, i32* %8, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %8, align 4
  br label %176

176:                                              ; preds = %172, %165
  %177 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %178 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @MCR_OUT2, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %176
  %184 = load i32, i32* @MSR_DCD, align 4
  %185 = load i32, i32* %8, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %8, align 4
  br label %187

187:                                              ; preds = %183, %176
  br label %188

188:                                              ; preds = %187, %132
  %189 = load i32, i32* %8, align 4
  %190 = load i32, i32* @MSR_CTS, align 4
  %191 = and i32 %189, %190
  %192 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %193 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %192, i32 0, i32 7
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @MSR_CTS, align 4
  %196 = and i32 %194, %195
  %197 = xor i32 %191, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %188
  %200 = load i32, i32* @MSR_DCTS, align 4
  %201 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %202 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %201, i32 0, i32 7
  %203 = load i32, i32* %202, align 4
  %204 = or i32 %203, %200
  store i32 %204, i32* %202, align 4
  br label %205

205:                                              ; preds = %199, %188
  %206 = load i32, i32* %8, align 4
  %207 = load i32, i32* @MSR_DSR, align 4
  %208 = and i32 %206, %207
  %209 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %210 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %209, i32 0, i32 7
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @MSR_DSR, align 4
  %213 = and i32 %211, %212
  %214 = xor i32 %208, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %222

216:                                              ; preds = %205
  %217 = load i32, i32* @MSR_DDSR, align 4
  %218 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %219 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %218, i32 0, i32 7
  %220 = load i32, i32* %219, align 4
  %221 = or i32 %220, %217
  store i32 %221, i32* %219, align 4
  br label %222

222:                                              ; preds = %216, %205
  %223 = load i32, i32* %8, align 4
  %224 = load i32, i32* @MSR_DCD, align 4
  %225 = and i32 %223, %224
  %226 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %227 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %226, i32 0, i32 7
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @MSR_DCD, align 4
  %230 = and i32 %228, %229
  %231 = xor i32 %225, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %239

233:                                              ; preds = %222
  %234 = load i32, i32* @MSR_DDCD, align 4
  %235 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %236 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %235, i32 0, i32 7
  %237 = load i32, i32* %236, align 4
  %238 = or i32 %237, %234
  store i32 %238, i32* %236, align 4
  br label %239

239:                                              ; preds = %233, %222
  %240 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %241 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %240, i32 0, i32 7
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @MSR_RI, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %257

246:                                              ; preds = %239
  %247 = load i32, i32* %8, align 4
  %248 = load i32, i32* @MSR_RI, align 4
  %249 = and i32 %247, %248
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %257

251:                                              ; preds = %246
  %252 = load i32, i32* @MSR_TERI, align 4
  %253 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %254 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %253, i32 0, i32 7
  %255 = load i32, i32* %254, align 4
  %256 = or i32 %255, %252
  store i32 %256, i32* %254, align 4
  br label %257

257:                                              ; preds = %251, %246, %239
  %258 = load i32, i32* @MSR_DELTA_MASK, align 4
  %259 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %260 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %259, i32 0, i32 7
  %261 = load i32, i32* %260, align 4
  %262 = and i32 %261, %258
  store i32 %262, i32* %260, align 4
  %263 = load i32, i32* %8, align 4
  %264 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %265 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %264, i32 0, i32 7
  %266 = load i32, i32* %265, align 4
  %267 = or i32 %266, %263
  store i32 %267, i32* %265, align 4
  br label %275

268:                                              ; preds = %35
  br label %275

269:                                              ; preds = %35
  br label %275

270:                                              ; preds = %35
  %271 = load i32, i32* %6, align 4
  %272 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %273 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %272, i32 0, i32 8
  store i32 %271, i32* %273, align 4
  br label %275

274:                                              ; preds = %35
  br label %275

275:                                              ; preds = %274, %270, %269, %268, %257, %128, %127, %71, %68
  br label %276

276:                                              ; preds = %275, %30, %22
  %277 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %278 = call i32 @uart_toggle_intr(%struct.uart_softc* %277)
  %279 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %280 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %279, i32 0, i32 9
  %281 = call i32 @pthread_mutex_unlock(i32* %280)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @rxfifo_putchar(%struct.uart_softc*, i32) #1

declare dso_local i32 @ttywrite(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @rxfifo_reset(%struct.uart_softc*, i32) #1

declare dso_local i32 @uart_toggle_intr(%struct.uart_softc*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
