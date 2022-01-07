; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerGetDisconnectedLinks.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerGetDisconnectedLinks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8* }
%struct.TYPE_9__ = type { i32, i64, i8*, i8* }

@.str = private unnamed_addr constant [14 x i8] c"CLUSTER NODES\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"myself\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"disconnected\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"handshake\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @clusterManagerGetDisconnectedLinks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @clusterManagerGetDisconnectedLinks(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %2, align 8
  store i32* null, i32** %3, align 8
  %17 = load i32*, i32** %2, align 8
  %18 = call %struct.TYPE_8__* @CLUSTER_MANAGER_COMMAND(i32* %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %4, align 8
  %19 = load i32*, i32** %2, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = call i32 @clusterManagerCheckRedisReply(i32* %19, %struct.TYPE_8__* %20, i32* null)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  br label %140

24:                                               ; preds = %1
  %25 = call i32* (...) @listCreate()
  store i32* %25, i32** %3, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %5, align 8
  br label %29

29:                                               ; preds = %138, %99, %94, %24
  %30 = load i8*, i8** %5, align 8
  %31 = call i8* @strstr(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %31, i8** %6, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %139

33:                                               ; preds = %29
  store i32 0, i32* %8, align 4
  %34 = load i8*, i8** %6, align 8
  store i8 0, i8* %34, align 1
  %35 = load i8*, i8** %5, align 8
  store i8* %35, i8** %7, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  store i8* %37, i8** %5, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  br label %38

38:                                               ; preds = %74, %33
  %39 = load i8*, i8** %7, align 8
  %40 = call i8* @strchr(i8* %39, i8 signext 32)
  store i8* %40, i8** %6, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %77

42:                                               ; preds = %38
  %43 = load i8*, i8** %6, align 8
  store i8 0, i8* %43, align 1
  %44 = load i8*, i8** %7, align 8
  store i8* %44, i8** %13, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  store i8* %46, i8** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i8*, i8** %13, align 8
  store i8* %50, i8** %9, align 8
  br label %74

51:                                               ; preds = %42
  %52 = load i32, i32* %8, align 4
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i8*, i8** %13, align 8
  store i8* %55, i8** %10, align 8
  br label %73

56:                                               ; preds = %51
  %57 = load i32, i32* %8, align 4
  %58 = icmp eq i32 %57, 2
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i8*, i8** %13, align 8
  store i8* %60, i8** %11, align 8
  br label %72

61:                                               ; preds = %56
  %62 = load i32, i32* %8, align 4
  %63 = icmp eq i32 %62, 7
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i8*, i8** %13, align 8
  store i8* %65, i8** %12, align 8
  br label %71

66:                                               ; preds = %61
  %67 = load i32, i32* %8, align 4
  %68 = icmp eq i32 %67, 8
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  br label %77

70:                                               ; preds = %66
  br label %71

71:                                               ; preds = %70, %64
  br label %72

72:                                               ; preds = %71, %59
  br label %73

73:                                               ; preds = %72, %54
  br label %74

74:                                               ; preds = %73, %49
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  br label %38

77:                                               ; preds = %69, %38
  %78 = load i32, i32* %8, align 4
  %79 = icmp eq i32 %78, 7
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i8*, i8** %7, align 8
  store i8* %81, i8** %12, align 8
  br label %82

82:                                               ; preds = %80, %77
  %83 = load i8*, i8** %9, align 8
  %84 = icmp eq i8* %83, null
  br i1 %84, label %94, label %85

85:                                               ; preds = %82
  %86 = load i8*, i8** %10, align 8
  %87 = icmp eq i8* %86, null
  br i1 %87, label %94, label %88

88:                                               ; preds = %85
  %89 = load i8*, i8** %11, align 8
  %90 = icmp eq i8* %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %88
  %92 = load i8*, i8** %12, align 8
  %93 = icmp eq i8* %92, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %91, %88, %85, %82
  br label %29

95:                                               ; preds = %91
  %96 = load i8*, i8** %11, align 8
  %97 = call i8* @strstr(i8* %96, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  br label %29

100:                                              ; preds = %95
  %101 = load i8*, i8** %11, align 8
  %102 = call i8* @strstr(i8* %101, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %103 = icmp ne i8* %102, null
  br i1 %103, label %108, label %104

104:                                              ; preds = %100
  %105 = load i8*, i8** %12, align 8
  %106 = call i8* @strstr(i8* %105, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %107 = icmp ne i8* %106, null
  br label %108

108:                                              ; preds = %104, %100
  %109 = phi i1 [ true, %100 ], [ %107, %104 ]
  %110 = zext i1 %109 to i32
  store i32 %110, i32* %14, align 4
  %111 = load i8*, i8** %11, align 8
  %112 = call i8* @strstr(i8* %111, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %113 = icmp ne i8* %112, null
  %114 = zext i1 %113 to i32
  store i32 %114, i32* %15, align 4
  %115 = load i32, i32* %14, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %108
  %118 = load i32, i32* %15, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %138

120:                                              ; preds = %117, %108
  %121 = call %struct.TYPE_9__* @zmalloc(i32 32)
  store %struct.TYPE_9__* %121, %struct.TYPE_9__** %16, align 8
  %122 = load i8*, i8** %9, align 8
  %123 = call i8* @sdsnew(i8* %122)
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 3
  store i8* %123, i8** %125, align 8
  %126 = load i8*, i8** %10, align 8
  %127 = call i8* @sdsnew(i8* %126)
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 2
  store i8* %127, i8** %129, align 8
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 1
  store i64 0, i64* %131, align 8
  %132 = load i32, i32* %15, align 4
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  %135 = load i32*, i32** %3, align 8
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %137 = call i32 @listAddNodeTail(i32* %135, %struct.TYPE_9__* %136)
  br label %138

138:                                              ; preds = %120, %117
  br label %29

139:                                              ; preds = %29
  br label %140

140:                                              ; preds = %139, %23
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %142 = icmp ne %struct.TYPE_8__* %141, null
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %145 = call i32 @freeReplyObject(%struct.TYPE_8__* %144)
  br label %146

146:                                              ; preds = %143, %140
  %147 = load i32*, i32** %3, align 8
  ret i32* %147
}

declare dso_local %struct.TYPE_8__* @CLUSTER_MANAGER_COMMAND(i32*, i8*) #1

declare dso_local i32 @clusterManagerCheckRedisReply(i32*, %struct.TYPE_8__*, i32*) #1

declare dso_local i32* @listCreate(...) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local %struct.TYPE_9__* @zmalloc(i32) #1

declare dso_local i8* @sdsnew(i8*) #1

declare dso_local i32 @listAddNodeTail(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @freeReplyObject(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
