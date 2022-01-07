; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/core/extr_kcf_callprov.c_kcf_get_mech_provider.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/core/extr_kcf_callprov.c_kcf_get_mech_provider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i64, i32, %struct.TYPE_14__*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { i32 }

@INT_MAX = common dso_local global i32 0, align 4
@KCF_FIRST_OPSCLASS = common dso_local global i64 0, align 8
@KCF_LAST_OPSCLASS = common dso_local global i64 0, align 8
@CRYPTO_MECHANISM_INVALID = common dso_local global i32 0, align 4
@kcf_mech_tabs_tab = common dso_local global %struct.TYPE_15__* null, align 8
@KCF_PROV_RESTRICTED = common dso_local global i32 0, align 4
@CRYPTO_MECH_NOT_SUPPORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @kcf_get_mech_provider(i32 %0, %struct.TYPE_16__** %1, i32* %2, i32* %3, i32 %4, i64 %5, i64 %6) #0 {
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_16__**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca %struct.TYPE_13__*, align 8
  %18 = alloca %struct.TYPE_14__*, align 8
  %19 = alloca %struct.TYPE_14__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_16__*, align 8
  %25 = alloca %struct.TYPE_15__*, align 8
  store i32 %0, i32* %9, align 4
  store %struct.TYPE_16__** %1, %struct.TYPE_16__*** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %16, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %17, align 8
  %26 = load i32, i32* @INT_MAX, align 4
  store i32 %26, i32* %21, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i64 @KCF_MECH2CLASS(i32 %27)
  store i64 %28, i64* %22, align 8
  %29 = load i64, i64* %22, align 8
  %30 = load i64, i64* @KCF_FIRST_OPSCLASS, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %7
  %33 = load i64, i64* %22, align 8
  %34 = load i64, i64* @KCF_LAST_OPSCLASS, align 8
  %35 = icmp ugt i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32, %7
  %37 = load i32, i32* @CRYPTO_MECHANISM_INVALID, align 4
  %38 = load i32*, i32** %11, align 8
  store i32 %37, i32* %38, align 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %8, align 8
  br label %217

39:                                               ; preds = %32
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** @kcf_mech_tabs_tab, align 8
  %41 = load i64, i64* %22, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i64 %41
  store %struct.TYPE_15__* %42, %struct.TYPE_15__** %25, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @KCF_MECH2INDEX(i32 %43)
  store i32 %44, i32* %23, align 4
  %45 = load i32, i32* %23, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %39
  %48 = load i32, i32* %23, align 4
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp sge i32 %48, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47, %39
  %54 = load i32, i32* @CRYPTO_MECHANISM_INVALID, align 4
  %55 = load i32*, i32** %11, align 8
  store i32 %54, i32* %55, align 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %8, align 8
  br label %217

56:                                               ; preds = %47
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %58, align 8
  %60 = load i32, i32* %23, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i64 %61
  store %struct.TYPE_16__* %62, %struct.TYPE_16__** %24, align 8
  %63 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %10, align 8
  %64 = icmp ne %struct.TYPE_16__** %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %56
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %67 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %10, align 8
  store %struct.TYPE_16__* %66, %struct.TYPE_16__** %67, align 8
  br label %68

68:                                               ; preds = %65, %56
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 2
  %71 = call i32 @mutex_enter(i32* %70)
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 4
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %73, align 8
  store %struct.TYPE_14__* %74, %struct.TYPE_14__** %18, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %76 = icmp ne %struct.TYPE_14__* %75, null
  br i1 %76, label %77, label %162

77:                                               ; preds = %68
  %78 = load i64, i64* %15, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %107, label %80

80:                                               ; preds = %77
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %107, label %85

85:                                               ; preds = %80
  %86 = load i64, i64* %15, align 8
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp uge i64 %86, %89
  br i1 %90, label %107, label %91

91:                                               ; preds = %85
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 3
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %93, align 8
  store %struct.TYPE_14__* %94, %struct.TYPE_14__** %19, align 8
  %95 = icmp eq %struct.TYPE_14__* %94, null
  br i1 %95, label %107, label %96

96:                                               ; preds = %91
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %98 = load i32, i32* %13, align 4
  %99 = call i32 @IS_FG_SUPPORTED(%struct.TYPE_14__* %97, i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %96
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %103, align 8
  %105 = call i32 @KCF_IS_PROV_USABLE(%struct.TYPE_13__* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %162, label %107

107:                                              ; preds = %101, %96, %91, %85, %80, %77
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp sgt i64 %110, 0
  %112 = zext i1 %111 to i32
  %113 = call i32 @ASSERT(i32 %112)
  br label %114

114:                                              ; preds = %156, %144, %107
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %116 = icmp ne %struct.TYPE_14__* %115, null
  br i1 %116, label %117, label %160

117:                                              ; preds = %114
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %119, align 8
  store %struct.TYPE_13__* %120, %struct.TYPE_13__** %16, align 8
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %122 = load i32, i32* %13, align 4
  %123 = call i32 @IS_FG_SUPPORTED(%struct.TYPE_14__* %121, i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %144

125:                                              ; preds = %117
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %127 = call i32 @KCF_IS_PROV_USABLE(%struct.TYPE_13__* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %144

129:                                              ; preds = %125
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %131 = load i32*, i32** %12, align 8
  %132 = call i64 @IS_PROVIDER_TRIED(%struct.TYPE_13__* %130, i32* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %144, label %134

134:                                              ; preds = %129
  %135 = load i64, i64* %14, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %148

137:                                              ; preds = %134
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @KCF_PROV_RESTRICTED, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %137, %129, %125, %117
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %146, align 8
  store %struct.TYPE_14__* %147, %struct.TYPE_14__** %18, align 8
  br label %114

148:                                              ; preds = %137, %134
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %150 = call i32 @KCF_PROV_LOAD(%struct.TYPE_13__* %149)
  store i32 %150, i32* %20, align 4
  %151 = load i32, i32* %21, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %148
  %154 = load i32, i32* %20, align 4
  store i32 %154, i32* %21, align 4
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  store %struct.TYPE_13__* %155, %struct.TYPE_13__** %17, align 8
  br label %156

156:                                              ; preds = %153, %148
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %158, align 8
  store %struct.TYPE_14__* %159, %struct.TYPE_14__** %18, align 8
  br label %114

160:                                              ; preds = %114
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  store %struct.TYPE_13__* %161, %struct.TYPE_13__** %16, align 8
  br label %162

162:                                              ; preds = %160, %101, %68
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %164 = icmp eq %struct.TYPE_13__* %163, null
  br i1 %164, label %165, label %199

165:                                              ; preds = %162
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 3
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %167, align 8
  store %struct.TYPE_14__* %168, %struct.TYPE_14__** %19, align 8
  %169 = icmp ne %struct.TYPE_14__* %168, null
  br i1 %169, label %170, label %199

170:                                              ; preds = %165
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %172, align 8
  store %struct.TYPE_13__* %173, %struct.TYPE_13__** %16, align 8
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %175 = load i32, i32* %13, align 4
  %176 = call i32 @IS_FG_SUPPORTED(%struct.TYPE_14__* %174, i32 %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %197

178:                                              ; preds = %170
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %180 = call i32 @KCF_IS_PROV_USABLE(%struct.TYPE_13__* %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %197

182:                                              ; preds = %178
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %184 = load i32*, i32** %12, align 8
  %185 = call i64 @IS_PROVIDER_TRIED(%struct.TYPE_13__* %183, i32* %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %197, label %187

187:                                              ; preds = %182
  %188 = load i64, i64* %14, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %198

190:                                              ; preds = %187
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @KCF_PROV_RESTRICTED, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %190, %182, %178, %170
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %16, align 8
  br label %198

198:                                              ; preds = %197, %190, %187
  br label %199

199:                                              ; preds = %198, %165, %162
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %201 = icmp eq %struct.TYPE_13__* %200, null
  br i1 %201, label %202, label %209

202:                                              ; preds = %199
  %203 = load i32*, i32** %12, align 8
  %204 = icmp eq i32* %203, null
  br i1 %204, label %205, label %208

205:                                              ; preds = %202
  %206 = load i32, i32* @CRYPTO_MECH_NOT_SUPPORTED, align 4
  %207 = load i32*, i32** %11, align 8
  store i32 %206, i32* %207, align 4
  br label %208

208:                                              ; preds = %205, %202
  br label %212

209:                                              ; preds = %199
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %211 = call i32 @KCF_PROV_REFHOLD(%struct.TYPE_13__* %210)
  br label %212

212:                                              ; preds = %209, %208
  %213 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 2
  %215 = call i32 @mutex_exit(i32* %214)
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  store %struct.TYPE_13__* %216, %struct.TYPE_13__** %8, align 8
  br label %217

217:                                              ; preds = %212, %53, %36
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  ret %struct.TYPE_13__* %218
}

declare dso_local i64 @KCF_MECH2CLASS(i32) #1

declare dso_local i32 @KCF_MECH2INDEX(i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @IS_FG_SUPPORTED(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @KCF_IS_PROV_USABLE(%struct.TYPE_13__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @IS_PROVIDER_TRIED(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @KCF_PROV_LOAD(%struct.TYPE_13__*) #1

declare dso_local i32 @KCF_PROV_REFHOLD(%struct.TYPE_13__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
