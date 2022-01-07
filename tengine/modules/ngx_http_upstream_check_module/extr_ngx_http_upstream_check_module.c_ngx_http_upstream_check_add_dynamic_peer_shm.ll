; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_check_module/extr_ngx_http_upstream_check_module.c_ngx_http_upstream_check_add_dynamic_peer_shm.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_check_module/extr_ngx_http_upstream_check_module.c_ngx_http_upstream_check_add_dynamic_peer_shm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_17__*, %struct.TYPE_15__* }
%struct.TYPE_17__ = type { i64, i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, i64, i64, i32* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_19__ = type { i64, i32, i32 }

@check_peers_ctx = common dso_local global %struct.TYPE_13__* null, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@PEER_DELETED = common dso_local global i64 0, align 8
@PEER_NORMAL = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_16__*, %struct.TYPE_19__*)* @ngx_http_upstream_check_add_dynamic_peer_shm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_upstream_check_add_dynamic_peer_shm(i32* %0, %struct.TYPE_16__* %1, %struct.TYPE_19__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %7, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** @check_peers_ctx, align 8
  %15 = icmp eq %struct.TYPE_13__* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i64, i64* @NGX_ERROR, align 8
  store i64 %17, i64* %4, align 8
  br label %218

18:                                               ; preds = %3
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** @check_peers_ctx, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  store %struct.TYPE_15__* %21, %struct.TYPE_15__** %11, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** @check_peers_ctx, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  store %struct.TYPE_17__* %24, %struct.TYPE_17__** %13, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  store %struct.TYPE_18__* %27, %struct.TYPE_18__** %12, align 8
  %28 = load i64, i64* @NGX_ERROR, align 8
  store i64 %28, i64* %10, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = call i32 @ngx_shmtx_lock(i32* %30)
  store i64 0, i64* %9, align 8
  br label %32

32:                                               ; preds = %93, %18
  %33 = load i64, i64* %9, align 8
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ult i64 %33, %36
  br i1 %37, label %38, label %96

38:                                               ; preds = %32
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @PEER_DELETED, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %93

47:                                               ; preds = %38
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %52 = load i64, i64* %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %50, %55
  br i1 %56, label %57, label %92

57:                                               ; preds = %47
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %62 = load i64, i64* %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i64 @ngx_memcmp(i32 %60, i32* %65, i64 %68)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %92

71:                                               ; preds = %57
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %73 = load i64, i64* %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @ngx_murmur_hash2(i32 %80, i32 %84)
  %86 = icmp eq i64 %76, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %71
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = call i32 @ngx_shmtx_unlock(i32* %89)
  %91 = load i64, i64* %9, align 8
  store i64 %91, i64* %4, align 8
  br label %218

92:                                               ; preds = %71, %57, %47
  br label %93

93:                                               ; preds = %92, %46
  %94 = load i64, i64* %9, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %9, align 8
  br label %32

96:                                               ; preds = %32
  store i64 0, i64* %9, align 8
  br label %97

97:                                               ; preds = %119, %96
  %98 = load i64, i64* %9, align 8
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ult i64 %98, %101
  br i1 %102, label %103, label %122

103:                                              ; preds = %97
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %105 = load i64, i64* %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @PEER_DELETED, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %118

111:                                              ; preds = %103
  %112 = load i64, i64* @PEER_NORMAL, align 8
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %114 = load i64, i64* %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 0
  store i64 %112, i64* %116, align 8
  %117 = load i64, i64* %9, align 8
  store i64 %117, i64* %10, align 8
  br label %122

118:                                              ; preds = %103
  br label %119

119:                                              ; preds = %118
  %120 = load i64, i64* %9, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %9, align 8
  br label %97

122:                                              ; preds = %111, %97
  %123 = load i64, i64* %10, align 8
  %124 = load i64, i64* @NGX_ERROR, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %140

126:                                              ; preds = %122
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp uge i64 %129, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %126
  br label %213

135:                                              ; preds = %126
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %137, align 8
  store i64 %138, i64* %10, align 8
  br label %140

140:                                              ; preds = %135, %122
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %142 = load i64, i64* %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i64 %142
  %144 = call i32 @ngx_memzero(%struct.TYPE_18__* %143, i32 32)
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %149 = load i64, i64* %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 1
  store i64 %147, i64* %151, align 8
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = call i32* @ngx_slab_alloc_locked(%struct.TYPE_15__* %152, i64 %155)
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %158 = load i64, i64* %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 3
  store i32* %156, i32** %160, align 8
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %162 = load i64, i64* %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 3
  %165 = load i32*, i32** %164, align 8
  %166 = icmp eq i32* %165, null
  br i1 %166, label %167, label %168

167:                                              ; preds = %140
  br label %213

168:                                              ; preds = %140
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %170 = load i64, i64* %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 3
  %173 = load i32*, i32** %172, align 8
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = call i32 @ngx_memcpy(i32* %173, i32 %176, i64 %179)
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %182 = load i64, i64* %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i64 %182
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load i32*, i32** %5, align 8
  %188 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %188, i32 0, i32 1
  %190 = call i64 @ngx_http_upstream_check_init_shm_peer(%struct.TYPE_18__* %183, i32* null, i32 %186, i32* %187, i32* %189)
  store i64 %190, i64* %8, align 8
  %191 = load i64, i64* %8, align 8
  %192 = load i64, i64* @NGX_OK, align 8
  %193 = icmp ne i64 %191, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %168
  br label %213

195:                                              ; preds = %168
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i64 @ngx_murmur_hash2(i32 %199, i32 %203)
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %206 = load i64, i64* %10, align 8
  %207 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 2
  store i64 %204, i64* %208, align 8
  %209 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 0
  %211 = call i32 @ngx_shmtx_unlock(i32* %210)
  %212 = load i64, i64* %10, align 8
  store i64 %212, i64* %4, align 8
  br label %218

213:                                              ; preds = %194, %167, %134
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 0
  %216 = call i32 @ngx_shmtx_unlock(i32* %215)
  %217 = load i64, i64* @NGX_ERROR, align 8
  store i64 %217, i64* %4, align 8
  br label %218

218:                                              ; preds = %213, %195, %87, %16
  %219 = load i64, i64* %4, align 8
  ret i64 %219
}

declare dso_local i32 @ngx_shmtx_lock(i32*) #1

declare dso_local i64 @ngx_memcmp(i32, i32*, i64) #1

declare dso_local i64 @ngx_murmur_hash2(i32, i32) #1

declare dso_local i32 @ngx_shmtx_unlock(i32*) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_18__*, i32) #1

declare dso_local i32* @ngx_slab_alloc_locked(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @ngx_memcpy(i32*, i32, i64) #1

declare dso_local i64 @ngx_http_upstream_check_init_shm_peer(%struct.TYPE_18__*, i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
