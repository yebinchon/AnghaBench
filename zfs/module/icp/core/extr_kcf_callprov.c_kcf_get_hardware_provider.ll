; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/core/extr_kcf_callprov.c_kcf_get_hardware_provider.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/core/extr_kcf_callprov.c_kcf_get_hardware_provider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { i64, i32, i64, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_14__*, %struct.TYPE_15__* }

@INT_MAX = common dso_local global i32 0, align 4
@CRYPTO_SUCCESS = common dso_local global i32 0, align 4
@KCF_FIRST_OPSCLASS = common dso_local global i64 0, align 8
@KCF_LAST_OPSCLASS = common dso_local global i64 0, align 8
@CRYPTO_MECHANISM_INVALID = common dso_local global i32 0, align 4
@kcf_mech_tabs_tab = common dso_local global %struct.TYPE_16__* null, align 8
@CRYPTO_LOGICAL_PROVIDER = common dso_local global i64 0, align 8
@CRYPTO_DEVICE_ERROR = common dso_local global i32 0, align 4
@KCF_PROV_RESTRICTED = common dso_local global i32 0, align 4
@CRYPTO_MECH_INVALID = common dso_local global i32 0, align 4
@KCF_INVALID_INDX = common dso_local global i32 0, align 4
@KCF_PROV_READY = common dso_local global i64 0, align 8
@KCF_PROV_BUSY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kcf_get_hardware_provider(i32 %0, i32 %1, i64 %2, %struct.TYPE_15__* %3, %struct.TYPE_15__** %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca %struct.TYPE_15__**, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca %struct.TYPE_15__*, align 8
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca %struct.TYPE_15__*, align 8
  %18 = alloca %struct.TYPE_14__*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_17__*, align 8
  %21 = alloca %struct.TYPE_16__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %11, align 8
  store %struct.TYPE_15__** %4, %struct.TYPE_15__*** %12, align 8
  store i32 %5, i32* %13, align 4
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  store %struct.TYPE_15__* %27, %struct.TYPE_15__** %15, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %16, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %17, align 8
  %28 = load i32, i32* @INT_MAX, align 4
  store i32 %28, i32* %24, align 4
  %29 = load i32, i32* @CRYPTO_SUCCESS, align 4
  store i32 %29, i32* %25, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i64 @KCF_MECH2CLASS(i32 %30)
  store i64 %31, i64* %19, align 8
  %32 = load i64, i64* %19, align 8
  %33 = load i64, i64* @KCF_FIRST_OPSCLASS, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %6
  %36 = load i64, i64* %19, align 8
  %37 = load i64, i64* @KCF_LAST_OPSCLASS, align 8
  %38 = icmp ugt i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35, %6
  %40 = load i32, i32* @CRYPTO_MECHANISM_INVALID, align 4
  store i32 %40, i32* %7, align 4
  br label %226

41:                                               ; preds = %35
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** @kcf_mech_tabs_tab, align 8
  %43 = load i64, i64* %19, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i64 %43
  store %struct.TYPE_16__* %44, %struct.TYPE_16__** %21, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @KCF_MECH2INDEX(i32 %45)
  store i32 %46, i32* %22, align 4
  %47 = load i32, i32* %22, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %41
  %50 = load i32, i32* %22, align 4
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp sge i32 %50, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49, %41
  %56 = load i32, i32* @CRYPTO_MECHANISM_INVALID, align 4
  store i32 %56, i32* %7, align 4
  br label %226

57:                                               ; preds = %49
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %59, align 8
  %61 = load i32, i32* %22, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i64 %62
  store %struct.TYPE_17__* %63, %struct.TYPE_17__** %20, align 8
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = call i32 @mutex_enter(i32* %65)
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @CRYPTO_LOGICAL_PROVIDER, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %191

72:                                               ; preds = %57
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 4
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %74, align 8
  %76 = icmp eq %struct.TYPE_14__* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %15, align 8
  %78 = load i32, i32* @CRYPTO_DEVICE_ERROR, align 4
  store i32 %78, i32* %25, align 4
  br label %219

79:                                               ; preds = %72
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 3
  %82 = call i32 @mutex_enter(i32* %81)
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 4
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %84, align 8
  store %struct.TYPE_14__* %85, %struct.TYPE_14__** %18, align 8
  br label %86

86:                                               ; preds = %166, %153, %134, %119, %109, %79
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %88 = icmp ne %struct.TYPE_14__* %87, null
  br i1 %88, label %89, label %170

89:                                               ; preds = %86
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %91, align 8
  store %struct.TYPE_15__* %92, %struct.TYPE_15__** %14, align 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @CRYPTO_LOGICAL_PROVIDER, align 8
  %97 = icmp ne i64 %95, %96
  %98 = zext i1 %97 to i32
  %99 = call i32 @ASSERT(i32 %98)
  %100 = load i64, i64* %10, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %89
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @KCF_PROV_RESTRICTED, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %102
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %111, align 8
  store %struct.TYPE_14__* %112, %struct.TYPE_14__** %18, align 8
  br label %86

113:                                              ; preds = %102, %89
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %116 = load i32, i32* %13, align 4
  %117 = call i32 @is_valid_provider_for_mech(%struct.TYPE_15__* %114, %struct.TYPE_17__* %115, i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %113
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %121, align 8
  store %struct.TYPE_14__* %122, %struct.TYPE_14__** %18, align 8
  br label %86

123:                                              ; preds = %113
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* @CRYPTO_MECH_INVALID, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %139

127:                                              ; preds = %123
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %129 = load i32, i32* %9, align 4
  %130 = call i32 @KCF_TO_PROV_MECH_INDX(%struct.TYPE_15__* %128, i32 %129)
  store i32 %130, i32* %26, align 4
  %131 = load i32, i32* %26, align 4
  %132 = load i32, i32* @KCF_INVALID_INDX, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %127
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %136, align 8
  store %struct.TYPE_14__* %137, %struct.TYPE_14__** %18, align 8
  br label %86

138:                                              ; preds = %127
  br label %139

139:                                              ; preds = %138, %123
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @KCF_PROV_READY, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %157

145:                                              ; preds = %139
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @KCF_PROV_BUSY, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %145
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  store %struct.TYPE_15__* %152, %struct.TYPE_15__** %17, align 8
  br label %153

153:                                              ; preds = %151, %145
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %155, align 8
  store %struct.TYPE_14__* %156, %struct.TYPE_14__** %18, align 8
  br label %86

157:                                              ; preds = %139
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %159 = call i32 @KCF_PROV_LOAD(%struct.TYPE_15__* %158)
  store i32 %159, i32* %23, align 4
  %160 = load i32, i32* %23, align 4
  %161 = load i32, i32* %24, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %157
  %164 = load i32, i32* %23, align 4
  store i32 %164, i32* %24, align 4
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  store %struct.TYPE_15__* %165, %struct.TYPE_15__** %16, align 8
  br label %166

166:                                              ; preds = %163, %157
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %168, align 8
  store %struct.TYPE_14__* %169, %struct.TYPE_14__** %18, align 8
  br label %86

170:                                              ; preds = %86
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %172 = icmp ne %struct.TYPE_15__* %171, null
  br i1 %172, label %173, label %177

173:                                              ; preds = %170
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  store %struct.TYPE_15__* %174, %struct.TYPE_15__** %15, align 8
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %176 = call i32 @KCF_PROV_REFHOLD(%struct.TYPE_15__* %175)
  br label %187

177:                                              ; preds = %170
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %179 = icmp ne %struct.TYPE_15__* %178, null
  br i1 %179, label %180, label %184

180:                                              ; preds = %177
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  store %struct.TYPE_15__* %181, %struct.TYPE_15__** %15, align 8
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %183 = call i32 @KCF_PROV_REFHOLD(%struct.TYPE_15__* %182)
  br label %186

184:                                              ; preds = %177
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %15, align 8
  %185 = load i32, i32* @CRYPTO_MECHANISM_INVALID, align 4
  store i32 %185, i32* %25, align 4
  br label %186

186:                                              ; preds = %184, %180
  br label %187

187:                                              ; preds = %186, %173
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i32 0, i32 3
  %190 = call i32 @mutex_exit(i32* %189)
  br label %218

191:                                              ; preds = %57
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %193 = call i32 @KCF_IS_PROV_USABLE(%struct.TYPE_15__* %192)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %205

195:                                              ; preds = %191
  %196 = load i64, i64* %10, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %207

198:                                              ; preds = %195
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @KCF_PROV_RESTRICTED, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %198, %191
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %15, align 8
  %206 = load i32, i32* @CRYPTO_DEVICE_ERROR, align 4
  store i32 %206, i32* %25, align 4
  br label %219

207:                                              ; preds = %198, %195
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %210 = load i32, i32* %13, align 4
  %211 = call i32 @is_valid_provider_for_mech(%struct.TYPE_15__* %208, %struct.TYPE_17__* %209, i32 %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %215, label %213

213:                                              ; preds = %207
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %15, align 8
  %214 = load i32, i32* @CRYPTO_MECHANISM_INVALID, align 4
  store i32 %214, i32* %25, align 4
  br label %219

215:                                              ; preds = %207
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %217 = call i32 @KCF_PROV_REFHOLD(%struct.TYPE_15__* %216)
  br label %218

218:                                              ; preds = %215, %187
  br label %219

219:                                              ; preds = %218, %213, %205, %77
  %220 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %221 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %220, i32 0, i32 0
  %222 = call i32 @mutex_exit(i32* %221)
  %223 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %224 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %12, align 8
  store %struct.TYPE_15__* %223, %struct.TYPE_15__** %224, align 8
  %225 = load i32, i32* %25, align 4
  store i32 %225, i32* %7, align 4
  br label %226

226:                                              ; preds = %219, %55, %39
  %227 = load i32, i32* %7, align 4
  ret i32 %227
}

declare dso_local i64 @KCF_MECH2CLASS(i32) #1

declare dso_local i32 @KCF_MECH2INDEX(i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @is_valid_provider_for_mech(%struct.TYPE_15__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @KCF_TO_PROV_MECH_INDX(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @KCF_PROV_LOAD(%struct.TYPE_15__*) #1

declare dso_local i32 @KCF_PROV_REFHOLD(%struct.TYPE_15__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @KCF_IS_PROV_USABLE(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
