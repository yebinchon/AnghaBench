; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zio.c_zfs_blkptr_verify.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zio.c_zfs_blkptr_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_23__*, i32 }
%struct.TYPE_23__ = type { i64, %struct.TYPE_24__** }
%struct.TYPE_24__ = type { i64, i32* }
%struct.TYPE_26__ = type { i32* }

@.str = private unnamed_addr constant [35 x i8] c"blkptr at %p has invalid TYPE %llu\00", align 1
@ZIO_CHECKSUM_FUNCTIONS = common dso_local global i64 0, align 8
@ZIO_CHECKSUM_ON = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"blkptr at %p has invalid CHECKSUM %llu\00", align 1
@ZIO_COMPRESS_FUNCTIONS = common dso_local global i64 0, align 8
@ZIO_COMPRESS_ON = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"blkptr at %p has invalid COMPRESS %llu\00", align 1
@SPA_MAXBLOCKSIZE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"blkptr at %p has invalid LSIZE %llu\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"blkptr at %p has invalid PSIZE %llu\00", align 1
@NUM_BP_EMBEDDED_TYPES = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [36 x i8] c"blkptr at %p has invalid ETYPE %llu\00", align 1
@SCL_VDEV = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@RW_WRITER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [42 x i8] c"blkptr at %p DVA %u has invalid VDEV %llu\00", align 1
@vdev_hole_ops = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [39 x i8] c"blkptr at %p DVA %u has hole VDEV %llu\00", align 1
@vdev_missing_ops = common dso_local global i32 0, align 4
@SPA_GANGBLOCKSIZE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [44 x i8] c"blkptr at %p DVA %u has invalid OFFSET %llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_25__*, %struct.TYPE_26__*, i32)* @zfs_blkptr_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfs_blkptr_verify(%struct.TYPE_25__* %0, %struct.TYPE_26__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %13 = call i64 @BP_GET_TYPE(%struct.TYPE_26__* %12)
  %14 = call i32 @DMU_OT_IS_VALID(i64 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %18 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %19 = call i64 @BP_GET_TYPE(%struct.TYPE_26__* %18)
  %20 = trunc i64 %19 to i32
  %21 = call i32 (i8*, %struct.TYPE_26__*, i32, ...) @zfs_panic_recover(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.TYPE_26__* %17, i32 %20)
  br label %22

22:                                               ; preds = %16, %3
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %24 = call i64 @BP_GET_CHECKSUM(%struct.TYPE_26__* %23)
  %25 = load i64, i64* @ZIO_CHECKSUM_FUNCTIONS, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %29 = call i64 @BP_GET_CHECKSUM(%struct.TYPE_26__* %28)
  %30 = load i64, i64* @ZIO_CHECKSUM_ON, align 8
  %31 = icmp sle i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %27, %22
  %33 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %34 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %35 = call i64 @BP_GET_CHECKSUM(%struct.TYPE_26__* %34)
  %36 = trunc i64 %35 to i32
  %37 = call i32 (i8*, %struct.TYPE_26__*, i32, ...) @zfs_panic_recover(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_26__* %33, i32 %36)
  br label %38

38:                                               ; preds = %32, %27
  %39 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %40 = call i64 @BP_GET_COMPRESS(%struct.TYPE_26__* %39)
  %41 = load i64, i64* @ZIO_COMPRESS_FUNCTIONS, align 8
  %42 = icmp sge i64 %40, %41
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %45 = call i64 @BP_GET_COMPRESS(%struct.TYPE_26__* %44)
  %46 = load i64, i64* @ZIO_COMPRESS_ON, align 8
  %47 = icmp sle i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %43, %38
  %49 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %50 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %51 = call i64 @BP_GET_COMPRESS(%struct.TYPE_26__* %50)
  %52 = trunc i64 %51 to i32
  %53 = call i32 (i8*, %struct.TYPE_26__*, i32, ...) @zfs_panic_recover(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_26__* %49, i32 %52)
  br label %54

54:                                               ; preds = %48, %43
  %55 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %56 = call i64 @BP_GET_LSIZE(%struct.TYPE_26__* %55)
  %57 = load i64, i64* @SPA_MAXBLOCKSIZE, align 8
  %58 = icmp sgt i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %61 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %62 = call i64 @BP_GET_LSIZE(%struct.TYPE_26__* %61)
  %63 = trunc i64 %62 to i32
  %64 = call i32 (i8*, %struct.TYPE_26__*, i32, ...) @zfs_panic_recover(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_26__* %60, i32 %63)
  br label %65

65:                                               ; preds = %59, %54
  %66 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %67 = call i64 @BP_GET_PSIZE(%struct.TYPE_26__* %66)
  %68 = load i64, i64* @SPA_MAXBLOCKSIZE, align 8
  %69 = icmp sgt i64 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %72 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %73 = call i64 @BP_GET_PSIZE(%struct.TYPE_26__* %72)
  %74 = trunc i64 %73 to i32
  %75 = call i32 (i8*, %struct.TYPE_26__*, i32, ...) @zfs_panic_recover(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_26__* %71, i32 %74)
  br label %76

76:                                               ; preds = %70, %65
  %77 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %78 = call i64 @BP_IS_EMBEDDED(%struct.TYPE_26__* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %76
  %81 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %82 = call i64 @BPE_GET_ETYPE(%struct.TYPE_26__* %81)
  %83 = load i64, i64* @NUM_BP_EMBEDDED_TYPES, align 8
  %84 = icmp sge i64 %82, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %87 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %88 = call i64 @BPE_GET_ETYPE(%struct.TYPE_26__* %87)
  %89 = trunc i64 %88 to i32
  %90 = call i32 (i8*, %struct.TYPE_26__*, i32, ...) @zfs_panic_recover(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_26__* %86, i32 %89)
  br label %91

91:                                               ; preds = %85, %80
  br label %92

92:                                               ; preds = %91, %76
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %92
  br label %222

98:                                               ; preds = %92
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %98
  %102 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %103 = load i32, i32* @SCL_VDEV, align 4
  %104 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %105 = load i32, i32* @RW_READER, align 4
  %106 = call i32 @spa_config_enter(%struct.TYPE_25__* %102, i32 %103, %struct.TYPE_26__* %104, i32 %105)
  br label %113

107:                                              ; preds = %98
  %108 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %109 = load i32, i32* @SCL_VDEV, align 4
  %110 = load i32, i32* @RW_WRITER, align 4
  %111 = call i32 @spa_config_held(%struct.TYPE_25__* %108, i32 %109, i32 %110)
  %112 = call i32 @ASSERT(i32 %111)
  br label %113

113:                                              ; preds = %107, %101
  store i32 0, i32* %7, align 4
  br label %114

114:                                              ; preds = %211, %113
  %115 = load i32, i32* %7, align 4
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %117 = call i32 @BP_GET_NDVAS(%struct.TYPE_26__* %116)
  %118 = icmp slt i32 %115, %117
  br i1 %118, label %119, label %214

119:                                              ; preds = %114
  %120 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = call i64 @DVA_GET_VDEV(i32* %125)
  store i64 %126, i64* %8, align 8
  %127 = load i64, i64* %8, align 8
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp uge i64 %127, %132
  br i1 %133, label %134, label %140

134:                                              ; preds = %119
  %135 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %136 = load i32, i32* %7, align 4
  %137 = load i64, i64* %8, align 8
  %138 = trunc i64 %137 to i32
  %139 = call i32 (i8*, %struct.TYPE_26__*, i32, ...) @zfs_panic_recover(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_26__* %135, i32 %136, i32 %138)
  br label %211

140:                                              ; preds = %119
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %144, align 8
  %146 = load i64, i64* %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %145, i64 %146
  %148 = load %struct.TYPE_24__*, %struct.TYPE_24__** %147, align 8
  store %struct.TYPE_24__* %148, %struct.TYPE_24__** %9, align 8
  %149 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %150 = icmp eq %struct.TYPE_24__* %149, null
  br i1 %150, label %151, label %157

151:                                              ; preds = %140
  %152 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %153 = load i32, i32* %7, align 4
  %154 = load i64, i64* %8, align 8
  %155 = trunc i64 %154 to i32
  %156 = call i32 (i8*, %struct.TYPE_26__*, i32, ...) @zfs_panic_recover(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_26__* %152, i32 %153, i32 %155)
  br label %211

157:                                              ; preds = %140
  %158 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %158, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = icmp eq i32* %160, @vdev_hole_ops
  br i1 %161, label %162, label %168

162:                                              ; preds = %157
  %163 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %164 = load i32, i32* %7, align 4
  %165 = load i64, i64* %8, align 8
  %166 = trunc i64 %165 to i32
  %167 = call i32 (i8*, %struct.TYPE_26__*, i32, ...) @zfs_panic_recover(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_26__* %163, i32 %164, i32 %166)
  br label %211

168:                                              ; preds = %157
  %169 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = icmp eq i32* %171, @vdev_missing_ops
  br i1 %172, label %173, label %174

173:                                              ; preds = %168
  br label %211

174:                                              ; preds = %168
  %175 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %7, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = call i64 @DVA_GET_OFFSET(i32* %180)
  store i64 %181, i64* %10, align 8
  %182 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %7, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = call i64 @DVA_GET_ASIZE(i32* %187)
  store i64 %188, i64* %11, align 8
  %189 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %190 = call i64 @BP_IS_GANG(%struct.TYPE_26__* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %174
  %193 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %194 = load i32, i32* @SPA_GANGBLOCKSIZE, align 4
  %195 = call i64 @vdev_psize_to_asize(%struct.TYPE_24__* %193, i32 %194)
  store i64 %195, i64* %11, align 8
  br label %196

196:                                              ; preds = %192, %174
  %197 = load i64, i64* %10, align 8
  %198 = load i64, i64* %11, align 8
  %199 = add i64 %197, %198
  %200 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %201 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = icmp ugt i64 %199, %202
  br i1 %203, label %204, label %210

204:                                              ; preds = %196
  %205 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %206 = load i32, i32* %7, align 4
  %207 = load i64, i64* %10, align 8
  %208 = trunc i64 %207 to i32
  %209 = call i32 (i8*, %struct.TYPE_26__*, i32, ...) @zfs_panic_recover(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), %struct.TYPE_26__* %205, i32 %206, i32 %208)
  br label %210

210:                                              ; preds = %204, %196
  br label %211

211:                                              ; preds = %210, %173, %162, %151, %134
  %212 = load i32, i32* %7, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %7, align 4
  br label %114

214:                                              ; preds = %114
  %215 = load i32, i32* %6, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %222, label %217

217:                                              ; preds = %214
  %218 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %219 = load i32, i32* @SCL_VDEV, align 4
  %220 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %221 = call i32 @spa_config_exit(%struct.TYPE_25__* %218, i32 %219, %struct.TYPE_26__* %220)
  br label %222

222:                                              ; preds = %97, %217, %214
  ret void
}

declare dso_local i32 @DMU_OT_IS_VALID(i64) #1

declare dso_local i64 @BP_GET_TYPE(%struct.TYPE_26__*) #1

declare dso_local i32 @zfs_panic_recover(i8*, %struct.TYPE_26__*, i32, ...) #1

declare dso_local i64 @BP_GET_CHECKSUM(%struct.TYPE_26__*) #1

declare dso_local i64 @BP_GET_COMPRESS(%struct.TYPE_26__*) #1

declare dso_local i64 @BP_GET_LSIZE(%struct.TYPE_26__*) #1

declare dso_local i64 @BP_GET_PSIZE(%struct.TYPE_26__*) #1

declare dso_local i64 @BP_IS_EMBEDDED(%struct.TYPE_26__*) #1

declare dso_local i64 @BPE_GET_ETYPE(%struct.TYPE_26__*) #1

declare dso_local i32 @spa_config_enter(%struct.TYPE_25__*, i32, %struct.TYPE_26__*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @spa_config_held(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @BP_GET_NDVAS(%struct.TYPE_26__*) #1

declare dso_local i64 @DVA_GET_VDEV(i32*) #1

declare dso_local i64 @DVA_GET_OFFSET(i32*) #1

declare dso_local i64 @DVA_GET_ASIZE(i32*) #1

declare dso_local i64 @BP_IS_GANG(%struct.TYPE_26__*) #1

declare dso_local i64 @vdev_psize_to_asize(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @spa_config_exit(%struct.TYPE_25__*, i32, %struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
