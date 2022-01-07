; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerOptimizeAntiAffinity.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerOptimizeAntiAffinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i8*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }

@.str = private unnamed_addr constant [60 x i8] c">>> Trying to optimize slaves allocation for anti-affinity\0A\00", align 1
@cluster_manager = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@CLUSTER_MANAGER_LOG_LVL_SUCCESS = common dso_local global i32 0, align 4
@CLUSTER_MANAGER_LOG_LVL_WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"[OK] Perfect anti-affinity obtained!\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"[WARNING] Some slaves are in the same host as their master\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"[WARNING] Some slaves of the same master are in the same host\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @clusterManagerOptimizeAntiAffinity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clusterManagerOptimizeAntiAffinity(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_10__**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_9__*, align 8
  %17 = alloca %struct.TYPE_10__*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.TYPE_10__** null, %struct.TYPE_10__*** %5, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @clusterManagerGetAntiAffinityScore(i32* %24, i32 %25, %struct.TYPE_10__*** null, i32* null)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  br label %172

30:                                               ; preds = %2
  %31 = call i32 @clusterManagerLogInfo(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cluster_manager, i32 0, i32 0), align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = mul nsw i32 500, %35
  store i32 %36, i32* %8, align 4
  %37 = call i32 @time(i32* null)
  %38 = call i32 @srand(i32 %37)
  br label %39

39:                                               ; preds = %139, %30
  %40 = load i32, i32* %8, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %144

42:                                               ; preds = %39
  store i32 0, i32* %9, align 4
  %43 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %44 = icmp ne %struct.TYPE_10__** %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %47 = call i32 @zfree(%struct.TYPE_10__** %46)
  store %struct.TYPE_10__** null, %struct.TYPE_10__*** %5, align 8
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i32*, i32** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @clusterManagerGetAntiAffinityScore(i32* %49, i32 %50, %struct.TYPE_10__*** %5, i32* %9)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %144

55:                                               ; preds = %48
  %56 = call i32 (...) @rand()
  %57 = load i32, i32* %9, align 4
  %58 = srem i32 %56, %57
  store i32 %58, i32* %10, align 4
  %59 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %59, i64 %61
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  store %struct.TYPE_10__* %63, %struct.TYPE_10__** %11, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %12, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = mul i64 %66, 8
  %68 = trunc i64 %67 to i32
  %69 = call %struct.TYPE_10__** @zcalloc(i32 %68)
  store %struct.TYPE_10__** %69, %struct.TYPE_10__*** %13, align 8
  store i32 0, i32* %14, align 4
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cluster_manager, i32 0, i32 0), align 8
  %71 = call i32 @listRewind(%struct.TYPE_11__* %70, i32* %15)
  br label %72

72:                                               ; preds = %94, %55
  %73 = call %struct.TYPE_9__* @listNext(i32* %15)
  store %struct.TYPE_9__* %73, %struct.TYPE_9__** %16, align 8
  %74 = icmp ne %struct.TYPE_9__* %73, null
  br i1 %74, label %75, label %95

75:                                               ; preds = %72
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  store %struct.TYPE_10__* %78, %struct.TYPE_10__** %17, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %81 = icmp ne %struct.TYPE_10__* %79, %80
  br i1 %81, label %82, label %94

82:                                               ; preds = %75
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %94

87:                                               ; preds = %82
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %89 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %13, align 8
  %90 = load i32, i32* %14, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %14, align 4
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %89, i64 %92
  store %struct.TYPE_10__* %88, %struct.TYPE_10__** %93, align 8
  br label %94

94:                                               ; preds = %87, %82, %75
  br label %72

95:                                               ; preds = %72
  %96 = load i32, i32* %14, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %13, align 8
  %100 = call i32 @zfree(%struct.TYPE_10__** %99)
  br label %144

101:                                              ; preds = %95
  %102 = call i32 (...) @rand()
  %103 = load i32, i32* %14, align 4
  %104 = srem i32 %102, %103
  store i32 %104, i32* %10, align 4
  %105 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %13, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %105, i64 %107
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %108, align 8
  store %struct.TYPE_10__* %109, %struct.TYPE_10__** %12, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  store i8* %112, i8** %18, align 8
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  store i8* %115, i8** %19, align 8
  %116 = load i8*, i8** %19, align 8
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  store i8* %116, i8** %118, align 8
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  store i32 1, i32* %120, align 8
  %121 = load i8*, i8** %18, align 8
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  store i8* %121, i8** %123, align 8
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 1
  store i32 1, i32* %125, align 8
  %126 = load i32*, i32** %3, align 8
  %127 = load i32, i32* %4, align 4
  %128 = call i32 @clusterManagerGetAntiAffinityScore(i32* %126, i32 %127, %struct.TYPE_10__*** null, i32* null)
  store i32 %128, i32* %20, align 4
  %129 = load i32, i32* %20, align 4
  %130 = load i32, i32* %6, align 4
  %131 = icmp sgt i32 %129, %130
  br i1 %131, label %132, label %139

132:                                              ; preds = %101
  %133 = load i8*, i8** %18, align 8
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  store i8* %133, i8** %135, align 8
  %136 = load i8*, i8** %19, align 8
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  store i8* %136, i8** %138, align 8
  br label %139

139:                                              ; preds = %132, %101
  %140 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %13, align 8
  %141 = call i32 @zfree(%struct.TYPE_10__** %140)
  %142 = load i32, i32* %8, align 4
  %143 = add nsw i32 %142, -1
  store i32 %143, i32* %8, align 4
  br label %39

144:                                              ; preds = %98, %54, %39
  %145 = load i32*, i32** %3, align 8
  %146 = load i32, i32* %4, align 4
  %147 = call i32 @clusterManagerGetAntiAffinityScore(i32* %145, i32 %146, %struct.TYPE_10__*** null, i32* null)
  store i32 %147, i32* %6, align 4
  %148 = load i32, i32* %6, align 4
  %149 = icmp eq i32 %148, 0
  %150 = zext i1 %149 to i32
  store i32 %150, i32* %22, align 4
  %151 = load i32, i32* %22, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %144
  %154 = load i32, i32* @CLUSTER_MANAGER_LOG_LVL_SUCCESS, align 4
  br label %157

155:                                              ; preds = %144
  %156 = load i32, i32* @CLUSTER_MANAGER_LOG_LVL_WARN, align 4
  br label %157

157:                                              ; preds = %155, %153
  %158 = phi i32 [ %154, %153 ], [ %156, %155 ]
  store i32 %158, i32* %23, align 4
  %159 = load i32, i32* %22, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %157
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8** %21, align 8
  br label %168

162:                                              ; preds = %157
  %163 = load i32, i32* %6, align 4
  %164 = icmp sge i32 %163, 10000
  br i1 %164, label %165, label %166

165:                                              ; preds = %162
  store i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i8** %21, align 8
  br label %167

166:                                              ; preds = %162
  store i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), i8** %21, align 8
  br label %167

167:                                              ; preds = %166, %165
  br label %168

168:                                              ; preds = %167, %161
  %169 = load i32, i32* %23, align 4
  %170 = load i8*, i8** %21, align 8
  %171 = call i32 @clusterManagerLog(i32 %169, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %170)
  br label %172

172:                                              ; preds = %168, %29
  %173 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %174 = call i32 @zfree(%struct.TYPE_10__** %173)
  ret void
}

declare dso_local i32 @clusterManagerGetAntiAffinityScore(i32*, i32, %struct.TYPE_10__***, i32*) #1

declare dso_local i32 @clusterManagerLogInfo(i8*) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @zfree(%struct.TYPE_10__**) #1

declare dso_local i32 @rand(...) #1

declare dso_local %struct.TYPE_10__** @zcalloc(i32) #1

declare dso_local i32 @listRewind(%struct.TYPE_11__*, i32*) #1

declare dso_local %struct.TYPE_9__* @listNext(i32*) #1

declare dso_local i32 @clusterManagerLog(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
