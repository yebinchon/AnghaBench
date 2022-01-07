; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_ahci.c_atapi_read_toc.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_ahci.c_atapi_read_toc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_port = type { i32, i32, i32 }

@ATA_SENSE_ILLEGAL_REQUEST = common dso_local global i8* null, align 8
@ATA_S_READY = common dso_local global i32 0, align 4
@ATA_S_ERROR = common dso_local global i32 0, align 4
@ATA_I_CMD = common dso_local global i32 0, align 4
@ATA_I_IN = common dso_local global i32 0, align 4
@ATA_S_DSC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahci_port*, i32, i32*)* @atapi_read_toc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atapi_read_toc(%struct.ahci_port* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ahci_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [20 x i32], align 16
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca [12 x i32], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca [50 x i32], align 16
  %24 = alloca i32, align 4
  store %struct.ahci_port* %0, %struct.ahci_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 64
  store i32* %26, i32** %7, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 7
  %29 = call i32 @be16dec(i32* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 9
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 6
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  switch i32 %34, label %401 [
    i32 0, label %35
    i32 1, label %193
    i32 2, label %227
  ]

35:                                               ; preds = %3
  %36 = load i32*, i32** %7, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = ashr i32 %38, 1
  %40 = and i32 %39, 1
  store i32 %40, i32* %10, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 6
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp sgt i32 %44, 1
  br i1 %45, label %46, label %79

46:                                               ; preds = %35
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 170
  br i1 %48, label %49, label %79

49:                                               ; preds = %46
  %50 = load i8*, i8** @ATA_SENSE_ILLEGAL_REQUEST, align 8
  %51 = ptrtoint i8* %50 to i32
  %52 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %53 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %55 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %54, i32 0, i32 1
  store i32 36, i32* %55, align 4
  %56 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %57 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = shl i32 %58, 12
  %60 = load i32, i32* @ATA_S_READY, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @ATA_S_ERROR, align 4
  %63 = or i32 %61, %62
  store i32 %63, i32* %16, align 4
  %64 = load i32*, i32** %6, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 4
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, -8
  %68 = load i32, i32* @ATA_I_CMD, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @ATA_I_IN, align 4
  %71 = or i32 %69, %70
  %72 = load i32*, i32** %6, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 4
  store i32 %71, i32* %73, align 4
  %74 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %75 = load i32, i32* %5, align 4
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* %16, align 4
  %78 = call i32 @ahci_write_fis_d2h(%struct.ahci_port* %74, i32 %75, i32* %76, i32 %77)
  br label %431

79:                                               ; preds = %46, %35
  %80 = getelementptr inbounds [20 x i32], [20 x i32]* %14, i64 0, i64 0
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  store i32* %81, i32** %15, align 8
  %82 = load i32*, i32** %15, align 8
  %83 = getelementptr inbounds i32, i32* %82, i32 1
  store i32* %83, i32** %15, align 8
  store i32 1, i32* %82, align 4
  %84 = load i32*, i32** %15, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %15, align 8
  store i32 1, i32* %84, align 4
  %86 = load i32, i32* %13, align 4
  %87 = icmp sle i32 %86, 1
  br i1 %87, label %88, label %116

88:                                               ; preds = %79
  %89 = load i32*, i32** %15, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %15, align 8
  store i32 0, i32* %89, align 4
  %91 = load i32*, i32** %15, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %15, align 8
  store i32 20, i32* %91, align 4
  %93 = load i32*, i32** %15, align 8
  %94 = getelementptr inbounds i32, i32* %93, i32 1
  store i32* %94, i32** %15, align 8
  store i32 1, i32* %93, align 4
  %95 = load i32*, i32** %15, align 8
  %96 = getelementptr inbounds i32, i32* %95, i32 1
  store i32* %96, i32** %15, align 8
  store i32 0, i32* %95, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %88
  %100 = load i32*, i32** %15, align 8
  %101 = getelementptr inbounds i32, i32* %100, i32 1
  store i32* %101, i32** %15, align 8
  store i32 0, i32* %100, align 4
  %102 = load i32*, i32** %15, align 8
  %103 = call i32 @lba_to_msf(i32* %102, i32 0)
  %104 = load i32*, i32** %15, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 3
  store i32* %105, i32** %15, align 8
  br label %115

106:                                              ; preds = %88
  %107 = load i32*, i32** %15, align 8
  %108 = getelementptr inbounds i32, i32* %107, i32 1
  store i32* %108, i32** %15, align 8
  store i32 0, i32* %107, align 4
  %109 = load i32*, i32** %15, align 8
  %110 = getelementptr inbounds i32, i32* %109, i32 1
  store i32* %110, i32** %15, align 8
  store i32 0, i32* %109, align 4
  %111 = load i32*, i32** %15, align 8
  %112 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %112, i32** %15, align 8
  store i32 0, i32* %111, align 4
  %113 = load i32*, i32** %15, align 8
  %114 = getelementptr inbounds i32, i32* %113, i32 1
  store i32* %114, i32** %15, align 8
  store i32 0, i32* %113, align 4
  br label %115

115:                                              ; preds = %106, %99
  br label %116

116:                                              ; preds = %115, %79
  %117 = load i32*, i32** %15, align 8
  %118 = getelementptr inbounds i32, i32* %117, i32 1
  store i32* %118, i32** %15, align 8
  store i32 0, i32* %117, align 4
  %119 = load i32*, i32** %15, align 8
  %120 = getelementptr inbounds i32, i32* %119, i32 1
  store i32* %120, i32** %15, align 8
  store i32 20, i32* %119, align 4
  %121 = load i32*, i32** %15, align 8
  %122 = getelementptr inbounds i32, i32* %121, i32 1
  store i32* %122, i32** %15, align 8
  store i32 170, i32* %121, align 4
  %123 = load i32*, i32** %15, align 8
  %124 = getelementptr inbounds i32, i32* %123, i32 1
  store i32* %124, i32** %15, align 8
  store i32 0, i32* %123, align 4
  %125 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %126 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @blockif_size(i32 %127)
  %129 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %130 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @blockif_sectsz(i32 %131)
  %133 = sdiv i32 %128, %132
  store i32 %133, i32* %12, align 4
  %134 = load i32, i32* %12, align 4
  %135 = ashr i32 %134, 2
  store i32 %135, i32* %12, align 4
  %136 = load i32, i32* %10, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %116
  %139 = load i32*, i32** %15, align 8
  %140 = getelementptr inbounds i32, i32* %139, i32 1
  store i32* %140, i32** %15, align 8
  store i32 0, i32* %139, align 4
  %141 = load i32*, i32** %15, align 8
  %142 = load i32, i32* %12, align 4
  %143 = call i32 @lba_to_msf(i32* %141, i32 %142)
  %144 = load i32*, i32** %15, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 3
  store i32* %145, i32** %15, align 8
  br label %152

146:                                              ; preds = %116
  %147 = load i32*, i32** %15, align 8
  %148 = load i32, i32* %12, align 4
  %149 = call i32 @be32enc(i32* %147, i32 %148)
  %150 = load i32*, i32** %15, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 4
  store i32* %151, i32** %15, align 8
  br label %152

152:                                              ; preds = %146, %138
  %153 = load i32*, i32** %15, align 8
  %154 = getelementptr inbounds [20 x i32], [20 x i32]* %14, i64 0, i64 0
  %155 = ptrtoint i32* %153 to i64
  %156 = ptrtoint i32* %154 to i64
  %157 = sub i64 %155, %156
  %158 = sdiv exact i64 %157, 4
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* %11, align 4
  %160 = getelementptr inbounds [20 x i32], [20 x i32]* %14, i64 0, i64 0
  %161 = load i32, i32* %11, align 4
  %162 = sub nsw i32 %161, 2
  %163 = call i32 @be16enc(i32* %160, i32 %162)
  %164 = load i32, i32* %9, align 4
  %165 = load i32, i32* %11, align 4
  %166 = icmp sgt i32 %164, %165
  br i1 %166, label %167, label %169

167:                                              ; preds = %152
  %168 = load i32, i32* %11, align 4
  store i32 %168, i32* %9, align 4
  br label %169

169:                                              ; preds = %167, %152
  %170 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %171 = load i32, i32* %5, align 4
  %172 = load i32*, i32** %6, align 8
  %173 = getelementptr inbounds [20 x i32], [20 x i32]* %14, i64 0, i64 0
  %174 = load i32, i32* %9, align 4
  %175 = call i32 @write_prdt(%struct.ahci_port* %170, i32 %171, i32* %172, i32* %173, i32 %174)
  %176 = load i32*, i32** %6, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 4
  %178 = load i32, i32* %177, align 4
  %179 = and i32 %178, -8
  %180 = load i32, i32* @ATA_I_CMD, align 4
  %181 = or i32 %179, %180
  %182 = load i32, i32* @ATA_I_IN, align 4
  %183 = or i32 %181, %182
  %184 = load i32*, i32** %6, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 4
  store i32 %183, i32* %185, align 4
  %186 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %187 = load i32, i32* %5, align 4
  %188 = load i32*, i32** %6, align 8
  %189 = load i32, i32* @ATA_S_READY, align 4
  %190 = load i32, i32* @ATA_S_DSC, align 4
  %191 = or i32 %189, %190
  %192 = call i32 @ahci_write_fis_d2h(%struct.ahci_port* %186, i32 %187, i32* %188, i32 %191)
  br label %431

193:                                              ; preds = %3
  %194 = getelementptr inbounds [12 x i32], [12 x i32]* %17, i64 0, i64 0
  %195 = call i32 @memset(i32* %194, i32 0, i32 48)
  %196 = getelementptr inbounds [12 x i32], [12 x i32]* %17, i64 0, i64 1
  store i32 10, i32* %196, align 4
  %197 = getelementptr inbounds [12 x i32], [12 x i32]* %17, i64 0, i64 2
  store i32 1, i32* %197, align 8
  %198 = getelementptr inbounds [12 x i32], [12 x i32]* %17, i64 0, i64 3
  store i32 1, i32* %198, align 4
  %199 = load i32, i32* %9, align 4
  %200 = sext i32 %199 to i64
  %201 = icmp ugt i64 %200, 48
  br i1 %201, label %202, label %203

202:                                              ; preds = %193
  store i32 48, i32* %9, align 4
  br label %203

203:                                              ; preds = %202, %193
  %204 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %205 = load i32, i32* %5, align 4
  %206 = load i32*, i32** %6, align 8
  %207 = getelementptr inbounds [12 x i32], [12 x i32]* %17, i64 0, i64 0
  %208 = load i32, i32* %9, align 4
  %209 = call i32 @write_prdt(%struct.ahci_port* %204, i32 %205, i32* %206, i32* %207, i32 %208)
  %210 = load i32*, i32** %6, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 4
  %212 = load i32, i32* %211, align 4
  %213 = and i32 %212, -8
  %214 = load i32, i32* @ATA_I_CMD, align 4
  %215 = or i32 %213, %214
  %216 = load i32, i32* @ATA_I_IN, align 4
  %217 = or i32 %215, %216
  %218 = load i32*, i32** %6, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 4
  store i32 %217, i32* %219, align 4
  %220 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %221 = load i32, i32* %5, align 4
  %222 = load i32*, i32** %6, align 8
  %223 = load i32, i32* @ATA_S_READY, align 4
  %224 = load i32, i32* @ATA_S_DSC, align 4
  %225 = or i32 %223, %224
  %226 = call i32 @ahci_write_fis_d2h(%struct.ahci_port* %220, i32 %221, i32* %222, i32 %225)
  br label %431

227:                                              ; preds = %3
  %228 = load i32*, i32** %7, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 1
  %230 = load i32, i32* %229, align 4
  %231 = ashr i32 %230, 1
  %232 = and i32 %231, 1
  store i32 %232, i32* %18, align 4
  %233 = load i32*, i32** %7, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 6
  %235 = load i32, i32* %234, align 4
  store i32 %235, i32* %21, align 4
  %236 = getelementptr inbounds [50 x i32], [50 x i32]* %23, i64 0, i64 0
  %237 = getelementptr inbounds i32, i32* %236, i64 2
  store i32* %237, i32** %22, align 8
  %238 = load i32*, i32** %22, align 8
  %239 = getelementptr inbounds i32, i32* %238, i32 1
  store i32* %239, i32** %22, align 8
  store i32 1, i32* %238, align 4
  %240 = load i32*, i32** %22, align 8
  %241 = getelementptr inbounds i32, i32* %240, i32 1
  store i32* %241, i32** %22, align 8
  store i32 1, i32* %240, align 4
  %242 = load i32*, i32** %22, align 8
  %243 = getelementptr inbounds i32, i32* %242, i32 1
  store i32* %243, i32** %22, align 8
  store i32 1, i32* %242, align 4
  %244 = load i32*, i32** %22, align 8
  %245 = getelementptr inbounds i32, i32* %244, i32 1
  store i32* %245, i32** %22, align 8
  store i32 20, i32* %244, align 4
  %246 = load i32*, i32** %22, align 8
  %247 = getelementptr inbounds i32, i32* %246, i32 1
  store i32* %247, i32** %22, align 8
  store i32 0, i32* %246, align 4
  %248 = load i32*, i32** %22, align 8
  %249 = getelementptr inbounds i32, i32* %248, i32 1
  store i32* %249, i32** %22, align 8
  store i32 160, i32* %248, align 4
  %250 = load i32*, i32** %22, align 8
  %251 = getelementptr inbounds i32, i32* %250, i32 1
  store i32* %251, i32** %22, align 8
  store i32 0, i32* %250, align 4
  %252 = load i32*, i32** %22, align 8
  %253 = getelementptr inbounds i32, i32* %252, i32 1
  store i32* %253, i32** %22, align 8
  store i32 0, i32* %252, align 4
  %254 = load i32*, i32** %22, align 8
  %255 = getelementptr inbounds i32, i32* %254, i32 1
  store i32* %255, i32** %22, align 8
  store i32 0, i32* %254, align 4
  %256 = load i32*, i32** %22, align 8
  %257 = getelementptr inbounds i32, i32* %256, i32 1
  store i32* %257, i32** %22, align 8
  store i32 0, i32* %256, align 4
  %258 = load i32*, i32** %22, align 8
  %259 = getelementptr inbounds i32, i32* %258, i32 1
  store i32* %259, i32** %22, align 8
  store i32 1, i32* %258, align 4
  %260 = load i32*, i32** %22, align 8
  %261 = getelementptr inbounds i32, i32* %260, i32 1
  store i32* %261, i32** %22, align 8
  store i32 0, i32* %260, align 4
  %262 = load i32*, i32** %22, align 8
  %263 = getelementptr inbounds i32, i32* %262, i32 1
  store i32* %263, i32** %22, align 8
  store i32 0, i32* %262, align 4
  %264 = load i32*, i32** %22, align 8
  %265 = getelementptr inbounds i32, i32* %264, i32 1
  store i32* %265, i32** %22, align 8
  store i32 1, i32* %264, align 4
  %266 = load i32*, i32** %22, align 8
  %267 = getelementptr inbounds i32, i32* %266, i32 1
  store i32* %267, i32** %22, align 8
  store i32 20, i32* %266, align 4
  %268 = load i32*, i32** %22, align 8
  %269 = getelementptr inbounds i32, i32* %268, i32 1
  store i32* %269, i32** %22, align 8
  store i32 0, i32* %268, align 4
  %270 = load i32*, i32** %22, align 8
  %271 = getelementptr inbounds i32, i32* %270, i32 1
  store i32* %271, i32** %22, align 8
  store i32 161, i32* %270, align 4
  %272 = load i32*, i32** %22, align 8
  %273 = getelementptr inbounds i32, i32* %272, i32 1
  store i32* %273, i32** %22, align 8
  store i32 0, i32* %272, align 4
  %274 = load i32*, i32** %22, align 8
  %275 = getelementptr inbounds i32, i32* %274, i32 1
  store i32* %275, i32** %22, align 8
  store i32 0, i32* %274, align 4
  %276 = load i32*, i32** %22, align 8
  %277 = getelementptr inbounds i32, i32* %276, i32 1
  store i32* %277, i32** %22, align 8
  store i32 0, i32* %276, align 4
  %278 = load i32*, i32** %22, align 8
  %279 = getelementptr inbounds i32, i32* %278, i32 1
  store i32* %279, i32** %22, align 8
  store i32 0, i32* %278, align 4
  %280 = load i32*, i32** %22, align 8
  %281 = getelementptr inbounds i32, i32* %280, i32 1
  store i32* %281, i32** %22, align 8
  store i32 1, i32* %280, align 4
  %282 = load i32*, i32** %22, align 8
  %283 = getelementptr inbounds i32, i32* %282, i32 1
  store i32* %283, i32** %22, align 8
  store i32 0, i32* %282, align 4
  %284 = load i32*, i32** %22, align 8
  %285 = getelementptr inbounds i32, i32* %284, i32 1
  store i32* %285, i32** %22, align 8
  store i32 0, i32* %284, align 4
  %286 = load i32*, i32** %22, align 8
  %287 = getelementptr inbounds i32, i32* %286, i32 1
  store i32* %287, i32** %22, align 8
  store i32 1, i32* %286, align 4
  %288 = load i32*, i32** %22, align 8
  %289 = getelementptr inbounds i32, i32* %288, i32 1
  store i32* %289, i32** %22, align 8
  store i32 20, i32* %288, align 4
  %290 = load i32*, i32** %22, align 8
  %291 = getelementptr inbounds i32, i32* %290, i32 1
  store i32* %291, i32** %22, align 8
  store i32 0, i32* %290, align 4
  %292 = load i32*, i32** %22, align 8
  %293 = getelementptr inbounds i32, i32* %292, i32 1
  store i32* %293, i32** %22, align 8
  store i32 162, i32* %292, align 4
  %294 = load i32*, i32** %22, align 8
  %295 = getelementptr inbounds i32, i32* %294, i32 1
  store i32* %295, i32** %22, align 8
  store i32 0, i32* %294, align 4
  %296 = load i32*, i32** %22, align 8
  %297 = getelementptr inbounds i32, i32* %296, i32 1
  store i32* %297, i32** %22, align 8
  store i32 0, i32* %296, align 4
  %298 = load i32*, i32** %22, align 8
  %299 = getelementptr inbounds i32, i32* %298, i32 1
  store i32* %299, i32** %22, align 8
  store i32 0, i32* %298, align 4
  %300 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %301 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 4
  %303 = call i32 @blockif_size(i32 %302)
  %304 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %305 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 4
  %307 = call i32 @blockif_sectsz(i32 %306)
  %308 = sdiv i32 %303, %307
  store i32 %308, i32* %20, align 4
  %309 = load i32, i32* %20, align 4
  %310 = ashr i32 %309, 2
  store i32 %310, i32* %20, align 4
  %311 = load i32, i32* %18, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %321

313:                                              ; preds = %227
  %314 = load i32*, i32** %22, align 8
  %315 = getelementptr inbounds i32, i32* %314, i32 1
  store i32* %315, i32** %22, align 8
  store i32 0, i32* %314, align 4
  %316 = load i32*, i32** %22, align 8
  %317 = load i32, i32* %20, align 4
  %318 = call i32 @lba_to_msf(i32* %316, i32 %317)
  %319 = load i32*, i32** %22, align 8
  %320 = getelementptr inbounds i32, i32* %319, i64 3
  store i32* %320, i32** %22, align 8
  br label %327

321:                                              ; preds = %227
  %322 = load i32*, i32** %22, align 8
  %323 = load i32, i32* %20, align 4
  %324 = call i32 @be32enc(i32* %322, i32 %323)
  %325 = load i32*, i32** %22, align 8
  %326 = getelementptr inbounds i32, i32* %325, i64 4
  store i32* %326, i32** %22, align 8
  br label %327

327:                                              ; preds = %321, %313
  %328 = load i32*, i32** %22, align 8
  %329 = getelementptr inbounds i32, i32* %328, i32 1
  store i32* %329, i32** %22, align 8
  store i32 1, i32* %328, align 4
  %330 = load i32*, i32** %22, align 8
  %331 = getelementptr inbounds i32, i32* %330, i32 1
  store i32* %331, i32** %22, align 8
  store i32 20, i32* %330, align 4
  %332 = load i32*, i32** %22, align 8
  %333 = getelementptr inbounds i32, i32* %332, i32 1
  store i32* %333, i32** %22, align 8
  store i32 0, i32* %332, align 4
  %334 = load i32*, i32** %22, align 8
  %335 = getelementptr inbounds i32, i32* %334, i32 1
  store i32* %335, i32** %22, align 8
  store i32 1, i32* %334, align 4
  %336 = load i32*, i32** %22, align 8
  %337 = getelementptr inbounds i32, i32* %336, i32 1
  store i32* %337, i32** %22, align 8
  store i32 0, i32* %336, align 4
  %338 = load i32*, i32** %22, align 8
  %339 = getelementptr inbounds i32, i32* %338, i32 1
  store i32* %339, i32** %22, align 8
  store i32 0, i32* %338, align 4
  %340 = load i32*, i32** %22, align 8
  %341 = getelementptr inbounds i32, i32* %340, i32 1
  store i32* %341, i32** %22, align 8
  store i32 0, i32* %340, align 4
  %342 = load i32, i32* %18, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %351

344:                                              ; preds = %327
  %345 = load i32*, i32** %22, align 8
  %346 = getelementptr inbounds i32, i32* %345, i32 1
  store i32* %346, i32** %22, align 8
  store i32 0, i32* %345, align 4
  %347 = load i32*, i32** %22, align 8
  %348 = call i32 @lba_to_msf(i32* %347, i32 0)
  %349 = load i32*, i32** %22, align 8
  %350 = getelementptr inbounds i32, i32* %349, i64 3
  store i32* %350, i32** %22, align 8
  br label %360

351:                                              ; preds = %327
  %352 = load i32*, i32** %22, align 8
  %353 = getelementptr inbounds i32, i32* %352, i32 1
  store i32* %353, i32** %22, align 8
  store i32 0, i32* %352, align 4
  %354 = load i32*, i32** %22, align 8
  %355 = getelementptr inbounds i32, i32* %354, i32 1
  store i32* %355, i32** %22, align 8
  store i32 0, i32* %354, align 4
  %356 = load i32*, i32** %22, align 8
  %357 = getelementptr inbounds i32, i32* %356, i32 1
  store i32* %357, i32** %22, align 8
  store i32 0, i32* %356, align 4
  %358 = load i32*, i32** %22, align 8
  %359 = getelementptr inbounds i32, i32* %358, i32 1
  store i32* %359, i32** %22, align 8
  store i32 0, i32* %358, align 4
  br label %360

360:                                              ; preds = %351, %344
  %361 = load i32*, i32** %22, align 8
  %362 = getelementptr inbounds [50 x i32], [50 x i32]* %23, i64 0, i64 0
  %363 = ptrtoint i32* %361 to i64
  %364 = ptrtoint i32* %362 to i64
  %365 = sub i64 %363, %364
  %366 = sdiv exact i64 %365, 4
  %367 = trunc i64 %366 to i32
  store i32 %367, i32* %19, align 4
  %368 = getelementptr inbounds [50 x i32], [50 x i32]* %23, i64 0, i64 0
  %369 = load i32, i32* %19, align 4
  %370 = sub nsw i32 %369, 2
  %371 = call i32 @be16enc(i32* %368, i32 %370)
  %372 = load i32, i32* %9, align 4
  %373 = load i32, i32* %19, align 4
  %374 = icmp sgt i32 %372, %373
  br i1 %374, label %375, label %377

375:                                              ; preds = %360
  %376 = load i32, i32* %19, align 4
  store i32 %376, i32* %9, align 4
  br label %377

377:                                              ; preds = %375, %360
  %378 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %379 = load i32, i32* %5, align 4
  %380 = load i32*, i32** %6, align 8
  %381 = getelementptr inbounds [50 x i32], [50 x i32]* %23, i64 0, i64 0
  %382 = load i32, i32* %9, align 4
  %383 = call i32 @write_prdt(%struct.ahci_port* %378, i32 %379, i32* %380, i32* %381, i32 %382)
  %384 = load i32*, i32** %6, align 8
  %385 = getelementptr inbounds i32, i32* %384, i64 4
  %386 = load i32, i32* %385, align 4
  %387 = and i32 %386, -8
  %388 = load i32, i32* @ATA_I_CMD, align 4
  %389 = or i32 %387, %388
  %390 = load i32, i32* @ATA_I_IN, align 4
  %391 = or i32 %389, %390
  %392 = load i32*, i32** %6, align 8
  %393 = getelementptr inbounds i32, i32* %392, i64 4
  store i32 %391, i32* %393, align 4
  %394 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %395 = load i32, i32* %5, align 4
  %396 = load i32*, i32** %6, align 8
  %397 = load i32, i32* @ATA_S_READY, align 4
  %398 = load i32, i32* @ATA_S_DSC, align 4
  %399 = or i32 %397, %398
  %400 = call i32 @ahci_write_fis_d2h(%struct.ahci_port* %394, i32 %395, i32* %396, i32 %399)
  br label %431

401:                                              ; preds = %3
  %402 = load i8*, i8** @ATA_SENSE_ILLEGAL_REQUEST, align 8
  %403 = ptrtoint i8* %402 to i32
  %404 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %405 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %404, i32 0, i32 0
  store i32 %403, i32* %405, align 4
  %406 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %407 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %406, i32 0, i32 1
  store i32 36, i32* %407, align 4
  %408 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %409 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 4
  %411 = shl i32 %410, 12
  %412 = load i32, i32* @ATA_S_READY, align 4
  %413 = or i32 %411, %412
  %414 = load i32, i32* @ATA_S_ERROR, align 4
  %415 = or i32 %413, %414
  store i32 %415, i32* %24, align 4
  %416 = load i32*, i32** %6, align 8
  %417 = getelementptr inbounds i32, i32* %416, i64 4
  %418 = load i32, i32* %417, align 4
  %419 = and i32 %418, -8
  %420 = load i32, i32* @ATA_I_CMD, align 4
  %421 = or i32 %419, %420
  %422 = load i32, i32* @ATA_I_IN, align 4
  %423 = or i32 %421, %422
  %424 = load i32*, i32** %6, align 8
  %425 = getelementptr inbounds i32, i32* %424, i64 4
  store i32 %423, i32* %425, align 4
  %426 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %427 = load i32, i32* %5, align 4
  %428 = load i32*, i32** %6, align 8
  %429 = load i32, i32* %24, align 4
  %430 = call i32 @ahci_write_fis_d2h(%struct.ahci_port* %426, i32 %427, i32* %428, i32 %429)
  br label %431

431:                                              ; preds = %49, %401, %377, %203, %169
  ret void
}

declare dso_local i32 @be16dec(i32*) #1

declare dso_local i32 @ahci_write_fis_d2h(%struct.ahci_port*, i32, i32*, i32) #1

declare dso_local i32 @lba_to_msf(i32*, i32) #1

declare dso_local i32 @blockif_size(i32) #1

declare dso_local i32 @blockif_sectsz(i32) #1

declare dso_local i32 @be32enc(i32*, i32) #1

declare dso_local i32 @be16enc(i32*, i32) #1

declare dso_local i32 @write_prdt(%struct.ahci_port*, i32, i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
