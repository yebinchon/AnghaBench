; ModuleID = '/home/carl/AnghaBench/redis/src/extr_module.c_RM_GetContextFlags.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_module.c_RM_GetContextFlags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64, i64, i64, i64, i32*, i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@CLIENT_LUA = common dso_local global i32 0, align 4
@REDISMODULE_CTX_FLAGS_LUA = common dso_local global i32 0, align 4
@CLIENT_MULTI = common dso_local global i32 0, align 4
@REDISMODULE_CTX_FLAGS_MULTI = common dso_local global i32 0, align 4
@CLIENT_MASTER = common dso_local global i32 0, align 4
@REDISMODULE_CTX_FLAGS_REPLICATED = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@REDISMODULE_CTX_FLAGS_CLUSTER = common dso_local global i32 0, align 4
@REDISMODULE_CTX_FLAGS_LOADING = common dso_local global i32 0, align 4
@REDISMODULE_CTX_FLAGS_MAXMEMORY = common dso_local global i32 0, align 4
@MAXMEMORY_NO_EVICTION = common dso_local global i64 0, align 8
@REDISMODULE_CTX_FLAGS_EVICT = common dso_local global i32 0, align 4
@AOF_OFF = common dso_local global i64 0, align 8
@REDISMODULE_CTX_FLAGS_AOF = common dso_local global i32 0, align 4
@REDISMODULE_CTX_FLAGS_RDB = common dso_local global i32 0, align 4
@REDISMODULE_CTX_FLAGS_MASTER = common dso_local global i32 0, align 4
@REDISMODULE_CTX_FLAGS_SLAVE = common dso_local global i32 0, align 4
@REDISMODULE_CTX_FLAGS_READONLY = common dso_local global i32 0, align 4
@REPL_STATE_CONNECT = common dso_local global i64 0, align 8
@REPL_STATE_CONNECTING = common dso_local global i64 0, align 8
@REDISMODULE_CTX_FLAGS_REPLICA_IS_CONNECTING = common dso_local global i32 0, align 4
@REPL_STATE_TRANSFER = common dso_local global i64 0, align 8
@REDISMODULE_CTX_FLAGS_REPLICA_IS_TRANSFERRING = common dso_local global i32 0, align 4
@REPL_STATE_CONNECTED = common dso_local global i64 0, align 8
@REDISMODULE_CTX_FLAGS_REPLICA_IS_ONLINE = common dso_local global i32 0, align 4
@REDISMODULE_CTX_FLAGS_REPLICA_IS_STALE = common dso_local global i32 0, align 4
@C_ERR = common dso_local global i32 0, align 4
@REDISMODULE_CTX_FLAGS_OOM = common dso_local global i32 0, align 4
@REDISMODULE_CTX_FLAGS_OOM_WARNING = common dso_local global i32 0, align 4
@REDISMODULE_CTX_FLAGS_ACTIVE_CHILD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RM_GetContextFlags(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = icmp ne %struct.TYPE_5__* %8, null
  br i1 %9, label %10, label %50

10:                                               ; preds = %1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CLIENT_LUA, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %10
  %20 = load i32, i32* @REDISMODULE_CTX_FLAGS_LUA, align 4
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %19, %10
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @CLIENT_MULTI, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %23
  %33 = load i32, i32* @REDISMODULE_CTX_FLAGS_MULTI, align 4
  %34 = load i32, i32* %3, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %32, %23
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @CLIENT_MASTER, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %36
  %46 = load i32, i32* @REDISMODULE_CTX_FLAGS_REPLICATED, align 4
  %47 = load i32, i32* %3, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %45, %36
  br label %50

50:                                               ; preds = %49, %1
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 8), align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i32, i32* @REDISMODULE_CTX_FLAGS_CLUSTER, align 4
  %55 = load i32, i32* %3, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %53, %50
  %58 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 7), align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i32, i32* @REDISMODULE_CTX_FLAGS_LOADING, align 4
  %62 = load i32, i32* %3, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %60, %57
  %65 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 0), align 8
  %66 = icmp sgt i64 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %64
  %68 = load i32, i32* @REDISMODULE_CTX_FLAGS_MAXMEMORY, align 4
  %69 = load i32, i32* %3, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %3, align 4
  %71 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 1), align 8
  %72 = load i64, i64* @MAXMEMORY_NO_EVICTION, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = load i32, i32* @REDISMODULE_CTX_FLAGS_EVICT, align 4
  %76 = load i32, i32* %3, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %74, %67
  br label %79

79:                                               ; preds = %78, %64
  %80 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 2), align 8
  %81 = load i64, i64* @AOF_OFF, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load i32, i32* @REDISMODULE_CTX_FLAGS_AOF, align 4
  %85 = load i32, i32* %3, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %83, %79
  %88 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 3), align 8
  %89 = icmp sgt i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load i32, i32* @REDISMODULE_CTX_FLAGS_RDB, align 4
  %92 = load i32, i32* %3, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %90, %87
  %95 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 6), align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load i32, i32* @REDISMODULE_CTX_FLAGS_MASTER, align 4
  %99 = load i32, i32* %3, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %3, align 4
  br label %150

101:                                              ; preds = %94
  %102 = load i32, i32* @REDISMODULE_CTX_FLAGS_SLAVE, align 4
  %103 = load i32, i32* %3, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %3, align 4
  %105 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 5), align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load i32, i32* @REDISMODULE_CTX_FLAGS_READONLY, align 4
  %109 = load i32, i32* %3, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %107, %101
  %112 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 4), align 8
  %113 = load i64, i64* @REPL_STATE_CONNECT, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %119, label %115

115:                                              ; preds = %111
  %116 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 4), align 8
  %117 = load i64, i64* @REPL_STATE_CONNECTING, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %115, %111
  %120 = load i32, i32* @REDISMODULE_CTX_FLAGS_REPLICA_IS_CONNECTING, align 4
  %121 = load i32, i32* %3, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %3, align 4
  br label %141

123:                                              ; preds = %115
  %124 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 4), align 8
  %125 = load i64, i64* @REPL_STATE_TRANSFER, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %123
  %128 = load i32, i32* @REDISMODULE_CTX_FLAGS_REPLICA_IS_TRANSFERRING, align 4
  %129 = load i32, i32* %3, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %3, align 4
  br label %140

131:                                              ; preds = %123
  %132 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 4), align 8
  %133 = load i64, i64* @REPL_STATE_CONNECTED, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %131
  %136 = load i32, i32* @REDISMODULE_CTX_FLAGS_REPLICA_IS_ONLINE, align 4
  %137 = load i32, i32* %3, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %135, %131
  br label %140

140:                                              ; preds = %139, %127
  br label %141

141:                                              ; preds = %140, %119
  %142 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 4), align 8
  %143 = load i64, i64* @REPL_STATE_CONNECTED, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %141
  %146 = load i32, i32* @REDISMODULE_CTX_FLAGS_REPLICA_IS_STALE, align 4
  %147 = load i32, i32* %3, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %3, align 4
  br label %149

149:                                              ; preds = %145, %141
  br label %150

150:                                              ; preds = %149, %97
  %151 = call i32 @getMaxmemoryState(i32* null, i32* null, i32* null, float* %4)
  store i32 %151, i32* %5, align 4
  %152 = load i32, i32* %5, align 4
  %153 = load i32, i32* @C_ERR, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %150
  %156 = load i32, i32* @REDISMODULE_CTX_FLAGS_OOM, align 4
  %157 = load i32, i32* %3, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %3, align 4
  br label %159

159:                                              ; preds = %155, %150
  %160 = load float, float* %4, align 4
  %161 = fpext float %160 to double
  %162 = fcmp ogt double %161, 7.500000e-01
  br i1 %162, label %163, label %167

163:                                              ; preds = %159
  %164 = load i32, i32* @REDISMODULE_CTX_FLAGS_OOM_WARNING, align 4
  %165 = load i32, i32* %3, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %3, align 4
  br label %167

167:                                              ; preds = %163, %159
  %168 = call i64 (...) @hasActiveChildProcess()
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %167
  %171 = load i32, i32* @REDISMODULE_CTX_FLAGS_ACTIVE_CHILD, align 4
  %172 = load i32, i32* %3, align 4
  %173 = or i32 %172, %171
  store i32 %173, i32* %3, align 4
  br label %174

174:                                              ; preds = %170, %167
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local i32 @getMaxmemoryState(i32*, i32*, i32*, float*) #1

declare dso_local i64 @hasActiveChildProcess(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
