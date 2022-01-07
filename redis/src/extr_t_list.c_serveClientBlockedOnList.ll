; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_list.c_serveClientBlockedOnList.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_list.c_serveClientBlockedOnList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32*, i32*, i32* }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@LIST_HEAD = common dso_local global i32 0, align 4
@shared = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@server = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@PROPAGATE_AOF = common dso_local global i32 0, align 4
@PROPAGATE_REPL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"lpop\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"rpop\00", align 1
@NOTIFY_LIST = common dso_local global i32 0, align 4
@OBJ_LIST = common dso_local global i32 0, align 4
@C_ERR = common dso_local global i32 0, align 4
@C_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @serveClientBlockedOnList(%struct.TYPE_13__* %0, i32* %1, i32* %2, %struct.TYPE_12__* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [3 x i32*], align 16
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load i32*, i32** %10, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %71

19:                                               ; preds = %6
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* @LIST_HEAD, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @shared, i32 0, i32 2), align 8
  br label %27

25:                                               ; preds = %19
  %26 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @shared, i32 0, i32 1), align 8
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32* [ %24, %23 ], [ %26, %25 ]
  %29 = getelementptr inbounds [3 x i32*], [3 x i32*]* %14, i64 0, i64 0
  store i32* %28, i32** %29, align 16
  %30 = load i32*, i32** %9, align 8
  %31 = getelementptr inbounds [3 x i32*], [3 x i32*]* %14, i64 0, i64 1
  store i32* %30, i32** %31, align 8
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* @LIST_HEAD, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @server, i32 0, i32 2), align 4
  br label %39

37:                                               ; preds = %27
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @server, i32 0, i32 1), align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds [3 x i32*], [3 x i32*]* %14, i64 0, i64 0
  %45 = load i32, i32* @PROPAGATE_AOF, align 4
  %46 = load i32, i32* @PROPAGATE_REPL, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @propagate(i32 %40, i32 %43, i32** %44, i32 2, i32 %47)
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %50 = call i32 @addReplyArrayLen(%struct.TYPE_13__* %49, i32 2)
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = call i32 @addReplyBulk(%struct.TYPE_13__* %51, i32* %52)
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %55 = load i32*, i32** %12, align 8
  %56 = call i32 @addReplyBulk(%struct.TYPE_13__* %54, i32* %55)
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* @LIST_HEAD, align 4
  %59 = icmp eq i32 %57, %58
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)
  store i8* %61, i8** %15, align 8
  %62 = load i32, i32* @NOTIFY_LIST, align 4
  %63 = load i8*, i8** %15, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @notifyKeyspaceEvent(i32 %62, i8* %63, i32* %64, i32 %69)
  br label %130

71:                                               ; preds = %6
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %73, align 8
  %75 = load i32*, i32** %10, align 8
  %76 = call i32* @lookupKeyWrite(%struct.TYPE_16__* %74, i32* %75)
  store i32* %76, i32** %16, align 8
  %77 = load i32*, i32** %16, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %85

79:                                               ; preds = %71
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %81 = load i32*, i32** %16, align 8
  %82 = load i32, i32* @OBJ_LIST, align 4
  %83 = call i64 @checkType(%struct.TYPE_13__* %80, i32* %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %127, label %85

85:                                               ; preds = %79, %71
  %86 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @shared, i32 0, i32 1), align 8
  %87 = getelementptr inbounds [3 x i32*], [3 x i32*]* %14, i64 0, i64 0
  store i32* %86, i32** %87, align 16
  %88 = load i32*, i32** %9, align 8
  %89 = getelementptr inbounds [3 x i32*], [3 x i32*]* %14, i64 0, i64 1
  store i32* %88, i32** %89, align 8
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @server, i32 0, i32 1), align 4
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds [3 x i32*], [3 x i32*]* %14, i64 0, i64 0
  %95 = load i32, i32* @PROPAGATE_AOF, align 4
  %96 = load i32, i32* @PROPAGATE_REPL, align 4
  %97 = or i32 %95, %96
  %98 = call i32 @propagate(i32 %90, i32 %93, i32** %94, i32 2, i32 %97)
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %100 = load i32*, i32** %10, align 8
  %101 = load i32*, i32** %16, align 8
  %102 = load i32*, i32** %12, align 8
  %103 = call i32 @rpoplpushHandlePush(%struct.TYPE_13__* %99, i32* %100, i32* %101, i32* %102)
  %104 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @shared, i32 0, i32 0), align 8
  %105 = getelementptr inbounds [3 x i32*], [3 x i32*]* %14, i64 0, i64 0
  store i32* %104, i32** %105, align 16
  %106 = load i32*, i32** %10, align 8
  %107 = getelementptr inbounds [3 x i32*], [3 x i32*]* %14, i64 0, i64 1
  store i32* %106, i32** %107, align 8
  %108 = load i32*, i32** %12, align 8
  %109 = getelementptr inbounds [3 x i32*], [3 x i32*]* %14, i64 0, i64 2
  store i32* %108, i32** %109, align 16
  %110 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @server, i32 0, i32 0), align 4
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds [3 x i32*], [3 x i32*]* %14, i64 0, i64 0
  %115 = load i32, i32* @PROPAGATE_AOF, align 4
  %116 = load i32, i32* @PROPAGATE_REPL, align 4
  %117 = or i32 %115, %116
  %118 = call i32 @propagate(i32 %110, i32 %113, i32** %114, i32 3, i32 %117)
  %119 = load i32, i32* @NOTIFY_LIST, align 4
  %120 = load i32*, i32** %9, align 8
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @notifyKeyspaceEvent(i32 %119, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %120, i32 %125)
  br label %129

127:                                              ; preds = %79
  %128 = load i32, i32* @C_ERR, align 4
  store i32 %128, i32* %7, align 4
  br label %132

129:                                              ; preds = %85
  br label %130

130:                                              ; preds = %129, %39
  %131 = load i32, i32* @C_OK, align 4
  store i32 %131, i32* %7, align 4
  br label %132

132:                                              ; preds = %130, %127
  %133 = load i32, i32* %7, align 4
  ret i32 %133
}

declare dso_local i32 @propagate(i32, i32, i32**, i32, i32) #1

declare dso_local i32 @addReplyArrayLen(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @addReplyBulk(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @notifyKeyspaceEvent(i32, i8*, i32*, i32) #1

declare dso_local i32* @lookupKeyWrite(%struct.TYPE_16__*, i32*) #1

declare dso_local i64 @checkType(%struct.TYPE_13__*, i32*, i32) #1

declare dso_local i32 @rpoplpushHandlePush(%struct.TYPE_13__*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
