; ModuleID = '/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterSendPublish.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_cluster.c_clusterSendPublish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_16__, i8* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i8*, i8*, i8* }

@CLUSTERMSG_TYPE_PUBLISH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clusterSendPublish(i32* %0, %struct.TYPE_17__* %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [1 x %struct.TYPE_18__], align 16
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %6, align 8
  %13 = getelementptr inbounds [1 x %struct.TYPE_18__], [1 x %struct.TYPE_18__]* %8, i64 0, i64 0
  store %struct.TYPE_18__* %13, %struct.TYPE_18__** %9, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %15 = call %struct.TYPE_17__* @getDecodedObject(%struct.TYPE_17__* %14)
  store %struct.TYPE_17__* %15, %struct.TYPE_17__** %5, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %17 = call %struct.TYPE_17__* @getDecodedObject(%struct.TYPE_17__* %16)
  store %struct.TYPE_17__* %17, %struct.TYPE_17__** %6, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %21 = call i32 @sdslen(%struct.TYPE_18__* %20)
  store i32 %21, i32* %11, align 4
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  %25 = call i32 @sdslen(%struct.TYPE_18__* %24)
  store i32 %25, i32* %12, align 4
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %27 = load i32, i32* @CLUSTERMSG_TYPE_PUBLISH, align 4
  %28 = call i32 @clusterBuildMessageHdr(%struct.TYPE_18__* %26, i32 %27)
  store i32 28, i32* %10, align 4
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = add i64 -4, %30
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = add i64 %31, %33
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = add i64 %36, %34
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i8* @htonl(i32 %39)
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 2
  store i8* %40, i8** %45, align 8
  %46 = load i32, i32* %12, align 4
  %47 = call i8* @htonl(i32 %46)
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 1
  store i8* %47, i8** %52, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call i8* @htonl(i32 %53)
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = icmp ult i64 %58, 32
  br i1 %59, label %60, label %63

60:                                               ; preds = %3
  %61 = getelementptr inbounds [1 x %struct.TYPE_18__], [1 x %struct.TYPE_18__]* %8, i64 0, i64 0
  %62 = bitcast %struct.TYPE_18__* %61 to i8*
  store i8* %62, i8** %7, align 8
  br label %71

63:                                               ; preds = %3
  %64 = load i32, i32* %10, align 4
  %65 = call i8* @zmalloc(i32 %64)
  store i8* %65, i8** %7, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %68 = call i32 @memcpy(i8* %66, %struct.TYPE_18__* %67, i32 32)
  %69 = load i8*, i8** %7, align 8
  %70 = bitcast i8* %69 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %70, %struct.TYPE_18__** %9, align 8
  br label %71

71:                                               ; preds = %63, %60
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %79, align 8
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %82, align 8
  %84 = call i32 @sdslen(%struct.TYPE_18__* %83)
  %85 = call i32 @memcpy(i8* %77, %struct.TYPE_18__* %80, i32 %84)
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %93, align 8
  %95 = call i32 @sdslen(%struct.TYPE_18__* %94)
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %91, i64 %96
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %99, align 8
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %102, align 8
  %104 = call i32 @sdslen(%struct.TYPE_18__* %103)
  %105 = call i32 @memcpy(i8* %97, %struct.TYPE_18__* %100, i32 %104)
  %106 = load i32*, i32** %4, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %113

108:                                              ; preds = %71
  %109 = load i32*, i32** %4, align 8
  %110 = load i8*, i8** %7, align 8
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @clusterSendMessage(i32* %109, i8* %110, i32 %111)
  br label %117

113:                                              ; preds = %71
  %114 = load i8*, i8** %7, align 8
  %115 = load i32, i32* %10, align 4
  %116 = call i32 @clusterBroadcastMessage(i8* %114, i32 %115)
  br label %117

117:                                              ; preds = %113, %108
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %119 = call i32 @decrRefCount(%struct.TYPE_17__* %118)
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %121 = call i32 @decrRefCount(%struct.TYPE_17__* %120)
  %122 = load i8*, i8** %7, align 8
  %123 = getelementptr inbounds [1 x %struct.TYPE_18__], [1 x %struct.TYPE_18__]* %8, i64 0, i64 0
  %124 = bitcast %struct.TYPE_18__* %123 to i8*
  %125 = icmp ne i8* %122, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %117
  %127 = load i8*, i8** %7, align 8
  %128 = call i32 @zfree(i8* %127)
  br label %129

129:                                              ; preds = %126, %117
  ret void
}

declare dso_local %struct.TYPE_17__* @getDecodedObject(%struct.TYPE_17__*) #1

declare dso_local i32 @sdslen(%struct.TYPE_18__*) #1

declare dso_local i32 @clusterBuildMessageHdr(%struct.TYPE_18__*, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i8* @zmalloc(i32) #1

declare dso_local i32 @memcpy(i8*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @clusterSendMessage(i32*, i8*, i32) #1

declare dso_local i32 @clusterBroadcastMessage(i8*, i32) #1

declare dso_local i32 @decrRefCount(%struct.TYPE_17__*) #1

declare dso_local i32 @zfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
