; ModuleID = '/home/carl/AnghaBench/redis/src/extr_networking.c_unlinkClient.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_networking.c_unlinkClient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32**, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64, i32*, i32*, i32 }

@server = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@CLIENT_SLAVE = common dso_local global i32 0, align 4
@SLAVE_STATE_WAIT_BGSAVE_END = common dso_local global i64 0, align 8
@CLIENT_PENDING_WRITE = common dso_local global i32 0, align 4
@CLIENT_PENDING_READ = common dso_local global i32 0, align 4
@CLIENT_UNBLOCKED = common dso_local global i32 0, align 4
@CLIENT_TRACKING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unlinkClient(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 7), align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = icmp eq %struct.TYPE_6__* %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 7), align 8
  br label %10

10:                                               ; preds = %9, %1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %87

15:                                               ; preds = %10
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %35

20:                                               ; preds = %15
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @htonu64(i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 6), align 4
  %26 = bitcast i32* %4 to i8*
  %27 = call i32 @raxRemove(i32 %25, i8* %26, i32 4, i32* null)
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 5), align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @listDelNode(i32 %28, i32* %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 3
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %20, %15
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @CLIENT_SLAVE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %80

42:                                               ; preds = %35
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @SLAVE_STATE_WAIT_BGSAVE_END, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %80

48:                                               ; preds = %42
  %49 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 4), align 8
  %50 = icmp ne i32** %49, null
  br i1 %50, label %51, label %80

51:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %76, %51
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 0), align 8
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %79

56:                                               ; preds = %52
  %57 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 4), align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32*, i32** %57, i64 %59
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = icmp eq i32* %61, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %56
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @rdbPipeWriteHandlerConnRemoved(i32* %69)
  %71 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 4), align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32*, i32** %71, i64 %73
  store i32* null, i32** %74, align 8
  br label %79

75:                                               ; preds = %56
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %52

79:                                               ; preds = %66, %52
  br label %80

80:                                               ; preds = %79, %48, %42, %35
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @connClose(i32* %83)
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  store i32* null, i32** %86, align 8
  br label %87

87:                                               ; preds = %80, %10
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @CLIENT_PENDING_WRITE, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %111

94:                                               ; preds = %87
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 3), align 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %97 = call i32* @listSearchKey(i32 %95, %struct.TYPE_6__* %96)
  store i32* %97, i32** %3, align 8
  %98 = load i32*, i32** %3, align 8
  %99 = icmp ne i32* %98, null
  %100 = zext i1 %99 to i32
  %101 = call i32 @serverAssert(i32 %100)
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 3), align 4
  %103 = load i32*, i32** %3, align 8
  %104 = call i32 @listDelNode(i32 %102, i32* %103)
  %105 = load i32, i32* @CLIENT_PENDING_WRITE, align 4
  %106 = xor i32 %105, -1
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = and i32 %109, %106
  store i32 %110, i32* %108, align 8
  br label %111

111:                                              ; preds = %94, %87
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @CLIENT_PENDING_READ, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %135

118:                                              ; preds = %111
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 2), align 8
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %121 = call i32* @listSearchKey(i32 %119, %struct.TYPE_6__* %120)
  store i32* %121, i32** %3, align 8
  %122 = load i32*, i32** %3, align 8
  %123 = icmp ne i32* %122, null
  %124 = zext i1 %123 to i32
  %125 = call i32 @serverAssert(i32 %124)
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 2), align 8
  %127 = load i32*, i32** %3, align 8
  %128 = call i32 @listDelNode(i32 %126, i32* %127)
  %129 = load i32, i32* @CLIENT_PENDING_READ, align 4
  %130 = xor i32 %129, -1
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = and i32 %133, %130
  store i32 %134, i32* %132, align 8
  br label %135

135:                                              ; preds = %118, %111
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @CLIENT_UNBLOCKED, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %159

142:                                              ; preds = %135
  %143 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 1), align 4
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %145 = call i32* @listSearchKey(i32 %143, %struct.TYPE_6__* %144)
  store i32* %145, i32** %3, align 8
  %146 = load i32*, i32** %3, align 8
  %147 = icmp ne i32* %146, null
  %148 = zext i1 %147 to i32
  %149 = call i32 @serverAssert(i32 %148)
  %150 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 1), align 4
  %151 = load i32*, i32** %3, align 8
  %152 = call i32 @listDelNode(i32 %150, i32* %151)
  %153 = load i32, i32* @CLIENT_UNBLOCKED, align 4
  %154 = xor i32 %153, -1
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = and i32 %157, %154
  store i32 %158, i32* %156, align 8
  br label %159

159:                                              ; preds = %142, %135
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @CLIENT_TRACKING, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %159
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %168 = call i32 @disableTracking(%struct.TYPE_6__* %167)
  br label %169

169:                                              ; preds = %166, %159
  ret void
}

declare dso_local i32 @htonu64(i32) #1

declare dso_local i32 @raxRemove(i32, i8*, i32, i32*) #1

declare dso_local i32 @listDelNode(i32, i32*) #1

declare dso_local i32 @rdbPipeWriteHandlerConnRemoved(i32*) #1

declare dso_local i32 @connClose(i32*) #1

declare dso_local i32* @listSearchKey(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @serverAssert(i32) #1

declare dso_local i32 @disableTracking(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
