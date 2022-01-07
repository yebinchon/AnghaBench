; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_ahci.c_ahci_handle_dsm_trim.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_ahci.c_ahci_handle_dsm_trim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_port = type { i32, i32, i32, i32 }
%struct.ahci_ioreq = type { i32*, i32, i32, i32, i32, %struct.blockif_req }
%struct.blockif_req = type { i32, i64 }

@ATA_DATA_SET_MANAGEMENT = common dso_local global i32 0, align 4
@ATA_S_READY = common dso_local global i32 0, align 4
@ATA_S_DSC = common dso_local global i32 0, align 4
@io_flist = common dso_local global i32 0, align 4
@io_blist = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahci_port*, i32, i32*, i32)* @ahci_handle_dsm_trim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahci_handle_dsm_trim(%struct.ahci_port* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ahci_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ahci_ioreq*, align 8
  %10 = alloca %struct.blockif_req*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [512 x i32], align 16
  store %struct.ahci_port* %0, %struct.ahci_port** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %16, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ATA_DATA_SET_MANAGEMENT, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %4
  %28 = load i32*, i32** %7, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 13
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 8
  %32 = load i32*, i32** %7, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 12
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %31, %34
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = mul nsw i32 %36, 512
  store i32 %37, i32* %13, align 4
  store i32 0, i32* %17, align 4
  br label %49

38:                                               ; preds = %4
  %39 = load i32*, i32** %7, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 11
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 8
  %43 = load i32*, i32** %7, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 3
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %42, %45
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = mul nsw i32 %47, 512
  store i32 %48, i32* %13, align 4
  store i32 1, i32* %17, align 4
  br label %49

49:                                               ; preds = %38, %27
  %50 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = getelementptr inbounds [512 x i32], [512 x i32]* %18, i64 0, i64 0
  %54 = call i32 @read_prdt(%struct.ahci_port* %50, i32 %51, i32* %52, i32* %53, i32 2048)
  br label %55

55:                                               ; preds = %126, %49
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [512 x i32], [512 x i32]* %18, i64 0, i64 %57
  store i32* %58, i32** %11, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 5
  %61 = load i32, i32* %60, align 4
  %62 = shl i32 %61, 40
  %63 = load i32*, i32** %11, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 4
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 %65, 32
  %67 = or i32 %62, %66
  %68 = load i32*, i32** %11, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 3
  %70 = load i32, i32* %69, align 4
  %71 = shl i32 %70, 24
  %72 = or i32 %67, %71
  %73 = load i32*, i32** %11, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 %75, 16
  %77 = or i32 %72, %76
  %78 = load i32*, i32** %11, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = shl i32 %80, 8
  %82 = or i32 %77, %81
  %83 = load i32*, i32** %11, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %82, %85
  store i32 %86, i32* %12, align 4
  %87 = load i32*, i32** %11, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 7
  %89 = load i32, i32* %88, align 4
  %90 = shl i32 %89, 8
  %91 = load i32*, i32** %11, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 6
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %90, %93
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 8
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %14, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %127

99:                                               ; preds = %55
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %13, align 4
  %102 = icmp sge i32 %100, %101
  br i1 %102, label %103, label %126

103:                                              ; preds = %99
  %104 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %105 = load i32, i32* %6, align 4
  %106 = load i32*, i32** %7, align 8
  %107 = load i32, i32* @ATA_S_READY, align 4
  %108 = load i32, i32* @ATA_S_DSC, align 4
  %109 = or i32 %107, %108
  %110 = call i32 @ahci_write_fis_d2h(%struct.ahci_port* %104, i32 %105, i32* %106, i32 %109)
  %111 = load i32, i32* %6, align 4
  %112 = shl i32 1, %111
  %113 = xor i32 %112, -1
  %114 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %115 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %116, %113
  store i32 %117, i32* %115, align 4
  %118 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %119 = call i32 @ahci_check_stopped(%struct.ahci_port* %118)
  %120 = load i32, i32* %16, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %103
  %123 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %124 = call i32 @ahci_handle_port(%struct.ahci_port* %123)
  br label %125

125:                                              ; preds = %122, %103
  br label %208

126:                                              ; preds = %99
  br label %55

127:                                              ; preds = %55
  %128 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %129 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %128, i32 0, i32 3
  %130 = call %struct.ahci_ioreq* @STAILQ_FIRST(i32* %129)
  store %struct.ahci_ioreq* %130, %struct.ahci_ioreq** %9, align 8
  %131 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %9, align 8
  %132 = icmp ne %struct.ahci_ioreq* %131, null
  %133 = zext i1 %132 to i32
  %134 = call i32 @assert(i32 %133)
  %135 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %136 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %135, i32 0, i32 3
  %137 = load i32, i32* @io_flist, align 4
  %138 = call i32 @STAILQ_REMOVE_HEAD(i32* %136, i32 %137)
  %139 = load i32*, i32** %7, align 8
  %140 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %9, align 8
  %141 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %140, i32 0, i32 0
  store i32* %139, i32** %141, align 8
  %142 = load i32, i32* %6, align 4
  %143 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %9, align 8
  %144 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 8
  %145 = load i32, i32* %13, align 4
  %146 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %9, align 8
  %147 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %146, i32 0, i32 2
  store i32 %145, i32* %147, align 4
  %148 = load i32, i32* %8, align 4
  %149 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %9, align 8
  %150 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %149, i32 0, i32 3
  store i32 %148, i32* %150, align 8
  %151 = load i32, i32* %13, align 4
  %152 = load i32, i32* %8, align 4
  %153 = icmp ne i32 %151, %152
  %154 = zext i1 %153 to i32
  %155 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %9, align 8
  %156 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %155, i32 0, i32 4
  store i32 %154, i32* %156, align 4
  %157 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %9, align 8
  %158 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %157, i32 0, i32 5
  store %struct.blockif_req* %158, %struct.blockif_req** %10, align 8
  %159 = load i32, i32* %12, align 4
  %160 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %161 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i64 @blockif_sectsz(i32 %162)
  %164 = trunc i64 %163 to i32
  %165 = mul nsw i32 %159, %164
  %166 = sext i32 %165 to i64
  %167 = load %struct.blockif_req*, %struct.blockif_req** %10, align 8
  %168 = getelementptr inbounds %struct.blockif_req, %struct.blockif_req* %167, i32 0, i32 1
  store i64 %166, i64* %168, align 8
  %169 = load i32, i32* %14, align 4
  %170 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %171 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = call i64 @blockif_sectsz(i32 %172)
  %174 = trunc i64 %173 to i32
  %175 = mul i32 %169, %174
  %176 = load %struct.blockif_req*, %struct.blockif_req** %10, align 8
  %177 = getelementptr inbounds %struct.blockif_req, %struct.blockif_req* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 8
  %178 = load i32, i32* %6, align 4
  %179 = shl i32 1, %178
  %180 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %181 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = or i32 %182, %179
  store i32 %183, i32* %181, align 4
  %184 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %185 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %184, i32 0, i32 2
  %186 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %9, align 8
  %187 = load i32, i32* @io_blist, align 4
  %188 = call i32 @TAILQ_INSERT_HEAD(i32* %185, %struct.ahci_ioreq* %186, i32 %187)
  %189 = load i32, i32* %17, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %198

191:                                              ; preds = %127
  %192 = load i32, i32* %16, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %191
  %195 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %196 = load i32, i32* %6, align 4
  %197 = call i32 @ahci_write_fis_d2h_ncq(%struct.ahci_port* %195, i32 %196)
  br label %198

198:                                              ; preds = %194, %191, %127
  %199 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %200 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.blockif_req*, %struct.blockif_req** %10, align 8
  %203 = call i32 @blockif_delete(i32 %201, %struct.blockif_req* %202)
  store i32 %203, i32* %15, align 4
  %204 = load i32, i32* %15, align 4
  %205 = icmp eq i32 %204, 0
  %206 = zext i1 %205 to i32
  %207 = call i32 @assert(i32 %206)
  br label %208

208:                                              ; preds = %198, %125
  ret void
}

declare dso_local i32 @read_prdt(%struct.ahci_port*, i32, i32*, i32*, i32) #1

declare dso_local i32 @ahci_write_fis_d2h(%struct.ahci_port*, i32, i32*, i32) #1

declare dso_local i32 @ahci_check_stopped(%struct.ahci_port*) #1

declare dso_local i32 @ahci_handle_port(%struct.ahci_port*) #1

declare dso_local %struct.ahci_ioreq* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i64 @blockif_sectsz(i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.ahci_ioreq*, i32) #1

declare dso_local i32 @ahci_write_fis_d2h_ncq(%struct.ahci_port*, i32) #1

declare dso_local i32 @blockif_delete(i32, %struct.blockif_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
