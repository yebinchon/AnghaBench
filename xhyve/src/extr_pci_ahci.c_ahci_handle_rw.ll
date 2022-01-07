; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_ahci.c_ahci_handle_rw.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_ahci.c_ahci_handle_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_port = type { i32, i32, i32, i32, i64 }
%struct.ahci_ioreq = type { i32*, i32, %struct.blockif_req, i64, i64 }
%struct.blockif_req = type { i64 }
%struct.ahci_prdt_entry = type { i32 }
%struct.ahci_cmd_hdr = type { i32 }

@AHCI_CL_SIZE = common dso_local global i32 0, align 4
@ATA_WRITE = common dso_local global i32 0, align 4
@ATA_WRITE48 = common dso_local global i32 0, align 4
@ATA_WRITE_MUL = common dso_local global i32 0, align 4
@ATA_WRITE_MUL48 = common dso_local global i32 0, align 4
@ATA_WRITE_DMA = common dso_local global i32 0, align 4
@ATA_WRITE_DMA48 = common dso_local global i32 0, align 4
@ATA_WRITE_FPDMA_QUEUED = common dso_local global i32 0, align 4
@ATA_READ_FPDMA_QUEUED = common dso_local global i32 0, align 4
@ATA_READ48 = common dso_local global i32 0, align 4
@ATA_READ_MUL48 = common dso_local global i32 0, align 4
@ATA_READ_DMA48 = common dso_local global i32 0, align 4
@io_flist = common dso_local global i32 0, align 4
@io_blist = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahci_port*, i32, i32*, i64)* @ahci_handle_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahci_handle_rw(%struct.ahci_port* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.ahci_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ahci_ioreq*, align 8
  %10 = alloca %struct.blockif_req*, align 8
  %11 = alloca %struct.ahci_prdt_entry*, align 8
  %12 = alloca %struct.ahci_cmd_hdr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ahci_port* %0, %struct.ahci_port** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 128
  %21 = bitcast i32* %20 to i8*
  %22 = bitcast i8* %21 to %struct.ahci_prdt_entry*
  store %struct.ahci_prdt_entry* %22, %struct.ahci_prdt_entry** %11, align 8
  %23 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %24 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @AHCI_CL_SIZE, align 4
  %28 = mul nsw i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %25, %29
  %31 = inttoptr i64 %30 to i8*
  %32 = bitcast i8* %31 to %struct.ahci_cmd_hdr*
  store %struct.ahci_cmd_hdr* %32, %struct.ahci_cmd_hdr** %12, align 8
  store i32 0, i32* %17, align 4
  store i32 1, i32* %18, align 4
  %33 = load i64, i64* %8, align 8
  %34 = icmp eq i64 %33, 0
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %16, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ATA_WRITE, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %77, label %41

41:                                               ; preds = %4
  %42 = load i32*, i32** %7, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @ATA_WRITE48, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %77, label %47

47:                                               ; preds = %41
  %48 = load i32*, i32** %7, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @ATA_WRITE_MUL, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %77, label %53

53:                                               ; preds = %47
  %54 = load i32*, i32** %7, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @ATA_WRITE_MUL48, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %77, label %59

59:                                               ; preds = %53
  %60 = load i32*, i32** %7, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @ATA_WRITE_DMA, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %77, label %65

65:                                               ; preds = %59
  %66 = load i32*, i32** %7, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @ATA_WRITE_DMA48, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %77, label %71

71:                                               ; preds = %65
  %72 = load i32*, i32** %7, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @ATA_WRITE_FPDMA_QUEUED, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %71, %65, %59, %53, %47, %41, %4
  store i32 0, i32* %18, align 4
  br label %78

78:                                               ; preds = %77, %71
  %79 = load i32*, i32** %7, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @ATA_WRITE_FPDMA_QUEUED, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %90, label %84

84:                                               ; preds = %78
  %85 = load i32*, i32** %7, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 2
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @ATA_READ_FPDMA_QUEUED, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %132

90:                                               ; preds = %84, %78
  %91 = load i32*, i32** %7, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 10
  %93 = load i32, i32* %92, align 4
  %94 = shl i32 %93, 40
  %95 = load i32*, i32** %7, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 9
  %97 = load i32, i32* %96, align 4
  %98 = shl i32 %97, 32
  %99 = or i32 %94, %98
  %100 = load i32*, i32** %7, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 8
  %102 = load i32, i32* %101, align 4
  %103 = shl i32 %102, 24
  %104 = or i32 %99, %103
  %105 = load i32*, i32** %7, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 6
  %107 = load i32, i32* %106, align 4
  %108 = shl i32 %107, 16
  %109 = or i32 %104, %108
  %110 = load i32*, i32** %7, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 5
  %112 = load i32, i32* %111, align 4
  %113 = shl i32 %112, 8
  %114 = or i32 %109, %113
  %115 = load i32*, i32** %7, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 4
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %114, %117
  store i32 %118, i32* %13, align 4
  %119 = load i32*, i32** %7, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 11
  %121 = load i32, i32* %120, align 4
  %122 = shl i32 %121, 8
  %123 = load i32*, i32** %7, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 3
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %122, %125
  %127 = sext i32 %126 to i64
  store i64 %127, i64* %14, align 8
  %128 = load i64, i64* %14, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %90
  store i64 65536, i64* %14, align 8
  br label %131

131:                                              ; preds = %130, %90
  store i32 1, i32* %17, align 4
  br label %239

132:                                              ; preds = %84
  %133 = load i32*, i32** %7, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 2
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @ATA_READ48, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %168, label %138

138:                                              ; preds = %132
  %139 = load i32*, i32** %7, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 2
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @ATA_WRITE48, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %168, label %144

144:                                              ; preds = %138
  %145 = load i32*, i32** %7, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 2
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @ATA_READ_MUL48, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %168, label %150

150:                                              ; preds = %144
  %151 = load i32*, i32** %7, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 2
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @ATA_WRITE_MUL48, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %168, label %156

156:                                              ; preds = %150
  %157 = load i32*, i32** %7, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 2
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @ATA_READ_DMA48, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %168, label %162

162:                                              ; preds = %156
  %163 = load i32*, i32** %7, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 2
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @ATA_WRITE_DMA48, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %210

168:                                              ; preds = %162, %156, %150, %144, %138, %132
  %169 = load i32*, i32** %7, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 10
  %171 = load i32, i32* %170, align 4
  %172 = shl i32 %171, 40
  %173 = load i32*, i32** %7, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 9
  %175 = load i32, i32* %174, align 4
  %176 = shl i32 %175, 32
  %177 = or i32 %172, %176
  %178 = load i32*, i32** %7, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 8
  %180 = load i32, i32* %179, align 4
  %181 = shl i32 %180, 24
  %182 = or i32 %177, %181
  %183 = load i32*, i32** %7, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 6
  %185 = load i32, i32* %184, align 4
  %186 = shl i32 %185, 16
  %187 = or i32 %182, %186
  %188 = load i32*, i32** %7, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 5
  %190 = load i32, i32* %189, align 4
  %191 = shl i32 %190, 8
  %192 = or i32 %187, %191
  %193 = load i32*, i32** %7, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 4
  %195 = load i32, i32* %194, align 4
  %196 = or i32 %192, %195
  store i32 %196, i32* %13, align 4
  %197 = load i32*, i32** %7, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 13
  %199 = load i32, i32* %198, align 4
  %200 = shl i32 %199, 8
  %201 = load i32*, i32** %7, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 12
  %203 = load i32, i32* %202, align 4
  %204 = or i32 %200, %203
  %205 = sext i32 %204 to i64
  store i64 %205, i64* %14, align 8
  %206 = load i64, i64* %14, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %209, label %208

208:                                              ; preds = %168
  store i64 65536, i64* %14, align 8
  br label %209

209:                                              ; preds = %208, %168
  br label %238

210:                                              ; preds = %162
  %211 = load i32*, i32** %7, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 7
  %213 = load i32, i32* %212, align 4
  %214 = and i32 %213, 15
  %215 = shl i32 %214, 24
  %216 = load i32*, i32** %7, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 6
  %218 = load i32, i32* %217, align 4
  %219 = shl i32 %218, 16
  %220 = or i32 %215, %219
  %221 = load i32*, i32** %7, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 5
  %223 = load i32, i32* %222, align 4
  %224 = shl i32 %223, 8
  %225 = or i32 %220, %224
  %226 = load i32*, i32** %7, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 4
  %228 = load i32, i32* %227, align 4
  %229 = or i32 %225, %228
  store i32 %229, i32* %13, align 4
  %230 = load i32*, i32** %7, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 12
  %232 = load i32, i32* %231, align 4
  %233 = sext i32 %232 to i64
  store i64 %233, i64* %14, align 8
  %234 = load i64, i64* %14, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %237, label %236

236:                                              ; preds = %210
  store i64 256, i64* %14, align 8
  br label %237

237:                                              ; preds = %236, %210
  br label %238

238:                                              ; preds = %237, %209
  br label %239

239:                                              ; preds = %238, %131
  %240 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %241 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = call i64 @blockif_sectsz(i32 %242)
  %244 = trunc i64 %243 to i32
  %245 = load i32, i32* %13, align 4
  %246 = mul nsw i32 %245, %244
  store i32 %246, i32* %13, align 4
  %247 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %248 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = call i64 @blockif_sectsz(i32 %249)
  %251 = load i64, i64* %14, align 8
  %252 = mul nsw i64 %251, %250
  store i64 %252, i64* %14, align 8
  %253 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %254 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %253, i32 0, i32 3
  %255 = call %struct.ahci_ioreq* @STAILQ_FIRST(i32* %254)
  store %struct.ahci_ioreq* %255, %struct.ahci_ioreq** %9, align 8
  %256 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %9, align 8
  %257 = icmp ne %struct.ahci_ioreq* %256, null
  %258 = zext i1 %257 to i32
  %259 = call i32 @assert(i32 %258)
  %260 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %261 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %260, i32 0, i32 3
  %262 = load i32, i32* @io_flist, align 4
  %263 = call i32 @STAILQ_REMOVE_HEAD(i32* %261, i32 %262)
  %264 = load i32*, i32** %7, align 8
  %265 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %9, align 8
  %266 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %265, i32 0, i32 0
  store i32* %264, i32** %266, align 8
  %267 = load i32, i32* %6, align 4
  %268 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %9, align 8
  %269 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %268, i32 0, i32 1
  store i32 %267, i32* %269, align 8
  %270 = load i64, i64* %14, align 8
  %271 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %9, align 8
  %272 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %271, i32 0, i32 4
  store i64 %270, i64* %272, align 8
  %273 = load i64, i64* %8, align 8
  %274 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %9, align 8
  %275 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %274, i32 0, i32 3
  store i64 %273, i64* %275, align 8
  %276 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %9, align 8
  %277 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %276, i32 0, i32 2
  store %struct.blockif_req* %277, %struct.blockif_req** %10, align 8
  %278 = load i32, i32* %13, align 4
  %279 = sext i32 %278 to i64
  %280 = load i64, i64* %8, align 8
  %281 = add nsw i64 %279, %280
  %282 = load %struct.blockif_req*, %struct.blockif_req** %10, align 8
  %283 = getelementptr inbounds %struct.blockif_req, %struct.blockif_req* %282, i32 0, i32 0
  store i64 %281, i64* %283, align 8
  %284 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %285 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %9, align 8
  %286 = load %struct.ahci_prdt_entry*, %struct.ahci_prdt_entry** %11, align 8
  %287 = load %struct.ahci_cmd_hdr*, %struct.ahci_cmd_hdr** %12, align 8
  %288 = getelementptr inbounds %struct.ahci_cmd_hdr, %struct.ahci_cmd_hdr* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = call i32 @ahci_build_iov(%struct.ahci_port* %284, %struct.ahci_ioreq* %285, %struct.ahci_prdt_entry* %286, i32 %289)
  %291 = load i32, i32* %6, align 4
  %292 = shl i32 1, %291
  %293 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %294 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = or i32 %295, %292
  store i32 %296, i32* %294, align 8
  %297 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %298 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %297, i32 0, i32 2
  %299 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %9, align 8
  %300 = load i32, i32* @io_blist, align 4
  %301 = call i32 @TAILQ_INSERT_HEAD(i32* %298, %struct.ahci_ioreq* %299, i32 %300)
  %302 = load i32, i32* %17, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %311

304:                                              ; preds = %239
  %305 = load i32, i32* %16, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %311

307:                                              ; preds = %304
  %308 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %309 = load i32, i32* %6, align 4
  %310 = call i32 @ahci_write_fis_d2h_ncq(%struct.ahci_port* %308, i32 %309)
  br label %311

311:                                              ; preds = %307, %304, %239
  %312 = load i32, i32* %18, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %320

314:                                              ; preds = %311
  %315 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %316 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = load %struct.blockif_req*, %struct.blockif_req** %10, align 8
  %319 = call i32 @blockif_read(i32 %317, %struct.blockif_req* %318)
  store i32 %319, i32* %15, align 4
  br label %326

320:                                              ; preds = %311
  %321 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %322 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = load %struct.blockif_req*, %struct.blockif_req** %10, align 8
  %325 = call i32 @blockif_write(i32 %323, %struct.blockif_req* %324)
  store i32 %325, i32* %15, align 4
  br label %326

326:                                              ; preds = %320, %314
  %327 = load i32, i32* %15, align 4
  %328 = icmp eq i32 %327, 0
  %329 = zext i1 %328 to i32
  %330 = call i32 @assert(i32 %329)
  ret void
}

declare dso_local i64 @blockif_sectsz(i32) #1

declare dso_local %struct.ahci_ioreq* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @ahci_build_iov(%struct.ahci_port*, %struct.ahci_ioreq*, %struct.ahci_prdt_entry*, i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.ahci_ioreq*, i32) #1

declare dso_local i32 @ahci_write_fis_d2h_ncq(%struct.ahci_port*, i32) #1

declare dso_local i32 @blockif_read(i32, %struct.blockif_req*) #1

declare dso_local i32 @blockif_write(i32, %struct.blockif_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
