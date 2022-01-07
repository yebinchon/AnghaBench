; ModuleID = '/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterHandleSlaveMigration.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterHandleSlaveMigration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i64, i64, i32, %struct.TYPE_13__**, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i32 }

@myself = common dso_local global %struct.TYPE_13__* null, align 8
@server = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@CLUSTER_OK = common dso_local global i64 0, align 8
@CLUSTER_NODE_MIGRATE_TO = common dso_local global i32 0, align 4
@CLUSTER_NAMELEN = common dso_local global i32 0, align 4
@CLUSTER_SLAVE_MIGRATION_DELAY = common dso_local global i64 0, align 8
@CLUSTER_MODULE_FLAG_NO_FAILOVER = common dso_local global i32 0, align 4
@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Migrating to orphaned master %.40s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clusterHandleSlaveMigration(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** @myself, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 6
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %7, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 2), align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CLUSTER_OK, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %202

22:                                               ; preds = %1
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %24 = icmp eq %struct.TYPE_13__* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %202

26:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %57, %26
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %60

33:                                               ; preds = %27
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 5
  %36 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %36, i64 %38
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  %41 = call i64 @nodeFailed(%struct.TYPE_13__* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %56, label %43

43:                                               ; preds = %33
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 5
  %46 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %46, i64 %48
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %49, align 8
  %51 = call i32 @nodeTimedOut(%struct.TYPE_13__* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %43
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %53, %43, %33
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %27

60:                                               ; preds = %27
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 0), align 8
  %63 = icmp sle i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %202

65:                                               ; preds = %60
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** @myself, align 8
  store %struct.TYPE_13__* %66, %struct.TYPE_13__** %7, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 2), align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32* @dictGetSafeIterator(i32 %69)
  store i32* %70, i32** %8, align 8
  br label %71

71:                                               ; preds = %171, %65
  %72 = load i32*, i32** %8, align 8
  %73 = call i32* @dictNext(i32* %72)
  store i32* %73, i32** %9, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %172

75:                                               ; preds = %71
  %76 = load i32*, i32** %9, align 8
  %77 = call %struct.TYPE_13__* @dictGetVal(i32* %76)
  store %struct.TYPE_13__* %77, %struct.TYPE_13__** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %79 = call i64 @nodeIsSlave(%struct.TYPE_13__* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %75
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %83 = call i64 @nodeFailed(%struct.TYPE_13__* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %81, %75
  store i32 0, i32* %12, align 4
  br label %86

86:                                               ; preds = %85, %81
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @CLUSTER_NODE_MIGRATE_TO, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %86
  store i32 0, i32* %12, align 4
  br label %94

94:                                               ; preds = %93, %86
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %96 = call i64 @nodeIsMaster(%struct.TYPE_13__* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %100 = call i32 @clusterCountNonFailingSlaves(%struct.TYPE_13__* %99)
  store i32 %100, i32* %11, align 4
  br label %101

101:                                              ; preds = %98, %94
  %102 = load i32, i32* %11, align 4
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  store i32 0, i32* %12, align 4
  br label %105

105:                                              ; preds = %104, %101
  %106 = load i32, i32* %12, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %128

108:                                              ; preds = %105
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %110 = icmp ne %struct.TYPE_13__* %109, null
  br i1 %110, label %118, label %111

111:                                              ; preds = %108
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp sgt i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %117, %struct.TYPE_13__** %6, align 8
  br label %118

118:                                              ; preds = %116, %111, %108
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %118
  %124 = call i64 (...) @mstime()
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 3
  store i64 %124, i64* %126, align 8
  br label %127

127:                                              ; preds = %123, %118
  br label %131

128:                                              ; preds = %105
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 3
  store i64 0, i64* %130, align 8
  br label %131

131:                                              ; preds = %128, %127
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* %2, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %171

135:                                              ; preds = %131
  store i32 0, i32* %3, align 4
  br label %136

136:                                              ; preds = %167, %135
  %137 = load i32, i32* %3, align 4
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp slt i32 %137, %140
  br i1 %141, label %142, label %170

142:                                              ; preds = %136
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 5
  %145 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %144, align 8
  %146 = load i32, i32* %3, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %145, i64 %147
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @CLUSTER_NAMELEN, align 4
  %156 = call i64 @memcmp(i32 %151, i32 %154, i32 %155)
  %157 = icmp slt i64 %156, 0
  br i1 %157, label %158, label %166

158:                                              ; preds = %142
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 5
  %161 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %160, align 8
  %162 = load i32, i32* %3, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %161, i64 %163
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %164, align 8
  store %struct.TYPE_13__* %165, %struct.TYPE_13__** %7, align 8
  br label %166

166:                                              ; preds = %158, %142
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %3, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %3, align 4
  br label %136

170:                                              ; preds = %136
  br label %171

171:                                              ; preds = %170, %131
  br label %71

172:                                              ; preds = %71
  %173 = load i32*, i32** %8, align 8
  %174 = call i32 @dictReleaseIterator(i32* %173)
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %176 = icmp ne %struct.TYPE_13__* %175, null
  br i1 %176, label %177, label %202

177:                                              ; preds = %172
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** @myself, align 8
  %180 = icmp eq %struct.TYPE_13__* %178, %179
  br i1 %180, label %181, label %202

181:                                              ; preds = %177
  %182 = call i64 (...) @mstime()
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = sub nsw i64 %182, %185
  %187 = load i64, i64* @CLUSTER_SLAVE_MIGRATION_DELAY, align 8
  %188 = icmp sgt i64 %186, %187
  br i1 %188, label %189, label %202

189:                                              ; preds = %181
  %190 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 1), align 4
  %191 = load i32, i32* @CLUSTER_MODULE_FLAG_NO_FAILOVER, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %202, label %194

194:                                              ; preds = %189
  %195 = load i32, i32* @LL_WARNING, align 4
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @serverLog(i32 %195, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %198)
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %201 = call i32 @clusterSetMaster(%struct.TYPE_13__* %200)
  br label %202

202:                                              ; preds = %21, %25, %64, %194, %189, %181, %177, %172
  ret void
}

declare dso_local i64 @nodeFailed(%struct.TYPE_13__*) #1

declare dso_local i32 @nodeTimedOut(%struct.TYPE_13__*) #1

declare dso_local i32* @dictGetSafeIterator(i32) #1

declare dso_local i32* @dictNext(i32*) #1

declare dso_local %struct.TYPE_13__* @dictGetVal(i32*) #1

declare dso_local i64 @nodeIsSlave(%struct.TYPE_13__*) #1

declare dso_local i64 @nodeIsMaster(%struct.TYPE_13__*) #1

declare dso_local i32 @clusterCountNonFailingSlaves(%struct.TYPE_13__*) #1

declare dso_local i64 @mstime(...) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @dictReleaseIterator(i32*) #1

declare dso_local i32 @serverLog(i32, i8*, i32) #1

declare dso_local i32 @clusterSetMaster(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
