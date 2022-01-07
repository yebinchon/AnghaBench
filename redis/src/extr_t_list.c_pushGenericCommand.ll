; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_list.c_pushGenericCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_list.c_pushGenericCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_18__*, i32* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i64, i32 }

@OBJ_LIST = common dso_local global i64 0, align 8
@shared = common dso_local global %struct.TYPE_19__ zeroinitializer, align 4
@server = common dso_local global %struct.TYPE_20__ zeroinitializer, align 4
@LIST_HEAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"lpush\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"rpush\00", align 1
@NOTIFY_LIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pushGenericCommand(%struct.TYPE_17__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.TYPE_16__* @lookupKeyWrite(%struct.TYPE_18__* %11, i32 %16)
  store %struct.TYPE_16__* %17, %struct.TYPE_16__** %7, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %19 = icmp ne %struct.TYPE_16__* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %2
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @OBJ_LIST, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @shared, i32 0, i32 0), align 4
  %29 = call i32 @addReply(%struct.TYPE_17__* %27, i32 %28)
  br label %119

30:                                               ; preds = %20, %2
  store i32 2, i32* %5, align 4
  br label %31

31:                                               ; preds = %71, %30
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %74

37:                                               ; preds = %31
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %39 = icmp ne %struct.TYPE_16__* %38, null
  br i1 %39, label %58, label %40

40:                                               ; preds = %37
  %41 = call %struct.TYPE_16__* (...) @createQuicklistObject()
  store %struct.TYPE_16__* %41, %struct.TYPE_16__** %7, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @server, i32 0, i32 2), align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @server, i32 0, i32 1), align 4
  %47 = call i32 @quicklistSetOptions(i32 %44, i32 %45, i32 %46)
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %49, align 8
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %57 = call i32 @dbAdd(%struct.TYPE_18__* %50, i32 %55, %struct.TYPE_16__* %56)
  br label %58

58:                                               ; preds = %40, %37
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @listTypePush(%struct.TYPE_16__* %59, i32 %66, i32 %67)
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %58
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %31

74:                                               ; preds = %31
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %77 = icmp ne %struct.TYPE_16__* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %80 = call i32 @listTypeLength(%struct.TYPE_16__* %79)
  br label %82

81:                                               ; preds = %74
  br label %82

82:                                               ; preds = %81, %78
  %83 = phi i32 [ %80, %78 ], [ 0, %81 ]
  %84 = call i32 @addReplyLongLong(%struct.TYPE_17__* %75, i32 %83)
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %115

87:                                               ; preds = %82
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @LIST_HEAD, align 4
  %90 = icmp eq i32 %88, %89
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)
  store i8* %92, i8** %8, align 8
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %94, align 8
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @signalModifiedKey(%struct.TYPE_18__* %95, i32 %100)
  %102 = load i32, i32* @NOTIFY_LIST, align 4
  %103 = load i8*, i8** %8, align 8
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @notifyKeyspaceEvent(i32 %102, i8* %103, i32 %108, i32 %113)
  br label %115

115:                                              ; preds = %87, %82
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @server, i32 0, i32 0), align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @server, i32 0, i32 0), align 4
  br label %119

119:                                              ; preds = %115, %26
  ret void
}

declare dso_local %struct.TYPE_16__* @lookupKeyWrite(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @addReply(%struct.TYPE_17__*, i32) #1

declare dso_local %struct.TYPE_16__* @createQuicklistObject(...) #1

declare dso_local i32 @quicklistSetOptions(i32, i32, i32) #1

declare dso_local i32 @dbAdd(%struct.TYPE_18__*, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @listTypePush(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @addReplyLongLong(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @listTypeLength(%struct.TYPE_16__*) #1

declare dso_local i32 @signalModifiedKey(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @notifyKeyspaceEvent(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
