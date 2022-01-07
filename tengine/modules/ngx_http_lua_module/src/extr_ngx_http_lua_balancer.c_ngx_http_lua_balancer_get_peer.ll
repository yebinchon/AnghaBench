; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_balancer.c_ngx_http_lua_balancer_get_peer.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_balancer.c_ngx_http_lua_balancer_get_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i32, i32*, i64, i64, i32*, i32, i32 }
%struct.TYPE_33__ = type { %struct.TYPE_31__* }
%struct.TYPE_31__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i64 }
%struct.TYPE_36__ = type { i64, i64, i32 }
%struct.TYPE_34__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i64 (%struct.TYPE_33__*, %struct.TYPE_34__*, i32*)* }
%struct.TYPE_35__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.TYPE_27__, i64, i32, i64, i32*, i32, %struct.TYPE_33__*, %struct.TYPE_34__* }
%struct.TYPE_27__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i64 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"lua balancer peer, tries: %ui\00", align 1
@ngx_http_lua_module = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"reset ctx\00", align 1
@NGX_HTTP_LUA_CONTEXT_BALANCER = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_BUSY = common dso_local global i64 0, align 8
@NGX_DECLINED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"tries: %d\00", align 1
@NGX_HTTP_SPECIAL_RESPONSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_32__*, i8*)* @ngx_http_lua_balancer_get_peer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_lua_balancer_get_peer(%struct.TYPE_32__* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_32__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_33__*, align 8
  %9 = alloca %struct.TYPE_36__*, align 8
  %10 = alloca %struct.TYPE_34__*, align 8
  %11 = alloca %struct.TYPE_35__*, align 8
  %12 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %14, %struct.TYPE_26__** %12, align 8
  %15 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %16 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @ngx_log_debug1(i32 %15, i32 %18, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %23, i32 0, i32 7
  %25 = load %struct.TYPE_34__*, %struct.TYPE_34__** %24, align 8
  store %struct.TYPE_34__* %25, %struct.TYPE_34__** %10, align 8
  %26 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %26, i32 0, i32 6
  %28 = load %struct.TYPE_33__*, %struct.TYPE_33__** %27, align 8
  store %struct.TYPE_33__* %28, %struct.TYPE_33__** %8, align 8
  %29 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %30, i32 0, i32 0
  %32 = load i64 (%struct.TYPE_33__*, %struct.TYPE_34__*, i32*)*, i64 (%struct.TYPE_33__*, %struct.TYPE_34__*, i32*)** %31, align 8
  %33 = icmp ne i64 (%struct.TYPE_33__*, %struct.TYPE_34__*, i32*)* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %2
  %35 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %36 = icmp ne %struct.TYPE_33__* %35, null
  br label %37

37:                                               ; preds = %34, %2
  %38 = phi i1 [ false, %2 ], [ %36, %34 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @ngx_http_lua_assert(i32 %39)
  %41 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %42 = load i32, i32* @ngx_http_lua_module, align 4
  %43 = call %struct.TYPE_36__* @ngx_http_get_module_ctx(%struct.TYPE_33__* %41, i32 %42)
  store %struct.TYPE_36__* %43, %struct.TYPE_36__** %9, align 8
  %44 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %45 = icmp eq %struct.TYPE_36__* %44, null
  br i1 %45, label %46, label %57

46:                                               ; preds = %37
  %47 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %48 = call %struct.TYPE_36__* @ngx_http_lua_create_ctx(%struct.TYPE_33__* %47)
  store %struct.TYPE_36__* %48, %struct.TYPE_36__** %9, align 8
  %49 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %50 = icmp eq %struct.TYPE_36__* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i64, i64* @NGX_ERROR, align 8
  store i64 %52, i64* %3, align 8
  br label %199

53:                                               ; preds = %46
  %54 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %55 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %56 = call i32* @ngx_http_lua_get_lua_vm(%struct.TYPE_33__* %54, %struct.TYPE_36__* %55)
  store i32* %56, i32** %6, align 8
  br label %66

57:                                               ; preds = %37
  %58 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %59 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %60 = call i32* @ngx_http_lua_get_lua_vm(%struct.TYPE_33__* %58, %struct.TYPE_36__* %59)
  store i32* %60, i32** %6, align 8
  %61 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %62 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %65 = call i32 @ngx_http_lua_reset_ctx(%struct.TYPE_33__* %62, i32* %63, %struct.TYPE_36__* %64)
  br label %66

66:                                               ; preds = %57, %53
  %67 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_BALANCER, align 4
  %68 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %70, i32 0, i32 4
  store i32* null, i32** %71, align 8
  %72 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %72, i32 0, i32 3
  store i64 0, i64* %73, align 8
  %74 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %74, i32 0, i32 1
  store i64 0, i64* %75, align 8
  %76 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 8
  %80 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %81 = load i32, i32* @ngx_http_lua_module, align 4
  %82 = call %struct.TYPE_35__* @ngx_http_get_module_main_conf(%struct.TYPE_33__* %80, i32 %81)
  store %struct.TYPE_35__* %82, %struct.TYPE_35__** %11, align 8
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %84 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %84, i32 0, i32 0
  store %struct.TYPE_26__* %83, %struct.TYPE_26__** %85, align 8
  %86 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %87, i32 0, i32 0
  %89 = load i64 (%struct.TYPE_33__*, %struct.TYPE_34__*, i32*)*, i64 (%struct.TYPE_33__*, %struct.TYPE_34__*, i32*)** %88, align 8
  %90 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %91 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %92 = load i32*, i32** %6, align 8
  %93 = call i64 %89(%struct.TYPE_33__* %90, %struct.TYPE_34__* %91, i32* %92)
  store i64 %93, i64* %7, align 8
  %94 = load i64, i64* %7, align 8
  %95 = load i64, i64* @NGX_ERROR, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %66
  %98 = load i64, i64* @NGX_ERROR, align 8
  store i64 %98, i64* %3, align 8
  br label %199

99:                                               ; preds = %66
  %100 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %134

104:                                              ; preds = %99
  %105 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @NGX_OK, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %134

110:                                              ; preds = %104
  %111 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  store i64 %113, i64* %7, align 8
  %114 = load i64, i64* %7, align 8
  %115 = load i64, i64* @NGX_ERROR, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %125, label %117

117:                                              ; preds = %110
  %118 = load i64, i64* %7, align 8
  %119 = load i64, i64* @NGX_BUSY, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %125, label %121

121:                                              ; preds = %117
  %122 = load i64, i64* %7, align 8
  %123 = load i64, i64* @NGX_DECLINED, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %121, %117, %110
  %126 = load i64, i64* %7, align 8
  store i64 %126, i64* %3, align 8
  br label %199

127:                                              ; preds = %121
  %128 = load i64, i64* %7, align 8
  %129 = load i64, i64* @NGX_OK, align 8
  %130 = icmp sgt i64 %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %127
  %132 = load i64, i64* @NGX_ERROR, align 8
  store i64 %132, i64* %3, align 8
  br label %199

133:                                              ; preds = %127
  br label %134

134:                                              ; preds = %133, %104, %99
  %135 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %135, i32 0, i32 4
  %137 = load i32*, i32** %136, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %194

139:                                              ; preds = %134
  %140 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %194

144:                                              ; preds = %139
  %145 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %146 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %145, i32 0, i32 4
  %147 = load i32*, i32** %146, align 8
  %148 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %148, i32 0, i32 4
  store i32* %147, i32** %149, align 8
  %150 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %153, i32 0, i32 3
  store i64 %152, i64* %154, align 8
  %155 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %155, i32 0, i32 2
  store i64 0, i64* %156, align 8
  %157 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %157, i32 0, i32 1
  store i32* null, i32** %158, align 8
  %159 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 8
  %164 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %165 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_29__*, %struct.TYPE_29__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %167, i32 0, i32 0
  store i64 0, i64* %168, align 8
  %169 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %170 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %184

173:                                              ; preds = %144
  %174 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %175 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_31__*, %struct.TYPE_31__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = add nsw i64 %182, %176
  store i64 %183, i64* %181, align 8
  br label %184

184:                                              ; preds = %173, %144
  %185 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_31__*, %struct.TYPE_31__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = trunc i64 %190 to i32
  %192 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %191)
  %193 = load i64, i64* @NGX_OK, align 8
  store i64 %193, i64* %3, align 8
  br label %199

194:                                              ; preds = %139, %134
  %195 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %196 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %197 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %196, i32 0, i32 0
  %198 = call i64 @ngx_http_upstream_get_round_robin_peer(%struct.TYPE_32__* %195, %struct.TYPE_27__* %197)
  store i64 %198, i64* %3, align 8
  br label %199

199:                                              ; preds = %194, %184, %131, %125, %97, %51
  %200 = load i64, i64* %3, align 8
  ret i64 %200
}

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ngx_http_lua_assert(i32) #1

declare dso_local %struct.TYPE_36__* @ngx_http_get_module_ctx(%struct.TYPE_33__*, i32) #1

declare dso_local %struct.TYPE_36__* @ngx_http_lua_create_ctx(%struct.TYPE_33__*) #1

declare dso_local i32* @ngx_http_lua_get_lua_vm(%struct.TYPE_33__*, %struct.TYPE_36__*) #1

declare dso_local i32 @dd(i8*, ...) #1

declare dso_local i32 @ngx_http_lua_reset_ctx(%struct.TYPE_33__*, i32*, %struct.TYPE_36__*) #1

declare dso_local %struct.TYPE_35__* @ngx_http_get_module_main_conf(%struct.TYPE_33__*, i32) #1

declare dso_local i64 @ngx_http_upstream_get_round_robin_peer(%struct.TYPE_32__*, %struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
