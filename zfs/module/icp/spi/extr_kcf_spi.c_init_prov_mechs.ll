; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/spi/extr_kcf_spi.c_init_prov_mechs.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/spi/extr_kcf_spi.c_init_prov_mechs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_12__ = type { i32, i64, i32, i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i64, i32 }

@CRYPTO_SUCCESS = common dso_local global i32 0, align 4
@CRYPTO_LOGICAL_PROVIDER = common dso_local global i64 0, align 8
@SUN_RANDOM = common dso_local global i32 0, align 4
@CRYPTO_MAX_MECH_NAME = common dso_local global i32 0, align 4
@CRYPTO_FG_RANDOM = common dso_local global i32 0, align 4
@CRYPTO_KEYSIZE_UNIT_IN_BITS = common dso_local global i32 0, align 4
@CRYPTO_KEYSIZE_UNIT_IN_BYTES = common dso_local global i32 0, align 4
@CRYPTO_ARGUMENTS_BAD = common dso_local global i32 0, align 4
@CRYPTO_HASH_NO_UPDATE = common dso_local global i32 0, align 4
@CRYPTO_FG_DIGEST = common dso_local global i32 0, align 4
@KCF_SUCCESS = common dso_local global i32 0, align 4
@CRYPTO_SW_PROVIDER = common dso_local global i64 0, align 8
@KCF_MECH_TAB_FULL = common dso_local global i32 0, align 4
@CRYPTO_HOST_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_12__*)* @init_prov_mechs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_prov_mechs(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %14 = load i32, i32* @CRYPTO_SUCCESS, align 4
  store i32 %14, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %11, align 4
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CRYPTO_LOGICAL_PROVIDER, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %46

23:                                               ; preds = %2
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %25 = icmp ne %struct.TYPE_13__* %24, null
  br i1 %25, label %26, label %44

26:                                               ; preds = %23
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @ASSERT(i32 %31)
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 4
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 24, %40
  %42 = trunc i64 %41 to i32
  %43 = call i32 @bcopy(i32* %35, %struct.TYPE_14__* %38, i32 %42)
  br label %44

44:                                               ; preds = %26, %23
  %45 = load i32, i32* @CRYPTO_SUCCESS, align 4
  store i32 %45, i32* %3, align 4
  br label %229

46:                                               ; preds = %2
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %48 = icmp ne %struct.TYPE_13__* %47, null
  br i1 %48, label %49, label %112

49:                                               ; preds = %46
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %93

56:                                               ; preds = %49
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %74

61:                                               ; preds = %56
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 4
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %66, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = mul i64 24, %70
  %72 = trunc i64 %71 to i32
  %73 = call i32 @bcopy(i32* %64, %struct.TYPE_14__* %67, i32 %72)
  br label %74

74:                                               ; preds = %61, %56
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 4
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %76, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i64 %80
  store %struct.TYPE_14__* %81, %struct.TYPE_14__** %12, align 8
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %83 = call i32 @bzero(%struct.TYPE_14__* %82, i32 24)
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @SUN_RANDOM, align 4
  %88 = load i32, i32* @CRYPTO_MAX_MECH_NAME, align 4
  %89 = call i32 @strncpy(i32 %86, i32 %87, i32 %88)
  %90 = load i32, i32* @CRYPTO_FG_RANDOM, align 4
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  br label %111

93:                                               ; preds = %49
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = icmp ne i32* %96, null
  %98 = zext i1 %97 to i32
  %99 = call i32 @ASSERT(i32 %98)
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 4
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %104, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = mul i64 24, %107
  %109 = trunc i64 %108 to i32
  %110 = call i32 @bcopy(i32* %102, %struct.TYPE_14__* %105, i32 %109)
  br label %111

111:                                              ; preds = %93, %74
  br label %112

112:                                              ; preds = %111, %46
  store i64 0, i64* %6, align 8
  br label %113

113:                                              ; preds = %183, %112
  %114 = load i64, i64* %6, align 8
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = sext i32 %117 to i64
  %119 = icmp ult i64 %114, %118
  br i1 %119, label %120, label %186

120:                                              ; preds = %113
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 4
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %122, align 8
  %124 = load i64, i64* %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i64 %124
  store %struct.TYPE_14__* %125, %struct.TYPE_14__** %13, align 8
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @CRYPTO_KEYSIZE_UNIT_IN_BITS, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %120
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @CRYPTO_KEYSIZE_UNIT_IN_BYTES, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %132
  %140 = load i32, i32* @CRYPTO_ARGUMENTS_BAD, align 4
  store i32 %140, i32* %8, align 4
  br label %186

141:                                              ; preds = %132, %120
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @CRYPTO_HASH_NO_UPDATE, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %169

148:                                              ; preds = %141
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @CRYPTO_FG_DIGEST, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %169

155:                                              ; preds = %148
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %155
  %161 = load i32, i32* @CRYPTO_ARGUMENTS_BAD, align 4
  store i32 %161, i32* %8, align 4
  br label %186

162:                                              ; preds = %155
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 3
  store i64 %165, i64* %167, align 8
  br label %168

168:                                              ; preds = %162
  br label %169

169:                                              ; preds = %168, %148, %141
  %170 = load i64, i64* %6, align 8
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %172 = call i32 @kcf_add_mech_provider(i64 %170, %struct.TYPE_12__* %171, i32** %9)
  store i32 %172, i32* %8, align 4
  %173 = load i32, i32* @KCF_SUCCESS, align 4
  %174 = icmp ne i32 %172, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %169
  br label %186

176:                                              ; preds = %169
  %177 = load i32*, i32** %9, align 8
  %178 = icmp eq i32* %177, null
  br i1 %178, label %179, label %180

179:                                              ; preds = %176
  br label %183

180:                                              ; preds = %176
  %181 = load i32, i32* %10, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %10, align 4
  br label %183

183:                                              ; preds = %180, %179
  %184 = load i64, i64* %6, align 8
  %185 = add i64 %184, 1
  store i64 %185, i64* %6, align 8
  br label %113

186:                                              ; preds = %175, %160, %139, %113
  %187 = load i32, i32* %10, align 4
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %197

189:                                              ; preds = %186
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @CRYPTO_SW_PROVIDER, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %197

195:                                              ; preds = %189
  %196 = load i32, i32* @CRYPTO_ARGUMENTS_BAD, align 4
  store i32 %196, i32* %3, align 4
  br label %229

197:                                              ; preds = %189, %186
  %198 = load i32, i32* %8, align 4
  %199 = load i32, i32* @KCF_SUCCESS, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %201, label %203

201:                                              ; preds = %197
  %202 = load i32, i32* @CRYPTO_SUCCESS, align 4
  store i32 %202, i32* %3, align 4
  br label %229

203:                                              ; preds = %197
  store i64 0, i64* %7, align 8
  br label %204

204:                                              ; preds = %218, %203
  %205 = load i64, i64* %7, align 8
  %206 = load i64, i64* %6, align 8
  %207 = icmp ult i64 %205, %206
  br i1 %207, label %208, label %221

208:                                              ; preds = %204
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 4
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %210, align 8
  %212 = load i64, i64* %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %217 = call i32 @kcf_remove_mech_provider(i32 %215, %struct.TYPE_12__* %216)
  br label %218

218:                                              ; preds = %208
  %219 = load i64, i64* %7, align 8
  %220 = add i64 %219, 1
  store i64 %220, i64* %7, align 8
  br label %204

221:                                              ; preds = %204
  %222 = load i32, i32* %8, align 4
  %223 = load i32, i32* @KCF_MECH_TAB_FULL, align 4
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %225, label %227

225:                                              ; preds = %221
  %226 = load i32, i32* @CRYPTO_HOST_MEMORY, align 4
  store i32 %226, i32* %3, align 4
  br label %229

227:                                              ; preds = %221
  %228 = load i32, i32* @CRYPTO_ARGUMENTS_BAD, align 4
  store i32 %228, i32* %3, align 4
  br label %229

229:                                              ; preds = %227, %225, %201, %195, %44
  %230 = load i32, i32* %3, align 4
  ret i32 %230
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @bcopy(i32*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @bzero(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @kcf_add_mech_provider(i64, %struct.TYPE_12__*, i32**) #1

declare dso_local i32 @kcf_remove_mech_provider(i32, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
