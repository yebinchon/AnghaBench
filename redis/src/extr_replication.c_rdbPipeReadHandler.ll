; ModuleID = '/home/carl/AnghaBench/redis/src/extr_replication.c_rdbPipeReadHandler.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_replication.c_rdbPipeReadHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i32, i32, i32, i32**, i64 }
%struct.aeEventLoop = type opaque
%struct.TYPE_5__ = type { i32 }

@server = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@PROTO_IOBUF_LEN = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Diskless rdb transfer, read error sending DB to replicas: %s\00", align 1
@AE_READABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"Diskless rdb transfer, done reading from pipe, %d replicas still up.\00", align 1
@CONN_STATE_CONNECTED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [61 x i8] c"Diskless rdb transfer, write error sending DB to replica: %s\00", align 1
@rdbPipeWriteHandler = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [65 x i8] c"Diskless rdb transfer, last replica dropped, killing fork child.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rdbPipeReadHandler(%struct.aeEventLoop* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.aeEventLoop*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_5__*, align 8
  store %struct.aeEventLoop* %0, %struct.aeEventLoop** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @UNUSED(i8* %20)
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @UNUSED(i8* %22)
  %24 = load %struct.aeEventLoop*, %struct.aeEventLoop** %5, align 8
  %25 = bitcast %struct.aeEventLoop* %24 to i8*
  %26 = call i32 @UNUSED(i8* %25)
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 7), align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* @PROTO_IOBUF_LEN, align 4
  %31 = call i64 @zmalloc(i32 %30)
  store i64 %31, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 7), align 8
  br label %32

32:                                               ; preds = %29, %4
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 0), align 8
  %34 = icmp eq i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @serverAssert(i32 %35)
  br label %37

37:                                               ; preds = %32, %200
  %38 = load i32, i32* %6, align 4
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 7), align 8
  %40 = load i32, i32* @PROTO_IOBUF_LEN, align 4
  %41 = call i32 @read(i32 %38, i64 %39, i32 %40)
  store i32 %41, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 1), align 8
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 1), align 8
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %85

44:                                               ; preds = %37
  %45 = load i64, i64* @errno, align 8
  %46 = load i64, i64* @EAGAIN, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i64, i64* @errno, align 8
  %50 = load i64, i64* @EWOULDBLOCK, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48, %44
  br label %201

53:                                               ; preds = %48
  %54 = load i32, i32* @LL_WARNING, align 4
  %55 = load i64, i64* @errno, align 8
  %56 = call i32 @strerror(i64 %55)
  %57 = call i32 (i32, i8*, ...) @serverLog(i32 %54, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %56)
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %80, %53
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 2), align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %83

62:                                               ; preds = %58
  %63 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 6), align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %63, i64 %65
  %67 = load i32*, i32** %66, align 8
  store i32* %67, i32** %10, align 8
  %68 = load i32*, i32** %10, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %62
  br label %80

71:                                               ; preds = %62
  %72 = load i32*, i32** %10, align 8
  %73 = call %struct.TYPE_5__* @connGetPrivateData(i32* %72)
  store %struct.TYPE_5__* %73, %struct.TYPE_5__** %11, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %75 = call i32 @freeClient(%struct.TYPE_5__* %74)
  %76 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 6), align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32*, i32** %76, i64 %78
  store i32* null, i32** %79, align 8
  br label %80

80:                                               ; preds = %71, %70
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %58

83:                                               ; preds = %58
  %84 = call i32 (...) @killRDBChild()
  br label %201

85:                                               ; preds = %37
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 1), align 8
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %117

88:                                               ; preds = %85
  store i32 0, i32* %12, align 4
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 5), align 8
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 4), align 4
  %91 = load i32, i32* @AE_READABLE, align 4
  %92 = call i32 @aeDeleteFileEvent(i32 %89, i32 %90, i32 %91)
  store i32 0, i32* %9, align 4
  br label %93

93:                                               ; preds = %109, %88
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 2), align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %112

97:                                               ; preds = %93
  %98 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 6), align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32*, i32** %98, i64 %100
  %102 = load i32*, i32** %101, align 8
  store i32* %102, i32** %13, align 8
  %103 = load i32*, i32** %13, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %97
  br label %109

106:                                              ; preds = %97
  %107 = load i32, i32* %12, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %12, align 4
  br label %109

109:                                              ; preds = %106, %105
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %9, align 4
  br label %93

112:                                              ; preds = %93
  %113 = load i32, i32* @LL_WARNING, align 4
  %114 = load i32, i32* %12, align 4
  %115 = call i32 (i32, i8*, ...) @serverLog(i32 %113, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %114)
  %116 = call i32 (...) @RdbPipeCleanup()
  br label %201

117:                                              ; preds = %85
  store i32 0, i32* %14, align 4
  store i32 0, i32* %9, align 4
  br label %118

118:                                              ; preds = %178, %117
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 2), align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %181

122:                                              ; preds = %118
  %123 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 6), align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32*, i32** %123, i64 %125
  %127 = load i32*, i32** %126, align 8
  store i32* %127, i32** %16, align 8
  %128 = load i32*, i32** %16, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %131, label %130

130:                                              ; preds = %122
  br label %178

131:                                              ; preds = %122
  %132 = load i32*, i32** %16, align 8
  %133 = call %struct.TYPE_5__* @connGetPrivateData(i32* %132)
  store %struct.TYPE_5__* %133, %struct.TYPE_5__** %17, align 8
  %134 = load i32*, i32** %16, align 8
  %135 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 7), align 8
  %136 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 1), align 8
  %137 = call i32 @connWrite(i32* %134, i64 %135, i32 %136)
  store i32 %137, i32* %15, align 4
  %138 = icmp eq i32 %137, -1
  br i1 %138, label %139, label %158

139:                                              ; preds = %131
  %140 = load i32*, i32** %16, align 8
  %141 = call i64 @connGetState(i32* %140)
  %142 = load i64, i64* @CONN_STATE_CONNECTED, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %155

144:                                              ; preds = %139
  %145 = load i32, i32* @LL_WARNING, align 4
  %146 = load i32*, i32** %16, align 8
  %147 = call i32 @connGetLastError(i32* %146)
  %148 = call i32 (i32, i8*, ...) @serverLog(i32 %145, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 %147)
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %150 = call i32 @freeClient(%struct.TYPE_5__* %149)
  %151 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 6), align 8
  %152 = load i32, i32* %9, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32*, i32** %151, i64 %153
  store i32* null, i32** %154, align 8
  br label %178

155:                                              ; preds = %139
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 0
  store i32 0, i32* %157, align 4
  br label %165

158:                                              ; preds = %131
  %159 = load i32, i32* %15, align 4
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 4
  %162 = load i32, i32* %15, align 4
  %163 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 3), align 8
  %164 = add nsw i32 %163, %162
  store i32 %164, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 3), align 8
  br label %165

165:                                              ; preds = %158, %155
  %166 = load i32, i32* %15, align 4
  %167 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 1), align 8
  %168 = icmp ne i32 %166, %167
  br i1 %168, label %169, label %175

169:                                              ; preds = %165
  %170 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 0), align 8
  %171 = add nsw i64 %170, 1
  store i64 %171, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 0), align 8
  %172 = load i32*, i32** %16, align 8
  %173 = load i32, i32* @rdbPipeWriteHandler, align 4
  %174 = call i32 @connSetWriteHandler(i32* %172, i32 %173)
  br label %175

175:                                              ; preds = %169, %165
  %176 = load i32, i32* %14, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %14, align 4
  br label %178

178:                                              ; preds = %175, %144, %130
  %179 = load i32, i32* %9, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %9, align 4
  br label %118

181:                                              ; preds = %118
  %182 = load i32, i32* %14, align 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %181
  %185 = load i32, i32* @LL_WARNING, align 4
  %186 = call i32 (i32, i8*, ...) @serverLog(i32 %185, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0))
  %187 = call i32 (...) @killRDBChild()
  %188 = call i32 (...) @RdbPipeCleanup()
  br label %189

189:                                              ; preds = %184, %181
  %190 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 0), align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %195, label %192

192:                                              ; preds = %189
  %193 = load i32, i32* %14, align 4
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %192, %189
  %196 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 5), align 8
  %197 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 4), align 4
  %198 = load i32, i32* @AE_READABLE, align 4
  %199 = call i32 @aeDeleteFileEvent(i32 %196, i32 %197, i32 %198)
  br label %201

200:                                              ; preds = %192
  br label %37

201:                                              ; preds = %52, %83, %112, %195
  ret void
}

declare dso_local i32 @UNUSED(i8*) #1

declare dso_local i64 @zmalloc(i32) #1

declare dso_local i32 @serverAssert(i32) #1

declare dso_local i32 @read(i32, i64, i32) #1

declare dso_local i32 @serverLog(i32, i8*, ...) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local %struct.TYPE_5__* @connGetPrivateData(i32*) #1

declare dso_local i32 @freeClient(%struct.TYPE_5__*) #1

declare dso_local i32 @killRDBChild(...) #1

declare dso_local i32 @aeDeleteFileEvent(i32, i32, i32) #1

declare dso_local i32 @RdbPipeCleanup(...) #1

declare dso_local i32 @connWrite(i32*, i64, i32) #1

declare dso_local i64 @connGetState(i32*) #1

declare dso_local i32 @connGetLastError(i32*) #1

declare dso_local i32 @connSetWriteHandler(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
