; ModuleID = '/home/carl/AnghaBench/redis/src/extr_module.c_moduleHandleBlockedClients.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_module.c_moduleHandleBlockedClients.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32* }
%struct.TYPE_22__ = type { %struct.TYPE_21__*, %struct.TYPE_19__*, i64, i32, %struct.TYPE_23__*, i32* }
%struct.TYPE_21__ = type { i32, i32, i64 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_19__*, i32*, i32, i64, i32 (%struct.TYPE_22__*, i64)*, %struct.TYPE_21__*, i32 (%struct.TYPE_22__*, i8**, i32)*, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_23__* }

@moduleUnblockedClientsMutex = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@moduleUnblockedClients = common dso_local global i32 0, align 4
@REDISMODULE_CTX_INIT = common dso_local global %struct.TYPE_22__ zeroinitializer, align 8
@REDISMODULE_CTX_BLOCKED_REPLY = common dso_local global i32 0, align 4
@REDISMODULE_CTX_BLOCKED_DISCONNECTED = common dso_local global i32 0, align 4
@CLIENT_PENDING_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @moduleHandleBlockedClients() #0 {
  %1 = alloca %struct.TYPE_20__*, align 8
  %2 = alloca %struct.TYPE_23__*, align 8
  %3 = alloca [1 x i8], align 1
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_22__, align 8
  %6 = alloca %struct.TYPE_22__, align 8
  %7 = call i32 @pthread_mutex_lock(i32* @moduleUnblockedClientsMutex)
  br label %8

8:                                                ; preds = %15, %0
  %9 = load i32*, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @server, i32 0, i32 1), align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds [1 x i8], [1 x i8]* %3, i64 0, i64 0
  %13 = call i32 @read(i32 %11, i8* %12, i32 1)
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  br label %8

16:                                               ; preds = %8
  br label %17

17:                                               ; preds = %160, %16
  %18 = load i32, i32* @moduleUnblockedClients, align 4
  %19 = call i64 @listLength(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %170

21:                                               ; preds = %17
  %22 = load i32, i32* @moduleUnblockedClients, align 4
  %23 = call %struct.TYPE_20__* @listFirst(i32 %22)
  store %struct.TYPE_20__* %23, %struct.TYPE_20__** %1, align 8
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %25, align 8
  store %struct.TYPE_23__* %26, %struct.TYPE_23__** %2, align 8
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 5
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %28, align 8
  store %struct.TYPE_21__* %29, %struct.TYPE_21__** %4, align 8
  %30 = load i32, i32* @moduleUnblockedClients, align 4
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %1, align 8
  %32 = call i32 @listDelNode(i32 %30, %struct.TYPE_20__* %31)
  %33 = call i32 @pthread_mutex_unlock(i32* @moduleUnblockedClientsMutex)
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %35 = icmp ne %struct.TYPE_21__* %34, null
  br i1 %35, label %36, label %79

36:                                               ; preds = %21
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %79, label %41

41:                                               ; preds = %36
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 6
  %44 = load i32 (%struct.TYPE_22__*, i8**, i32)*, i32 (%struct.TYPE_22__*, i8**, i32)** %43, align 8
  %45 = icmp ne i32 (%struct.TYPE_22__*, i8**, i32)* %44, null
  br i1 %45, label %46, label %79

46:                                               ; preds = %41
  %47 = bitcast %struct.TYPE_22__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 bitcast (%struct.TYPE_22__* @REDISMODULE_CTX_INIT to i8*), i64 48, i1 false)
  %48 = load i32, i32* @REDISMODULE_CTX_BLOCKED_REPLY, align 4
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %5, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %48
  store i32 %51, i32* %49, align 8
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %5, i32 0, i32 2
  store i64 %54, i64* %55, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %5, i32 0, i32 5
  store i32* null, i32** %56, align 8
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %5, i32 0, i32 1
  store %struct.TYPE_19__* %59, %struct.TYPE_19__** %60, align 8
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 5
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %5, i32 0, i32 0
  store %struct.TYPE_21__* %63, %struct.TYPE_21__** %64, align 8
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %5, i32 0, i32 4
  store %struct.TYPE_23__* %65, %struct.TYPE_23__** %66, align 8
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 6
  %69 = load i32 (%struct.TYPE_22__*, i8**, i32)*, i32 (%struct.TYPE_22__*, i8**, i32)** %68, align 8
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to i8**
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 %69(%struct.TYPE_22__* %5, i8** %73, i32 %76)
  %78 = call i32 @moduleFreeContext(%struct.TYPE_22__* %5)
  br label %79

79:                                               ; preds = %46, %41, %36, %21
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %119

84:                                               ; preds = %79
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i32 0, i32 4
  %87 = load i32 (%struct.TYPE_22__*, i64)*, i32 (%struct.TYPE_22__*, i64)** %86, align 8
  %88 = icmp ne i32 (%struct.TYPE_22__*, i64)* %87, null
  br i1 %88, label %89, label %119

89:                                               ; preds = %84
  %90 = bitcast %struct.TYPE_22__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %90, i8* align 8 bitcast (%struct.TYPE_22__* @REDISMODULE_CTX_INIT to i8*), i64 48, i1 false)
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %92 = icmp eq %struct.TYPE_21__* %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load i32, i32* @REDISMODULE_CTX_BLOCKED_DISCONNECTED, align 4
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %6, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %94
  store i32 %97, i32* %95, align 8
  br label %98

98:                                               ; preds = %93, %89
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %6, i32 0, i32 2
  store i64 %101, i64* %102, align 8
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %6, i32 0, i32 1
  store %struct.TYPE_19__* %105, %struct.TYPE_19__** %106, align 8
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %107, i32 0, i32 5
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %6, i32 0, i32 0
  store %struct.TYPE_21__* %109, %struct.TYPE_21__** %110, align 8
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 4
  %113 = load i32 (%struct.TYPE_22__*, i64)*, i32 (%struct.TYPE_22__*, i64)** %112, align 8
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = call i32 %113(%struct.TYPE_22__* %6, i64 %116)
  %118 = call i32 @moduleFreeContext(%struct.TYPE_22__* %6)
  br label %119

119:                                              ; preds = %98, %84, %79
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %121 = icmp ne %struct.TYPE_21__* %120, null
  br i1 %121, label %122, label %128

122:                                              ; preds = %119
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @AddReplyFromClient(%struct.TYPE_21__* %123, i32 %126)
  br label %128

128:                                              ; preds = %122, %119
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @freeClient(i32 %131)
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %134 = icmp ne %struct.TYPE_21__* %133, null
  br i1 %134, label %135, label %160

135:                                              ; preds = %128
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 1
  store i32* null, i32** %137, align 8
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %139 = call i32 @unblockClient(%struct.TYPE_21__* %138)
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %141 = call i64 @clientHasPendingReplies(%struct.TYPE_21__* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %159

143:                                              ; preds = %135
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @CLIENT_PENDING_WRITE, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %159, label %150

150:                                              ; preds = %143
  %151 = load i32, i32* @CLIENT_PENDING_WRITE, align 4
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 8
  %156 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @server, i32 0, i32 0), align 8
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %158 = call i32 @listAddNodeHead(i32 %156, %struct.TYPE_21__* %157)
  br label %159

159:                                              ; preds = %150, %143, %135
  br label %160

160:                                              ; preds = %159, %128
  %161 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = add nsw i32 %165, -1
  store i32 %166, i32* %164, align 4
  %167 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %168 = call i32 @zfree(%struct.TYPE_23__* %167)
  %169 = call i32 @pthread_mutex_lock(i32* @moduleUnblockedClientsMutex)
  br label %17

170:                                              ; preds = %17
  %171 = call i32 @pthread_mutex_unlock(i32* @moduleUnblockedClientsMutex)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i64 @listLength(i32) #1

declare dso_local %struct.TYPE_20__* @listFirst(i32) #1

declare dso_local i32 @listDelNode(i32, %struct.TYPE_20__*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @moduleFreeContext(%struct.TYPE_22__*) #1

declare dso_local i32 @AddReplyFromClient(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @freeClient(i32) #1

declare dso_local i32 @unblockClient(%struct.TYPE_21__*) #1

declare dso_local i64 @clientHasPendingReplies(%struct.TYPE_21__*) #1

declare dso_local i32 @listAddNodeHead(i32, %struct.TYPE_21__*) #1

declare dso_local i32 @zfree(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
