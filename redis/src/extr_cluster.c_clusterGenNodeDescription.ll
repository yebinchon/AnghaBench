; ModuleID = '/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterGenNodeDescription.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterGenNodeDescription.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__**, %struct.TYPE_10__** }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i32, i64, i64, i64, i64, %struct.TYPE_9__*, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"%.40s %s:%d@%d \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c" %.40s \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" - \00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"%lld %lld %llu %s\00", align 1
@CLUSTER_NODE_MYSELF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"connected\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"disconnected\00", align 1
@CLUSTER_SLOTS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c" %d-%d\00", align 1
@server = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@.str.8 = private unnamed_addr constant [14 x i8] c" [%d->-%.40s]\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c" [%d-<-%.40s]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clusterGenNodeDescription(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %7 = call i32 (...) @sdsempty()
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 9
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 8
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = call i32 (i32, i8*, i32, ...) @sdscatprintf(i32 %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13, i32 %16, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @representClusterNodeFlags(i32 %21, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 5
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = icmp ne %struct.TYPE_9__* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %1
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 5
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i32, i8*, i32, ...) @sdscatprintf(i32 %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  store i32 %37, i32* %5, align 4
  br label %41

38:                                               ; preds = %1
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @sdscatlen(i32 %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %38, %30
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %41
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @CLUSTER_NODE_MYSELF, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br label %64

64:                                               ; preds = %57, %41
  %65 = phi i1 [ true, %41 ], [ %63, %57 ]
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0)
  %68 = call i32 (i32, i8*, i32, ...) @sdscatprintf(i32 %42, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %46, i64 %49, i64 %52, i8* %67)
  store i32 %68, i32* %5, align 4
  store i32 -1, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %123, %64
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* @CLUSTER_SLOTS, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %126

73:                                               ; preds = %69
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @clusterNodeGetSlotBit(%struct.TYPE_13__* %74, i32 %75)
  store i32 %76, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load i32, i32* %4, align 4
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i32, i32* %3, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %81, %78
  br label %84

84:                                               ; preds = %83, %73
  %85 = load i32, i32* %4, align 4
  %86 = icmp ne i32 %85, -1
  br i1 %86, label %87, label %122

87:                                               ; preds = %84
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load i32, i32* %3, align 4
  %92 = load i32, i32* @CLUSTER_SLOTS, align 4
  %93 = sub nsw i32 %92, 1
  %94 = icmp eq i32 %91, %93
  br i1 %94, label %95, label %122

95:                                               ; preds = %90, %87
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %95
  %99 = load i32, i32* %3, align 4
  %100 = load i32, i32* @CLUSTER_SLOTS, align 4
  %101 = sub nsw i32 %100, 1
  %102 = icmp eq i32 %99, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load i32, i32* %3, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %103, %98, %95
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* %3, align 4
  %109 = sub nsw i32 %108, 1
  %110 = icmp eq i32 %107, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* %4, align 4
  %114 = call i32 (i32, i8*, i32, ...) @sdscatprintf(i32 %112, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %113)
  store i32 %114, i32* %5, align 4
  br label %121

115:                                              ; preds = %106
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* %3, align 4
  %119 = sub nsw i32 %118, 1
  %120 = call i32 (i32, i8*, i32, ...) @sdscatprintf(i32 %116, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %117, i32 %119)
  store i32 %120, i32* %5, align 4
  br label %121

121:                                              ; preds = %115, %111
  store i32 -1, i32* %4, align 4
  br label %122

122:                                              ; preds = %121, %90, %84
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %3, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %3, align 4
  br label %69

126:                                              ; preds = %69
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @CLUSTER_NODE_MYSELF, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %188

133:                                              ; preds = %126
  store i32 0, i32* %3, align 4
  br label %134

134:                                              ; preds = %184, %133
  %135 = load i32, i32* %3, align 4
  %136 = load i32, i32* @CLUSTER_SLOTS, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %187

138:                                              ; preds = %134
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 0), align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %140, align 8
  %142 = load i32, i32* %3, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %141, i64 %143
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %144, align 8
  %146 = icmp ne %struct.TYPE_10__* %145, null
  br i1 %146, label %147, label %160

147:                                              ; preds = %138
  %148 = load i32, i32* %5, align 4
  %149 = load i32, i32* %3, align 4
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 0), align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %151, align 8
  %153 = load i32, i32* %3, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %152, i64 %154
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 (i32, i8*, i32, ...) @sdscatprintf(i32 %148, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %149, i32 %158)
  store i32 %159, i32* %5, align 4
  br label %183

160:                                              ; preds = %138
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 0), align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %162, align 8
  %164 = load i32, i32* %3, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %163, i64 %165
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %166, align 8
  %168 = icmp ne %struct.TYPE_11__* %167, null
  br i1 %168, label %169, label %182

169:                                              ; preds = %160
  %170 = load i32, i32* %5, align 4
  %171 = load i32, i32* %3, align 4
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 0), align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %173, align 8
  %175 = load i32, i32* %3, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %174, i64 %176
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i32 (i32, i8*, i32, ...) @sdscatprintf(i32 %170, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %171, i32 %180)
  store i32 %181, i32* %5, align 4
  br label %182

182:                                              ; preds = %169, %160
  br label %183

183:                                              ; preds = %182, %147
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %3, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %3, align 4
  br label %134

187:                                              ; preds = %134
  br label %188

188:                                              ; preds = %187, %126
  %189 = load i32, i32* %5, align 4
  ret i32 %189
}

declare dso_local i32 @sdscatprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @sdsempty(...) #1

declare dso_local i32 @representClusterNodeFlags(i32, i32) #1

declare dso_local i32 @sdscatlen(i32, i8*, i32) #1

declare dso_local i32 @clusterNodeGetSlotBit(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
