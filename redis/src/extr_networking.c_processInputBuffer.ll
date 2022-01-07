; ModuleID = '/home/carl/AnghaBench/redis/src/extr_networking.c_processInputBuffer.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_networking.c_processInputBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_11__ = type { i64, i8*, i32, i64, i32, %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i64 }

@CLIENT_SLAVE = common dso_local global i32 0, align 4
@CLIENT_BLOCKED = common dso_local global i32 0, align 4
@CLIENT_PENDING_COMMAND = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@CLIENT_MASTER = common dso_local global i32 0, align 4
@CLIENT_CLOSE_AFTER_REPLY = common dso_local global i32 0, align 4
@CLIENT_CLOSE_ASAP = common dso_local global i32 0, align 4
@PROTO_REQ_MULTIBULK = common dso_local global i64 0, align 8
@PROTO_REQ_INLINE = common dso_local global i64 0, align 8
@C_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Unknown request type\00", align 1
@CLIENT_PENDING_READ = common dso_local global i32 0, align 4
@C_ERR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @processInputBuffer(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  br label %3

3:                                                ; preds = %178, %1
  %4 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %9 = load i8*, i8** %8, align 8
  %10 = call i64 @sdslen(i8* %9)
  %11 = icmp ult i64 %6, %10
  br i1 %11, label %12, label %179

12:                                               ; preds = %3
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @CLIENT_SLAVE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %12
  %20 = call i64 (...) @clientsArePaused()
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %179

23:                                               ; preds = %19, %12
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @CLIENT_BLOCKED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %179

31:                                               ; preds = %23
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @CLIENT_PENDING_COMMAND, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %179

39:                                               ; preds = %31
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @server, i32 0, i32 1), align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @CLIENT_MASTER, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %179

50:                                               ; preds = %42, %39
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @CLIENT_CLOSE_AFTER_REPLY, align 4
  %55 = load i32, i32* @CLIENT_CLOSE_ASAP, align 4
  %56 = or i32 %54, %55
  %57 = and i32 %53, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  br label %179

60:                                               ; preds = %50
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %85, label %65

65:                                               ; preds = %60
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i8, i8* %68, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 42
  br i1 %75, label %76, label %80

76:                                               ; preds = %65
  %77 = load i64, i64* @PROTO_REQ_MULTIBULK, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 3
  store i64 %77, i64* %79, align 8
  br label %84

80:                                               ; preds = %65
  %81 = load i64, i64* @PROTO_REQ_INLINE, align 8
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 3
  store i64 %81, i64* %83, align 8
  br label %84

84:                                               ; preds = %80, %76
  br label %85

85:                                               ; preds = %84, %60
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @PROTO_REQ_INLINE, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %134

91:                                               ; preds = %85
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %93 = call i64 @processInlineBuffer(%struct.TYPE_11__* %92)
  %94 = load i64, i64* @C_OK, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  br label %179

97:                                               ; preds = %91
  %98 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @server, i32 0, i32 0), align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %133

100:                                              ; preds = %97
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %105, label %118

105:                                              ; preds = %100
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 5
  %108 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %108, i64 0
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = inttoptr i64 %112 to i8*
  %114 = getelementptr inbounds i8, i8* %113, i64 0
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 47
  br i1 %117, label %123, label %118

118:                                              ; preds = %105, %100
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %118, %105
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %125 = call i32 @processGopherRequest(%struct.TYPE_11__* %124)
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %127 = call i32 @resetClient(%struct.TYPE_11__* %126)
  %128 = load i32, i32* @CLIENT_CLOSE_AFTER_REPLY, align 4
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 8
  br label %179

133:                                              ; preds = %118, %97
  br label %150

134:                                              ; preds = %85
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @PROTO_REQ_MULTIBULK, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %147

140:                                              ; preds = %134
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %142 = call i64 @processMultibulkBuffer(%struct.TYPE_11__* %141)
  %143 = load i64, i64* @C_OK, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  br label %179

146:                                              ; preds = %140
  br label %149

147:                                              ; preds = %134
  %148 = call i32 @serverPanic(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %149

149:                                              ; preds = %147, %146
  br label %150

150:                                              ; preds = %149, %133
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %150
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %157 = call i32 @resetClient(%struct.TYPE_11__* %156)
  br label %178

158:                                              ; preds = %150
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @CLIENT_PENDING_READ, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %158
  %166 = load i32, i32* @CLIENT_PENDING_COMMAND, align 4
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 8
  br label %179

171:                                              ; preds = %158
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %173 = call i64 @processCommandAndResetClient(%struct.TYPE_11__* %172)
  %174 = load i64, i64* @C_ERR, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %171
  br label %195

177:                                              ; preds = %171
  br label %178

178:                                              ; preds = %177, %155
  br label %3

179:                                              ; preds = %165, %145, %123, %96, %59, %49, %38, %30, %22, %3
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %195

184:                                              ; preds = %179
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 1
  %187 = load i8*, i8** %186, align 8
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = trunc i64 %190 to i32
  %192 = call i32 @sdsrange(i8* %187, i32 %191, i32 -1)
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 0
  store i64 0, i64* %194, align 8
  br label %195

195:                                              ; preds = %176, %184, %179
  ret void
}

declare dso_local i64 @sdslen(i8*) #1

declare dso_local i64 @clientsArePaused(...) #1

declare dso_local i64 @processInlineBuffer(%struct.TYPE_11__*) #1

declare dso_local i32 @processGopherRequest(%struct.TYPE_11__*) #1

declare dso_local i32 @resetClient(%struct.TYPE_11__*) #1

declare dso_local i64 @processMultibulkBuffer(%struct.TYPE_11__*) #1

declare dso_local i32 @serverPanic(i8*) #1

declare dso_local i64 @processCommandAndResetClient(%struct.TYPE_11__*) #1

declare dso_local i32 @sdsrange(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
