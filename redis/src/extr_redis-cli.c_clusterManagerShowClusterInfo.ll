; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerShowClusterInfo.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerShowClusterInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i8*, i32, i32, i32, i64 }
%struct.TYPE_10__ = type { i64, i32, i8* }

@cluster_manager = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@CLUSTER_MANAGER_FLAG_SLAVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"DBSIZE\00", align 1
@REDIS_REPLY_INTEGER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@REDIS_REPLY_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [50 x i8] c"%s:%d (%s...) -> %d keys | %d slots | %d slaves.\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"[OK] %d keys in %d masters.\0A\00", align 1
@CLUSTER_MANAGER_SLOTS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"%.2f keys per slot on average.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @clusterManagerShowClusterInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clusterManagerShowClusterInfo() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [9 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca float, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cluster_manager, i32 0, i32 0), align 4
  %16 = call i32 @listRewind(i32 %15, i32* %3)
  br label %17

17:                                               ; preds = %147, %35, %0
  %18 = call %struct.TYPE_11__* @listNext(i32* %3)
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %4, align 8
  %19 = icmp ne %struct.TYPE_11__* %18, null
  br i1 %19, label %20, label %148

20:                                               ; preds = %17
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %5, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @CLUSTER_MANAGER_FLAG_SLAVE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %147, label %30

30:                                               ; preds = %20
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  br label %17

36:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  %37 = getelementptr inbounds [9 x i8], [9 x i8]* %8, i64 0, i64 0
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @memcpy(i8* %37, i32 %40, i32 8)
  %42 = getelementptr inbounds [9 x i8], [9 x i8]* %8, i64 0, i64 8
  store i8 0, i8* %42, align 1
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cluster_manager, i32 0, i32 0), align 4
  %44 = call i32 @listRewind(i32 %43, i32* %9)
  br label %45

45:                                               ; preds = %80, %62, %36
  %46 = call %struct.TYPE_11__* @listNext(i32* %9)
  store %struct.TYPE_11__* %46, %struct.TYPE_11__** %10, align 8
  %47 = icmp ne %struct.TYPE_11__* %46, null
  br i1 %47, label %48, label %81

48:                                               ; preds = %45
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  store %struct.TYPE_12__* %51, %struct.TYPE_12__** %11, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %54 = icmp eq %struct.TYPE_12__* %52, %53
  br i1 %54, label %62, label %55

55:                                               ; preds = %48
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @CLUSTER_MANAGER_FLAG_SLAVE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %55, %48
  br label %45

63:                                               ; preds = %55
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %63
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 5
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @strcmp(i64 %71, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %68
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %77, %68, %63
  br label %45

81:                                               ; preds = %45
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %83 = call %struct.TYPE_10__* @CLUSTER_MANAGER_COMMAND(%struct.TYPE_12__* %82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_10__* %83, %struct.TYPE_10__** %12, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %85 = icmp ne %struct.TYPE_10__* %84, null
  br i1 %85, label %86, label %96

86:                                               ; preds = %81
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @REDIS_REPLY_INTEGER, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %92, %86, %81
  %97 = load i32, i32* %7, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %122

99:                                               ; preds = %96
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %101 = icmp ne %struct.TYPE_10__* %100, null
  br i1 %101, label %102, label %112

102:                                              ; preds = %99
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @REDIS_REPLY_ERROR, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %102
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 2
  %111 = load i8*, i8** %110, align 8
  store i8* %111, i8** %13, align 8
  br label %112

112:                                              ; preds = %108, %102, %99
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %114 = load i8*, i8** %13, align 8
  %115 = call i32 @CLUSTER_MANAGER_PRINT_REPLY_ERROR(%struct.TYPE_12__* %113, i8* %114)
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %117 = icmp ne %struct.TYPE_10__* %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %112
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %120 = call i32 @freeReplyObject(%struct.TYPE_10__* %119)
  br label %121

121:                                              ; preds = %118, %112
  br label %160

122:                                              ; preds = %96
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %124 = icmp ne %struct.TYPE_10__* %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %127 = call i32 @freeReplyObject(%struct.TYPE_10__* %126)
  br label %128

128:                                              ; preds = %125, %122
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 1
  %131 = load i8*, i8** %130, align 8
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = getelementptr inbounds [9 x i8], [9 x i8]* %8, i64 0, i64 0
  %136 = load i32, i32* %7, align 4
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %6, align 4
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i8* %131, i32 %134, i8* %135, i32 %136, i32 %139, i32 %140)
  %142 = load i32, i32* %1, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %1, align 4
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* %2, align 4
  %146 = add nsw i32 %145, %144
  store i32 %146, i32* %2, align 4
  br label %147

147:                                              ; preds = %128, %20
  br label %17

148:                                              ; preds = %17
  %149 = load i32, i32* %2, align 4
  %150 = load i32, i32* %1, align 4
  %151 = call i32 @clusterManagerLogOk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %149, i32 %150)
  %152 = load i32, i32* %2, align 4
  %153 = sitofp i32 %152 to float
  %154 = load i64, i64* @CLUSTER_MANAGER_SLOTS, align 8
  %155 = sitofp i64 %154 to float
  %156 = fdiv float %153, %155
  store float %156, float* %14, align 4
  %157 = load float, float* %14, align 4
  %158 = fpext float %157 to double
  %159 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), double %158)
  br label %160

160:                                              ; preds = %148, %121
  ret void
}

declare dso_local i32 @listRewind(i32, i32*) #1

declare dso_local %struct.TYPE_11__* @listNext(i32*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @strcmp(i64, i32) #1

declare dso_local %struct.TYPE_10__* @CLUSTER_MANAGER_COMMAND(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @CLUSTER_MANAGER_PRINT_REPLY_ERROR(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @freeReplyObject(%struct.TYPE_10__*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @clusterManagerLogOk(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
