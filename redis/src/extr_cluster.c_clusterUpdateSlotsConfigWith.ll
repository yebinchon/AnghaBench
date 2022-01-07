; ModuleID = '/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterUpdateSlotsConfigWith.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterUpdateSlotsConfigWith.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i32, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_10__**, i64* }

@CLUSTER_SLOTS = common dso_local global i32 0, align 4
@myself = common dso_local global %struct.TYPE_10__* null, align 8
@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Discarding UPDATE message about myself.\00", align 1
@server = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@CLUSTER_TODO_SAVE_CONFIG = common dso_local global i32 0, align 4
@CLUSTER_TODO_UPDATE_STATE = common dso_local global i32 0, align 4
@CLUSTER_TODO_FSYNC_CONFIG = common dso_local global i32 0, align 4
@CLUSTER_MODULE_FLAG_NO_REDIRECTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [74 x i8] c"Configuration change detected. Reconfiguring myself as a replica of %.40s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clusterUpdateSlotsConfigWith(%struct.TYPE_10__* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %9, align 8
  %14 = load i32, i32* @CLUSTER_SLOTS, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** @myself, align 8
  %19 = call i64 @nodeIsMaster(%struct.TYPE_10__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** @myself, align 8
  br label %27

23:                                               ; preds = %3
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** @myself, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  br label %27

27:                                               ; preds = %23, %21
  %28 = phi %struct.TYPE_10__* [ %22, %21 ], [ %26, %23 ]
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %8, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** @myself, align 8
  %31 = icmp eq %struct.TYPE_10__* %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @LL_WARNING, align 4
  %34 = call i32 (i32, i8*, ...) @serverLog(i32 %33, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %13, align 4
  br label %189

35:                                               ; preds = %27
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %138, %35
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @CLUSTER_SLOTS, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %141

40:                                               ; preds = %36
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i64 @bitmapTestBit(i8* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %137

45:                                               ; preds = %40
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @server, i32 0, i32 1), align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %48, i64 %50
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %54 = icmp eq %struct.TYPE_10__* %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %138

56:                                               ; preds = %45
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @server, i32 0, i32 1), align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  br label %138

66:                                               ; preds = %56
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @server, i32 0, i32 1), align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %69, i64 %71
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = icmp eq %struct.TYPE_10__* %73, null
  br i1 %74, label %87, label %75

75:                                               ; preds = %66
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @server, i32 0, i32 1), align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %78, i64 %80
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %5, align 8
  %86 = icmp slt i64 %84, %85
  br i1 %86, label %87, label %136

87:                                               ; preds = %75, %66
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @server, i32 0, i32 1), align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %90, i64 %92
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** @myself, align 8
  %96 = icmp eq %struct.TYPE_10__* %94, %95
  br i1 %96, label %97, label %112

97:                                               ; preds = %87
  %98 = load i32, i32* %7, align 4
  %99 = call i64 @countKeysInSlot(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %97
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** @myself, align 8
  %104 = icmp ne %struct.TYPE_10__* %102, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %101
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %17, i64 %108
  store i32 %106, i32* %109, align 4
  %110 = load i32, i32* %12, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %12, align 4
  br label %112

112:                                              ; preds = %105, %101, %97, %87
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @server, i32 0, i32 1), align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %114, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %115, i64 %117
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %118, align 8
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %121 = icmp eq %struct.TYPE_10__* %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %112
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* %123, %struct.TYPE_10__** %9, align 8
  br label %124

124:                                              ; preds = %122, %112
  %125 = load i32, i32* %7, align 4
  %126 = call i32 @clusterDelSlot(i32 %125)
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %128 = load i32, i32* %7, align 4
  %129 = call i32 @clusterAddSlot(%struct.TYPE_10__* %127, i32 %128)
  %130 = load i32, i32* @CLUSTER_TODO_SAVE_CONFIG, align 4
  %131 = load i32, i32* @CLUSTER_TODO_UPDATE_STATE, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @CLUSTER_TODO_FSYNC_CONFIG, align 4
  %134 = or i32 %132, %133
  %135 = call i32 @clusterDoBeforeSleep(i32 %134)
  br label %136

136:                                              ; preds = %124, %75
  br label %137

137:                                              ; preds = %136, %40
  br label %138

138:                                              ; preds = %137, %65, %55
  %139 = load i32, i32* %7, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %7, align 4
  br label %36

141:                                              ; preds = %36
  %142 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @server, i32 0, i32 0), align 8
  %143 = load i32, i32* @CLUSTER_MODULE_FLAG_NO_REDIRECTION, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %141
  store i32 1, i32* %13, align 4
  br label %189

147:                                              ; preds = %141
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %149 = icmp ne %struct.TYPE_10__* %148, null
  br i1 %149, label %150, label %169

150:                                              ; preds = %147
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %169

155:                                              ; preds = %150
  %156 = load i32, i32* @LL_WARNING, align 4
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = call i32 (i32, i8*, ...) @serverLog(i32 %156, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 %159)
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %162 = call i32 @clusterSetMaster(%struct.TYPE_10__* %161)
  %163 = load i32, i32* @CLUSTER_TODO_SAVE_CONFIG, align 4
  %164 = load i32, i32* @CLUSTER_TODO_UPDATE_STATE, align 4
  %165 = or i32 %163, %164
  %166 = load i32, i32* @CLUSTER_TODO_FSYNC_CONFIG, align 4
  %167 = or i32 %165, %166
  %168 = call i32 @clusterDoBeforeSleep(i32 %167)
  br label %188

169:                                              ; preds = %150, %147
  %170 = load i32, i32* %12, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %187

172:                                              ; preds = %169
  store i32 0, i32* %7, align 4
  br label %173

173:                                              ; preds = %183, %172
  %174 = load i32, i32* %7, align 4
  %175 = load i32, i32* %12, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %186

177:                                              ; preds = %173
  %178 = load i32, i32* %7, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %17, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @delKeysInSlot(i32 %181)
  br label %183

183:                                              ; preds = %177
  %184 = load i32, i32* %7, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %7, align 4
  br label %173

186:                                              ; preds = %173
  br label %187

187:                                              ; preds = %186, %169
  br label %188

188:                                              ; preds = %187, %155
  store i32 0, i32* %13, align 4
  br label %189

189:                                              ; preds = %188, %146, %32
  %190 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %190)
  %191 = load i32, i32* %13, align 4
  switch i32 %191, label %193 [
    i32 0, label %192
    i32 1, label %192
  ]

192:                                              ; preds = %189, %189
  ret void

193:                                              ; preds = %189
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @nodeIsMaster(%struct.TYPE_10__*) #2

declare dso_local i32 @serverLog(i32, i8*, ...) #2

declare dso_local i64 @bitmapTestBit(i8*, i32) #2

declare dso_local i64 @countKeysInSlot(i32) #2

declare dso_local i32 @clusterDelSlot(i32) #2

declare dso_local i32 @clusterAddSlot(%struct.TYPE_10__*, i32) #2

declare dso_local i32 @clusterDoBeforeSleep(i32) #2

declare dso_local i32 @clusterSetMaster(%struct.TYPE_10__*) #2

declare dso_local i32 @delKeysInSlot(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
