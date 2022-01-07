; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_ahci.c_pci_ahci_init.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_ahci.c_pci_ahci_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinst = type { i32, i32, %struct.pci_ahci_softc* }
%struct.pci_ahci_softc = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32, %struct.pci_devinst* }
%struct.TYPE_2__ = type { i32, i32, %struct.blockif_ctxt*, i32, %struct.pci_ahci_softc* }
%struct.blockif_ctxt = type { i32 }

@CC_SHA256_DIGEST_LENGTH = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"pci_ahci: backing device required\0A\00", align 1
@MAX_PORTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%d:%d\00", align 1
@AHCI_PORT_IDENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"BHYVE-%02X%02X-%02X%02X-%02X%02X\00", align 1
@AHCI_CAP_64BIT = common dso_local global i32 0, align 4
@AHCI_CAP_SNCQ = common dso_local global i32 0, align 4
@AHCI_CAP_SSNTF = common dso_local global i32 0, align 4
@AHCI_CAP_SMPS = common dso_local global i32 0, align 4
@AHCI_CAP_SSS = common dso_local global i32 0, align 4
@AHCI_CAP_SALP = common dso_local global i32 0, align 4
@AHCI_CAP_SAL = common dso_local global i32 0, align 4
@AHCI_CAP_SCLO = common dso_local global i32 0, align 4
@AHCI_CAP_ISS_SHIFT = common dso_local global i32 0, align 4
@AHCI_CAP_PMD = common dso_local global i32 0, align 4
@AHCI_CAP_SSC = common dso_local global i32 0, align 4
@AHCI_CAP_PSC = common dso_local global i32 0, align 4
@AHCI_CAP_NCS_SHIFT = common dso_local global i32 0, align 4
@AHCI_CAP_SXS = common dso_local global i32 0, align 4
@AHCI_CAP2_APST = common dso_local global i32 0, align 4
@PCIR_DEVICE = common dso_local global i32 0, align 4
@PCIR_VENDOR = common dso_local global i32 0, align 4
@PCIR_CLASS = common dso_local global i32 0, align 4
@PCIC_STORAGE = common dso_local global i32 0, align 4
@PCIR_SUBCLASS = common dso_local global i32 0, align 4
@PCIS_STORAGE_SATA = common dso_local global i32 0, align 4
@PCIR_PROGIF = common dso_local global i32 0, align 4
@PCIP_STORAGE_SATA_AHCI_1_0 = common dso_local global i32 0, align 4
@PCIBAR_MEM32 = common dso_local global i32 0, align 4
@AHCI_OFFSET = common dso_local global i64 0, align 8
@AHCI_STEP = common dso_local global i32 0, align 4
@dbg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_devinst*, i8*, i32)* @pci_ahci_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_ahci_init(%struct.pci_devinst* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_devinst*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [7 x i8], align 1
  %9 = alloca %struct.blockif_ctxt*, align 8
  %10 = alloca %struct.pci_ahci_softc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.pci_devinst* %0, %struct.pci_devinst** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* @CC_SHA256_DIGEST_LENGTH, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %13, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %14, align 8
  store i32 0, i32* %11, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @stderr, align 4
  %24 = call i32 @fprintf(i32 %23, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %220

25:                                               ; preds = %3
  %26 = call %struct.pci_ahci_softc* @calloc(i32 1, i32 40)
  store %struct.pci_ahci_softc* %26, %struct.pci_ahci_softc** %10, align 8
  %27 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %10, align 8
  %28 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %29 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %28, i32 0, i32 2
  store %struct.pci_ahci_softc* %27, %struct.pci_ahci_softc** %29, align 8
  %30 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %31 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %10, align 8
  %32 = getelementptr inbounds %struct.pci_ahci_softc, %struct.pci_ahci_softc* %31, i32 0, i32 7
  store %struct.pci_devinst* %30, %struct.pci_devinst** %32, align 8
  %33 = load i32, i32* @MAX_PORTS, align 4
  %34 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %10, align 8
  %35 = getelementptr inbounds %struct.pci_ahci_softc, %struct.pci_ahci_softc* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %10, align 8
  %38 = getelementptr inbounds %struct.pci_ahci_softc, %struct.pci_ahci_softc* %37, i32 0, i32 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 %36, i32* %41, align 8
  %42 = getelementptr inbounds [7 x i8], [7 x i8]* %8, i64 0, i64 0
  %43 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %44 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %47 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i8*, i32, i8*, i32, i32, ...) @snprintf(i8* %42, i32 7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %48)
  %50 = load i8*, i8** %6, align 8
  %51 = getelementptr inbounds [7 x i8], [7 x i8]* %8, i64 0, i64 0
  %52 = call %struct.blockif_ctxt* @blockif_open(i8* %50, i8* %51)
  store %struct.blockif_ctxt* %52, %struct.blockif_ctxt** %9, align 8
  %53 = load %struct.blockif_ctxt*, %struct.blockif_ctxt** %9, align 8
  %54 = icmp eq %struct.blockif_ctxt* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %25
  store i32 1, i32* %11, align 4
  br label %196

56:                                               ; preds = %25
  %57 = load %struct.blockif_ctxt*, %struct.blockif_ctxt** %9, align 8
  %58 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %10, align 8
  %59 = getelementptr inbounds %struct.pci_ahci_softc, %struct.pci_ahci_softc* %58, i32 0, i32 4
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  store %struct.blockif_ctxt* %57, %struct.blockif_ctxt** %62, align 8
  %63 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %10, align 8
  %64 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %10, align 8
  %65 = getelementptr inbounds %struct.pci_ahci_softc, %struct.pci_ahci_softc* %64, i32 0, i32 4
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 4
  store %struct.pci_ahci_softc* %63, %struct.pci_ahci_softc** %68, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = call i64 @strlen(i8* %70)
  %72 = trunc i64 %71 to i32
  %73 = call i32 @CC_SHA256(i8* %69, i32 %72, i32* %19)
  %74 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %10, align 8
  %75 = getelementptr inbounds %struct.pci_ahci_softc, %struct.pci_ahci_softc* %74, i32 0, i32 4
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = inttoptr i64 %80 to i8*
  %82 = load i32, i32* @AHCI_PORT_IDENT, align 4
  %83 = getelementptr inbounds i32, i32* %19, i64 0
  %84 = load i32, i32* %83, align 16
  %85 = getelementptr inbounds i32, i32* %19, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds i32, i32* %19, i64 2
  %88 = load i32, i32* %87, align 8
  %89 = getelementptr inbounds i32, i32* %19, i64 3
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds i32, i32* %19, i64 4
  %92 = load i32, i32* %91, align 16
  %93 = getelementptr inbounds i32, i32* %19, i64 5
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i8*, i32, i8*, i32, i32, ...) @snprintf(i8* %81, i32 %82, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %84, i32 %86, i32 %88, i32 %90, i32 %92, i32 %94)
  %96 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %10, align 8
  %97 = getelementptr inbounds %struct.pci_ahci_softc, %struct.pci_ahci_softc* %96, i32 0, i32 4
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 0
  %100 = call i32 @pci_ahci_ioreq_init(%struct.TYPE_2__* %99)
  %101 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %10, align 8
  %102 = getelementptr inbounds %struct.pci_ahci_softc, %struct.pci_ahci_softc* %101, i32 0, i32 6
  %103 = call i32 @pthread_mutex_init(i32* %102, i32* null)
  %104 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %10, align 8
  %105 = getelementptr inbounds %struct.pci_ahci_softc, %struct.pci_ahci_softc* %104, i32 0, i32 4
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i64 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* %12, align 4
  %111 = icmp sgt i32 %110, 32
  br i1 %111, label %112, label %113

112:                                              ; preds = %56
  store i32 32, i32* %12, align 4
  br label %113

113:                                              ; preds = %112, %56
  %114 = load i32, i32* %12, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %12, align 4
  %116 = load i32, i32* @AHCI_CAP_64BIT, align 4
  %117 = load i32, i32* @AHCI_CAP_SNCQ, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @AHCI_CAP_SSNTF, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @AHCI_CAP_SMPS, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @AHCI_CAP_SSS, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @AHCI_CAP_SALP, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @AHCI_CAP_SAL, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @AHCI_CAP_SCLO, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @AHCI_CAP_ISS_SHIFT, align 4
  %132 = shl i32 3, %131
  %133 = or i32 %130, %132
  %134 = load i32, i32* @AHCI_CAP_PMD, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* @AHCI_CAP_SSC, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @AHCI_CAP_PSC, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* %12, align 4
  %141 = load i32, i32* @AHCI_CAP_NCS_SHIFT, align 4
  %142 = shl i32 %140, %141
  %143 = or i32 %139, %142
  %144 = load i32, i32* @AHCI_CAP_SXS, align 4
  %145 = or i32 %143, %144
  %146 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %10, align 8
  %147 = getelementptr inbounds %struct.pci_ahci_softc, %struct.pci_ahci_softc* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = sub i32 %148, 1
  %150 = or i32 %145, %149
  %151 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %10, align 8
  %152 = getelementptr inbounds %struct.pci_ahci_softc, %struct.pci_ahci_softc* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 4
  %153 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %10, align 8
  %154 = getelementptr inbounds %struct.pci_ahci_softc, %struct.pci_ahci_softc* %153, i32 0, i32 2
  store i32 1, i32* %154, align 8
  %155 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %10, align 8
  %156 = getelementptr inbounds %struct.pci_ahci_softc, %struct.pci_ahci_softc* %155, i32 0, i32 3
  store i32 66304, i32* %156, align 4
  %157 = load i32, i32* @AHCI_CAP2_APST, align 4
  %158 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %10, align 8
  %159 = getelementptr inbounds %struct.pci_ahci_softc, %struct.pci_ahci_softc* %158, i32 0, i32 5
  store i32 %157, i32* %159, align 8
  %160 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %10, align 8
  %161 = call i32 @ahci_reset(%struct.pci_ahci_softc* %160)
  %162 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %163 = load i32, i32* @PCIR_DEVICE, align 4
  %164 = call i32 @pci_set_cfgdata16(%struct.pci_devinst* %162, i32 %163, i32 10273)
  %165 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %166 = load i32, i32* @PCIR_VENDOR, align 4
  %167 = call i32 @pci_set_cfgdata16(%struct.pci_devinst* %165, i32 %166, i32 32902)
  %168 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %169 = load i32, i32* @PCIR_CLASS, align 4
  %170 = load i32, i32* @PCIC_STORAGE, align 4
  %171 = call i32 @pci_set_cfgdata8(%struct.pci_devinst* %168, i32 %169, i32 %170)
  %172 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %173 = load i32, i32* @PCIR_SUBCLASS, align 4
  %174 = load i32, i32* @PCIS_STORAGE_SATA, align 4
  %175 = call i32 @pci_set_cfgdata8(%struct.pci_devinst* %172, i32 %173, i32 %174)
  %176 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %177 = load i32, i32* @PCIR_PROGIF, align 4
  %178 = load i32, i32* @PCIP_STORAGE_SATA_AHCI_1_0, align 4
  %179 = call i32 @pci_set_cfgdata8(%struct.pci_devinst* %176, i32 %177, i32 %178)
  %180 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %181 = call i32 @pci_emul_add_msicap(%struct.pci_devinst* %180, i32 1)
  %182 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %183 = load i32, i32* @PCIBAR_MEM32, align 4
  %184 = load i64, i64* @AHCI_OFFSET, align 8
  %185 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %10, align 8
  %186 = getelementptr inbounds %struct.pci_ahci_softc, %struct.pci_ahci_softc* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @AHCI_STEP, align 4
  %189 = mul nsw i32 %187, %188
  %190 = sext i32 %189 to i64
  %191 = add nsw i64 %184, %190
  %192 = trunc i64 %191 to i32
  %193 = call i32 @pci_emul_alloc_bar(%struct.pci_devinst* %182, i32 5, i32 %183, i32 %192)
  %194 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %195 = call i32 @pci_lintr_request(%struct.pci_devinst* %194)
  br label %196

196:                                              ; preds = %113, %55
  %197 = load i32, i32* %11, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %218

199:                                              ; preds = %196
  %200 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %10, align 8
  %201 = getelementptr inbounds %struct.pci_ahci_softc, %struct.pci_ahci_softc* %200, i32 0, i32 4
  %202 = load %struct.TYPE_2__*, %struct.TYPE_2__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i64 0
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 2
  %205 = load %struct.blockif_ctxt*, %struct.blockif_ctxt** %204, align 8
  %206 = icmp ne %struct.blockif_ctxt* %205, null
  br i1 %206, label %207, label %215

207:                                              ; preds = %199
  %208 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %10, align 8
  %209 = getelementptr inbounds %struct.pci_ahci_softc, %struct.pci_ahci_softc* %208, i32 0, i32 4
  %210 = load %struct.TYPE_2__*, %struct.TYPE_2__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i64 0
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 2
  %213 = load %struct.blockif_ctxt*, %struct.blockif_ctxt** %212, align 8
  %214 = call i32 @blockif_close(%struct.blockif_ctxt* %213)
  br label %215

215:                                              ; preds = %207, %199
  %216 = load %struct.pci_ahci_softc*, %struct.pci_ahci_softc** %10, align 8
  %217 = call i32 @free(%struct.pci_ahci_softc* %216)
  br label %218

218:                                              ; preds = %215, %196
  %219 = load i32, i32* %11, align 4
  store i32 %219, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %220

220:                                              ; preds = %218, %22
  %221 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %221)
  %222 = load i32, i32* %4, align 4
  ret i32 %222
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fprintf(i32, i8*) #2

declare dso_local %struct.pci_ahci_softc* @calloc(i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, ...) #2

declare dso_local %struct.blockif_ctxt* @blockif_open(i8*, i8*) #2

declare dso_local i32 @CC_SHA256(i8*, i32, i32*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @pci_ahci_ioreq_init(%struct.TYPE_2__*) #2

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #2

declare dso_local i32 @ahci_reset(%struct.pci_ahci_softc*) #2

declare dso_local i32 @pci_set_cfgdata16(%struct.pci_devinst*, i32, i32) #2

declare dso_local i32 @pci_set_cfgdata8(%struct.pci_devinst*, i32, i32) #2

declare dso_local i32 @pci_emul_add_msicap(%struct.pci_devinst*, i32) #2

declare dso_local i32 @pci_emul_alloc_bar(%struct.pci_devinst*, i32, i32, i32) #2

declare dso_local i32 @pci_lintr_request(%struct.pci_devinst*) #2

declare dso_local i32 @blockif_close(%struct.blockif_ctxt*) #2

declare dso_local i32 @free(%struct.pci_ahci_softc*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
