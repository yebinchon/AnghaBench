; ModuleID = '/home/carl/AnghaBench/redis/src/extr_blocked.c_serveClientsBlockedOnListKey.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_blocked.c_serveClientsBlockedOnListKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_19__*, i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, %struct.TYPE_15__*, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i32* }

@BLOCKED_LIST = common dso_local global i64 0, align 8
@blpopCommand = common dso_local global i64 0, align 8
@LIST_HEAD = common dso_local global i32 0, align 4
@LIST_TAIL = common dso_local global i32 0, align 4
@C_ERR = common dso_local global i64 0, align 8
@NOTIFY_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"del\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @serveClientsBlockedOnListKey(i32* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32* @dictFind(i32 %17, i32 %20)
  store i32* %21, i32** %5, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %118

24:                                               ; preds = %2
  %25 = load i32*, i32** %5, align 8
  %26 = call i32* @dictGetVal(i32* %25)
  store i32* %26, i32** %6, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @listLength(i32* %27)
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %116, %44, %24
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %7, align 4
  %32 = icmp ne i32 %30, 0
  br i1 %32, label %33, label %117

33:                                               ; preds = %29
  %34 = load i32*, i32** %6, align 8
  %35 = call %struct.TYPE_17__* @listFirst(i32* %34)
  store %struct.TYPE_17__* %35, %struct.TYPE_17__** %8, align 8
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %37, align 8
  store %struct.TYPE_18__* %38, %struct.TYPE_18__** %9, align 8
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @BLOCKED_LIST, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %33
  %45 = load i32*, i32** %6, align 8
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %47 = call i32 @listDelNode(i32* %45, %struct.TYPE_17__* %46)
  %48 = load i32*, i32** %6, align 8
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %50 = call i32 @listAddNodeTail(i32* %48, %struct.TYPE_18__* %49)
  br label %29

51:                                               ; preds = %33
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %10, align 8
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %57, align 8
  %59 = icmp ne %struct.TYPE_15__* %58, null
  br i1 %59, label %60, label %70

60:                                               ; preds = %51
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @blpopCommand, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = load i32, i32* @LIST_HEAD, align 4
  br label %72

70:                                               ; preds = %60, %51
  %71 = load i32, i32* @LIST_TAIL, align 4
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i32 [ %69, %68 ], [ %71, %70 ]
  store i32 %73, i32* %11, align 4
  %74 = load i32*, i32** %3, align 8
  %75 = load i32, i32* %11, align 4
  %76 = call i32* @listTypePop(i32* %74, i32 %75)
  store i32* %76, i32** %12, align 8
  %77 = load i32*, i32** %12, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %115

79:                                               ; preds = %72
  %80 = load i32*, i32** %10, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32*, i32** %10, align 8
  %84 = call i32 @incrRefCount(i32* %83)
  br label %85

85:                                               ; preds = %82, %79
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %87 = call i32 @unblockClient(%struct.TYPE_18__* %86)
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32*, i32** %10, align 8
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %94, align 8
  %96 = load i32*, i32** %12, align 8
  %97 = load i32, i32* %11, align 4
  %98 = call i64 @serveClientBlockedOnList(%struct.TYPE_18__* %88, i32 %91, i32* %92, %struct.TYPE_19__* %95, i32* %96, i32 %97)
  %99 = load i64, i64* @C_ERR, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %85
  %102 = load i32*, i32** %3, align 8
  %103 = load i32*, i32** %12, align 8
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @listTypePush(i32* %102, i32* %103, i32 %104)
  br label %106

106:                                              ; preds = %101, %85
  %107 = load i32*, i32** %10, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i32*, i32** %10, align 8
  %111 = call i32 @decrRefCount(i32* %110)
  br label %112

112:                                              ; preds = %109, %106
  %113 = load i32*, i32** %12, align 8
  %114 = call i32 @decrRefCount(i32* %113)
  br label %116

115:                                              ; preds = %72
  br label %117

116:                                              ; preds = %112
  br label %29

117:                                              ; preds = %115, %29
  br label %118

118:                                              ; preds = %117, %2
  %119 = load i32*, i32** %3, align 8
  %120 = call i64 @listTypeLength(i32* %119)
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %140

122:                                              ; preds = %118
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %124, align 8
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @dbDelete(%struct.TYPE_19__* %125, i32 %128)
  %130 = load i32, i32* @NOTIFY_GENERIC, align 4
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @notifyKeyspaceEvent(i32 %130, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %133, i32 %138)
  br label %140

140:                                              ; preds = %122, %118
  ret void
}

declare dso_local i32* @dictFind(i32, i32) #1

declare dso_local i32* @dictGetVal(i32*) #1

declare dso_local i32 @listLength(i32*) #1

declare dso_local %struct.TYPE_17__* @listFirst(i32*) #1

declare dso_local i32 @listDelNode(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @listAddNodeTail(i32*, %struct.TYPE_18__*) #1

declare dso_local i32* @listTypePop(i32*, i32) #1

declare dso_local i32 @incrRefCount(i32*) #1

declare dso_local i32 @unblockClient(%struct.TYPE_18__*) #1

declare dso_local i64 @serveClientBlockedOnList(%struct.TYPE_18__*, i32, i32*, %struct.TYPE_19__*, i32*, i32) #1

declare dso_local i32 @listTypePush(i32*, i32*, i32) #1

declare dso_local i32 @decrRefCount(i32*) #1

declare dso_local i64 @listTypeLength(i32*) #1

declare dso_local i32 @dbDelete(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @notifyKeyspaceEvent(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
