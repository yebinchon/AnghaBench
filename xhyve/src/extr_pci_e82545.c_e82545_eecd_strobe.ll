; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_e82545.c_e82545_eecd_strobe.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_e82545.c_e82545_eecd_strobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e82545_softc = type { i64, i8*, i64, i32, i32, i32* }

@.str = private unnamed_addr constant [63 x i8] c"eeprom state machine not expecting data! 0x%x 0x%x 0x%x 0x%x\0D\0A\00", align 1
@E82545_NVM_MODE_DATAOUT = common dso_local global i8* null, align 8
@E1000_EECD_DO = common dso_local global i32 0, align 4
@E82545_NVM_MODE_OPADDR = common dso_local global i8* null, align 8
@E82545_NVM_OPADDR_BITS = common dso_local global i8* null, align 8
@E82545_NVM_MODE_DATAIN = common dso_local global i8* null, align 8
@E1000_EECD_DI = common dso_local global i32 0, align 4
@E82545_NVM_OPCODE_MASK = common dso_local global i64 0, align 8
@E82545_NVM_ADDR_MASK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Illegal eeprom write op 0x%x\0D\0A\00", align 1
@E82545_NVM_EEPROM_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"Illegal eeprom write addr 0x%x\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"eeprom write eeprom[0x%x] = 0x%x\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"eeprom write enable: 0x%x\0D\0A\00", align 1
@E82545_NVM_DATA_BITS = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [35 x i8] c"eeprom read: eeprom[0x%x] = 0x%x\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"eeprom illegal read: 0x%x\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"eeprom unknown op: 0x%x\0D\0D\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"eeprom state machine wrong state! 0x%x 0x%x 0x%x 0x%x\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e82545_softc*)* @e82545_eecd_strobe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e82545_eecd_strobe(%struct.e82545_softc* %0) #0 {
  %2 = alloca %struct.e82545_softc*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.e82545_softc* %0, %struct.e82545_softc** %2, align 8
  %7 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %8 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %13 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %15 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %16 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %19 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %22 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i8*, i8*, ...) @DPRINTF(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i8* %14, i64 %17, i64 %20, i32 %23)
  br label %289

25:                                               ; preds = %1
  %26 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %27 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, -1
  store i64 %29, i64* %27, align 8
  %30 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %31 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = load i8*, i8** @E82545_NVM_MODE_DATAOUT, align 8
  %34 = icmp eq i8* %32, %33
  br i1 %34, label %35, label %74

35:                                               ; preds = %25
  %36 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %37 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, 32768
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load i32, i32* @E1000_EECD_DO, align 4
  %43 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %44 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %54

47:                                               ; preds = %35
  %48 = load i32, i32* @E1000_EECD_DO, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %51 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %47, %41
  %55 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %56 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = shl i32 %57, 1
  store i32 %58, i32* %56, align 8
  %59 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %60 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %54
  %64 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %65 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %64, i32 0, i32 2
  store i64 0, i64* %65, align 8
  %66 = load i8*, i8** @E82545_NVM_MODE_OPADDR, align 8
  %67 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %68 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  %69 = load i8*, i8** @E82545_NVM_OPADDR_BITS, align 8
  %70 = ptrtoint i8* %69 to i64
  %71 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %72 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  br label %73

73:                                               ; preds = %63, %54
  br label %289

74:                                               ; preds = %25
  %75 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %76 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = load i8*, i8** @E82545_NVM_MODE_DATAIN, align 8
  %79 = icmp eq i8* %77, %78
  br i1 %79, label %80, label %157

80:                                               ; preds = %74
  %81 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %82 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = shl i32 %83, 1
  store i32 %84, i32* %82, align 8
  %85 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %86 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @E1000_EECD_DI, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %80
  %92 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %93 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, 1
  store i32 %95, i32* %93, align 8
  br label %96

96:                                               ; preds = %91, %80
  %97 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %98 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %156

101:                                              ; preds = %96
  %102 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %103 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @E82545_NVM_OPCODE_MASK, align 8
  %106 = and i64 %104, %105
  store i64 %106, i64* %3, align 8
  %107 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %108 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @E82545_NVM_ADDR_MASK, align 8
  %111 = and i64 %109, %110
  store i64 %111, i64* %4, align 8
  %112 = load i64, i64* %3, align 8
  %113 = icmp ne i64 %112, 128
  br i1 %113, label %114, label %120

114:                                              ; preds = %101
  %115 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %116 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = inttoptr i64 %117 to i8*
  %119 = call i32 (i8*, i8*, ...) @DPRINTF(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %118)
  br label %146

120:                                              ; preds = %101
  %121 = load i64, i64* %4, align 8
  %122 = load i64, i64* @E82545_NVM_EEPROM_SIZE, align 8
  %123 = icmp sge i64 %121, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %120
  %125 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %126 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = inttoptr i64 %127 to i8*
  %129 = call i32 (i8*, i8*, ...) @DPRINTF(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %128)
  br label %145

130:                                              ; preds = %120
  %131 = load i64, i64* %4, align 8
  %132 = inttoptr i64 %131 to i8*
  %133 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %134 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = call i32 (i8*, i8*, ...) @DPRINTF(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %132, i32 %135)
  %137 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %138 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %141 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %140, i32 0, i32 5
  %142 = load i32*, i32** %141, align 8
  %143 = load i64, i64* %4, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  store i32 %139, i32* %144, align 4
  br label %145

145:                                              ; preds = %130, %124
  br label %146

146:                                              ; preds = %145, %114
  %147 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %148 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %147, i32 0, i32 2
  store i64 0, i64* %148, align 8
  %149 = load i8*, i8** @E82545_NVM_MODE_OPADDR, align 8
  %150 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %151 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %150, i32 0, i32 1
  store i8* %149, i8** %151, align 8
  %152 = load i8*, i8** @E82545_NVM_OPADDR_BITS, align 8
  %153 = ptrtoint i8* %152 to i64
  %154 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %155 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %154, i32 0, i32 0
  store i64 %153, i64* %155, align 8
  br label %156

156:                                              ; preds = %146, %96
  br label %288

157:                                              ; preds = %74
  %158 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %159 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %158, i32 0, i32 1
  %160 = load i8*, i8** %159, align 8
  %161 = load i8*, i8** @E82545_NVM_MODE_OPADDR, align 8
  %162 = icmp eq i8* %160, %161
  br i1 %162, label %163, label %273

163:                                              ; preds = %157
  %164 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %165 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = shl i64 %166, 1
  store i64 %167, i64* %165, align 8
  %168 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %169 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @E1000_EECD_DI, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %163
  %175 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %176 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = or i64 %177, 1
  store i64 %178, i64* %176, align 8
  br label %179

179:                                              ; preds = %174, %163
  %180 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %181 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %184, label %272

184:                                              ; preds = %179
  %185 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %186 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @E82545_NVM_OPCODE_MASK, align 8
  %189 = and i64 %187, %188
  store i64 %189, i64* %5, align 8
  %190 = load i64, i64* %5, align 8
  switch i64 %190, label %256 [
    i64 130, label %191
    i64 129, label %206
    i64 128, label %246
  ]

191:                                              ; preds = %184
  %192 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %193 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = inttoptr i64 %194 to i8*
  %196 = call i32 (i8*, i8*, ...) @DPRINTF(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %195)
  %197 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %198 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %197, i32 0, i32 2
  store i64 0, i64* %198, align 8
  %199 = load i8*, i8** @E82545_NVM_MODE_OPADDR, align 8
  %200 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %201 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %200, i32 0, i32 1
  store i8* %199, i8** %201, align 8
  %202 = load i8*, i8** @E82545_NVM_OPADDR_BITS, align 8
  %203 = ptrtoint i8* %202 to i64
  %204 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %205 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %204, i32 0, i32 0
  store i64 %203, i64* %205, align 8
  br label %271

206:                                              ; preds = %184
  %207 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %208 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @E82545_NVM_ADDR_MASK, align 8
  %211 = and i64 %209, %210
  store i64 %211, i64* %6, align 8
  %212 = load i8*, i8** @E82545_NVM_MODE_DATAOUT, align 8
  %213 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %214 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %213, i32 0, i32 1
  store i8* %212, i8** %214, align 8
  %215 = load i8*, i8** @E82545_NVM_DATA_BITS, align 8
  %216 = ptrtoint i8* %215 to i64
  %217 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %218 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %217, i32 0, i32 0
  store i64 %216, i64* %218, align 8
  %219 = load i64, i64* %6, align 8
  %220 = load i64, i64* @E82545_NVM_EEPROM_SIZE, align 8
  %221 = icmp slt i64 %219, %220
  br i1 %221, label %222, label %237

222:                                              ; preds = %206
  %223 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %224 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %223, i32 0, i32 5
  %225 = load i32*, i32** %224, align 8
  %226 = load i64, i64* %6, align 8
  %227 = getelementptr inbounds i32, i32* %225, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %230 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %229, i32 0, i32 3
  store i32 %228, i32* %230, align 8
  %231 = load i64, i64* %6, align 8
  %232 = inttoptr i64 %231 to i8*
  %233 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %234 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 8
  %236 = call i32 (i8*, i8*, ...) @DPRINTF(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i8* %232, i32 %235)
  br label %245

237:                                              ; preds = %206
  %238 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %239 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %238, i32 0, i32 2
  %240 = load i64, i64* %239, align 8
  %241 = inttoptr i64 %240 to i8*
  %242 = call i32 (i8*, i8*, ...) @DPRINTF(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8* %241)
  %243 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %244 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %243, i32 0, i32 3
  store i32 0, i32* %244, align 8
  br label %245

245:                                              ; preds = %237, %222
  br label %271

246:                                              ; preds = %184
  %247 = load i8*, i8** @E82545_NVM_MODE_DATAIN, align 8
  %248 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %249 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %248, i32 0, i32 1
  store i8* %247, i8** %249, align 8
  %250 = load i8*, i8** @E82545_NVM_DATA_BITS, align 8
  %251 = ptrtoint i8* %250 to i64
  %252 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %253 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %252, i32 0, i32 0
  store i64 %251, i64* %253, align 8
  %254 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %255 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %254, i32 0, i32 3
  store i32 0, i32* %255, align 8
  br label %271

256:                                              ; preds = %184
  %257 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %258 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %257, i32 0, i32 2
  %259 = load i64, i64* %258, align 8
  %260 = inttoptr i64 %259 to i8*
  %261 = call i32 (i8*, i8*, ...) @DPRINTF(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* %260)
  %262 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %263 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %262, i32 0, i32 2
  store i64 0, i64* %263, align 8
  %264 = load i8*, i8** @E82545_NVM_MODE_OPADDR, align 8
  %265 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %266 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %265, i32 0, i32 1
  store i8* %264, i8** %266, align 8
  %267 = load i8*, i8** @E82545_NVM_OPADDR_BITS, align 8
  %268 = ptrtoint i8* %267 to i64
  %269 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %270 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %269, i32 0, i32 0
  store i64 %268, i64* %270, align 8
  br label %271

271:                                              ; preds = %256, %246, %245, %191
  br label %272

272:                                              ; preds = %271, %179
  br label %287

273:                                              ; preds = %157
  %274 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %275 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %274, i32 0, i32 1
  %276 = load i8*, i8** %275, align 8
  %277 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %278 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %281 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %280, i32 0, i32 2
  %282 = load i64, i64* %281, align 8
  %283 = load %struct.e82545_softc*, %struct.e82545_softc** %2, align 8
  %284 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %283, i32 0, i32 3
  %285 = load i32, i32* %284, align 8
  %286 = call i32 (i8*, i8*, ...) @DPRINTF(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i64 0, i64 0), i8* %276, i64 %279, i64 %282, i32 %285)
  br label %287

287:                                              ; preds = %273, %272
  br label %288

288:                                              ; preds = %287, %156
  br label %289

289:                                              ; preds = %11, %288, %73
  ret void
}

declare dso_local i32 @DPRINTF(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
