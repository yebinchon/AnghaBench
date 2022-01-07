; ModuleID = '/home/carl/AnghaBench/redis/src/extr_db.c_moveCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_db.c_moveCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i64 }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }

@server = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@.str = private unnamed_addr constant [36 x i8] c"MOVE is not allowed in cluster mode\00", align 1
@C_ERR = common dso_local global i64 0, align 8
@INT_MIN = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i64 0, align 8
@shared = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @moveCommand(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @server, i32 0, i32 1), align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %13 = call i32 @addReplyError(%struct.TYPE_16__* %12, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %138

14:                                               ; preds = %1
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  store %struct.TYPE_15__* %17, %struct.TYPE_15__** %4, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @getLongLongFromObject(i32 %27, i64* %7)
  %29 = load i64, i64* @C_ERR, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %46, label %31

31:                                               ; preds = %14
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @INT_MIN, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %46, label %35

35:                                               ; preds = %31
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* @INT_MAX, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %46, label %39

39:                                               ; preds = %35
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %41 = load i64, i64* %7, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i64 @selectDb(%struct.TYPE_16__* %40, i32 %42)
  %44 = load i64, i64* @C_ERR, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %39, %35, %31, %14
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @shared, i32 0, i32 3), align 4
  %49 = call i32 @addReply(%struct.TYPE_16__* %47, i32 %48)
  br label %138

50:                                               ; preds = %39
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %52, align 8
  store %struct.TYPE_15__* %53, %struct.TYPE_15__** %5, align 8
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i64 @selectDb(%struct.TYPE_16__* %54, i32 %55)
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %59 = icmp eq %struct.TYPE_15__* %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %50
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @shared, i32 0, i32 2), align 4
  %63 = call i32 @addReply(%struct.TYPE_16__* %61, i32 %62)
  br label %138

64:                                               ; preds = %50
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %66, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32* @lookupKeyWrite(%struct.TYPE_15__* %67, i32 %72)
  store i32* %73, i32** %3, align 8
  %74 = load i32*, i32** %3, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %64
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @shared, i32 0, i32 1), align 4
  %79 = call i32 @addReply(%struct.TYPE_16__* %77, i32 %78)
  br label %138

80:                                               ; preds = %64
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %82, align 8
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @getExpire(%struct.TYPE_15__* %83, i32 %88)
  store i64 %89, i64* %8, align 8
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32* @lookupKeyWrite(%struct.TYPE_15__* %90, i32 %95)
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %102

98:                                               ; preds = %80
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @shared, i32 0, i32 1), align 4
  %101 = call i32 @addReply(%struct.TYPE_16__* %99, i32 %100)
  br label %138

102:                                              ; preds = %80
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32*, i32** %3, align 8
  %110 = call i32 @dbAdd(%struct.TYPE_15__* %103, i32 %108, i32* %109)
  %111 = load i64, i64* %8, align 8
  %112 = icmp ne i64 %111, -1
  br i1 %112, label %113, label %123

113:                                              ; preds = %102
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  %120 = load i32, i32* %119, align 4
  %121 = load i64, i64* %8, align 8
  %122 = call i32 @setExpire(%struct.TYPE_16__* %114, %struct.TYPE_15__* %115, i32 %120, i64 %121)
  br label %123

123:                                              ; preds = %113, %102
  %124 = load i32*, i32** %3, align 8
  %125 = call i32 @incrRefCount(i32* %124)
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @dbDelete(%struct.TYPE_15__* %126, i32 %131)
  %133 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @server, i32 0, i32 0), align 8
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @server, i32 0, i32 0), align 8
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %136 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @shared, i32 0, i32 0), align 4
  %137 = call i32 @addReply(%struct.TYPE_16__* %135, i32 %136)
  br label %138

138:                                              ; preds = %123, %98, %76, %60, %46, %11
  ret void
}

declare dso_local i32 @addReplyError(%struct.TYPE_16__*, i8*) #1

declare dso_local i64 @getLongLongFromObject(i32, i64*) #1

declare dso_local i64 @selectDb(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @addReply(%struct.TYPE_16__*, i32) #1

declare dso_local i32* @lookupKeyWrite(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @getExpire(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @dbAdd(%struct.TYPE_15__*, i32, i32*) #1

declare dso_local i32 @setExpire(%struct.TYPE_16__*, %struct.TYPE_15__*, i32, i64) #1

declare dso_local i32 @incrRefCount(i32*) #1

declare dso_local i32 @dbDelete(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
