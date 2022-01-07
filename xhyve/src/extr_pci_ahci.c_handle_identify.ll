; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_ahci.c_handle_identify.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_ahci.c_handle_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_port = type { i8*, i32, i32, i32, i32, i64, i64 }
%struct.ahci_cmd_hdr = type { i64 }

@AHCI_CL_SIZE = common dso_local global i32 0, align 4
@ATA_E_ABORT = common dso_local global i32 0, align 4
@ATA_S_READY = common dso_local global i32 0, align 4
@ATA_S_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"001\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"BHYVE SATA DISK\00", align 1
@ATA_WDMA0 = common dso_local global i32 0, align 4
@ATA_SATA_GEN1 = common dso_local global i32 0, align 4
@ATA_SATA_GEN2 = common dso_local global i32 0, align 4
@ATA_SATA_GEN3 = common dso_local global i32 0, align 4
@ATA_SUPPORT_NCQ = common dso_local global i32 0, align 4
@ATA_SUPPORT_RCVSND_FPDMA_QUEUED = common dso_local global i32 0, align 4
@ATA_SS_SPD_MASK = common dso_local global i32 0, align 4
@ATA_SUPPORT_POWERMGT = common dso_local global i32 0, align 4
@ATA_SUPPORT_WRITECACHE = common dso_local global i32 0, align 4
@ATA_SUPPORT_LOOKAHEAD = common dso_local global i32 0, align 4
@ATA_SUPPORT_NOP = common dso_local global i32 0, align 4
@ATA_SUPPORT_ADDRESS48 = common dso_local global i32 0, align 4
@ATA_SUPPORT_FLUSHCACHE = common dso_local global i32 0, align 4
@ATA_SUPPORT_FLUSHCACHE48 = common dso_local global i32 0, align 4
@ATA_UDMA0 = common dso_local global i32 0, align 4
@ATA_SUPPORT_RZAT = common dso_local global i32 0, align 4
@ATA_SUPPORT_DRAT = common dso_local global i32 0, align 4
@ATA_SUPPORT_DSM_TRIM = common dso_local global i32 0, align 4
@ATA_SUPPORT_RWLOGDMAEXT = common dso_local global i32 0, align 4
@ATA_S_DSC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahci_port*, i32, i32*)* @handle_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_identify(%struct.ahci_port* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ahci_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ahci_cmd_hdr*, align 8
  %8 = alloca [256 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ahci_port* %0, %struct.ahci_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %18 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %19 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %18, i32 0, i32 6
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @AHCI_CL_SIZE, align 4
  %23 = mul nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %20, %24
  %26 = inttoptr i64 %25 to i8*
  %27 = bitcast i8* %26 to %struct.ahci_cmd_hdr*
  store %struct.ahci_cmd_hdr* %27, %struct.ahci_cmd_hdr** %7, align 8
  %28 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %29 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %3
  %33 = load %struct.ahci_cmd_hdr*, %struct.ahci_cmd_hdr** %7, align 8
  %34 = getelementptr inbounds %struct.ahci_cmd_hdr, %struct.ahci_cmd_hdr* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %32, %3
  %38 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* @ATA_E_ABORT, align 4
  %42 = shl i32 %41, 8
  %43 = load i32, i32* @ATA_S_READY, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @ATA_S_ERROR, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @ahci_write_fis_d2h(%struct.ahci_port* %38, i32 %39, i32* %40, i32 %46)
  br label %308

48:                                               ; preds = %32
  %49 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %50 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @blockif_is_ro(i32 %51)
  store i32 %52, i32* %14, align 4
  %53 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %54 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @blockif_candelete(i32 %55)
  store i32 %56, i32* %13, align 4
  %57 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %58 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @blockif_sectsz(i32 %59)
  store i32 %60, i32* %10, align 4
  %61 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %62 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @blockif_size(i32 %63)
  %65 = load i32, i32* %10, align 4
  %66 = sdiv i32 %64, %65
  store i32 %66, i32* %9, align 4
  %67 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %68 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @blockif_chs(i32 %69, i32* %15, i32* %17, i32* %16)
  %71 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %72 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @blockif_psectsz(i32 %73, i32* %11, i32* %12)
  %75 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 0
  %76 = call i32 @memset(i32* %75, i32 0, i32 1024)
  %77 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 0
  store i32 64, i32* %77, align 16
  %78 = load i32, i32* %15, align 4
  %79 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 1
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* %17, align 4
  %81 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 3
  store i32 %80, i32* %81, align 4
  %82 = load i32, i32* %16, align 4
  %83 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 6
  store i32 %82, i32* %83, align 8
  %84 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 0
  %85 = getelementptr inbounds i32, i32* %84, i64 10
  %86 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %87 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @ata_string(i32* %85, i8* %88, i32 20)
  %90 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 0
  %91 = getelementptr inbounds i32, i32* %90, i64 23
  %92 = call i32 @ata_string(i32* %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 8)
  %93 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 0
  %94 = getelementptr inbounds i32, i32* %93, i64 27
  %95 = call i32 @ata_string(i32* %94, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 40)
  %96 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 47
  store i32 32896, i32* %96, align 4
  %97 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 48
  store i32 1, i32* %97, align 16
  %98 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 49
  store i32 2816, i32* %98, align 4
  %99 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 50
  store i32 16384, i32* %99, align 8
  %100 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 53
  store i32 6, i32* %100, align 4
  %101 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %102 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %48
  %106 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %107 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = or i32 256, %108
  %110 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 59
  store i32 %109, i32* %110, align 4
  br label %111

111:                                              ; preds = %105, %48
  %112 = load i32, i32* %9, align 4
  %113 = icmp sle i32 %112, 268435455
  br i1 %113, label %114, label %120

114:                                              ; preds = %111
  %115 = load i32, i32* %9, align 4
  %116 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 60
  store i32 %115, i32* %116, align 16
  %117 = load i32, i32* %9, align 4
  %118 = ashr i32 %117, 16
  %119 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 61
  store i32 %118, i32* %119, align 4
  br label %123

120:                                              ; preds = %111
  %121 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 60
  store i32 65535, i32* %121, align 16
  %122 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 61
  store i32 4095, i32* %122, align 4
  br label %123

123:                                              ; preds = %120, %114
  %124 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 63
  store i32 7, i32* %124, align 4
  %125 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %126 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @ATA_WDMA0, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %123
  %132 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %133 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = and i32 %134, 7
  %136 = add nsw i32 %135, 8
  %137 = shl i32 1, %136
  %138 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 63
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, %137
  store i32 %140, i32* %138, align 4
  br label %141

141:                                              ; preds = %131, %123
  %142 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 64
  store i32 3, i32* %142, align 16
  %143 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 65
  store i32 120, i32* %143, align 4
  %144 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 66
  store i32 120, i32* %144, align 8
  %145 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 67
  store i32 120, i32* %145, align 4
  %146 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 68
  store i32 120, i32* %146, align 16
  %147 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 69
  store i32 0, i32* %147, align 4
  %148 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 75
  store i32 31, i32* %148, align 4
  %149 = load i32, i32* @ATA_SATA_GEN1, align 4
  %150 = load i32, i32* @ATA_SATA_GEN2, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* @ATA_SATA_GEN3, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* @ATA_SUPPORT_NCQ, align 4
  %155 = or i32 %153, %154
  %156 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 76
  store i32 %155, i32* %156, align 16
  %157 = load i32, i32* @ATA_SUPPORT_RCVSND_FPDMA_QUEUED, align 4
  %158 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %159 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @ATA_SS_SPD_MASK, align 4
  %162 = and i32 %160, %161
  %163 = ashr i32 %162, 3
  %164 = or i32 %157, %163
  %165 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 77
  store i32 %164, i32* %165, align 4
  %166 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 80
  store i32 1008, i32* %166, align 16
  %167 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 81
  store i32 40, i32* %167, align 4
  %168 = load i32, i32* @ATA_SUPPORT_POWERMGT, align 4
  %169 = load i32, i32* @ATA_SUPPORT_WRITECACHE, align 4
  %170 = or i32 %168, %169
  %171 = load i32, i32* @ATA_SUPPORT_LOOKAHEAD, align 4
  %172 = or i32 %170, %171
  %173 = load i32, i32* @ATA_SUPPORT_NOP, align 4
  %174 = or i32 %172, %173
  %175 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 82
  store i32 %174, i32* %175, align 8
  %176 = load i32, i32* @ATA_SUPPORT_ADDRESS48, align 4
  %177 = load i32, i32* @ATA_SUPPORT_FLUSHCACHE, align 4
  %178 = or i32 %176, %177
  %179 = load i32, i32* @ATA_SUPPORT_FLUSHCACHE48, align 4
  %180 = or i32 %178, %179
  %181 = or i32 %180, 16384
  %182 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 83
  store i32 %181, i32* %182, align 4
  %183 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 84
  store i32 16384, i32* %183, align 16
  %184 = load i32, i32* @ATA_SUPPORT_POWERMGT, align 4
  %185 = load i32, i32* @ATA_SUPPORT_WRITECACHE, align 4
  %186 = or i32 %184, %185
  %187 = load i32, i32* @ATA_SUPPORT_LOOKAHEAD, align 4
  %188 = or i32 %186, %187
  %189 = load i32, i32* @ATA_SUPPORT_NOP, align 4
  %190 = or i32 %188, %189
  %191 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 85
  store i32 %190, i32* %191, align 4
  %192 = load i32, i32* @ATA_SUPPORT_ADDRESS48, align 4
  %193 = load i32, i32* @ATA_SUPPORT_FLUSHCACHE, align 4
  %194 = or i32 %192, %193
  %195 = load i32, i32* @ATA_SUPPORT_FLUSHCACHE48, align 4
  %196 = or i32 %194, %195
  %197 = or i32 %196, 32768
  %198 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 86
  store i32 %197, i32* %198, align 8
  %199 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 87
  store i32 16384, i32* %199, align 4
  %200 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 88
  store i32 127, i32* %200, align 16
  %201 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %202 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @ATA_UDMA0, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %217

207:                                              ; preds = %141
  %208 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %209 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = and i32 %210, 7
  %212 = add nsw i32 %211, 8
  %213 = shl i32 1, %212
  %214 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 88
  %215 = load i32, i32* %214, align 16
  %216 = or i32 %215, %213
  store i32 %216, i32* %214, align 16
  br label %217

217:                                              ; preds = %207, %141
  %218 = load i32, i32* %9, align 4
  %219 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 100
  store i32 %218, i32* %219, align 16
  %220 = load i32, i32* %9, align 4
  %221 = ashr i32 %220, 16
  %222 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 101
  store i32 %221, i32* %222, align 4
  %223 = load i32, i32* %9, align 4
  %224 = ashr i32 %223, 32
  %225 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 102
  store i32 %224, i32* %225, align 8
  %226 = load i32, i32* %9, align 4
  %227 = ashr i32 %226, 48
  %228 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 103
  store i32 %227, i32* %228, align 4
  %229 = load i32, i32* %13, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %244

231:                                              ; preds = %217
  %232 = load i32, i32* %14, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %244, label %234

234:                                              ; preds = %231
  %235 = load i32, i32* @ATA_SUPPORT_RZAT, align 4
  %236 = load i32, i32* @ATA_SUPPORT_DRAT, align 4
  %237 = or i32 %235, %236
  %238 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 69
  %239 = load i32, i32* %238, align 4
  %240 = or i32 %239, %237
  store i32 %240, i32* %238, align 4
  %241 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 105
  store i32 1, i32* %241, align 4
  %242 = load i32, i32* @ATA_SUPPORT_DSM_TRIM, align 4
  %243 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 169
  store i32 %242, i32* %243, align 4
  br label %244

244:                                              ; preds = %234, %231, %217
  %245 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 106
  store i32 16384, i32* %245, align 8
  %246 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 209
  store i32 16384, i32* %246, align 4
  %247 = load i32, i32* %11, align 4
  %248 = load i32, i32* %10, align 4
  %249 = icmp sgt i32 %247, %248
  br i1 %249, label %250, label %268

250:                                              ; preds = %244
  %251 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 106
  %252 = load i32, i32* %251, align 8
  %253 = or i32 %252, 8192
  store i32 %253, i32* %251, align 8
  %254 = load i32, i32* %11, align 4
  %255 = load i32, i32* %10, align 4
  %256 = sdiv i32 %254, %255
  %257 = call i32 @ffsl(i32 %256)
  %258 = sub nsw i32 %257, 1
  %259 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 106
  %260 = load i32, i32* %259, align 8
  %261 = or i32 %260, %258
  store i32 %261, i32* %259, align 8
  %262 = load i32, i32* %12, align 4
  %263 = load i32, i32* %10, align 4
  %264 = sdiv i32 %262, %263
  %265 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 209
  %266 = load i32, i32* %265, align 4
  %267 = or i32 %266, %264
  store i32 %267, i32* %265, align 4
  br label %268

268:                                              ; preds = %250, %244
  %269 = load i32, i32* %10, align 4
  %270 = icmp sgt i32 %269, 512
  br i1 %270, label %271, label %282

271:                                              ; preds = %268
  %272 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 106
  %273 = load i32, i32* %272, align 8
  %274 = or i32 %273, 4096
  store i32 %274, i32* %272, align 8
  %275 = load i32, i32* %10, align 4
  %276 = sdiv i32 %275, 2
  %277 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 117
  store i32 %276, i32* %277, align 4
  %278 = load i32, i32* %10, align 4
  %279 = sdiv i32 %278, 2
  %280 = ashr i32 %279, 16
  %281 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 118
  store i32 %280, i32* %281, align 8
  br label %282

282:                                              ; preds = %271, %268
  %283 = load i32, i32* @ATA_SUPPORT_RWLOGDMAEXT, align 4
  %284 = or i32 %283, 16384
  %285 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 119
  store i32 %284, i32* %285, align 4
  %286 = load i32, i32* @ATA_SUPPORT_RWLOGDMAEXT, align 4
  %287 = or i32 %286, 16384
  %288 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 120
  store i32 %287, i32* %288, align 16
  %289 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 222
  store i32 4128, i32* %289, align 8
  %290 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 255
  store i32 165, i32* %290, align 4
  %291 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 0
  %292 = call i32 @ahci_checksum(i32* %291, i32 1024)
  %293 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %294 = call i32 @ahci_write_fis_piosetup(%struct.ahci_port* %293)
  %295 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %296 = load i32, i32* %5, align 4
  %297 = load i32*, i32** %6, align 8
  %298 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 0
  %299 = bitcast i32* %298 to i8*
  %300 = call i32 @write_prdt(%struct.ahci_port* %295, i32 %296, i32* %297, i8* %299, i32 1024)
  %301 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %302 = load i32, i32* %5, align 4
  %303 = load i32*, i32** %6, align 8
  %304 = load i32, i32* @ATA_S_DSC, align 4
  %305 = load i32, i32* @ATA_S_READY, align 4
  %306 = or i32 %304, %305
  %307 = call i32 @ahci_write_fis_d2h(%struct.ahci_port* %301, i32 %302, i32* %303, i32 %306)
  br label %308

308:                                              ; preds = %282, %37
  ret void
}

declare dso_local i32 @ahci_write_fis_d2h(%struct.ahci_port*, i32, i32*, i32) #1

declare dso_local i32 @blockif_is_ro(i32) #1

declare dso_local i32 @blockif_candelete(i32) #1

declare dso_local i32 @blockif_sectsz(i32) #1

declare dso_local i32 @blockif_size(i32) #1

declare dso_local i32 @blockif_chs(i32, i32*, i32*, i32*) #1

declare dso_local i32 @blockif_psectsz(i32, i32*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ata_string(i32*, i8*, i32) #1

declare dso_local i32 @ffsl(i32) #1

declare dso_local i32 @ahci_checksum(i32*, i32) #1

declare dso_local i32 @ahci_write_fis_piosetup(%struct.ahci_port*) #1

declare dso_local i32 @write_prdt(%struct.ahci_port*, i32, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
