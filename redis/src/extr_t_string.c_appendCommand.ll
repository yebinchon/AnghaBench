; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_string.c_appendCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_string.c_appendCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32 }
%struct.TYPE_27__ = type { %struct.TYPE_28__*, %struct.TYPE_26__** }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_26__ = type { i32 }

@OBJ_STRING = common dso_local global i32 0, align 4
@C_OK = common dso_local global i64 0, align 8
@NOTIFY_STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"append\00", align 1
@server = common dso_local global %struct.TYPE_29__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @appendCommand(%struct.TYPE_27__* %0) #0 {
  %2 = alloca %struct.TYPE_27__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %2, align 8
  %6 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %9 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %11, i64 1
  %13 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %14 = call %struct.TYPE_26__* @lookupKeyWrite(%struct.TYPE_28__* %8, %struct.TYPE_26__* %13)
  store %struct.TYPE_26__* %14, %struct.TYPE_26__** %4, align 8
  %15 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %16 = icmp eq %struct.TYPE_26__* %15, null
  br i1 %16, label %17, label %54

17:                                               ; preds = %1
  %18 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %20, i64 2
  %22 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  %23 = call %struct.TYPE_26__* @tryObjectEncoding(%struct.TYPE_26__* %22)
  %24 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %26, i64 2
  store %struct.TYPE_26__* %23, %struct.TYPE_26__** %27, align 8
  %28 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_28__*, %struct.TYPE_28__** %29, align 8
  %31 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %33, i64 1
  %35 = load %struct.TYPE_26__*, %struct.TYPE_26__** %34, align 8
  %36 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %38, i64 2
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** %39, align 8
  %41 = call i32 @dbAdd(%struct.TYPE_28__* %30, %struct.TYPE_26__* %35, %struct.TYPE_26__* %40)
  %42 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %44, i64 2
  %46 = load %struct.TYPE_26__*, %struct.TYPE_26__** %45, align 8
  %47 = call i32 @incrRefCount(%struct.TYPE_26__* %46)
  %48 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %50, i64 2
  %52 = load %struct.TYPE_26__*, %struct.TYPE_26__** %51, align 8
  %53 = call i64 @stringObjectLen(%struct.TYPE_26__* %52)
  store i64 %53, i64* %3, align 8
  br label %108

54:                                               ; preds = %1
  %55 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %56 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %57 = load i32, i32* @OBJ_STRING, align 4
  %58 = call i64 @checkType(%struct.TYPE_27__* %55, %struct.TYPE_26__* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %135

61:                                               ; preds = %54
  %62 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %64, i64 2
  %66 = load %struct.TYPE_26__*, %struct.TYPE_26__** %65, align 8
  store %struct.TYPE_26__* %66, %struct.TYPE_26__** %5, align 8
  %67 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %68 = call i64 @stringObjectLen(%struct.TYPE_26__* %67)
  %69 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @sdslen(i32 %71)
  %73 = add i64 %68, %72
  store i64 %73, i64* %3, align 8
  %74 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %75 = load i64, i64* %3, align 8
  %76 = call i64 @checkStringLength(%struct.TYPE_27__* %74, i64 %75)
  %77 = load i64, i64* @C_OK, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %61
  br label %135

80:                                               ; preds = %61
  %81 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_28__*, %struct.TYPE_28__** %82, align 8
  %84 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %86, i64 1
  %88 = load %struct.TYPE_26__*, %struct.TYPE_26__** %87, align 8
  %89 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %90 = call %struct.TYPE_26__* @dbUnshareStringValue(%struct.TYPE_28__* %83, %struct.TYPE_26__* %88, %struct.TYPE_26__* %89)
  store %struct.TYPE_26__* %90, %struct.TYPE_26__** %4, align 8
  %91 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @sdslen(i32 %99)
  %101 = call i32 @sdscatlen(i32 %93, i32 %96, i64 %100)
  %102 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  %104 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @sdslen(i32 %106)
  store i64 %107, i64* %3, align 8
  br label %108

108:                                              ; preds = %80, %17
  %109 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_28__*, %struct.TYPE_28__** %110, align 8
  %112 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %114, i64 1
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %115, align 8
  %117 = call i32 @signalModifiedKey(%struct.TYPE_28__* %111, %struct.TYPE_26__* %116)
  %118 = load i32, i32* @NOTIFY_STRING, align 4
  %119 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %121, i64 1
  %123 = load %struct.TYPE_26__*, %struct.TYPE_26__** %122, align 8
  %124 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_28__*, %struct.TYPE_28__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @notifyKeyspaceEvent(i32 %118, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.TYPE_26__* %123, i32 %128)
  %130 = load i32, i32* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @server, i32 0, i32 0), align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @server, i32 0, i32 0), align 4
  %132 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %133 = load i64, i64* %3, align 8
  %134 = call i32 @addReplyLongLong(%struct.TYPE_27__* %132, i64 %133)
  br label %135

135:                                              ; preds = %108, %79, %60
  ret void
}

declare dso_local %struct.TYPE_26__* @lookupKeyWrite(%struct.TYPE_28__*, %struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_26__* @tryObjectEncoding(%struct.TYPE_26__*) #1

declare dso_local i32 @dbAdd(%struct.TYPE_28__*, %struct.TYPE_26__*, %struct.TYPE_26__*) #1

declare dso_local i32 @incrRefCount(%struct.TYPE_26__*) #1

declare dso_local i64 @stringObjectLen(%struct.TYPE_26__*) #1

declare dso_local i64 @checkType(%struct.TYPE_27__*, %struct.TYPE_26__*, i32) #1

declare dso_local i64 @sdslen(i32) #1

declare dso_local i64 @checkStringLength(%struct.TYPE_27__*, i64) #1

declare dso_local %struct.TYPE_26__* @dbUnshareStringValue(%struct.TYPE_28__*, %struct.TYPE_26__*, %struct.TYPE_26__*) #1

declare dso_local i32 @sdscatlen(i32, i32, i64) #1

declare dso_local i32 @signalModifiedKey(%struct.TYPE_28__*, %struct.TYPE_26__*) #1

declare dso_local i32 @notifyKeyspaceEvent(i32, i8*, %struct.TYPE_26__*, i32) #1

declare dso_local i32 @addReplyLongLong(%struct.TYPE_27__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
