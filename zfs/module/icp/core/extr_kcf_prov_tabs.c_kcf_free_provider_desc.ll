; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/core/extr_kcf_prov_tabs.c_kcf_free_provider_desc.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/core/extr_kcf_prov_tabs.c_kcf_free_provider_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32* }

@prov_tab_mutex = common dso_local global i32 0, align 4
@KCF_PROVID_INVALID = common dso_local global i64 0, align 8
@prov_tab = common dso_local global i32** null, align 8
@prov_tab_num = common dso_local global i32 0, align 4
@CRYPTO_PROVIDER_DESCR_MAX_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kcf_free_provider_desc(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %4 = icmp eq %struct.TYPE_6__* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %317

6:                                                ; preds = %1
  %7 = call i32 @mutex_enter(i32* @prov_tab_mutex)
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @KCF_PROVID_INVALID, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %6
  %14 = load i32**, i32*** @prov_tab, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32*, i32** %14, i64 %17
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @ASSERT(i32 %21)
  %23 = load i32**, i32*** @prov_tab, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32*, i32** %23, i64 %26
  store i32* null, i32** %27, align 8
  %28 = load i32, i32* @prov_tab_num, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* @prov_tab_num, align 4
  br label %30

30:                                               ; preds = %13, %6
  %31 = call i32 @mutex_exit(i32* @prov_tab_mutex)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 24
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = icmp ne %struct.TYPE_6__* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 24
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = load i32, i32* @CRYPTO_PROVIDER_DESCR_MAX_LEN, align 4
  %41 = add nsw i32 %40, 1
  %42 = call i32 @kmem_free(%struct.TYPE_6__* %39, i32 %41)
  br label %43

43:                                               ; preds = %36, %30
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 7
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = icmp ne %struct.TYPE_6__* %46, null
  br i1 %47, label %48, label %277

48:                                               ; preds = %43
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 7
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 23
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = icmp ne %struct.TYPE_6__* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %48
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 7
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 23
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = call i32 @kmem_free(%struct.TYPE_6__* %60, i32 4)
  br label %62

62:                                               ; preds = %55, %48
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 7
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 22
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = icmp ne %struct.TYPE_6__* %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %62
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 7
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 22
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = call i32 @kmem_free(%struct.TYPE_6__* %74, i32 4)
  br label %76

76:                                               ; preds = %69, %62
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 7
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 21
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = icmp ne %struct.TYPE_6__* %81, null
  br i1 %82, label %83, label %90

83:                                               ; preds = %76
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 7
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 21
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = call i32 @kmem_free(%struct.TYPE_6__* %88, i32 4)
  br label %90

90:                                               ; preds = %83, %76
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 7
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 20
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = icmp ne %struct.TYPE_6__* %95, null
  br i1 %96, label %97, label %104

97:                                               ; preds = %90
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 7
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 20
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = call i32 @kmem_free(%struct.TYPE_6__* %102, i32 4)
  br label %104

104:                                              ; preds = %97, %90
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 7
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 19
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = icmp ne %struct.TYPE_6__* %109, null
  br i1 %110, label %111, label %118

111:                                              ; preds = %104
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 7
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 19
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = call i32 @kmem_free(%struct.TYPE_6__* %116, i32 4)
  br label %118

118:                                              ; preds = %111, %104
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 7
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 18
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = icmp ne %struct.TYPE_6__* %123, null
  br i1 %124, label %125, label %132

125:                                              ; preds = %118
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 7
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 18
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = call i32 @kmem_free(%struct.TYPE_6__* %130, i32 4)
  br label %132

132:                                              ; preds = %125, %118
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 7
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 17
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = icmp ne %struct.TYPE_6__* %137, null
  br i1 %138, label %139, label %146

139:                                              ; preds = %132
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 7
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 17
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %143, align 8
  %145 = call i32 @kmem_free(%struct.TYPE_6__* %144, i32 4)
  br label %146

146:                                              ; preds = %139, %132
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 7
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 16
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %150, align 8
  %152 = icmp ne %struct.TYPE_6__* %151, null
  br i1 %152, label %153, label %160

153:                                              ; preds = %146
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 7
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 16
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %157, align 8
  %159 = call i32 @kmem_free(%struct.TYPE_6__* %158, i32 4)
  br label %160

160:                                              ; preds = %153, %146
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 7
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 15
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %164, align 8
  %166 = icmp ne %struct.TYPE_6__* %165, null
  br i1 %166, label %167, label %174

167:                                              ; preds = %160
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 7
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 15
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %171, align 8
  %173 = call i32 @kmem_free(%struct.TYPE_6__* %172, i32 4)
  br label %174

174:                                              ; preds = %167, %160
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 7
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 14
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %178, align 8
  %180 = icmp ne %struct.TYPE_6__* %179, null
  br i1 %180, label %181, label %188

181:                                              ; preds = %174
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 7
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 14
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %185, align 8
  %187 = call i32 @kmem_free(%struct.TYPE_6__* %186, i32 4)
  br label %188

188:                                              ; preds = %181, %174
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 7
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 13
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %192, align 8
  %194 = icmp ne %struct.TYPE_6__* %193, null
  br i1 %194, label %195, label %202

195:                                              ; preds = %188
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 7
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 13
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %199, align 8
  %201 = call i32 @kmem_free(%struct.TYPE_6__* %200, i32 4)
  br label %202

202:                                              ; preds = %195, %188
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 7
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 12
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %206, align 8
  %208 = icmp ne %struct.TYPE_6__* %207, null
  br i1 %208, label %209, label %216

209:                                              ; preds = %202
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 7
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 12
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %213, align 8
  %215 = call i32 @kmem_free(%struct.TYPE_6__* %214, i32 4)
  br label %216

216:                                              ; preds = %209, %202
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 7
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 11
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** %220, align 8
  %222 = icmp ne %struct.TYPE_6__* %221, null
  br i1 %222, label %223, label %230

223:                                              ; preds = %216
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 7
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 11
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %227, align 8
  %229 = call i32 @kmem_free(%struct.TYPE_6__* %228, i32 4)
  br label %230

230:                                              ; preds = %223, %216
  %231 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 7
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 10
  %235 = load %struct.TYPE_6__*, %struct.TYPE_6__** %234, align 8
  %236 = icmp ne %struct.TYPE_6__* %235, null
  br i1 %236, label %237, label %244

237:                                              ; preds = %230
  %238 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 7
  %240 = load %struct.TYPE_6__*, %struct.TYPE_6__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 10
  %242 = load %struct.TYPE_6__*, %struct.TYPE_6__** %241, align 8
  %243 = call i32 @kmem_free(%struct.TYPE_6__* %242, i32 4)
  br label %244

244:                                              ; preds = %237, %230
  %245 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 7
  %247 = load %struct.TYPE_6__*, %struct.TYPE_6__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 9
  %249 = load %struct.TYPE_6__*, %struct.TYPE_6__** %248, align 8
  %250 = icmp ne %struct.TYPE_6__* %249, null
  br i1 %250, label %251, label %258

251:                                              ; preds = %244
  %252 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i32 0, i32 7
  %254 = load %struct.TYPE_6__*, %struct.TYPE_6__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 9
  %256 = load %struct.TYPE_6__*, %struct.TYPE_6__** %255, align 8
  %257 = call i32 @kmem_free(%struct.TYPE_6__* %256, i32 4)
  br label %258

258:                                              ; preds = %251, %244
  %259 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 7
  %261 = load %struct.TYPE_6__*, %struct.TYPE_6__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 8
  %263 = load %struct.TYPE_6__*, %struct.TYPE_6__** %262, align 8
  %264 = icmp ne %struct.TYPE_6__* %263, null
  br i1 %264, label %265, label %272

265:                                              ; preds = %258
  %266 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 7
  %268 = load %struct.TYPE_6__*, %struct.TYPE_6__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 8
  %270 = load %struct.TYPE_6__*, %struct.TYPE_6__** %269, align 8
  %271 = call i32 @kmem_free(%struct.TYPE_6__* %270, i32 4)
  br label %272

272:                                              ; preds = %265, %258
  %273 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %274 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i32 0, i32 7
  %275 = load %struct.TYPE_6__*, %struct.TYPE_6__** %274, align 8
  %276 = call i32 @kmem_free(%struct.TYPE_6__* %275, i32 4)
  br label %277

277:                                              ; preds = %272, %43
  %278 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 6
  %280 = load %struct.TYPE_6__*, %struct.TYPE_6__** %279, align 8
  %281 = icmp ne %struct.TYPE_6__* %280, null
  br i1 %281, label %282, label %293

282:                                              ; preds = %277
  %283 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %284 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %283, i32 0, i32 6
  %285 = load %struct.TYPE_6__*, %struct.TYPE_6__** %284, align 8
  %286 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %287 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 8
  %289 = sext i32 %288 to i64
  %290 = mul i64 4, %289
  %291 = trunc i64 %290 to i32
  %292 = call i32 @kmem_free(%struct.TYPE_6__* %285, i32 %291)
  br label %293

293:                                              ; preds = %282, %277
  %294 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %295 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %294, i32 0, i32 5
  %296 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %295, i32 0, i32 0
  %297 = load i32*, i32** %296, align 8
  %298 = icmp ne i32* %297, null
  br i1 %298, label %299, label %305

299:                                              ; preds = %293
  %300 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %301 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %300, i32 0, i32 5
  %302 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %301, i32 0, i32 0
  %303 = load i32*, i32** %302, align 8
  %304 = call i32 @taskq_destroy(i32* %303)
  br label %305

305:                                              ; preds = %299, %293
  %306 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %307 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %306, i32 0, i32 4
  %308 = call i32 @mutex_destroy(i32* %307)
  %309 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %310 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %309, i32 0, i32 3
  %311 = call i32 @cv_destroy(i32* %310)
  %312 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %313 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %312, i32 0, i32 2
  %314 = call i32 @cv_destroy(i32* %313)
  %315 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %316 = call i32 @kmem_free(%struct.TYPE_6__* %315, i32 184)
  br label %317

317:                                              ; preds = %305, %5
  ret void
}

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @taskq_destroy(i32*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @cv_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
