; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/spi/extr_kcf_spi.c_crypto_unregister_provider.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/spi/extr_kcf_spi.c_crypto_unregister_provider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i64, i64, i64, i32, i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32 }

@CRYPTO_UNKNOWN_PROVIDER = common dso_local global i32 0, align 4
@KCF_PROV_DISABLED = common dso_local global i64 0, align 8
@CRYPTO_BUSY = common dso_local global i32 0, align 4
@KCF_PROV_REMOVED = common dso_local global i64 0, align 8
@KCF_PROV_BUSY = common dso_local global i64 0, align 8
@CRYPTO_SW_PROVIDER = common dso_local global i64 0, align 8
@CRYPTO_LOGICAL_PROVIDER = common dso_local global i64 0, align 8
@CRYPTO_SUCCESS = common dso_local global i64 0, align 8
@KCF_PROV_FREED = common dso_local global i64 0, align 8
@B_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_unregister_provider(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = trunc i64 %7 to i32
  %9 = call %struct.TYPE_11__* @kcf_prov_tab_lookup(i32 %8)
  store %struct.TYPE_11__* %9, %struct.TYPE_11__** %5, align 8
  %10 = icmp eq %struct.TYPE_11__* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @CRYPTO_UNKNOWN_PROVIDER, align 4
  store i32 %12, i32* %2, align 4
  br label %199

13:                                               ; preds = %1
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 5
  %16 = call i32 @mutex_enter(i32* %15)
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @KCF_PROV_DISABLED, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %13
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 5
  %25 = call i32 @mutex_exit(i32* %24)
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %27 = call i32 @KCF_PROV_REFRELE(%struct.TYPE_11__* %26)
  %28 = load i32, i32* @CRYPTO_BUSY, align 4
  store i32 %28, i32* %2, align 4
  br label %199

29:                                               ; preds = %13
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* @KCF_PROV_REMOVED, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @KCF_PROV_BUSY, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %29
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 8
  %42 = call i32 @cv_broadcast(i32* %41)
  br label %43

43:                                               ; preds = %39, %29
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @CRYPTO_SW_PROVIDER, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %69

49:                                               ; preds = %43
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, 1
  %57 = icmp sgt i64 %52, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %49
  %59 = load i64, i64* %6, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 5
  %64 = call i32 @mutex_exit(i32* %63)
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %66 = call i32 @KCF_PROV_REFRELE(%struct.TYPE_11__* %65)
  %67 = load i32, i32* @CRYPTO_BUSY, align 4
  store i32 %67, i32* %2, align 4
  br label %199

68:                                               ; preds = %49
  br label %69

69:                                               ; preds = %68, %43
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 5
  %72 = call i32 @mutex_exit(i32* %71)
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @CRYPTO_SW_PROVIDER, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %69
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %80 = call i32 @remove_provider(%struct.TYPE_11__* %79)
  br label %81

81:                                               ; preds = %78, %69
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @CRYPTO_LOGICAL_PROVIDER, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %108

87:                                               ; preds = %81
  store i64 0, i64* %4, align 8
  br label %88

88:                                               ; preds = %104, %87
  %89 = load i64, i64* %4, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = icmp ult i64 %89, %92
  br i1 %93, label %94, label %107

94:                                               ; preds = %88
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 7
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = load i64, i64* %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %103 = call i32 @kcf_remove_mech_provider(i32 %101, %struct.TYPE_11__* %102)
  br label %104

104:                                              ; preds = %94
  %105 = load i64, i64* %4, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %4, align 8
  br label %88

107:                                              ; preds = %88
  br label %108

108:                                              ; preds = %107, %81
  %109 = load i64, i64* %3, align 8
  %110 = trunc i64 %109 to i32
  %111 = call i64 @kcf_prov_tab_rem_provider(i32 %110)
  %112 = load i64, i64* @CRYPTO_SUCCESS, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %108
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %116 = call i32 @KCF_PROV_REFRELE(%struct.TYPE_11__* %115)
  %117 = load i32, i32* @CRYPTO_UNKNOWN_PROVIDER, align 4
  store i32 %117, i32* %2, align 4
  br label %199

118:                                              ; preds = %108
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %120 = call i32 @delete_kstat(%struct.TYPE_11__* %119)
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @CRYPTO_SW_PROVIDER, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %148

126:                                              ; preds = %118
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %128 = call i32 @KCF_PROV_REFRELE(%struct.TYPE_11__* %127)
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 5
  %131 = call i32 @mutex_enter(i32* %130)
  br label %132

132:                                              ; preds = %138, %126
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @KCF_PROV_FREED, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %144

138:                                              ; preds = %132
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 6
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 5
  %143 = call i32 @cv_wait(i32* %140, i32* %142)
  br label %132

144:                                              ; preds = %132
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 5
  %147 = call i32 @mutex_exit(i32* %146)
  br label %167

148:                                              ; preds = %118
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 5
  %151 = call i32 @mutex_enter(i32* %150)
  br label %152

152:                                              ; preds = %157, %148
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 3
  %155 = load i64, i64* %154, align 8
  %156 = icmp sgt i64 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %152
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 6
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 5
  %162 = call i32 @cv_wait(i32* %159, i32* %161)
  br label %152

163:                                              ; preds = %152
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 5
  %166 = call i32 @mutex_exit(i32* %165)
  br label %167

167:                                              ; preds = %163, %144
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %169 = load i32, i32* @B_FALSE, align 4
  %170 = call i32 @kcf_do_notify(%struct.TYPE_11__* %168, i32 %169)
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @CRYPTO_SW_PROVIDER, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %193

176:                                              ; preds = %167
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @KCF_PROV_FREED, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %187

182:                                              ; preds = %176
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = icmp eq i64 %185, 0
  br label %187

187:                                              ; preds = %182, %176
  %188 = phi i1 [ false, %176 ], [ %186, %182 ]
  %189 = zext i1 %188 to i32
  %190 = call i32 @ASSERT(i32 %189)
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %192 = call i32 @kcf_free_provider_desc(%struct.TYPE_11__* %191)
  br label %196

193:                                              ; preds = %167
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %195 = call i32 @KCF_PROV_REFRELE(%struct.TYPE_11__* %194)
  br label %196

196:                                              ; preds = %193, %187
  %197 = load i64, i64* @CRYPTO_SUCCESS, align 8
  %198 = trunc i64 %197 to i32
  store i32 %198, i32* %2, align 4
  br label %199

199:                                              ; preds = %196, %114, %58, %22, %11
  %200 = load i32, i32* %2, align 4
  ret i32 %200
}

declare dso_local %struct.TYPE_11__* @kcf_prov_tab_lookup(i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @KCF_PROV_REFRELE(%struct.TYPE_11__*) #1

declare dso_local i32 @cv_broadcast(i32*) #1

declare dso_local i32 @remove_provider(%struct.TYPE_11__*) #1

declare dso_local i32 @kcf_remove_mech_provider(i32, %struct.TYPE_11__*) #1

declare dso_local i64 @kcf_prov_tab_rem_provider(i32) #1

declare dso_local i32 @delete_kstat(%struct.TYPE_11__*) #1

declare dso_local i32 @cv_wait(i32*, i32*) #1

declare dso_local i32 @kcf_do_notify(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @kcf_free_provider_desc(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
