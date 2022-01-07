; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerGetSlotOwner.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerGetSlotOwner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_14__ = type { i64, i64, i32, i8*, %struct.TYPE_14__** }
%struct.TYPE_15__ = type { %struct.TYPE_16__* }

@CLUSTER_MANAGER_SLOTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"CLUSTER SLOTS\00", align 1
@REDIS_REPLY_ARRAY = common dso_local global i64 0, align 8
@cluster_manager = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_16__* (%struct.TYPE_16__*, i32, i8**)* @clusterManagerGetSlotOwner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_16__* @clusterManagerGetSlotOwner(%struct.TYPE_16__* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_15__*, align 8
  %19 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %20 = load i32, i32* %5, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @CLUSTER_MANAGER_SLOTS, align 4
  %25 = icmp slt i32 %23, %24
  br label %26

26:                                               ; preds = %22, %3
  %27 = phi i1 [ false, %3 ], [ %25, %22 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %7, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %31 = call %struct.TYPE_14__* @CLUSTER_MANAGER_COMMAND(%struct.TYPE_16__* %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_14__* %31, %struct.TYPE_14__** %8, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %34 = load i8**, i8*** %6, align 8
  %35 = call i64 @clusterManagerCheckRedisReply(%struct.TYPE_16__* %32, %struct.TYPE_14__* %33, i8** %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %185

37:                                               ; preds = %26
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @REDIS_REPLY_ARRAY, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  store i64 0, i64* %9, align 8
  br label %45

45:                                               ; preds = %181, %37
  %46 = load i64, i64* %9, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ult i64 %46, %49
  br i1 %50, label %51, label %184

51:                                               ; preds = %45
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 4
  %54 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %53, align 8
  %55 = load i64, i64* %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %54, i64 %55
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %56, align 8
  store %struct.TYPE_14__* %57, %struct.TYPE_14__** %10, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @REDIS_REPLY_ARRAY, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %51
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp uge i64 %66, 3
  br label %68

68:                                               ; preds = %63, %51
  %69 = phi i1 [ false, %51 ], [ %67, %63 ]
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 4
  %74 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %74, i64 0
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %11, align 4
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 4
  %81 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %81, i64 1
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %93, label %89

89:                                               ; preds = %68
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp sgt i32 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %89, %68
  br label %181

94:                                               ; preds = %89
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 4
  %97 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %97, i64 2
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %98, align 8
  store %struct.TYPE_14__* %99, %struct.TYPE_14__** %13, align 8
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @REDIS_REPLY_ARRAY, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %94
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp uge i64 %108, 2
  br label %110

110:                                              ; preds = %105, %94
  %111 = phi i1 [ false, %94 ], [ %109, %105 ]
  %112 = zext i1 %111 to i32
  %113 = call i32 @assert(i32 %112)
  store i8* null, i8** %14, align 8
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp uge i64 %116, 3
  br i1 %117, label %118, label %126

118:                                              ; preds = %110
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 4
  %121 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %121, i64 2
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 3
  %125 = load i8*, i8** %124, align 8
  store i8* %125, i8** %14, align 8
  br label %126

126:                                              ; preds = %118, %110
  %127 = load i8*, i8** %14, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load i8*, i8** %14, align 8
  %131 = call %struct.TYPE_16__* @clusterManagerNodeByName(i8* %130)
  store %struct.TYPE_16__* %131, %struct.TYPE_16__** %7, align 8
  br label %176

132:                                              ; preds = %126
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 4
  %135 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %135, i64 0
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 3
  %139 = load i8*, i8** %138, align 8
  store i8* %139, i8** %15, align 8
  %140 = load i8*, i8** %15, align 8
  %141 = icmp ne i8* %140, null
  %142 = zext i1 %141 to i32
  %143 = call i32 @assert(i32 %142)
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 4
  %146 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %146, i64 1
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  store i32 %150, i32* %16, align 4
  %151 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cluster_manager, i32 0, i32 0), align 4
  %152 = call i32 @listRewind(i32 %151, i32* %17)
  br label %153

153:                                              ; preds = %174, %132
  %154 = call %struct.TYPE_15__* @listNext(i32* %17)
  store %struct.TYPE_15__* %154, %struct.TYPE_15__** %18, align 8
  %155 = icmp ne %struct.TYPE_15__* %154, null
  br i1 %155, label %156, label %175

156:                                              ; preds = %153
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %158, align 8
  store %struct.TYPE_16__* %159, %struct.TYPE_16__** %19, align 8
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i8*, i8** %15, align 8
  %164 = call i64 @strcmp(i32 %162, i8* %163)
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %174

166:                                              ; preds = %156
  %167 = load i32, i32* %16, align 4
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = icmp eq i32 %167, %170
  br i1 %171, label %172, label %174

172:                                              ; preds = %166
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  store %struct.TYPE_16__* %173, %struct.TYPE_16__** %7, align 8
  br label %175

174:                                              ; preds = %166, %156
  br label %153

175:                                              ; preds = %172, %153
  br label %176

176:                                              ; preds = %175, %129
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %178 = icmp ne %struct.TYPE_16__* %177, null
  br i1 %178, label %179, label %180

179:                                              ; preds = %176
  br label %184

180:                                              ; preds = %176
  br label %181

181:                                              ; preds = %180, %93
  %182 = load i64, i64* %9, align 8
  %183 = add i64 %182, 1
  store i64 %183, i64* %9, align 8
  br label %45

184:                                              ; preds = %179, %45
  br label %185

185:                                              ; preds = %184, %26
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %187 = icmp ne %struct.TYPE_14__* %186, null
  br i1 %187, label %188, label %191

188:                                              ; preds = %185
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %190 = call i32 @freeReplyObject(%struct.TYPE_14__* %189)
  br label %191

191:                                              ; preds = %188, %185
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  ret %struct.TYPE_16__* %192
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_14__* @CLUSTER_MANAGER_COMMAND(%struct.TYPE_16__*, i8*) #1

declare dso_local i64 @clusterManagerCheckRedisReply(%struct.TYPE_16__*, %struct.TYPE_14__*, i8**) #1

declare dso_local %struct.TYPE_16__* @clusterManagerNodeByName(i8*) #1

declare dso_local i32 @listRewind(i32, i32*) #1

declare dso_local %struct.TYPE_15__* @listNext(i32*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @freeReplyObject(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
