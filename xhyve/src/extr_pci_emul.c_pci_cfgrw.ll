; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_emul.c_pci_cfgrw.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_emul.c_pci_cfgrw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.businfo = type { %struct.slotinfo* }
%struct.slotinfo = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.pci_devinst* }
%struct.pci_devinst = type { %struct.TYPE_4__*, %struct.pci_devemu* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.pci_devemu = type { i32 (i32, %struct.pci_devinst*, i32, i32, i32*)*, i64 (i32, %struct.pci_devinst*, i32, i32, i32)* }

@pci_businfo = common dso_local global %struct.businfo** null, align 8
@PCI_REGMAX = common dso_local global i32 0, align 4
@PCI_BARMAX = common dso_local global i64 0, align 8
@PCIM_BAR_IO_SPACE = common dso_local global i32 0, align 4
@PCIM_BAR_MEM_SPACE = common dso_local global i32 0, align 4
@PCIM_BAR_MEM_32 = common dso_local global i32 0, align 4
@PCIM_BAR_MEM_64 = common dso_local global i32 0, align 4
@PCIM_BAR_MEM_PREFETCH = common dso_local global i32 0, align 4
@PCIR_COMMAND = common dso_local global i32 0, align 4
@PCIR_REVID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32, i32, i32*)* @pci_cfgrw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_cfgrw(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.businfo*, align 8
  %18 = alloca %struct.slotinfo*, align 8
  %19 = alloca %struct.pci_devinst*, align 8
  %20 = alloca %struct.pci_devemu*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32* %7, i32** %16, align 8
  %26 = load %struct.businfo**, %struct.businfo*** @pci_businfo, align 8
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.businfo*, %struct.businfo** %26, i64 %28
  %30 = load %struct.businfo*, %struct.businfo** %29, align 8
  store %struct.businfo* %30, %struct.businfo** %17, align 8
  %31 = icmp ne %struct.businfo* %30, null
  br i1 %31, label %32, label %47

32:                                               ; preds = %8
  %33 = load %struct.businfo*, %struct.businfo** %17, align 8
  %34 = getelementptr inbounds %struct.businfo, %struct.businfo* %33, i32 0, i32 0
  %35 = load %struct.slotinfo*, %struct.slotinfo** %34, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.slotinfo, %struct.slotinfo* %35, i64 %37
  store %struct.slotinfo* %38, %struct.slotinfo** %18, align 8
  %39 = load %struct.slotinfo*, %struct.slotinfo** %18, align 8
  %40 = getelementptr inbounds %struct.slotinfo, %struct.slotinfo* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load %struct.pci_devinst*, %struct.pci_devinst** %45, align 8
  store %struct.pci_devinst* %46, %struct.pci_devinst** %19, align 8
  br label %48

47:                                               ; preds = %8
  store %struct.pci_devinst* null, %struct.pci_devinst** %19, align 8
  br label %48

48:                                               ; preds = %47, %32
  %49 = load %struct.pci_devinst*, %struct.pci_devinst** %19, align 8
  %50 = icmp eq %struct.pci_devinst* %49, null
  br i1 %50, label %66, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %15, align 4
  %53 = icmp ne i32 %52, 1
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load i32, i32* %15, align 4
  %56 = icmp ne i32 %55, 2
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* %15, align 4
  %59 = icmp ne i32 %58, 4
  br i1 %59, label %66, label %60

60:                                               ; preds = %57, %54, %51
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %15, align 4
  %63 = sub nsw i32 %62, 1
  %64 = and i32 %61, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %60, %57, %48
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32*, i32** %16, align 8
  store i32 -1, i32* %70, align 4
  br label %71

71:                                               ; preds = %69, %66
  br label %355

72:                                               ; preds = %60
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* @PCI_REGMAX, align 4
  %75 = add nsw i32 %74, 1
  %76 = icmp sge i32 %73, %75
  br i1 %76, label %77, label %90

77:                                               ; preds = %72
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %77
  %81 = load i32*, i32** %16, align 8
  store i32 -1, i32* %81, align 4
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* @PCI_REGMAX, align 4
  %84 = add nsw i32 %83, 4
  %85 = icmp sle i32 %82, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = load i32*, i32** %16, align 8
  store i32 0, i32* %87, align 4
  br label %88

88:                                               ; preds = %86, %80
  br label %89

89:                                               ; preds = %88, %77
  br label %355

90:                                               ; preds = %72
  %91 = load %struct.pci_devinst*, %struct.pci_devinst** %19, align 8
  %92 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %91, i32 0, i32 1
  %93 = load %struct.pci_devemu*, %struct.pci_devemu** %92, align 8
  store %struct.pci_devemu* %93, %struct.pci_devemu** %20, align 8
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %128

96:                                               ; preds = %90
  %97 = load %struct.pci_devemu*, %struct.pci_devemu** %20, align 8
  %98 = getelementptr inbounds %struct.pci_devemu, %struct.pci_devemu* %97, i32 0, i32 0
  %99 = load i32 (i32, %struct.pci_devinst*, i32, i32, i32*)*, i32 (i32, %struct.pci_devinst*, i32, i32, i32*)** %98, align 8
  %100 = icmp ne i32 (i32, %struct.pci_devinst*, i32, i32, i32*)* %99, null
  br i1 %100, label %101, label %111

101:                                              ; preds = %96
  %102 = load %struct.pci_devemu*, %struct.pci_devemu** %20, align 8
  %103 = getelementptr inbounds %struct.pci_devemu, %struct.pci_devemu* %102, i32 0, i32 0
  %104 = load i32 (i32, %struct.pci_devinst*, i32, i32, i32*)*, i32 (i32, %struct.pci_devinst*, i32, i32, i32*)** %103, align 8
  %105 = load i32, i32* %9, align 4
  %106 = load %struct.pci_devinst*, %struct.pci_devinst** %19, align 8
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %15, align 4
  %109 = load i32*, i32** %16, align 8
  %110 = call i32 %104(i32 %105, %struct.pci_devinst* %106, i32 %107, i32 %108, i32* %109)
  store i32 %110, i32* %22, align 4
  br label %112

111:                                              ; preds = %96
  store i32 1, i32* %22, align 4
  br label %112

112:                                              ; preds = %111, %101
  %113 = load i32, i32* %22, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %112
  %116 = load %struct.pci_devinst*, %struct.pci_devinst** %19, align 8
  %117 = load i32, i32* %14, align 4
  %118 = load i32, i32* %15, align 4
  %119 = call i32 @CFGREAD(%struct.pci_devinst* %116, i32 %117, i32 %118)
  %120 = load i32*, i32** %16, align 8
  store i32 %119, i32* %120, align 4
  br label %121

121:                                              ; preds = %115, %112
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* %15, align 4
  %126 = load i32*, i32** %16, align 8
  %127 = call i32 @pci_emul_hdrtype_fixup(i32 %122, i32 %123, i32 %124, i32 %125, i32* %126)
  br label %355

128:                                              ; preds = %90
  %129 = load %struct.pci_devemu*, %struct.pci_devemu** %20, align 8
  %130 = getelementptr inbounds %struct.pci_devemu, %struct.pci_devemu* %129, i32 0, i32 1
  %131 = load i64 (i32, %struct.pci_devinst*, i32, i32, i32)*, i64 (i32, %struct.pci_devinst*, i32, i32, i32)** %130, align 8
  %132 = icmp ne i64 (i32, %struct.pci_devinst*, i32, i32, i32)* %131, null
  br i1 %132, label %133, label %146

133:                                              ; preds = %128
  %134 = load %struct.pci_devemu*, %struct.pci_devemu** %20, align 8
  %135 = getelementptr inbounds %struct.pci_devemu, %struct.pci_devemu* %134, i32 0, i32 1
  %136 = load i64 (i32, %struct.pci_devinst*, i32, i32, i32)*, i64 (i32, %struct.pci_devinst*, i32, i32, i32)** %135, align 8
  %137 = load i32, i32* %9, align 4
  %138 = load %struct.pci_devinst*, %struct.pci_devinst** %19, align 8
  %139 = load i32, i32* %14, align 4
  %140 = load i32, i32* %15, align 4
  %141 = load i32*, i32** %16, align 8
  %142 = load i32, i32* %141, align 4
  %143 = call i64 %136(i32 %137, %struct.pci_devinst* %138, i32 %139, i32 %140, i32 %142)
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %133
  br label %355

146:                                              ; preds = %133, %128
  %147 = load i32, i32* %14, align 4
  %148 = call i32 @PCIR_BAR(i64 0)
  %149 = icmp sge i32 %147, %148
  br i1 %149, label %150, label %318

150:                                              ; preds = %146
  %151 = load i32, i32* %14, align 4
  %152 = load i64, i64* @PCI_BARMAX, align 8
  %153 = add nsw i64 %152, 1
  %154 = call i32 @PCIR_BAR(i64 %153)
  %155 = icmp slt i32 %151, %154
  br i1 %155, label %156, label %318

156:                                              ; preds = %150
  %157 = load i32, i32* %15, align 4
  %158 = icmp ne i32 %157, 4
  br i1 %158, label %163, label %159

159:                                              ; preds = %156
  %160 = load i32, i32* %14, align 4
  %161 = and i32 %160, 3
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %159, %156
  br label %355

164:                                              ; preds = %159
  %165 = load i32, i32* %14, align 4
  %166 = call i32 @PCIR_BAR(i64 0)
  %167 = sub nsw i32 %165, %166
  %168 = sdiv i32 %167, 4
  store i32 %168, i32* %21, align 4
  %169 = load %struct.pci_devinst*, %struct.pci_devinst** %19, align 8
  %170 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %169, i32 0, i32 0
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %170, align 8
  %172 = load i32, i32* %21, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = sub nsw i32 %176, 1
  %178 = xor i32 %177, -1
  store i32 %178, i32* %25, align 4
  %179 = load %struct.pci_devinst*, %struct.pci_devinst** %19, align 8
  %180 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %179, i32 0, i32 0
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %180, align 8
  %182 = load i32, i32* %21, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  switch i32 %186, label %313 [
    i32 128, label %187
    i32 132, label %195
    i32 131, label %221
    i32 130, label %247
    i32 129, label %275
  ]

187:                                              ; preds = %164
  store i32 0, i32* %24, align 4
  %188 = load %struct.pci_devinst*, %struct.pci_devinst** %19, align 8
  %189 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %188, i32 0, i32 0
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %189, align 8
  %191 = load i32, i32* %21, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 2
  store i32 0, i32* %194, align 4
  br label %313

195:                                              ; preds = %164
  %196 = load i32*, i32** %16, align 8
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* %25, align 4
  %199 = and i32 %197, %198
  store i32 %199, i32* %23, align 4
  %200 = load i32, i32* %23, align 4
  %201 = and i32 %200, 65535
  store i32 %201, i32* %23, align 4
  %202 = load i32, i32* %23, align 4
  %203 = load i32, i32* @PCIM_BAR_IO_SPACE, align 4
  %204 = or i32 %202, %203
  store i32 %204, i32* %24, align 4
  %205 = load i32, i32* %23, align 4
  %206 = load %struct.pci_devinst*, %struct.pci_devinst** %19, align 8
  %207 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %206, i32 0, i32 0
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %207, align 8
  %209 = load i32, i32* %21, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = icmp ne i32 %205, %213
  br i1 %214, label %215, label %220

215:                                              ; preds = %195
  %216 = load %struct.pci_devinst*, %struct.pci_devinst** %19, align 8
  %217 = load i32, i32* %23, align 4
  %218 = load i32, i32* %21, align 4
  %219 = call i32 @update_bar_address(%struct.pci_devinst* %216, i32 %217, i32 %218, i32 132)
  br label %220

220:                                              ; preds = %215, %195
  br label %313

221:                                              ; preds = %164
  %222 = load i32*, i32** %16, align 8
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* %25, align 4
  %225 = and i32 %223, %224
  store i32 %225, i32* %24, align 4
  store i32 %225, i32* %23, align 4
  %226 = load i32, i32* @PCIM_BAR_MEM_SPACE, align 4
  %227 = load i32, i32* @PCIM_BAR_MEM_32, align 4
  %228 = or i32 %226, %227
  %229 = load i32, i32* %24, align 4
  %230 = or i32 %229, %228
  store i32 %230, i32* %24, align 4
  %231 = load i32, i32* %23, align 4
  %232 = load %struct.pci_devinst*, %struct.pci_devinst** %19, align 8
  %233 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %232, i32 0, i32 0
  %234 = load %struct.TYPE_4__*, %struct.TYPE_4__** %233, align 8
  %235 = load i32, i32* %21, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 4
  %240 = icmp ne i32 %231, %239
  br i1 %240, label %241, label %246

241:                                              ; preds = %221
  %242 = load %struct.pci_devinst*, %struct.pci_devinst** %19, align 8
  %243 = load i32, i32* %23, align 4
  %244 = load i32, i32* %21, align 4
  %245 = call i32 @update_bar_address(%struct.pci_devinst* %242, i32 %243, i32 %244, i32 131)
  br label %246

246:                                              ; preds = %241, %221
  br label %313

247:                                              ; preds = %164
  %248 = load i32*, i32** %16, align 8
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* %25, align 4
  %251 = and i32 %249, %250
  store i32 %251, i32* %24, align 4
  store i32 %251, i32* %23, align 4
  %252 = load i32, i32* @PCIM_BAR_MEM_SPACE, align 4
  %253 = load i32, i32* @PCIM_BAR_MEM_64, align 4
  %254 = or i32 %252, %253
  %255 = load i32, i32* @PCIM_BAR_MEM_PREFETCH, align 4
  %256 = or i32 %254, %255
  %257 = load i32, i32* %24, align 4
  %258 = or i32 %257, %256
  store i32 %258, i32* %24, align 4
  %259 = load i32, i32* %23, align 4
  %260 = load %struct.pci_devinst*, %struct.pci_devinst** %19, align 8
  %261 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %260, i32 0, i32 0
  %262 = load %struct.TYPE_4__*, %struct.TYPE_4__** %261, align 8
  %263 = load i32, i32* %21, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 4
  %268 = icmp ne i32 %259, %267
  br i1 %268, label %269, label %274

269:                                              ; preds = %247
  %270 = load %struct.pci_devinst*, %struct.pci_devinst** %19, align 8
  %271 = load i32, i32* %23, align 4
  %272 = load i32, i32* %21, align 4
  %273 = call i32 @update_bar_address(%struct.pci_devinst* %270, i32 %271, i32 %272, i32 130)
  br label %274

274:                                              ; preds = %269, %247
  br label %313

275:                                              ; preds = %164
  %276 = load %struct.pci_devinst*, %struct.pci_devinst** %19, align 8
  %277 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %276, i32 0, i32 0
  %278 = load %struct.TYPE_4__*, %struct.TYPE_4__** %277, align 8
  %279 = load i32, i32* %21, align 4
  %280 = sub nsw i32 %279, 1
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = sub nsw i32 %284, 1
  %286 = xor i32 %285, -1
  store i32 %286, i32* %25, align 4
  %287 = load i32*, i32** %16, align 8
  %288 = load i32, i32* %287, align 4
  %289 = shl i32 %288, 32
  %290 = load i32, i32* %25, align 4
  %291 = and i32 %289, %290
  store i32 %291, i32* %23, align 4
  %292 = load i32, i32* %23, align 4
  %293 = ashr i32 %292, 32
  store i32 %293, i32* %24, align 4
  %294 = load i32, i32* %24, align 4
  %295 = load %struct.pci_devinst*, %struct.pci_devinst** %19, align 8
  %296 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %295, i32 0, i32 0
  %297 = load %struct.TYPE_4__*, %struct.TYPE_4__** %296, align 8
  %298 = load i32, i32* %21, align 4
  %299 = sub nsw i32 %298, 1
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %297, i64 %300
  %302 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 4
  %304 = ashr i32 %303, 32
  %305 = icmp ne i32 %294, %304
  br i1 %305, label %306, label %312

306:                                              ; preds = %275
  %307 = load %struct.pci_devinst*, %struct.pci_devinst** %19, align 8
  %308 = load i32, i32* %23, align 4
  %309 = load i32, i32* %21, align 4
  %310 = sub nsw i32 %309, 1
  %311 = call i32 @update_bar_address(%struct.pci_devinst* %307, i32 %308, i32 %310, i32 129)
  br label %312

312:                                              ; preds = %306, %275
  br label %313

313:                                              ; preds = %164, %312, %274, %246, %220, %187
  %314 = load %struct.pci_devinst*, %struct.pci_devinst** %19, align 8
  %315 = load i32, i32* %14, align 4
  %316 = load i32, i32* %24, align 4
  %317 = call i32 @pci_set_cfgdata32(%struct.pci_devinst* %314, i32 %315, i32 %316)
  br label %354

318:                                              ; preds = %150, %146
  %319 = load %struct.pci_devinst*, %struct.pci_devinst** %19, align 8
  %320 = load i32, i32* %14, align 4
  %321 = call i64 @pci_emul_iscap(%struct.pci_devinst* %319, i32 %320)
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %330

323:                                              ; preds = %318
  %324 = load %struct.pci_devinst*, %struct.pci_devinst** %19, align 8
  %325 = load i32, i32* %14, align 4
  %326 = load i32, i32* %15, align 4
  %327 = load i32*, i32** %16, align 8
  %328 = load i32, i32* %327, align 4
  %329 = call i32 @pci_emul_capwrite(%struct.pci_devinst* %324, i32 %325, i32 %326, i32 %328)
  br label %353

330:                                              ; preds = %318
  %331 = load i32, i32* %14, align 4
  %332 = load i32, i32* @PCIR_COMMAND, align 4
  %333 = icmp sge i32 %331, %332
  br i1 %333, label %334, label %345

334:                                              ; preds = %330
  %335 = load i32, i32* %14, align 4
  %336 = load i32, i32* @PCIR_REVID, align 4
  %337 = icmp slt i32 %335, %336
  br i1 %337, label %338, label %345

338:                                              ; preds = %334
  %339 = load %struct.pci_devinst*, %struct.pci_devinst** %19, align 8
  %340 = load i32, i32* %14, align 4
  %341 = load i32*, i32** %16, align 8
  %342 = load i32, i32* %341, align 4
  %343 = load i32, i32* %15, align 4
  %344 = call i32 @pci_emul_cmdsts_write(%struct.pci_devinst* %339, i32 %340, i32 %342, i32 %343)
  br label %352

345:                                              ; preds = %334, %330
  %346 = load %struct.pci_devinst*, %struct.pci_devinst** %19, align 8
  %347 = load i32, i32* %14, align 4
  %348 = load i32*, i32** %16, align 8
  %349 = load i32, i32* %348, align 4
  %350 = load i32, i32* %15, align 4
  %351 = call i32 @CFGWRITE(%struct.pci_devinst* %346, i32 %347, i32 %349, i32 %350)
  br label %352

352:                                              ; preds = %345, %338
  br label %353

353:                                              ; preds = %352, %323
  br label %354

354:                                              ; preds = %353, %313
  br label %355

355:                                              ; preds = %71, %89, %145, %163, %354, %121
  ret void
}

declare dso_local i32 @CFGREAD(%struct.pci_devinst*, i32, i32) #1

declare dso_local i32 @pci_emul_hdrtype_fixup(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @PCIR_BAR(i64) #1

declare dso_local i32 @update_bar_address(%struct.pci_devinst*, i32, i32, i32) #1

declare dso_local i32 @pci_set_cfgdata32(%struct.pci_devinst*, i32, i32) #1

declare dso_local i64 @pci_emul_iscap(%struct.pci_devinst*, i32) #1

declare dso_local i32 @pci_emul_capwrite(%struct.pci_devinst*, i32, i32, i32) #1

declare dso_local i32 @pci_emul_cmdsts_write(%struct.pci_devinst*, i32, i32, i32) #1

declare dso_local i32 @CFGWRITE(%struct.pci_devinst*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
