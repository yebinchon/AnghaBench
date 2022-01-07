; ModuleID = '/home/carl/AnghaBench/redis/src/extr_module.c_moduleFireServerEvent.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_module.c_moduleFireServerEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_23__*, %struct.TYPE_21__* }
%struct.TYPE_23__ = type { i32*, i32 }
%struct.TYPE_21__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_21__*, %struct.TYPE_22__, i32 (%struct.TYPE_20__*, i64, i32, i32, i8*)* }
%struct.TYPE_22__ = type { i64, i32 }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i32 }

@RedisModule_EventListeners = common dso_local global i32 0, align 4
@REDISMODULE_CTX_INIT = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@ModulesInHooks = common dso_local global i64 0, align 8
@moduleFreeContextReusedClient = common dso_local global %struct.TYPE_23__* null, align 8
@CLIENT_MODULE = common dso_local global i32 0, align 4
@REDISMODULE_EVENT_CLIENT_CHANGE = common dso_local global i64 0, align 8
@REDISMODULE_EVENT_REPLICATION_ROLE_CHANGED = common dso_local global i64 0, align 8
@REDISMODULE_EVENT_FLUSHDB = common dso_local global i64 0, align 8
@REDISMODULE_EVENT_MODULE_CHANGE = common dso_local global i64 0, align 8
@REDISMODULE_MODULE_CHANGE_VERSION = common dso_local global i32 0, align 4
@REDISMODULE_EVENT_LOADING_PROGRESS = common dso_local global i64 0, align 8
@REDISMODULE_EVENT_CRON_LOOP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @moduleFireServerEvent(i64 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_20__, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_17__, align 4
  %15 = alloca %struct.TYPE_18__*, align 8
  %16 = alloca %struct.TYPE_21__*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %17 = load i32, i32* @RedisModule_EventListeners, align 4
  %18 = call i64 @listLength(i32 %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %187

21:                                               ; preds = %3
  %22 = load i32, i32* @RedisModule_EventListeners, align 4
  %23 = call i32 @listRewind(i32 %22, i32* %7)
  br label %24

24:                                               ; preds = %186, %118, %21
  %25 = call %struct.TYPE_16__* @listNext(i32* %7)
  store %struct.TYPE_16__* %25, %struct.TYPE_16__** %8, align 8
  %26 = icmp ne %struct.TYPE_16__* %25, null
  br i1 %26, label %27, label %187

27:                                               ; preds = %24
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %29, align 8
  store %struct.TYPE_19__* %30, %struct.TYPE_19__** %9, align 8
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %4, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %186

37:                                               ; preds = %27
  %38 = bitcast %struct.TYPE_20__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 bitcast (%struct.TYPE_20__* @REDISMODULE_CTX_INIT to i8*), i64 16, i1 false)
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 1
  store %struct.TYPE_21__* %41, %struct.TYPE_21__** %42, align 8
  %43 = load i64, i64* @ModulesInHooks, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** @moduleFreeContextReusedClient, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  store %struct.TYPE_23__* %46, %struct.TYPE_23__** %47, align 8
  br label %60

48:                                               ; preds = %37
  %49 = call %struct.TYPE_23__* @createClient(i32* null)
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  store %struct.TYPE_23__* %49, %struct.TYPE_23__** %50, align 8
  %51 = load i32, i32* @CLIENT_MODULE, align 4
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %51
  store i32 %56, i32* %54, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 0
  store i32* null, i32** %59, align 8
  br label %60

60:                                               ; preds = %48, %45
  store i8* null, i8** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %61, align 8
  %63 = call i32 @selectDb(%struct.TYPE_23__* %62, i32 0)
  %64 = load i64, i64* %4, align 8
  %65 = load i64, i64* @REDISMODULE_EVENT_CLIENT_CHANGE, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %60
  %68 = load i8*, i8** %6, align 8
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @modulePopulateClientInfoStructure(i32* %12, i8* %68, i32 %72)
  %74 = bitcast i32* %12 to i8*
  store i8* %74, i8** %11, align 8
  br label %148

75:                                               ; preds = %60
  %76 = load i64, i64* %4, align 8
  %77 = load i64, i64* @REDISMODULE_EVENT_REPLICATION_ROLE_CHANGED, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %75
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @modulePopulateReplicationInfoStructure(i32* %13, i32 %83)
  %85 = bitcast i32* %13 to i8*
  store i8* %85, i8** %11, align 8
  br label %147

86:                                               ; preds = %75
  %87 = load i64, i64* %4, align 8
  %88 = load i64, i64* @REDISMODULE_EVENT_FLUSHDB, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %106

90:                                               ; preds = %86
  %91 = load i8*, i8** %6, align 8
  store i8* %91, i8** %11, align 8
  %92 = load i8*, i8** %6, align 8
  %93 = bitcast i8* %92 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %93, %struct.TYPE_18__** %15, align 8
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, -1
  br i1 %97, label %98, label %105

98:                                               ; preds = %90
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %99, align 8
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @selectDb(%struct.TYPE_23__* %100, i32 %103)
  br label %105

105:                                              ; preds = %98, %90
  br label %146

106:                                              ; preds = %86
  %107 = load i64, i64* %4, align 8
  %108 = load i64, i64* @REDISMODULE_EVENT_MODULE_CHANGE, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %131

110:                                              ; preds = %106
  %111 = load i8*, i8** %6, align 8
  %112 = bitcast i8* %111 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %112, %struct.TYPE_21__** %16, align 8
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %115, align 8
  %117 = icmp eq %struct.TYPE_21__* %113, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %110
  br label %24

119:                                              ; preds = %110
  %120 = load i32, i32* @REDISMODULE_MODULE_CHANGE_VERSION, align 4
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 2
  store i32 %120, i32* %121, align 4
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 1
  store i32 %124, i32* %125, align 4
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  store i32 %128, i32* %129, align 4
  %130 = bitcast %struct.TYPE_17__* %14 to i8*
  store i8* %130, i8** %11, align 8
  br label %145

131:                                              ; preds = %106
  %132 = load i64, i64* %4, align 8
  %133 = load i64, i64* @REDISMODULE_EVENT_LOADING_PROGRESS, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %131
  %136 = load i8*, i8** %6, align 8
  store i8* %136, i8** %11, align 8
  br label %144

137:                                              ; preds = %131
  %138 = load i64, i64* %4, align 8
  %139 = load i64, i64* @REDISMODULE_EVENT_CRON_LOOP, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %137
  %142 = load i8*, i8** %6, align 8
  store i8* %142, i8** %11, align 8
  br label %143

143:                                              ; preds = %141, %137
  br label %144

144:                                              ; preds = %143, %135
  br label %145

145:                                              ; preds = %144, %119
  br label %146

146:                                              ; preds = %145, %105
  br label %147

147:                                              ; preds = %146, %79
  br label %148

148:                                              ; preds = %147, %67
  %149 = load i64, i64* @ModulesInHooks, align 8
  %150 = add nsw i64 %149, 1
  store i64 %150, i64* @ModulesInHooks, align 8
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %154, align 4
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 2
  %159 = load i32 (%struct.TYPE_20__*, i64, i32, i32, i8*)*, i32 (%struct.TYPE_20__*, i64, i32, i32, i8*)** %158, align 8
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 1
  %162 = load i32, i32* %5, align 4
  %163 = load i8*, i8** %11, align 8
  %164 = bitcast %struct.TYPE_22__* %161 to { i64, i32 }*
  %165 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %164, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = call i32 %159(%struct.TYPE_20__* %10, i64 %166, i32 %168, i32 %162, i8* %163)
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %174, -1
  store i32 %175, i32* %173, align 4
  %176 = load i64, i64* @ModulesInHooks, align 8
  %177 = add nsw i64 %176, -1
  store i64 %177, i64* @ModulesInHooks, align 8
  %178 = load i64, i64* @ModulesInHooks, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %148
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %182 = load %struct.TYPE_23__*, %struct.TYPE_23__** %181, align 8
  %183 = call i32 @freeClient(%struct.TYPE_23__* %182)
  br label %184

184:                                              ; preds = %180, %148
  %185 = call i32 @moduleFreeContext(%struct.TYPE_20__* %10)
  br label %186

186:                                              ; preds = %184, %27
  br label %24

187:                                              ; preds = %20, %24
  ret void
}

declare dso_local i64 @listLength(i32) #1

declare dso_local i32 @listRewind(i32, i32*) #1

declare dso_local %struct.TYPE_16__* @listNext(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_23__* @createClient(i32*) #1

declare dso_local i32 @selectDb(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @modulePopulateClientInfoStructure(i32*, i8*, i32) #1

declare dso_local i32 @modulePopulateReplicationInfoStructure(i32*, i32) #1

declare dso_local i32 @freeClient(%struct.TYPE_23__*) #1

declare dso_local i32 @moduleFreeContext(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
