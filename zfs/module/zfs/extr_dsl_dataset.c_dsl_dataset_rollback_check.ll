; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_dataset.c_dsl_dataset_rollback_check.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_dataset.c_dsl_dataset_rollback_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { i32, i32*, i32* }
%struct.TYPE_15__ = type { i64, i64, i64, i32, %struct.TYPE_15__*, i64 }
%struct.TYPE_19__ = type { i64, i64, i32 }
%struct.TYPE_18__ = type { i64 }

@FTAG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TXG_INITIAL = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@EDQUOT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsl_dataset_rollback_check(i8* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_15__*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %13, %struct.TYPE_16__** %6, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %15 = call i32* @dmu_tx_pool(%struct.TYPE_17__* %14)
  store i32* %15, i32** %7, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* @FTAG, align 4
  %21 = call i32 @dsl_dataset_hold(i32* %16, i32* %19, i32 %20, %struct.TYPE_15__** %8)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %3, align 4
  br label %231

26:                                               ; preds = %2
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %33 = load i32, i32* @FTAG, align 4
  %34 = call i32 @dsl_dataset_rele(%struct.TYPE_15__* %32, i32 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = call i32 @SET_ERROR(i32 %35)
  store i32 %36, i32* %3, align 4
  br label %231

37:                                               ; preds = %26
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %39 = call %struct.TYPE_19__* @dsl_dataset_phys(%struct.TYPE_15__* %38)
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @TXG_INITIAL, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %37
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %46 = load i32, i32* @FTAG, align 4
  %47 = call i32 @dsl_dataset_rele(%struct.TYPE_15__* %45, i32 %46)
  %48 = load i32, i32* @ESRCH, align 4
  %49 = call i32 @SET_ERROR(i32 %48)
  store i32 %49, i32* %3, align 4
  br label %231

50:                                               ; preds = %37
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %52 = call i64 @dmu_tx_is_syncing(%struct.TYPE_17__* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %50
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %56 = call %struct.TYPE_19__* @dsl_dataset_phys(%struct.TYPE_15__* %55)
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp sge i64 %58, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %54
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %65 = load i32, i32* @FTAG, align 4
  %66 = call i32 @dsl_dataset_rele(%struct.TYPE_15__* %64, i32 %65)
  %67 = load i32, i32* @EAGAIN, align 4
  %68 = call i32 @SET_ERROR(i32 %67)
  store i32 %68, i32* %3, align 4
  br label %231

69:                                               ; preds = %54, %50
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %152

74:                                               ; preds = %69
  %75 = load i32*, i32** %7, align 8
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* @FTAG, align 4
  %80 = call i32 @dsl_dataset_hold(i32* %75, i32* %78, i32 %79, %struct.TYPE_15__** %11)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %99

83:                                               ; preds = %74
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @ENOENT, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %91, label %87

87:                                               ; preds = %83
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @EXDEV, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %87, %83
  %92 = load i32, i32* @ESRCH, align 4
  %93 = call i32 @SET_ERROR(i32 %92)
  store i32 %93, i32* %10, align 4
  br label %94

94:                                               ; preds = %91, %87
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %96 = load i32, i32* @FTAG, align 4
  %97 = call i32 @dsl_dataset_rele(%struct.TYPE_15__* %95, i32 %96)
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %3, align 4
  br label %231

99:                                               ; preds = %74
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 5
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @ASSERT(i64 %102)
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 4
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %106, align 8
  %108 = icmp ne %struct.TYPE_15__* %104, %107
  br i1 %108, label %109, label %148

109:                                              ; preds = %99
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %112, %115
  br i1 %116, label %134, label %117

117:                                              ; preds = %109
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call i64 @dsl_dir_is_clone(i64 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %137

123:                                              ; preds = %117
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = call %struct.TYPE_18__* @dsl_dir_phys(i64 %126)
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp eq i64 %129, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %123, %109
  %135 = load i32, i32* @EEXIST, align 4
  %136 = call i32 @SET_ERROR(i32 %135)
  store i32 %136, i32* %10, align 4
  br label %140

137:                                              ; preds = %123, %117
  %138 = load i32, i32* @ESRCH, align 4
  %139 = call i32 @SET_ERROR(i32 %138)
  store i32 %139, i32* %10, align 4
  br label %140

140:                                              ; preds = %137, %134
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %142 = load i32, i32* @FTAG, align 4
  %143 = call i32 @dsl_dataset_rele(%struct.TYPE_15__* %141, i32 %142)
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %145 = load i32, i32* @FTAG, align 4
  %146 = call i32 @dsl_dataset_rele(%struct.TYPE_15__* %144, i32 %145)
  %147 = load i32, i32* %10, align 4
  store i32 %147, i32* %3, align 4
  br label %231

148:                                              ; preds = %99
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %150 = load i32, i32* @FTAG, align 4
  %151 = call i32 @dsl_dataset_rele(%struct.TYPE_15__* %149, i32 %150)
  br label %152

152:                                              ; preds = %148, %69
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %154 = call i64 @dsl_bookmark_latest_txg(%struct.TYPE_15__* %153)
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %156 = call %struct.TYPE_19__* @dsl_dataset_phys(%struct.TYPE_15__* %155)
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp sgt i64 %154, %158
  br i1 %159, label %160, label %166

160:                                              ; preds = %152
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %162 = load i32, i32* @FTAG, align 4
  %163 = call i32 @dsl_dataset_rele(%struct.TYPE_15__* %161, i32 %162)
  %164 = load i32, i32* @EEXIST, align 4
  %165 = call i32 @SET_ERROR(i32 %164)
  store i32 %165, i32* %3, align 4
  br label %231

166:                                              ; preds = %152
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %172 = call i32 @dsl_dataset_handoff_check(%struct.TYPE_15__* %167, i32 %170, %struct.TYPE_17__* %171)
  store i32 %172, i32* %10, align 4
  %173 = load i32, i32* %10, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %166
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %177 = load i32, i32* @FTAG, align 4
  %178 = call i32 @dsl_dataset_rele(%struct.TYPE_15__* %176, i32 %177)
  %179 = load i32, i32* %10, align 4
  store i32 %179, i32* %3, align 4
  br label %231

180:                                              ; preds = %166
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %202

185:                                              ; preds = %180
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 4
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %187, align 8
  %189 = call %struct.TYPE_19__* @dsl_dataset_phys(%struct.TYPE_15__* %188)
  %190 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = icmp sgt i64 %191, %194
  br i1 %195, label %196, label %202

196:                                              ; preds = %185
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %198 = load i32, i32* @FTAG, align 4
  %199 = call i32 @dsl_dataset_rele(%struct.TYPE_15__* %197, i32 %198)
  %200 = load i32, i32* @EDQUOT, align 4
  %201 = call i32 @SET_ERROR(i32 %200)
  store i32 %201, i32* %3, align 4
  br label %231

202:                                              ; preds = %185, %180
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %207 = call %struct.TYPE_19__* @dsl_dataset_phys(%struct.TYPE_15__* %206)
  %208 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = call i64 @MIN(i32 %205, i32 %209)
  store i64 %210, i64* %9, align 8
  %211 = load i64, i64* %9, align 8
  %212 = icmp sgt i64 %211, 0
  br i1 %212, label %213, label %227

213:                                              ; preds = %202
  %214 = load i64, i64* %9, align 8
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load i32, i32* @TRUE, align 4
  %219 = call i64 @dsl_dir_space_available(i64 %217, i32* null, i32 0, i32 %218)
  %220 = icmp sgt i64 %214, %219
  br i1 %220, label %221, label %227

221:                                              ; preds = %213
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %223 = load i32, i32* @FTAG, align 4
  %224 = call i32 @dsl_dataset_rele(%struct.TYPE_15__* %222, i32 %223)
  %225 = load i32, i32* @ENOSPC, align 4
  %226 = call i32 @SET_ERROR(i32 %225)
  store i32 %226, i32* %3, align 4
  br label %231

227:                                              ; preds = %213, %202
  %228 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %229 = load i32, i32* @FTAG, align 4
  %230 = call i32 @dsl_dataset_rele(%struct.TYPE_15__* %228, i32 %229)
  store i32 0, i32* %3, align 4
  br label %231

231:                                              ; preds = %227, %221, %196, %175, %160, %140, %94, %63, %44, %31, %24
  %232 = load i32, i32* %3, align 4
  ret i32 %232
}

declare dso_local i32* @dmu_tx_pool(%struct.TYPE_17__*) #1

declare dso_local i32 @dsl_dataset_hold(i32*, i32*, i32, %struct.TYPE_15__**) #1

declare dso_local i32 @dsl_dataset_rele(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local %struct.TYPE_19__* @dsl_dataset_phys(%struct.TYPE_15__*) #1

declare dso_local i64 @dmu_tx_is_syncing(%struct.TYPE_17__*) #1

declare dso_local i32 @ASSERT(i64) #1

declare dso_local i64 @dsl_dir_is_clone(i64) #1

declare dso_local %struct.TYPE_18__* @dsl_dir_phys(i64) #1

declare dso_local i64 @dsl_bookmark_latest_txg(%struct.TYPE_15__*) #1

declare dso_local i32 @dsl_dataset_handoff_check(%struct.TYPE_15__*, i32, %struct.TYPE_17__*) #1

declare dso_local i64 @MIN(i32, i32) #1

declare dso_local i64 @dsl_dir_space_available(i64, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
