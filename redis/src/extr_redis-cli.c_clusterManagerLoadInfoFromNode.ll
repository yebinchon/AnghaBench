; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerLoadInfoFromNode.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerLoadInfoFromNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32* }
%struct.TYPE_15__ = type { i32, i32, i32*, i32, i32, i32*, i32* }
%struct.TYPE_14__ = type { %struct.TYPE_15__* }

@CLUSTER_MANAGER_OPT_GETFRIENDS = common dso_local global i32 0, align 4
@cluster_manager = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@CLUSTER_MANAGER_FLAG_NOADDR = common dso_local global i32 0, align 4
@CLUSTER_MANAGER_FLAG_DISCONNECT = common dso_local global i32 0, align 4
@CLUSTER_MANAGER_FLAG_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"[ERR] Unable to load info for node %s:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"*** WARNING: %s:%d claims to be slave of unknown node ID %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32)* @clusterManagerLoadInfoFromNode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clusterManagerLoadInfoFromNode(%struct.TYPE_15__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 6
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %18 = call i32 @clusterManagerNodeConnect(%struct.TYPE_15__* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %22 = call i32 @freeClusterManagerNode(%struct.TYPE_15__* %21)
  store i32 0, i32* %3, align 4
  br label %196

23:                                               ; preds = %16, %2
  %24 = load i32, i32* @CLUSTER_MANAGER_OPT_GETFRIENDS, align 4
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  store i8* null, i8** %6, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %28 = call i32 @clusterManagerNodeIsCluster(%struct.TYPE_15__* %27, i8** %6)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %23
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @clusterManagerPrintNotClusterNodeError(%struct.TYPE_15__* %31, i8* %32)
  %34 = load i8*, i8** %6, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @zfree(i8* %37)
  br label %39

39:                                               ; preds = %36, %30
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %41 = call i32 @freeClusterManagerNode(%struct.TYPE_15__* %40)
  store i32 0, i32* %3, align 4
  br label %196

42:                                               ; preds = %23
  store i8* null, i8** %6, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i64 @clusterManagerNodeLoadInfo(%struct.TYPE_15__* %43, i32 %44, i8** %6)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %59, label %47

47:                                               ; preds = %42
  %48 = load i8*, i8** %6, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 @CLUSTER_MANAGER_PRINT_REPLY_ERROR(%struct.TYPE_15__* %51, i8* %52)
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 @zfree(i8* %54)
  br label %56

56:                                               ; preds = %50, %47
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %58 = call i32 @freeClusterManagerNode(%struct.TYPE_15__* %57)
  store i32 0, i32* %3, align 4
  br label %196

59:                                               ; preds = %42
  %60 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cluster_manager, i32 0, i32 0), align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %76

62:                                               ; preds = %59
  %63 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cluster_manager, i32 0, i32 0), align 8
  %64 = call i32 @listRewind(i32* %63, i32* %7)
  br label %65

65:                                               ; preds = %68, %62
  %66 = call %struct.TYPE_14__* @listNext(i32* %7)
  store %struct.TYPE_14__* %66, %struct.TYPE_14__** %8, align 8
  %67 = icmp ne %struct.TYPE_14__* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %70, align 8
  %72 = call i32 @freeClusterManagerNode(%struct.TYPE_15__* %71)
  br label %65

73:                                               ; preds = %65
  %74 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cluster_manager, i32 0, i32 0), align 8
  %75 = call i32 @listRelease(i32* %74)
  br label %76

76:                                               ; preds = %73, %59
  %77 = call i32* (...) @listCreate()
  store i32* %77, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cluster_manager, i32 0, i32 0), align 8
  %78 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cluster_manager, i32 0, i32 0), align 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %80 = call i32 @listAddNodeTail(i32* %78, %struct.TYPE_15__* %79)
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 5
  %83 = load i32*, i32** %82, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %156

85:                                               ; preds = %76
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 5
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @listRewind(i32* %88, i32* %7)
  br label %90

90:                                               ; preds = %146, %145, %85
  %91 = call %struct.TYPE_14__* @listNext(i32* %7)
  store %struct.TYPE_14__* %91, %struct.TYPE_14__** %8, align 8
  %92 = icmp ne %struct.TYPE_14__* %91, null
  br i1 %92, label %93, label %149

93:                                               ; preds = %90
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %95, align 8
  store %struct.TYPE_15__* %96, %struct.TYPE_15__** %9, align 8
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %93
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %101, %93
  br label %146

107:                                              ; preds = %101
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 6
  %110 = load i32*, i32** %109, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %117, label %112

112:                                              ; preds = %107
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %114 = call i32 @clusterManagerNodeConnect(%struct.TYPE_15__* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %112
  br label %146

117:                                              ; preds = %112, %107
  store i8* null, i8** %6, align 8
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %119 = call i64 @clusterManagerNodeLoadInfo(%struct.TYPE_15__* %118, i32 0, i8** %6)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %137

121:                                              ; preds = %117
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @CLUSTER_MANAGER_FLAG_NOADDR, align 4
  %126 = load i32, i32* @CLUSTER_MANAGER_FLAG_DISCONNECT, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @CLUSTER_MANAGER_FLAG_FAIL, align 4
  %129 = or i32 %127, %128
  %130 = and i32 %124, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %121
  br label %146

133:                                              ; preds = %121
  %134 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cluster_manager, i32 0, i32 0), align 8
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %136 = call i32 @listAddNodeTail(i32* %134, %struct.TYPE_15__* %135)
  br label %145

137:                                              ; preds = %117
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @clusterManagerLogErr(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %140, i32 %143)
  br label %146

145:                                              ; preds = %133
  br label %90

146:                                              ; preds = %137, %132, %116, %106
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %148 = call i32 @freeClusterManagerNode(%struct.TYPE_15__* %147)
  br label %90

149:                                              ; preds = %90
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 5
  %152 = load i32*, i32** %151, align 8
  %153 = call i32 @listRelease(i32* %152)
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 5
  store i32* null, i32** %155, align 8
  br label %156

156:                                              ; preds = %149, %76
  %157 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cluster_manager, i32 0, i32 0), align 8
  %158 = call i32 @listRewind(i32* %157, i32* %7)
  br label %159

159:                                              ; preds = %194, %156
  %160 = call %struct.TYPE_14__* @listNext(i32* %7)
  store %struct.TYPE_14__* %160, %struct.TYPE_14__** %8, align 8
  %161 = icmp ne %struct.TYPE_14__* %160, null
  br i1 %161, label %162, label %195

162:                                              ; preds = %159
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %164, align 8
  store %struct.TYPE_15__* %165, %struct.TYPE_15__** %10, align 8
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 2
  %168 = load i32*, i32** %167, align 8
  %169 = icmp ne i32* %168, null
  br i1 %169, label %170, label %194

170:                                              ; preds = %162
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 2
  %173 = load i32*, i32** %172, align 8
  %174 = call %struct.TYPE_15__* @clusterManagerNodeByName(i32* %173)
  store %struct.TYPE_15__* %174, %struct.TYPE_15__** %11, align 8
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %176 = icmp eq %struct.TYPE_15__* %175, null
  br i1 %176, label %177, label %188

177:                                              ; preds = %170
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 2
  %186 = load i32*, i32** %185, align 8
  %187 = call i32 @clusterManagerLogWarn(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %180, i32 %183, i32* %186)
  br label %193

188:                                              ; preds = %170
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %190, align 4
  br label %193

193:                                              ; preds = %188, %177
  br label %194

194:                                              ; preds = %193, %162
  br label %159

195:                                              ; preds = %159
  store i32 1, i32* %3, align 4
  br label %196

196:                                              ; preds = %195, %56, %39, %20
  %197 = load i32, i32* %3, align 4
  ret i32 %197
}

declare dso_local i32 @clusterManagerNodeConnect(%struct.TYPE_15__*) #1

declare dso_local i32 @freeClusterManagerNode(%struct.TYPE_15__*) #1

declare dso_local i32 @clusterManagerNodeIsCluster(%struct.TYPE_15__*, i8**) #1

declare dso_local i32 @clusterManagerPrintNotClusterNodeError(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @zfree(i8*) #1

declare dso_local i64 @clusterManagerNodeLoadInfo(%struct.TYPE_15__*, i32, i8**) #1

declare dso_local i32 @CLUSTER_MANAGER_PRINT_REPLY_ERROR(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @listRewind(i32*, i32*) #1

declare dso_local %struct.TYPE_14__* @listNext(i32*) #1

declare dso_local i32 @listRelease(i32*) #1

declare dso_local i32* @listCreate(...) #1

declare dso_local i32 @listAddNodeTail(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @clusterManagerLogErr(i8*, i32, i32) #1

declare dso_local %struct.TYPE_15__* @clusterManagerNodeByName(i32*) #1

declare dso_local i32 @clusterManagerLogWarn(i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
