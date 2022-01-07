; ModuleID = '/home/carl/AnghaBench/redis/src/extr_replication.c_replicationFeedSlaves.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_replication.c_replicationFeedSlaves.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32*, i32* }
%struct.TYPE_11__ = type { i32** }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }

@LONG_STR_SIZE = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@PROTO_SHARED_SELECT_CMDS = common dso_local global i32 0, align 4
@shared = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@OBJ_STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"*2\0D\0A$6\0D\0ASELECT\0D\0A$%d\0D\0A%s\0D\0A\00", align 1
@SLAVE_STATE_WAIT_BGSAVE_START = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @replicationFeedSlaves(i32* %0, i32 %1, i32** %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_10__*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  store i32 %3, i32* %8, align 4
  %23 = load i32, i32* @LONG_STR_SIZE, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %13, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %14, align 8
  %27 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @server, i32 0, i32 2), align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  store i32 1, i32* %15, align 4
  br label %222

30:                                               ; preds = %4
  %31 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @server, i32 0, i32 1), align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i32*, i32** %5, align 8
  %35 = call i64 @listLength(i32* %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 1, i32* %15, align 4
  br label %222

38:                                               ; preds = %33, %30
  %39 = load i32*, i32** %5, align 8
  %40 = call i64 @listLength(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @server, i32 0, i32 1), align 8
  %44 = icmp eq i32* %43, null
  br label %45

45:                                               ; preds = %42, %38
  %46 = phi i1 [ false, %38 ], [ %44, %42 ]
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @serverAssert(i32 %48)
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @server, i32 0, i32 0), align 8
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %113

53:                                               ; preds = %45
  %54 = load i32, i32* %6, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %53
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @PROTO_SHARED_SELECT_CMDS, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @shared, i32 0, i32 0), align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32*, i32** %61, i64 %63
  %65 = load i32*, i32** %64, align 8
  store i32* %65, i32** %16, align 8
  br label %76

66:                                               ; preds = %56, %53
  %67 = trunc i64 %24 to i32
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = call i32 @ll2string(i8* %26, i32 %67, i64 %69)
  store i32 %70, i32* %17, align 4
  %71 = load i32, i32* @OBJ_STRING, align 4
  %72 = call i32 (...) @sdsempty()
  %73 = load i32, i32* %17, align 4
  %74 = call i32 @sdscatprintf(i32 %72, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %73, i8* %26)
  %75 = call i32* @createObject(i32 %71, i32 %74)
  store i32* %75, i32** %16, align 8
  br label %76

76:                                               ; preds = %66, %60
  %77 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @server, i32 0, i32 1), align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32*, i32** %16, align 8
  %81 = call i32 @feedReplicationBacklogWithObject(i32* %80)
  br label %82

82:                                               ; preds = %79, %76
  %83 = load i32*, i32** %5, align 8
  %84 = call i32 @listRewind(i32* %83, i32* %10)
  br label %85

85:                                               ; preds = %98, %97, %82
  %86 = call %struct.TYPE_9__* @listNext(i32* %10)
  store %struct.TYPE_9__* %86, %struct.TYPE_9__** %9, align 8
  %87 = icmp ne %struct.TYPE_9__* %86, null
  br i1 %87, label %88, label %102

88:                                               ; preds = %85
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  store %struct.TYPE_10__* %91, %struct.TYPE_10__** %18, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @SLAVE_STATE_WAIT_BGSAVE_START, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %88
  br label %85

98:                                               ; preds = %88
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %100 = load i32*, i32** %16, align 8
  %101 = call i32 @addReply(%struct.TYPE_10__* %99, i32* %100)
  br label %85

102:                                              ; preds = %85
  %103 = load i32, i32* %6, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* @PROTO_SHARED_SELECT_CMDS, align 4
  %108 = icmp sge i32 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %105, %102
  %110 = load i32*, i32** %16, align 8
  %111 = call i32 @decrRefCount(i32* %110)
  br label %112

112:                                              ; preds = %109, %105
  br label %113

113:                                              ; preds = %112, %45
  %114 = load i32, i32* %6, align 4
  store i32 %114, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @server, i32 0, i32 0), align 8
  %115 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @server, i32 0, i32 1), align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %185

117:                                              ; preds = %113
  %118 = load i32, i32* @LONG_STR_SIZE, align 4
  %119 = add nsw i32 %118, 3
  %120 = zext i32 %119 to i64
  %121 = call i8* @llvm.stacksave()
  store i8* %121, i8** %19, align 8
  %122 = alloca i8, i64 %120, align 16
  store i64 %120, i64* %20, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 0
  store i8 42, i8* %123, align 16
  %124 = getelementptr inbounds i8, i8* %122, i64 1
  %125 = sub i64 %120, 1
  %126 = trunc i64 %125 to i32
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = call i32 @ll2string(i8* %124, i32 %126, i64 %128)
  store i32 %129, i32* %12, align 4
  %130 = load i32, i32* %12, align 4
  %131 = add nsw i32 %130, 1
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %122, i64 %132
  store i8 13, i8* %133, align 1
  %134 = load i32, i32* %12, align 4
  %135 = add nsw i32 %134, 2
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %122, i64 %136
  store i8 10, i8* %137, align 1
  %138 = load i32, i32* %12, align 4
  %139 = add nsw i32 %138, 3
  %140 = call i32 @feedReplicationBacklog(i8* %122, i32 %139)
  store i32 0, i32* %11, align 4
  br label %141

141:                                              ; preds = %180, %117
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* %8, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %183

145:                                              ; preds = %141
  %146 = load i32**, i32*** %7, align 8
  %147 = load i32, i32* %11, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32*, i32** %146, i64 %148
  %150 = load i32*, i32** %149, align 8
  %151 = call i64 @stringObjectLen(i32* %150)
  store i64 %151, i64* %21, align 8
  %152 = getelementptr inbounds i8, i8* %122, i64 0
  store i8 36, i8* %152, align 16
  %153 = getelementptr inbounds i8, i8* %122, i64 1
  %154 = sub i64 %120, 1
  %155 = trunc i64 %154 to i32
  %156 = load i64, i64* %21, align 8
  %157 = call i32 @ll2string(i8* %153, i32 %155, i64 %156)
  store i32 %157, i32* %12, align 4
  %158 = load i32, i32* %12, align 4
  %159 = add nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, i8* %122, i64 %160
  store i8 13, i8* %161, align 1
  %162 = load i32, i32* %12, align 4
  %163 = add nsw i32 %162, 2
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %122, i64 %164
  store i8 10, i8* %165, align 1
  %166 = load i32, i32* %12, align 4
  %167 = add nsw i32 %166, 3
  %168 = call i32 @feedReplicationBacklog(i8* %122, i32 %167)
  %169 = load i32**, i32*** %7, align 8
  %170 = load i32, i32* %11, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32*, i32** %169, i64 %171
  %173 = load i32*, i32** %172, align 8
  %174 = call i32 @feedReplicationBacklogWithObject(i32* %173)
  %175 = load i32, i32* %12, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %122, i64 %176
  %178 = getelementptr inbounds i8, i8* %177, i64 1
  %179 = call i32 @feedReplicationBacklog(i8* %178, i32 2)
  br label %180

180:                                              ; preds = %145
  %181 = load i32, i32* %11, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %11, align 4
  br label %141

183:                                              ; preds = %141
  %184 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %184)
  br label %185

185:                                              ; preds = %183, %113
  %186 = load i32*, i32** %5, align 8
  %187 = call i32 @listRewind(i32* %186, i32* %10)
  br label %188

188:                                              ; preds = %220, %200, %185
  %189 = call %struct.TYPE_9__* @listNext(i32* %10)
  store %struct.TYPE_9__* %189, %struct.TYPE_9__** %9, align 8
  %190 = icmp ne %struct.TYPE_9__* %189, null
  br i1 %190, label %191, label %221

191:                                              ; preds = %188
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %193, align 8
  store %struct.TYPE_10__* %194, %struct.TYPE_10__** %22, align 8
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @SLAVE_STATE_WAIT_BGSAVE_START, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %191
  br label %188

201:                                              ; preds = %191
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %203 = load i32, i32* %8, align 4
  %204 = call i32 @addReplyArrayLen(%struct.TYPE_10__* %202, i32 %203)
  store i32 0, i32* %11, align 4
  br label %205

205:                                              ; preds = %217, %201
  %206 = load i32, i32* %11, align 4
  %207 = load i32, i32* %8, align 4
  %208 = icmp slt i32 %206, %207
  br i1 %208, label %209, label %220

209:                                              ; preds = %205
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %211 = load i32**, i32*** %7, align 8
  %212 = load i32, i32* %11, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32*, i32** %211, i64 %213
  %215 = load i32*, i32** %214, align 8
  %216 = call i32 @addReplyBulk(%struct.TYPE_10__* %210, i32* %215)
  br label %217

217:                                              ; preds = %209
  %218 = load i32, i32* %11, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %11, align 4
  br label %205

220:                                              ; preds = %205
  br label %188

221:                                              ; preds = %188
  store i32 0, i32* %15, align 4
  br label %222

222:                                              ; preds = %221, %37, %29
  %223 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %223)
  %224 = load i32, i32* %15, align 4
  switch i32 %224, label %226 [
    i32 0, label %225
    i32 1, label %225
  ]

225:                                              ; preds = %222, %222
  ret void

226:                                              ; preds = %222
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @listLength(i32*) #2

declare dso_local i32 @serverAssert(i32) #2

declare dso_local i32 @ll2string(i8*, i32, i64) #2

declare dso_local i32* @createObject(i32, i32) #2

declare dso_local i32 @sdscatprintf(i32, i8*, i32, i8*) #2

declare dso_local i32 @sdsempty(...) #2

declare dso_local i32 @feedReplicationBacklogWithObject(i32*) #2

declare dso_local i32 @listRewind(i32*, i32*) #2

declare dso_local %struct.TYPE_9__* @listNext(i32*) #2

declare dso_local i32 @addReply(%struct.TYPE_10__*, i32*) #2

declare dso_local i32 @decrRefCount(i32*) #2

declare dso_local i32 @feedReplicationBacklog(i8*, i32) #2

declare dso_local i64 @stringObjectLen(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @addReplyArrayLen(%struct.TYPE_10__*, i32) #2

declare dso_local i32 @addReplyBulk(%struct.TYPE_10__*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
