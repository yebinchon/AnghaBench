; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_virtio_block.c_pci_vtblk_proc.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_virtio_block.c_pci_vtblk_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_vtblk_softc = type { i32, i32, %struct.pci_vtblk_ioreq* }
%struct.pci_vtblk_ioreq = type { %struct.TYPE_5__, %struct.virtio_blk_hdr* }
%struct.TYPE_5__ = type { i32, i64, i64, i32 }
%struct.virtio_blk_hdr = type { i32, i32 }
%struct.vqueue_info = type { i32 }
%struct.iovec = type { i32, %struct.virtio_blk_hdr* }

@BLOCKIF_IOV_MAX = common dso_local global i32 0, align 4
@VRING_DESC_F_WRITE = common dso_local global i64 0, align 8
@DEV_BSIZE = common dso_local global i32 0, align 4
@VBH_FLAG_BARRIER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"virtio-block: %s op, %zd bytes, %d segs\0A\0D\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"read/ident\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_vtblk_softc*, %struct.vqueue_info*)* @pci_vtblk_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_vtblk_proc(%struct.pci_vtblk_softc* %0, %struct.vqueue_info* %1) #0 {
  %3 = alloca %struct.pci_vtblk_softc*, align 8
  %4 = alloca %struct.vqueue_info*, align 8
  %5 = alloca %struct.virtio_blk_hdr*, align 8
  %6 = alloca %struct.pci_vtblk_ioreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.pci_vtblk_softc* %0, %struct.pci_vtblk_softc** %3, align 8
  store %struct.vqueue_info* %1, %struct.vqueue_info** %4, align 8
  %18 = load i32, i32* @BLOCKIF_IOV_MAX, align 4
  %19 = add nsw i32 %18, 2
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %13, align 8
  %22 = alloca %struct.iovec, i64 %20, align 16
  store i64 %20, i64* %14, align 8
  %23 = load i32, i32* @BLOCKIF_IOV_MAX, align 4
  %24 = add nsw i32 %23, 2
  %25 = zext i32 %24 to i64
  %26 = alloca i64, i64 %25, align 16
  store i64 %25, i64* %16, align 8
  %27 = load %struct.vqueue_info*, %struct.vqueue_info** %4, align 8
  %28 = load i32, i32* @BLOCKIF_IOV_MAX, align 4
  %29 = add nsw i32 %28, 2
  %30 = call i32 @vq_getchain(%struct.vqueue_info* %27, i64* %15, %struct.iovec* %22, i32 %29, i64* %26)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp sge i32 %31, 2
  br i1 %32, label %33, label %38

33:                                               ; preds = %2
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @BLOCKIF_IOV_MAX, align 4
  %36 = add nsw i32 %35, 2
  %37 = icmp sle i32 %34, %36
  br label %38

38:                                               ; preds = %33, %2
  %39 = phi i1 [ false, %2 ], [ %37, %33 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %3, align 8
  %43 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %42, i32 0, i32 2
  %44 = load %struct.pci_vtblk_ioreq*, %struct.pci_vtblk_ioreq** %43, align 8
  %45 = load i64, i64* %15, align 8
  %46 = getelementptr inbounds %struct.pci_vtblk_ioreq, %struct.pci_vtblk_ioreq* %44, i64 %45
  store %struct.pci_vtblk_ioreq* %46, %struct.pci_vtblk_ioreq** %6, align 8
  %47 = getelementptr inbounds i64, i64* %26, i64 0
  %48 = load i64, i64* %47, align 16
  %49 = load i64, i64* @VRING_DESC_F_WRITE, align 8
  %50 = and i64 %48, %49
  %51 = icmp eq i64 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = getelementptr inbounds %struct.iovec, %struct.iovec* %22, i64 0
  %55 = getelementptr inbounds %struct.iovec, %struct.iovec* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 16
  %57 = sext i32 %56 to i64
  %58 = icmp eq i64 %57, 8
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = getelementptr inbounds %struct.iovec, %struct.iovec* %22, i64 0
  %62 = getelementptr inbounds %struct.iovec, %struct.iovec* %61, i32 0, i32 1
  %63 = load %struct.virtio_blk_hdr*, %struct.virtio_blk_hdr** %62, align 8
  store %struct.virtio_blk_hdr* %63, %struct.virtio_blk_hdr** %5, align 8
  %64 = load %struct.pci_vtblk_ioreq*, %struct.pci_vtblk_ioreq** %6, align 8
  %65 = getelementptr inbounds %struct.pci_vtblk_ioreq, %struct.pci_vtblk_ioreq* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.iovec, %struct.iovec* %22, i64 1
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = sub i64 %69, 2
  %71 = mul i64 16, %70
  %72 = trunc i64 %71 to i32
  %73 = call i32 @memcpy(i32* %66, %struct.iovec* %67, i32 %72)
  %74 = load i32, i32* %8, align 4
  %75 = sub nsw i32 %74, 2
  %76 = load %struct.pci_vtblk_ioreq*, %struct.pci_vtblk_ioreq** %6, align 8
  %77 = getelementptr inbounds %struct.pci_vtblk_ioreq, %struct.pci_vtblk_ioreq* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  store i32 %75, i32* %78, align 8
  %79 = load %struct.virtio_blk_hdr*, %struct.virtio_blk_hdr** %5, align 8
  %80 = getelementptr inbounds %struct.virtio_blk_hdr, %struct.virtio_blk_hdr* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @DEV_BSIZE, align 4
  %83 = mul nsw i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = load %struct.pci_vtblk_ioreq*, %struct.pci_vtblk_ioreq** %6, align 8
  %86 = getelementptr inbounds %struct.pci_vtblk_ioreq, %struct.pci_vtblk_ioreq* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 2
  store i64 %84, i64* %87, align 8
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.iovec, %struct.iovec* %22, i64 %90
  %92 = getelementptr inbounds %struct.iovec, %struct.iovec* %91, i32 0, i32 1
  %93 = load %struct.virtio_blk_hdr*, %struct.virtio_blk_hdr** %92, align 8
  %94 = load %struct.pci_vtblk_ioreq*, %struct.pci_vtblk_ioreq** %6, align 8
  %95 = getelementptr inbounds %struct.pci_vtblk_ioreq, %struct.pci_vtblk_ioreq* %94, i32 0, i32 1
  store %struct.virtio_blk_hdr* %93, %struct.virtio_blk_hdr** %95, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.iovec, %struct.iovec* %22, i64 %97
  %99 = getelementptr inbounds %struct.iovec, %struct.iovec* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 16
  %101 = icmp eq i32 %100, 1
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert(i32 %102)
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %26, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @VRING_DESC_F_WRITE, align 8
  %109 = and i64 %107, %108
  %110 = trunc i64 %109 to i32
  %111 = call i32 @assert(i32 %110)
  %112 = load %struct.virtio_blk_hdr*, %struct.virtio_blk_hdr** %5, align 8
  %113 = getelementptr inbounds %struct.virtio_blk_hdr, %struct.virtio_blk_hdr* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @VBH_FLAG_BARRIER, align 4
  %116 = xor i32 %115, -1
  %117 = and i32 %114, %116
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* %12, align 4
  %119 = icmp eq i32 %118, 128
  %120 = zext i1 %119 to i32
  store i32 %120, i32* %11, align 4
  store i64 0, i64* %10, align 8
  store i32 1, i32* %7, align 4
  br label %121

121:                                              ; preds = %146, %38
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %149

125:                                              ; preds = %121
  %126 = load i32, i32* %7, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i64, i64* %26, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @VRING_DESC_F_WRITE, align 8
  %131 = and i64 %129, %130
  %132 = icmp eq i64 %131, 0
  %133 = zext i1 %132 to i32
  %134 = load i32, i32* %11, align 4
  %135 = icmp eq i32 %133, %134
  %136 = zext i1 %135 to i32
  %137 = call i32 @assert(i32 %136)
  %138 = load i32, i32* %7, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.iovec, %struct.iovec* %22, i64 %139
  %141 = getelementptr inbounds %struct.iovec, %struct.iovec* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 16
  %143 = sext i32 %142 to i64
  %144 = load i64, i64* %10, align 8
  %145 = add nsw i64 %144, %143
  store i64 %145, i64* %10, align 8
  br label %146

146:                                              ; preds = %125
  %147 = load i32, i32* %7, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %7, align 4
  br label %121

149:                                              ; preds = %121
  %150 = load i64, i64* %10, align 8
  %151 = load %struct.pci_vtblk_ioreq*, %struct.pci_vtblk_ioreq** %6, align 8
  %152 = getelementptr inbounds %struct.pci_vtblk_ioreq, %struct.pci_vtblk_ioreq* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 1
  store i64 %150, i64* %153, align 8
  %154 = load i32, i32* %11, align 4
  %155 = icmp ne i32 %154, 0
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)
  %158 = load i64, i64* %10, align 8
  %159 = load i32, i32* %7, align 4
  %160 = sub nsw i32 %159, 1
  %161 = sext i32 %160 to i64
  %162 = inttoptr i64 %161 to i8*
  %163 = call i32 @DPRINTF(i8* %162)
  %164 = load i32, i32* %12, align 4
  switch i32 %164, label %208 [
    i32 129, label %165
    i32 128, label %172
    i32 132, label %179
    i32 131, label %179
    i32 130, label %186
  ]

165:                                              ; preds = %149
  %166 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %3, align 8
  %167 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.pci_vtblk_ioreq*, %struct.pci_vtblk_ioreq** %6, align 8
  %170 = getelementptr inbounds %struct.pci_vtblk_ioreq, %struct.pci_vtblk_ioreq* %169, i32 0, i32 0
  %171 = call i32 @blockif_read(i32 %168, %struct.TYPE_5__* %170)
  store i32 %171, i32* %9, align 4
  br label %213

172:                                              ; preds = %149
  %173 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %3, align 8
  %174 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.pci_vtblk_ioreq*, %struct.pci_vtblk_ioreq** %6, align 8
  %177 = getelementptr inbounds %struct.pci_vtblk_ioreq, %struct.pci_vtblk_ioreq* %176, i32 0, i32 0
  %178 = call i32 @blockif_write(i32 %175, %struct.TYPE_5__* %177)
  store i32 %178, i32* %9, align 4
  br label %213

179:                                              ; preds = %149, %149
  %180 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %3, align 8
  %181 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.pci_vtblk_ioreq*, %struct.pci_vtblk_ioreq** %6, align 8
  %184 = getelementptr inbounds %struct.pci_vtblk_ioreq, %struct.pci_vtblk_ioreq* %183, i32 0, i32 0
  %185 = call i32 @blockif_flush(i32 %182, %struct.TYPE_5__* %184)
  store i32 %185, i32* %9, align 4
  br label %213

186:                                              ; preds = %149
  %187 = getelementptr inbounds %struct.iovec, %struct.iovec* %22, i64 1
  %188 = getelementptr inbounds %struct.iovec, %struct.iovec* %187, i32 0, i32 1
  %189 = load %struct.virtio_blk_hdr*, %struct.virtio_blk_hdr** %188, align 8
  %190 = getelementptr inbounds %struct.iovec, %struct.iovec* %22, i64 1
  %191 = getelementptr inbounds %struct.iovec, %struct.iovec* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 16
  %193 = call i32 @memset(%struct.virtio_blk_hdr* %189, i32 0, i32 %192)
  %194 = getelementptr inbounds %struct.iovec, %struct.iovec* %22, i64 1
  %195 = getelementptr inbounds %struct.iovec, %struct.iovec* %194, i32 0, i32 1
  %196 = load %struct.virtio_blk_hdr*, %struct.virtio_blk_hdr** %195, align 8
  %197 = load %struct.pci_vtblk_softc*, %struct.pci_vtblk_softc** %3, align 8
  %198 = getelementptr inbounds %struct.pci_vtblk_softc, %struct.pci_vtblk_softc* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = getelementptr inbounds %struct.iovec, %struct.iovec* %22, i64 1
  %201 = getelementptr inbounds %struct.iovec, %struct.iovec* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 16
  %203 = call i32 @MIN(i32 %202, i32 4)
  %204 = call i32 @strncpy(%struct.virtio_blk_hdr* %196, i32 %199, i32 %203)
  %205 = load %struct.pci_vtblk_ioreq*, %struct.pci_vtblk_ioreq** %6, align 8
  %206 = getelementptr inbounds %struct.pci_vtblk_ioreq, %struct.pci_vtblk_ioreq* %205, i32 0, i32 0
  %207 = call i32 @pci_vtblk_done_locked(%struct.TYPE_5__* %206, i32 0)
  store i32 1, i32* %17, align 4
  br label %218

208:                                              ; preds = %149
  %209 = load %struct.pci_vtblk_ioreq*, %struct.pci_vtblk_ioreq** %6, align 8
  %210 = getelementptr inbounds %struct.pci_vtblk_ioreq, %struct.pci_vtblk_ioreq* %209, i32 0, i32 0
  %211 = load i32, i32* @EOPNOTSUPP, align 4
  %212 = call i32 @pci_vtblk_done_locked(%struct.TYPE_5__* %210, i32 %211)
  store i32 1, i32* %17, align 4
  br label %218

213:                                              ; preds = %179, %172, %165
  %214 = load i32, i32* %9, align 4
  %215 = icmp eq i32 %214, 0
  %216 = zext i1 %215 to i32
  %217 = call i32 @assert(i32 %216)
  store i32 0, i32* %17, align 4
  br label %218

218:                                              ; preds = %213, %208, %186
  %219 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %219)
  %220 = load i32, i32* %17, align 4
  switch i32 %220, label %222 [
    i32 0, label %221
    i32 1, label %221
  ]

221:                                              ; preds = %218, %218
  ret void

222:                                              ; preds = %218
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @vq_getchain(%struct.vqueue_info*, i64*, %struct.iovec*, i32, i64*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @memcpy(i32*, %struct.iovec*, i32) #2

declare dso_local i32 @DPRINTF(i8*) #2

declare dso_local i32 @blockif_read(i32, %struct.TYPE_5__*) #2

declare dso_local i32 @blockif_write(i32, %struct.TYPE_5__*) #2

declare dso_local i32 @blockif_flush(i32, %struct.TYPE_5__*) #2

declare dso_local i32 @memset(%struct.virtio_blk_hdr*, i32, i32) #2

declare dso_local i32 @strncpy(%struct.virtio_blk_hdr*, i32, i32) #2

declare dso_local i32 @MIN(i32, i32) #2

declare dso_local i32 @pci_vtblk_done_locked(%struct.TYPE_5__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
