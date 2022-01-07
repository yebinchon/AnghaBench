; ModuleID = '/home/carl/AnghaBench/redis/src/extr_module.c_RM_GetClusterNodeInfo.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_module.c_RM_GetClusterNodeInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@CLUSTER_NODE_NOADDR = common dso_local global i32 0, align 4
@CLUSTER_NODE_HANDSHAKE = common dso_local global i32 0, align 4
@REDISMODULE_ERR = common dso_local global i32 0, align 4
@REDISMODULE_NODE_ID_LEN = common dso_local global i32 0, align 4
@CLUSTER_NODE_MASTER = common dso_local global i32 0, align 4
@CLUSTER_NODE_MYSELF = common dso_local global i32 0, align 4
@REDISMODULE_NODE_MYSELF = common dso_local global i32 0, align 4
@REDISMODULE_NODE_MASTER = common dso_local global i32 0, align 4
@CLUSTER_NODE_SLAVE = common dso_local global i32 0, align 4
@REDISMODULE_NODE_SLAVE = common dso_local global i32 0, align 4
@CLUSTER_NODE_PFAIL = common dso_local global i32 0, align 4
@REDISMODULE_NODE_PFAIL = common dso_local global i32 0, align 4
@CLUSTER_NODE_FAIL = common dso_local global i32 0, align 4
@REDISMODULE_NODE_FAIL = common dso_local global i32 0, align 4
@CLUSTER_NODE_NOFAILOVER = common dso_local global i32 0, align 4
@REDISMODULE_NODE_NOFAILOVER = common dso_local global i32 0, align 4
@REDISMODULE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RM_GetClusterNodeInfo(i32* %0, i8* %1, i8* %2, i8* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @UNUSED(i32* %15)
  %17 = load i8*, i8** %9, align 8
  %18 = call %struct.TYPE_5__* @clusterLookupNode(i8* %17)
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %14, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @CLUSTER_NODE_NOADDR, align 4
  %23 = load i32, i32* @CLUSTER_NODE_HANDSHAKE, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %6
  %28 = load i32, i32* @REDISMODULE_ERR, align 4
  store i32 %28, i32* %7, align 4
  br label %155

29:                                               ; preds = %6
  %30 = load i8*, i8** %10, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load i8*, i8** %10, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @REDISMODULE_NODE_ID_LEN, align 4
  %38 = call i32 @memcpy(i8* %33, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %32, %29
  %40 = load i8*, i8** %11, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %68

42:                                               ; preds = %39
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @CLUSTER_NODE_MASTER, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %42
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = icmp ne %struct.TYPE_4__* %52, null
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load i8*, i8** %11, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @REDISMODULE_NODE_ID_LEN, align 4
  %62 = call i32 @memcpy(i8* %55, i32 %60, i32 %61)
  br label %67

63:                                               ; preds = %49, %42
  %64 = load i8*, i8** %11, align 8
  %65 = load i32, i32* @REDISMODULE_NODE_ID_LEN, align 4
  %66 = call i32 @memset(i8* %64, i32 0, i32 %65)
  br label %67

67:                                               ; preds = %63, %54
  br label %68

68:                                               ; preds = %67, %39
  %69 = load i32*, i32** %12, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %12, align 8
  store i32 %74, i32* %75, align 4
  br label %76

76:                                               ; preds = %71, %68
  %77 = load i32*, i32** %13, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %153

79:                                               ; preds = %76
  %80 = load i32*, i32** %13, align 8
  store i32 0, i32* %80, align 4
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @CLUSTER_NODE_MYSELF, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %79
  %88 = load i32, i32* @REDISMODULE_NODE_MYSELF, align 4
  %89 = load i32*, i32** %13, align 8
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %88
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %87, %79
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @CLUSTER_NODE_MASTER, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %92
  %100 = load i32, i32* @REDISMODULE_NODE_MASTER, align 4
  %101 = load i32*, i32** %13, align 8
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %100
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %99, %92
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @CLUSTER_NODE_SLAVE, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %104
  %112 = load i32, i32* @REDISMODULE_NODE_SLAVE, align 4
  %113 = load i32*, i32** %13, align 8
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %112
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %111, %104
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @CLUSTER_NODE_PFAIL, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %116
  %124 = load i32, i32* @REDISMODULE_NODE_PFAIL, align 4
  %125 = load i32*, i32** %13, align 8
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %124
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %123, %116
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @CLUSTER_NODE_FAIL, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %128
  %136 = load i32, i32* @REDISMODULE_NODE_FAIL, align 4
  %137 = load i32*, i32** %13, align 8
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %138, %136
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %135, %128
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @CLUSTER_NODE_NOFAILOVER, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %140
  %148 = load i32, i32* @REDISMODULE_NODE_NOFAILOVER, align 4
  %149 = load i32*, i32** %13, align 8
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %148
  store i32 %151, i32* %149, align 4
  br label %152

152:                                              ; preds = %147, %140
  br label %153

153:                                              ; preds = %152, %76
  %154 = load i32, i32* @REDISMODULE_OK, align 4
  store i32 %154, i32* %7, align 4
  br label %155

155:                                              ; preds = %153, %27
  %156 = load i32, i32* %7, align 4
  ret i32 %156
}

declare dso_local i32 @UNUSED(i32*) #1

declare dso_local %struct.TYPE_5__* @clusterLookupNode(i8*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
