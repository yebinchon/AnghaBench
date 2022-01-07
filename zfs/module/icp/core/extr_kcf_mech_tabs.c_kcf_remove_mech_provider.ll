; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/core/extr_kcf_mech_tabs.c_kcf_remove_mech_provider.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/core/extr_kcf_mech_tabs.c_kcf_remove_mech_provider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__*, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__*, %struct.TYPE_11__*, i32 }

@CRYPTO_LOGICAL_PROVIDER = common dso_local global i32 0, align 4
@CRYPTO_MECH_INVALID = common dso_local global i64 0, align 8
@KCF_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kcf_remove_mech_provider(i8* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_11__**, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca %struct.TYPE_11__**, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %6, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @CRYPTO_LOGICAL_PROVIDER, align 4
  %18 = icmp ne i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @ASSERT(i32 %19)
  %21 = load i8*, i8** %3, align 8
  %22 = call i64 @kcf_mech_hash_find(i8* %21)
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* @CRYPTO_MECH_INVALID, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %215

26:                                               ; preds = %2
  %27 = load i64, i64* %5, align 8
  %28 = call i64 @kcf_get_mech_entry(i64 %27, %struct.TYPE_12__** %9)
  %29 = load i64, i64* @KCF_SUCCESS, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %215

32:                                               ; preds = %26
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = call i32 @mutex_enter(i32* %34)
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %107 [
    i32 129, label %39
    i32 128, label %84
  ]

39:                                               ; preds = %32
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 2
  store %struct.TYPE_11__** %41, %struct.TYPE_11__*** %8, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  store %struct.TYPE_11__* %44, %struct.TYPE_11__** %6, align 8
  br label %45

45:                                               ; preds = %56, %39
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %47 = icmp ne %struct.TYPE_11__* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %53 = icmp ne %struct.TYPE_10__* %51, %52
  br label %54

54:                                               ; preds = %48, %45
  %55 = phi i1 [ false, %45 ], [ %53, %48 ]
  br i1 %55, label %56, label %62

56:                                               ; preds = %54
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 2
  store %struct.TYPE_11__** %58, %struct.TYPE_11__*** %8, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  store %struct.TYPE_11__* %61, %struct.TYPE_11__** %6, align 8
  br label %45

62:                                               ; preds = %54
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %64 = icmp eq %struct.TYPE_11__* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = call i32 @mutex_exit(i32* %67)
  br label %215

69:                                               ; preds = %62
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  store %struct.TYPE_11__* %72, %struct.TYPE_11__** %73, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = icmp sgt i32 %76, 0
  %78 = zext i1 %77 to i32
  %79 = call i32 @ASSERT(i32 %78)
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %81, align 8
  br label %111

84:                                               ; preds = %32
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %86, align 8
  %88 = icmp eq %struct.TYPE_11__* %87, null
  br i1 %88, label %97, label %89

89:                                               ; preds = %84
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %96 = icmp ne %struct.TYPE_10__* %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %89, %84
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = call i32 @mutex_exit(i32* %99)
  br label %215

101:                                              ; preds = %89
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %103, align 8
  store %struct.TYPE_11__* %104, %struct.TYPE_11__** %6, align 8
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 1
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %106, align 8
  br label %111

107:                                              ; preds = %32
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = call i32 @mutex_exit(i32* %109)
  br label %215

111:                                              ; preds = %101, %69
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = call i32 @mutex_exit(i32* %113)
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 4
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %116, align 8
  store %struct.TYPE_11__* %117, %struct.TYPE_11__** %10, align 8
  br label %118

118:                                              ; preds = %197, %131, %111
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %120 = icmp ne %struct.TYPE_11__* %119, null
  br i1 %120, label %121, label %204

121:                                              ; preds = %118
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 3
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %123, align 8
  store %struct.TYPE_11__* %124, %struct.TYPE_11__** %12, align 8
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = call i64 @kcf_get_mech_entry(i64 %127, %struct.TYPE_12__** %9)
  %129 = load i64, i64* @KCF_SUCCESS, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %121
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_11__* %132, %struct.TYPE_11__** %10, align 8
  br label %118

133:                                              ; preds = %121
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  %136 = call i32 @mutex_enter(i32* %135)
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = icmp eq i32 %139, 129
  br i1 %140, label %141, label %145

141:                                              ; preds = %133
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 2
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %143, align 8
  store %struct.TYPE_11__* %144, %struct.TYPE_11__** %7, align 8
  br label %149

145:                                              ; preds = %133
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %147, align 8
  store %struct.TYPE_11__* %148, %struct.TYPE_11__** %7, align 8
  br label %149

149:                                              ; preds = %145, %141
  br label %150

150:                                              ; preds = %193, %149
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %152 = icmp ne %struct.TYPE_11__* %151, null
  br i1 %152, label %153, label %197

153:                                              ; preds = %150
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %155, align 8
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %158 = icmp eq %struct.TYPE_10__* %156, %157
  br i1 %158, label %159, label %193

159:                                              ; preds = %153
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 4
  store %struct.TYPE_11__** %161, %struct.TYPE_11__*** %13, align 8
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 4
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %163, align 8
  store %struct.TYPE_11__* %164, %struct.TYPE_11__** %11, align 8
  br label %165

165:                                              ; preds = %176, %159
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %167 = icmp ne %struct.TYPE_11__* %166, null
  br i1 %167, label %168, label %174

168:                                              ; preds = %165
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* %5, align 8
  %173 = icmp ne i64 %171, %172
  br label %174

174:                                              ; preds = %168, %165
  %175 = phi i1 [ false, %165 ], [ %173, %168 ]
  br i1 %175, label %176, label %182

176:                                              ; preds = %174
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 3
  store %struct.TYPE_11__** %178, %struct.TYPE_11__*** %13, align 8
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 3
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %180, align 8
  store %struct.TYPE_11__* %181, %struct.TYPE_11__** %11, align 8
  br label %165

182:                                              ; preds = %174
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %184 = icmp ne %struct.TYPE_11__* %183, null
  br i1 %184, label %185, label %192

185:                                              ; preds = %182
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 3
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %187, align 8
  %189 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %13, align 8
  store %struct.TYPE_11__* %188, %struct.TYPE_11__** %189, align 8
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %191 = call i32 @kmem_free(%struct.TYPE_11__* %190, i32 40)
  br label %192

192:                                              ; preds = %185, %182
  br label %197

193:                                              ; preds = %153
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 2
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %195, align 8
  store %struct.TYPE_11__* %196, %struct.TYPE_11__** %7, align 8
  br label %150

197:                                              ; preds = %192, %150
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 0
  %200 = call i32 @mutex_exit(i32* %199)
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %202 = call i32 @kmem_free(%struct.TYPE_11__* %201, i32 40)
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_11__* %203, %struct.TYPE_11__** %10, align 8
  br label %118

204:                                              ; preds = %118
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 1
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %206, align 8
  %208 = call i32 @KCF_PROV_REFRELE(%struct.TYPE_10__* %207)
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 1
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %210, align 8
  %212 = call i32 @KCF_PROV_IREFRELE(%struct.TYPE_10__* %211)
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %214 = call i32 @kmem_free(%struct.TYPE_11__* %213, i32 40)
  br label %215

215:                                              ; preds = %204, %107, %97, %65, %31, %25
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @kcf_mech_hash_find(i8*) #1

declare dso_local i64 @kcf_get_mech_entry(i64, %struct.TYPE_12__**) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @KCF_PROV_REFRELE(%struct.TYPE_10__*) #1

declare dso_local i32 @KCF_PROV_IREFRELE(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
