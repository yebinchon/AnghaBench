; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_list.c_lsetCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_list.c_lsetCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_19__*, %struct.TYPE_17__** }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_17__ = type { i64, i32* }

@shared = common dso_local global %struct.TYPE_20__ zeroinitializer, align 4
@OBJ_LIST = common dso_local global i32 0, align 4
@C_OK = common dso_local global i64 0, align 8
@OBJ_ENCODING_QUICKLIST = common dso_local global i64 0, align 8
@NOTIFY_LIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"lset\00", align 1
@server = common dso_local global %struct.TYPE_21__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Unknown list encoding\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lsetCommand(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %8 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %11, i64 1
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @shared, i32 0, i32 2), align 4
  %15 = call %struct.TYPE_17__* @lookupKeyWriteOrReply(%struct.TYPE_18__* %8, %struct.TYPE_17__* %13, i32 %14)
  store %struct.TYPE_17__* %15, %struct.TYPE_17__** %3, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %17 = icmp eq %struct.TYPE_17__* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %21 = load i32, i32* @OBJ_LIST, align 4
  %22 = call i64 @checkType(%struct.TYPE_18__* %19, %struct.TYPE_17__* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18, %1
  br label %97

25:                                               ; preds = %18
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %28, i64 3
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %29, align 8
  store %struct.TYPE_17__* %30, %struct.TYPE_17__** %5, align 8
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %34, i64 2
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %37 = call i64 @getLongFromObjectOrReply(%struct.TYPE_18__* %31, %struct.TYPE_17__* %36, i64* %4, i32* null)
  %38 = load i64, i64* @C_OK, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %25
  br label %97

41:                                               ; preds = %25
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @OBJ_ENCODING_QUICKLIST, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %95

47:                                               ; preds = %41
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** %6, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = load i64, i64* %4, align 8
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @sdslen(i32* %58)
  %60 = call i32 @quicklistReplaceAtIndex(i32* %51, i64 %52, i32* %55, i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %47
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @shared, i32 0, i32 1), align 4
  %66 = call i32 @addReply(%struct.TYPE_18__* %64, i32 %65)
  br label %94

67:                                               ; preds = %47
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @shared, i32 0, i32 0), align 4
  %70 = call i32 @addReply(%struct.TYPE_18__* %68, i32 %69)
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %72, align 8
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %76, i64 1
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %77, align 8
  %79 = call i32 @signalModifiedKey(%struct.TYPE_19__* %73, %struct.TYPE_17__* %78)
  %80 = load i32, i32* @NOTIFY_LIST, align 4
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %83, i64 1
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %84, align 8
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @notifyKeyspaceEvent(i32 %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.TYPE_17__* %85, i32 %90)
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @server, i32 0, i32 0), align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @server, i32 0, i32 0), align 4
  br label %94

94:                                               ; preds = %67, %63
  br label %97

95:                                               ; preds = %41
  %96 = call i32 @serverPanic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %97

97:                                               ; preds = %24, %40, %95, %94
  ret void
}

declare dso_local %struct.TYPE_17__* @lookupKeyWriteOrReply(%struct.TYPE_18__*, %struct.TYPE_17__*, i32) #1

declare dso_local i64 @checkType(%struct.TYPE_18__*, %struct.TYPE_17__*, i32) #1

declare dso_local i64 @getLongFromObjectOrReply(%struct.TYPE_18__*, %struct.TYPE_17__*, i64*, i32*) #1

declare dso_local i32 @quicklistReplaceAtIndex(i32*, i64, i32*, i32) #1

declare dso_local i32 @sdslen(i32*) #1

declare dso_local i32 @addReply(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @signalModifiedKey(%struct.TYPE_19__*, %struct.TYPE_17__*) #1

declare dso_local i32 @notifyKeyspaceEvent(i32, i8*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @serverPanic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
