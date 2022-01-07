; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_set.c_spopCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_set.c_spopCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32*, i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_27__ = type { i32, i64, i32*, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_26__ = type { i32 }

@shared = common dso_local global %struct.TYPE_29__ zeroinitializer, align 8
@OBJ_SET = common dso_local global i32 0, align 4
@OBJ_ENCODING_INTSET = common dso_local global i32 0, align 4
@NOTIFY_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"spop\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"SREM\00", align 1
@NOTIFY_GENERIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"del\00", align 1
@server = common dso_local global %struct.TYPE_25__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spopCommand(%struct.TYPE_27__* %0) #0 {
  %2 = alloca %struct.TYPE_27__*, align 8
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %2, align 8
  %9 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 3
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %15 = call i32 @spopWithCountCommand(%struct.TYPE_27__* %14)
  br label %141

16:                                               ; preds = %1
  %17 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sgt i32 %19, 3
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @shared, i32 0, i32 1), align 8
  %24 = call i32 @addReply(%struct.TYPE_27__* %22, i32 %23)
  br label %141

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %28 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @shared, i32 0, i32 0), align 8
  %34 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.TYPE_26__* @lookupKeyWriteOrReply(%struct.TYPE_27__* %27, i32 %32, i32 %38)
  store %struct.TYPE_26__* %39, %struct.TYPE_26__** %3, align 8
  %40 = icmp eq %struct.TYPE_26__* %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %26
  %42 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %43 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %44 = load i32, i32* @OBJ_SET, align 4
  %45 = call i64 @checkType(%struct.TYPE_27__* %42, %struct.TYPE_26__* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41, %26
  br label %141

48:                                               ; preds = %41
  %49 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %50 = call i32 @setTypeRandomElement(%struct.TYPE_26__* %49, i8** %6, i32* %7)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @OBJ_ENCODING_INTSET, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %48
  %55 = load i32, i32* %7, align 4
  %56 = call %struct.TYPE_26__* @createStringObjectFromLongLong(i32 %55)
  store %struct.TYPE_26__* %56, %struct.TYPE_26__** %4, align 8
  %57 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @intsetRemove(i32 %59, i32 %60, i32* null)
  %62 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  br label %74

64:                                               ; preds = %48
  %65 = load i8*, i8** %6, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 @sdslen(i8* %66)
  %68 = call %struct.TYPE_26__* @createStringObject(i8* %65, i32 %67)
  store %struct.TYPE_26__* %68, %struct.TYPE_26__** %4, align 8
  %69 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %70 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @setTypeRemove(%struct.TYPE_26__* %69, i32 %72)
  br label %74

74:                                               ; preds = %64, %54
  %75 = load i32, i32* @NOTIFY_SET, align 4
  %76 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %81, i32 0, i32 3
  %83 = load %struct.TYPE_28__*, %struct.TYPE_28__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @notifyKeyspaceEvent(i32 %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %80, i32 %85)
  %87 = call %struct.TYPE_26__* @createStringObject(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  store %struct.TYPE_26__* %87, %struct.TYPE_26__** %5, align 8
  %88 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %89 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %90 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %96 = call i32 @rewriteClientCommandVector(%struct.TYPE_27__* %88, i32 3, %struct.TYPE_26__* %89, i32 %94, %struct.TYPE_26__* %95)
  %97 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %98 = call i32 @decrRefCount(%struct.TYPE_26__* %97)
  %99 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %100 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %101 = call i32 @addReplyBulk(%struct.TYPE_27__* %99, %struct.TYPE_26__* %100)
  %102 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %103 = call i32 @decrRefCount(%struct.TYPE_26__* %102)
  %104 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %105 = call i64 @setTypeSize(%struct.TYPE_26__* %104)
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %129

107:                                              ; preds = %74
  %108 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %108, i32 0, i32 3
  %110 = load %struct.TYPE_28__*, %struct.TYPE_28__** %109, align 8
  %111 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @dbDelete(%struct.TYPE_28__* %110, i32 %115)
  %117 = load i32, i32* @NOTIFY_GENERIC, align 4
  %118 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %123, i32 0, i32 3
  %125 = load %struct.TYPE_28__*, %struct.TYPE_28__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @notifyKeyspaceEvent(i32 %117, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %122, i32 %127)
  br label %129

129:                                              ; preds = %107, %74
  %130 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %130, i32 0, i32 3
  %132 = load %struct.TYPE_28__*, %struct.TYPE_28__** %131, align 8
  %133 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %133, i32 0, i32 2
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @signalModifiedKey(%struct.TYPE_28__* %132, i32 %137)
  %139 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @server, i32 0, i32 0), align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @server, i32 0, i32 0), align 4
  br label %141

141:                                              ; preds = %129, %47, %21, %13
  ret void
}

declare dso_local i32 @spopWithCountCommand(%struct.TYPE_27__*) #1

declare dso_local i32 @addReply(%struct.TYPE_27__*, i32) #1

declare dso_local %struct.TYPE_26__* @lookupKeyWriteOrReply(%struct.TYPE_27__*, i32, i32) #1

declare dso_local i64 @checkType(%struct.TYPE_27__*, %struct.TYPE_26__*, i32) #1

declare dso_local i32 @setTypeRandomElement(%struct.TYPE_26__*, i8**, i32*) #1

declare dso_local %struct.TYPE_26__* @createStringObjectFromLongLong(i32) #1

declare dso_local i32 @intsetRemove(i32, i32, i32*) #1

declare dso_local %struct.TYPE_26__* @createStringObject(i8*, i32) #1

declare dso_local i32 @sdslen(i8*) #1

declare dso_local i32 @setTypeRemove(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @notifyKeyspaceEvent(i32, i8*, i32, i32) #1

declare dso_local i32 @rewriteClientCommandVector(%struct.TYPE_27__*, i32, %struct.TYPE_26__*, i32, %struct.TYPE_26__*) #1

declare dso_local i32 @decrRefCount(%struct.TYPE_26__*) #1

declare dso_local i32 @addReplyBulk(%struct.TYPE_27__*, %struct.TYPE_26__*) #1

declare dso_local i64 @setTypeSize(%struct.TYPE_26__*) #1

declare dso_local i32 @dbDelete(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @signalModifiedKey(%struct.TYPE_28__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
