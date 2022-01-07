; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_stream.c_xackCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_stream.c_xackCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_27__ = type { i32, %struct.TYPE_28__**, i32 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_26__ = type { i32 }

@OBJ_STREAM = common dso_local global i32 0, align 4
@shared = common dso_local global %struct.TYPE_21__ zeroinitializer, align 4
@C_OK = common dso_local global i64 0, align 8
@raxNotFound = common dso_local global %struct.TYPE_24__* null, align 8
@server = common dso_local global %struct.TYPE_22__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xackCommand(%struct.TYPE_27__* %0) #0 {
  %2 = alloca %struct.TYPE_27__*, align 8
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [4 x i8], align 1
  %9 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %2, align 8
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %3, align 8
  %10 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %15, i64 1
  %17 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %18 = call %struct.TYPE_26__* @lookupKeyRead(i32 %12, %struct.TYPE_28__* %17)
  store %struct.TYPE_26__* %18, %struct.TYPE_26__** %4, align 8
  %19 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %20 = icmp ne %struct.TYPE_26__* %19, null
  br i1 %20, label %21, label %40

21:                                               ; preds = %1
  %22 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %24 = load i32, i32* @OBJ_STREAM, align 4
  %25 = call i64 @checkType(%struct.TYPE_27__* %22, %struct.TYPE_26__* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %108

28:                                               ; preds = %21
  %29 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %34, i64 2
  %36 = load %struct.TYPE_28__*, %struct.TYPE_28__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.TYPE_25__* @streamLookupCG(i32 %31, i32 %38)
  store %struct.TYPE_25__* %39, %struct.TYPE_25__** %3, align 8
  br label %40

40:                                               ; preds = %28, %1
  %41 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %42 = icmp eq %struct.TYPE_26__* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %45 = icmp eq %struct.TYPE_25__* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %43, %40
  %47 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @shared, i32 0, i32 0), align 4
  %49 = call i32 @addReply(%struct.TYPE_27__* %47, i32 %48)
  br label %108

50:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  store i32 3, i32* %6, align 4
  br label %51

51:                                               ; preds = %101, %50
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %104

57:                                               ; preds = %51
  %58 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %59 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %61, i64 %63
  %65 = load %struct.TYPE_28__*, %struct.TYPE_28__** %64, align 8
  %66 = call i64 @streamParseStrictIDOrReply(%struct.TYPE_27__* %58, %struct.TYPE_28__* %65, i32* %7, i32 0)
  %67 = load i64, i64* @C_OK, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %57
  br label %108

70:                                               ; preds = %57
  %71 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %72 = call i32 @streamEncodeID(i8* %71, i32* %7)
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %77 = call %struct.TYPE_24__* @raxFind(i32 %75, i8* %76, i32 4)
  store %struct.TYPE_24__* %77, %struct.TYPE_24__** %9, align 8
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** @raxNotFound, align 8
  %80 = icmp ne %struct.TYPE_24__* %78, %79
  br i1 %80, label %81, label %100

81:                                               ; preds = %70
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %86 = call i32 @raxRemove(i32 %84, i8* %85, i32 4, i32* null)
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %93 = call i32 @raxRemove(i32 %91, i8* %92, i32 4, i32* null)
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %95 = call i32 @streamFreeNACK(%struct.TYPE_24__* %94)
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %5, align 4
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @server, i32 0, i32 0), align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @server, i32 0, i32 0), align 4
  br label %100

100:                                              ; preds = %81, %70
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %6, align 4
  br label %51

104:                                              ; preds = %51
  %105 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @addReplyLongLong(%struct.TYPE_27__* %105, i32 %106)
  br label %108

108:                                              ; preds = %104, %69, %46, %27
  ret void
}

declare dso_local %struct.TYPE_26__* @lookupKeyRead(i32, %struct.TYPE_28__*) #1

declare dso_local i64 @checkType(%struct.TYPE_27__*, %struct.TYPE_26__*, i32) #1

declare dso_local %struct.TYPE_25__* @streamLookupCG(i32, i32) #1

declare dso_local i32 @addReply(%struct.TYPE_27__*, i32) #1

declare dso_local i64 @streamParseStrictIDOrReply(%struct.TYPE_27__*, %struct.TYPE_28__*, i32*, i32) #1

declare dso_local i32 @streamEncodeID(i8*, i32*) #1

declare dso_local %struct.TYPE_24__* @raxFind(i32, i8*, i32) #1

declare dso_local i32 @raxRemove(i32, i8*, i32, i32*) #1

declare dso_local i32 @streamFreeNACK(%struct.TYPE_24__*) #1

declare dso_local i32 @addReplyLongLong(%struct.TYPE_27__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
