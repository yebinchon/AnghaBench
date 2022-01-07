; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_set.c_saddCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_set.c_saddCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_21__*, %struct.TYPE_22__** }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_19__ = type { i64 }

@OBJ_SET = common dso_local global i64 0, align 8
@shared = common dso_local global %struct.TYPE_23__ zeroinitializer, align 4
@NOTIFY_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"sadd\00", align 1
@server = common dso_local global %struct.TYPE_24__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @saddCommand(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %11, i64 1
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %14 = call %struct.TYPE_19__* @lookupKeyWrite(%struct.TYPE_21__* %8, %struct.TYPE_22__* %13)
  store %struct.TYPE_19__* %14, %struct.TYPE_19__** %3, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %16 = icmp eq %struct.TYPE_19__* %15, null
  br i1 %16, label %17, label %36

17:                                               ; preds = %1
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %20, i64 2
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.TYPE_19__* @setTypeCreate(i32 %24)
  store %struct.TYPE_19__* %25, %struct.TYPE_19__** %3, align 8
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %31, i64 1
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %32, align 8
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %35 = call i32 @dbAdd(%struct.TYPE_21__* %28, %struct.TYPE_22__* %33, %struct.TYPE_19__* %34)
  br label %47

36:                                               ; preds = %1
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @OBJ_SET, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @shared, i32 0, i32 0), align 4
  %45 = call i32 @addReply(%struct.TYPE_20__* %43, i32 %44)
  br label %106

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %46, %17
  store i32 2, i32* %4, align 4
  br label %48

48:                                               ; preds = %71, %47
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %74

54:                                               ; preds = %48
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %58, i64 %60
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @setTypeAdd(%struct.TYPE_19__* %55, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %54
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %67, %54
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %4, align 4
  br label %48

74:                                               ; preds = %48
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %99

77:                                               ; preds = %74
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %79, align 8
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %83, i64 1
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %84, align 8
  %86 = call i32 @signalModifiedKey(%struct.TYPE_21__* %80, %struct.TYPE_22__* %85)
  %87 = load i32, i32* @NOTIFY_SET, align 4
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %90, i64 1
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %91, align 8
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @notifyKeyspaceEvent(i32 %87, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.TYPE_22__* %92, i32 %97)
  br label %99

99:                                               ; preds = %77, %74
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @server, i32 0, i32 0), align 4
  %102 = add nsw i32 %101, %100
  store i32 %102, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @server, i32 0, i32 0), align 4
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @addReplyLongLong(%struct.TYPE_20__* %103, i32 %104)
  br label %106

106:                                              ; preds = %99, %42
  ret void
}

declare dso_local %struct.TYPE_19__* @lookupKeyWrite(%struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_19__* @setTypeCreate(i32) #1

declare dso_local i32 @dbAdd(%struct.TYPE_21__*, %struct.TYPE_22__*, %struct.TYPE_19__*) #1

declare dso_local i32 @addReply(%struct.TYPE_20__*, i32) #1

declare dso_local i64 @setTypeAdd(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @signalModifiedKey(%struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i32 @notifyKeyspaceEvent(i32, i8*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @addReplyLongLong(%struct.TYPE_20__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
