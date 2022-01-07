; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_ioc_send.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_ioc_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32 }

@FTAG = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@dump_bytes = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @zfs_ioc_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_ioc_send(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca %struct.TYPE_15__*, align 8
  %16 = alloca %struct.TYPE_14__*, align 8
  %17 = alloca %struct.TYPE_16__, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %6, align 4
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, 1
  store i32 %26, i32* %7, align 4
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %29, 2
  store i32 %30, i32* %8, align 4
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, 4
  store i32 %34, i32* %9, align 4
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, 8
  store i32 %38, i32* %10, align 4
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %89

43:                                               ; preds = %1
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @FTAG, align 4
  %48 = call i32 @dsl_pool_hold(i32 %46, i32 %47, i32** %11)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %225

53:                                               ; preds = %43
  %54 = load i32*, i32** %11, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @FTAG, align 4
  %59 = call i32 @dsl_dataset_hold_obj(i32* %54, i32 %57, i32 %58, %struct.TYPE_15__** %12)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %53
  %63 = load i32*, i32** %11, align 8
  %64 = load i32, i32* @FTAG, align 4
  %65 = call i32 @dsl_pool_rele(i32* %63, i32 %64)
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %225

67:                                               ; preds = %53
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @dsl_dir_is_clone(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %67
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call %struct.TYPE_17__* @dsl_dir_phys(i32 %76)
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %73, %67
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %84 = load i32, i32* @FTAG, align 4
  %85 = call i32 @dsl_dataset_rele(%struct.TYPE_15__* %83, i32 %84)
  %86 = load i32*, i32** %11, align 8
  %87 = load i32, i32* @FTAG, align 4
  %88 = call i32 @dsl_pool_rele(i32* %86, i32 %87)
  br label %89

89:                                               ; preds = %82, %1
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %166

92:                                               ; preds = %89
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %15, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @FTAG, align 4
  %97 = call i32 @dsl_pool_hold(i32 %95, i32 %96, i32** %13)
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* %4, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %92
  %101 = load i32, i32* %4, align 4
  store i32 %101, i32* %2, align 4
  br label %225

102:                                              ; preds = %92
  %103 = load i32*, i32** %13, align 8
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @FTAG, align 4
  %108 = call i32 @dsl_dataset_hold_obj(i32* %103, i32 %106, i32 %107, %struct.TYPE_15__** %14)
  store i32 %108, i32* %4, align 4
  %109 = load i32, i32* %4, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %102
  %112 = load i32*, i32** %13, align 8
  %113 = load i32, i32* @FTAG, align 4
  %114 = call i32 @dsl_pool_rele(i32* %112, i32 %113)
  %115 = load i32, i32* %4, align 4
  store i32 %115, i32* %2, align 4
  br label %225

116:                                              ; preds = %102
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %139

121:                                              ; preds = %116
  %122 = load i32*, i32** %13, align 8
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @FTAG, align 4
  %127 = call i32 @dsl_dataset_hold_obj(i32* %122, i32 %125, i32 %126, %struct.TYPE_15__** %15)
  store i32 %127, i32* %4, align 4
  %128 = load i32, i32* %4, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %121
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %132 = load i32, i32* @FTAG, align 4
  %133 = call i32 @dsl_dataset_rele(%struct.TYPE_15__* %131, i32 %132)
  %134 = load i32*, i32** %13, align 8
  %135 = load i32, i32* @FTAG, align 4
  %136 = call i32 @dsl_pool_rele(i32* %134, i32 %135)
  %137 = load i32, i32* %4, align 4
  store i32 %137, i32* %2, align 4
  br label %225

138:                                              ; preds = %121
  br label %139

139:                                              ; preds = %138, %116
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %142 = load i32, i32* %9, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %139
  %145 = load i32, i32* %10, align 4
  %146 = icmp ne i32 %145, 0
  br label %147

147:                                              ; preds = %144, %139
  %148 = phi i1 [ true, %139 ], [ %146, %144 ]
  %149 = zext i1 %148 to i32
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 7
  %152 = call i32 @dmu_send_estimate_fast(%struct.TYPE_15__* %140, %struct.TYPE_15__* %141, i32* null, i32 %149, i32* %151)
  store i32 %152, i32* %4, align 4
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %154 = icmp ne %struct.TYPE_15__* %153, null
  br i1 %154, label %155, label %159

155:                                              ; preds = %147
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %157 = load i32, i32* @FTAG, align 4
  %158 = call i32 @dsl_dataset_rele(%struct.TYPE_15__* %156, i32 %157)
  br label %159

159:                                              ; preds = %155, %147
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %161 = load i32, i32* @FTAG, align 4
  %162 = call i32 @dsl_dataset_rele(%struct.TYPE_15__* %160, i32 %161)
  %163 = load i32*, i32** %13, align 8
  %164 = load i32, i32* @FTAG, align 4
  %165 = call i32 @dsl_pool_rele(i32* %163, i32 %164)
  br label %223

166:                                              ; preds = %89
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = call %struct.TYPE_14__* @getf(i32 %169)
  store %struct.TYPE_14__* %170, %struct.TYPE_14__** %16, align 8
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %172 = icmp eq %struct.TYPE_14__* %171, null
  br i1 %172, label %173, label %176

173:                                              ; preds = %166
  %174 = load i32, i32* @EBADF, align 4
  %175 = call i32 @SET_ERROR(i32 %174)
  store i32 %175, i32* %2, align 4
  br label %225

176:                                              ; preds = %166
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  store i32 %179, i32* %5, align 4
  %180 = bitcast %struct.TYPE_16__* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %180, i8 0, i64 16, i1 false)
  %181 = load i32, i32* @dump_bytes, align 4
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 2
  store i32 %181, i32* %182, align 4
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 1
  store i32 %185, i32* %186, align 4
  %187 = load i32, i32* @B_FALSE, align 4
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  store i32 %187, i32* %188, align 4
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 6
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* %7, align 4
  %199 = load i32, i32* %8, align 4
  %200 = load i32, i32* %9, align 4
  %201 = load i32, i32* %10, align 4
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @dmu_send_obj(i32 %191, i32 %194, i32 %197, i32 %198, i32 %199, i32 %200, i32 %201, i32 %204, i32* %5, %struct.TYPE_16__* %17)
  store i32 %205, i32* %4, align 4
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call i64 @VOP_SEEK(i32 %208, i32 %211, i32* %5, i32* null)
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %176
  %215 = load i32, i32* %5, align 4
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %216, i32 0, i32 0
  store i32 %215, i32* %217, align 4
  br label %218

218:                                              ; preds = %214, %176
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @releasef(i32 %221)
  br label %223

223:                                              ; preds = %218, %159
  %224 = load i32, i32* %4, align 4
  store i32 %224, i32* %2, align 4
  br label %225

225:                                              ; preds = %223, %173, %130, %111, %100, %62, %51
  %226 = load i32, i32* %2, align 4
  ret i32 %226
}

declare dso_local i32 @dsl_pool_hold(i32, i32, i32**) #1

declare dso_local i32 @dsl_dataset_hold_obj(i32*, i32, i32, %struct.TYPE_15__**) #1

declare dso_local i32 @dsl_pool_rele(i32*, i32) #1

declare dso_local i64 @dsl_dir_is_clone(i32) #1

declare dso_local %struct.TYPE_17__* @dsl_dir_phys(i32) #1

declare dso_local i32 @dsl_dataset_rele(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @dmu_send_estimate_fast(%struct.TYPE_15__*, %struct.TYPE_15__*, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_14__* @getf(i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @dmu_send_obj(i32, i32, i32, i32, i32, i32, i32, i32, i32*, %struct.TYPE_16__*) #1

declare dso_local i64 @VOP_SEEK(i32, i32, i32*, i32*) #1

declare dso_local i32 @releasef(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
