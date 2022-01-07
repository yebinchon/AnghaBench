; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_virtio.c_vq_getchain.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_virtio.c_vq_getchain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vqueue_info = type { i64, i64, %struct.virtio_desc*, %struct.TYPE_3__*, %struct.virtio_softc* }
%struct.virtio_desc = type { i64, i32, i32, i32 }
%struct.TYPE_3__ = type { i64*, i64 }
%struct.virtio_softc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.iovec = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"%s: ndesc (%u) out of range, driver confused?\0D\0A\00", align 1
@VQ_MAX_DESCRIPTORS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"%s: descriptor index %u out of range, driver confused?\0D\0A\00", align 1
@VRING_DESC_F_INDIRECT = common dso_local global i32 0, align 4
@VIRTIO_RING_F_INDIRECT_DESC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [63 x i8] c"%s: descriptor has forbidden INDIRECT flag, driver confused?\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"%s: invalid indir len 0x%x, driver confused?\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"%s: indirect desc has INDIR flag, driver confused?\0D\0A\00", align 1
@VRING_DESC_F_NEXT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"%s: invalid next %u > %u, driver confused?\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"%s: descriptor loop? count > %d - driver confused?\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vq_getchain(%struct.vqueue_info* %0, i64* %1, %struct.iovec* %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vqueue_info*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.iovec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.virtio_desc*, align 8
  %18 = alloca %struct.virtio_desc*, align 8
  %19 = alloca %struct.virtio_desc*, align 8
  %20 = alloca %struct.virtio_softc*, align 8
  %21 = alloca i8*, align 8
  store %struct.vqueue_info* %0, %struct.vqueue_info** %7, align 8
  store i64* %1, i64** %8, align 8
  store %struct.iovec* %2, %struct.iovec** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %22 = load %struct.vqueue_info*, %struct.vqueue_info** %7, align 8
  %23 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %22, i32 0, i32 4
  %24 = load %struct.virtio_softc*, %struct.virtio_softc** %23, align 8
  store %struct.virtio_softc* %24, %struct.virtio_softc** %20, align 8
  %25 = load %struct.virtio_softc*, %struct.virtio_softc** %20, align 8
  %26 = getelementptr inbounds %struct.virtio_softc, %struct.virtio_softc* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %21, align 8
  %30 = load %struct.vqueue_info*, %struct.vqueue_info** %7, align 8
  %31 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %15, align 8
  %33 = load %struct.vqueue_info*, %struct.vqueue_info** %7, align 8
  %34 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %33, i32 0, i32 3
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %15, align 8
  %39 = sub nsw i64 %37, %38
  store i64 %39, i64* %13, align 8
  %40 = load i64, i64* %13, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %222

43:                                               ; preds = %5
  %44 = load i64, i64* %13, align 8
  %45 = load %struct.vqueue_info*, %struct.vqueue_info** %7, align 8
  %46 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %44, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load i32, i32* @stderr, align 4
  %51 = load i8*, i8** %21, align 8
  %52 = load i64, i64* %13, align 8
  %53 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %50, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %51, i64 %52)
  store i32 -1, i32* %6, align 4
  br label %222

54:                                               ; preds = %43
  %55 = load %struct.vqueue_info*, %struct.vqueue_info** %7, align 8
  %56 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %55, i32 0, i32 3
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = load i64, i64* %15, align 8
  %61 = load %struct.vqueue_info*, %struct.vqueue_info** %7, align 8
  %62 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %63, 1
  %65 = and i64 %60, %64
  %66 = getelementptr inbounds i64, i64* %59, i64 %65
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %16, align 8
  %68 = load i64*, i64** %8, align 8
  store i64 %67, i64* %68, align 8
  %69 = load %struct.vqueue_info*, %struct.vqueue_info** %7, align 8
  %70 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %70, align 8
  store i32 0, i32* %12, align 4
  br label %73

73:                                               ; preds = %212, %54
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* @VQ_MAX_DESCRIPTORS, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %216

77:                                               ; preds = %73
  %78 = load i64, i64* %16, align 8
  %79 = load %struct.vqueue_info*, %struct.vqueue_info** %7, align 8
  %80 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp sge i64 %78, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %77
  %84 = load i32, i32* @stderr, align 4
  %85 = load i8*, i8** %21, align 8
  %86 = load i64, i64* %16, align 8
  %87 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %84, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i8* %85, i64 %86)
  store i32 -1, i32* %6, align 4
  br label %222

88:                                               ; preds = %77
  %89 = load %struct.vqueue_info*, %struct.vqueue_info** %7, align 8
  %90 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %89, i32 0, i32 2
  %91 = load %struct.virtio_desc*, %struct.virtio_desc** %90, align 8
  %92 = load i64, i64* %16, align 8
  %93 = getelementptr inbounds %struct.virtio_desc, %struct.virtio_desc* %91, i64 %92
  store %struct.virtio_desc* %93, %struct.virtio_desc** %17, align 8
  %94 = load %struct.virtio_desc*, %struct.virtio_desc** %17, align 8
  %95 = getelementptr inbounds %struct.virtio_desc, %struct.virtio_desc* %94, i32 0, i32 1
  %96 = load volatile i32, i32* %95, align 8
  %97 = load i32, i32* @VRING_DESC_F_INDIRECT, align 4
  %98 = and i32 %96, %97
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %88
  %101 = load i32, i32* %12, align 4
  %102 = load %struct.virtio_desc*, %struct.virtio_desc** %17, align 8
  %103 = load %struct.iovec*, %struct.iovec** %9, align 8
  %104 = load i32, i32* %10, align 4
  %105 = load i64*, i64** %11, align 8
  %106 = call i32 @_vq_record(i32 %101, %struct.virtio_desc* %102, %struct.iovec* %103, i32 %104, i64* %105)
  %107 = load i32, i32* %12, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %12, align 4
  br label %202

109:                                              ; preds = %88
  %110 = load %struct.virtio_softc*, %struct.virtio_softc** %20, align 8
  %111 = getelementptr inbounds %struct.virtio_softc, %struct.virtio_softc* %110, i32 0, i32 0
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @VIRTIO_RING_F_INDIRECT_DESC, align 4
  %116 = and i32 %114, %115
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %109
  %119 = load i32, i32* @stderr, align 4
  %120 = load i8*, i8** %21, align 8
  %121 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %119, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i8* %120)
  store i32 -1, i32* %6, align 4
  br label %222

122:                                              ; preds = %109
  %123 = load %struct.virtio_desc*, %struct.virtio_desc** %17, align 8
  %124 = getelementptr inbounds %struct.virtio_desc, %struct.virtio_desc* %123, i32 0, i32 2
  %125 = load volatile i32, i32* %124, align 4
  %126 = sdiv i32 %125, 16
  %127 = sext i32 %126 to i64
  store i64 %127, i64* %14, align 8
  %128 = load %struct.virtio_desc*, %struct.virtio_desc** %17, align 8
  %129 = getelementptr inbounds %struct.virtio_desc, %struct.virtio_desc* %128, i32 0, i32 2
  %130 = load volatile i32, i32* %129, align 4
  %131 = and i32 %130, 15
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %122
  %134 = load i64, i64* %14, align 8
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %133, %122
  %137 = load i32, i32* @stderr, align 4
  %138 = load i8*, i8** %21, align 8
  %139 = load %struct.virtio_desc*, %struct.virtio_desc** %17, align 8
  %140 = getelementptr inbounds %struct.virtio_desc, %struct.virtio_desc* %139, i32 0, i32 2
  %141 = load volatile i32, i32* %140, align 4
  %142 = sext i32 %141 to i64
  %143 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %137, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* %138, i64 %142)
  store i32 -1, i32* %6, align 4
  br label %222

144:                                              ; preds = %133
  %145 = load %struct.virtio_desc*, %struct.virtio_desc** %17, align 8
  %146 = getelementptr inbounds %struct.virtio_desc, %struct.virtio_desc* %145, i32 0, i32 3
  %147 = load volatile i32, i32* %146, align 8
  %148 = load %struct.virtio_desc*, %struct.virtio_desc** %17, align 8
  %149 = getelementptr inbounds %struct.virtio_desc, %struct.virtio_desc* %148, i32 0, i32 2
  %150 = load volatile i32, i32* %149, align 4
  %151 = call %struct.virtio_desc* @paddr_guest2host(i32 %147, i32 %150)
  store %struct.virtio_desc* %151, %struct.virtio_desc** %18, align 8
  store i64 0, i64* %16, align 8
  br label %152

152:                                              ; preds = %199, %144
  %153 = load %struct.virtio_desc*, %struct.virtio_desc** %18, align 8
  %154 = load i64, i64* %16, align 8
  %155 = getelementptr inbounds %struct.virtio_desc, %struct.virtio_desc* %153, i64 %154
  store %struct.virtio_desc* %155, %struct.virtio_desc** %19, align 8
  %156 = load %struct.virtio_desc*, %struct.virtio_desc** %19, align 8
  %157 = getelementptr inbounds %struct.virtio_desc, %struct.virtio_desc* %156, i32 0, i32 1
  %158 = load volatile i32, i32* %157, align 8
  %159 = load i32, i32* @VRING_DESC_F_INDIRECT, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %152
  %163 = load i32, i32* @stderr, align 4
  %164 = load i8*, i8** %21, align 8
  %165 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %163, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i8* %164)
  store i32 -1, i32* %6, align 4
  br label %222

166:                                              ; preds = %152
  %167 = load i32, i32* %12, align 4
  %168 = load %struct.virtio_desc*, %struct.virtio_desc** %19, align 8
  %169 = load %struct.iovec*, %struct.iovec** %9, align 8
  %170 = load i32, i32* %10, align 4
  %171 = load i64*, i64** %11, align 8
  %172 = call i32 @_vq_record(i32 %167, %struct.virtio_desc* %168, %struct.iovec* %169, i32 %170, i64* %171)
  %173 = load i32, i32* %12, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %12, align 4
  %175 = load i32, i32* @VQ_MAX_DESCRIPTORS, align 4
  %176 = icmp sgt i32 %174, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %166
  br label %217

178:                                              ; preds = %166
  %179 = load %struct.virtio_desc*, %struct.virtio_desc** %19, align 8
  %180 = getelementptr inbounds %struct.virtio_desc, %struct.virtio_desc* %179, i32 0, i32 1
  %181 = load volatile i32, i32* %180, align 8
  %182 = load i32, i32* @VRING_DESC_F_NEXT, align 4
  %183 = and i32 %181, %182
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %178
  br label %200

186:                                              ; preds = %178
  %187 = load %struct.virtio_desc*, %struct.virtio_desc** %19, align 8
  %188 = getelementptr inbounds %struct.virtio_desc, %struct.virtio_desc* %187, i32 0, i32 0
  %189 = load volatile i64, i64* %188, align 8
  store i64 %189, i64* %16, align 8
  %190 = load i64, i64* %16, align 8
  %191 = load i64, i64* %14, align 8
  %192 = icmp sge i64 %190, %191
  br i1 %192, label %193, label %199

193:                                              ; preds = %186
  %194 = load i32, i32* @stderr, align 4
  %195 = load i8*, i8** %21, align 8
  %196 = load i64, i64* %16, align 8
  %197 = load i64, i64* %14, align 8
  %198 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %194, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i8* %195, i64 %196, i64 %197)
  store i32 -1, i32* %6, align 4
  br label %222

199:                                              ; preds = %186
  br label %152

200:                                              ; preds = %185
  br label %201

201:                                              ; preds = %200
  br label %202

202:                                              ; preds = %201, %100
  %203 = load %struct.virtio_desc*, %struct.virtio_desc** %17, align 8
  %204 = getelementptr inbounds %struct.virtio_desc, %struct.virtio_desc* %203, i32 0, i32 1
  %205 = load volatile i32, i32* %204, align 8
  %206 = load i32, i32* @VRING_DESC_F_NEXT, align 4
  %207 = and i32 %205, %206
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %202
  %210 = load i32, i32* %12, align 4
  store i32 %210, i32* %6, align 4
  br label %222

211:                                              ; preds = %202
  br label %212

212:                                              ; preds = %211
  %213 = load %struct.virtio_desc*, %struct.virtio_desc** %17, align 8
  %214 = getelementptr inbounds %struct.virtio_desc, %struct.virtio_desc* %213, i32 0, i32 0
  %215 = load volatile i64, i64* %214, align 8
  store i64 %215, i64* %16, align 8
  br label %73

216:                                              ; preds = %73
  br label %217

217:                                              ; preds = %216, %177
  %218 = load i32, i32* @stderr, align 4
  %219 = load i8*, i8** %21, align 8
  %220 = load i32, i32* %12, align 4
  %221 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %218, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i8* %219, i32 %220)
  store i32 -1, i32* %6, align 4
  br label %222

222:                                              ; preds = %217, %209, %193, %162, %136, %118, %83, %49, %42
  %223 = load i32, i32* %6, align 4
  ret i32 %223
}

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @_vq_record(i32, %struct.virtio_desc*, %struct.iovec*, i32, i64*) #1

declare dso_local %struct.virtio_desc* @paddr_guest2host(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
