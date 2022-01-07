; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_zset.c_zscoreCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_zset.c_zscoreCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32* }
%struct.TYPE_14__ = type { i64, %struct.TYPE_13__** }
%struct.TYPE_13__ = type { i32 }

@shared = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@OBJ_ZSET = common dso_local global i32 0, align 4
@C_ERR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zscoreCommand(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca double, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %6 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %8, i64 1
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_13__* %10, %struct.TYPE_13__** %3, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %13 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @shared, i32 0, i32 0), align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.TYPE_13__* @lookupKeyReadOrReply(%struct.TYPE_14__* %11, %struct.TYPE_13__* %12, i32 %18)
  store %struct.TYPE_13__* %19, %struct.TYPE_13__** %4, align 8
  %20 = icmp eq %struct.TYPE_13__* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %1
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %24 = load i32, i32* @OBJ_ZSET, align 4
  %25 = call i64 @checkType(%struct.TYPE_14__* %22, %struct.TYPE_13__* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21, %1
  br label %47

28:                                               ; preds = %21
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %32, i64 2
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @zsetScore(%struct.TYPE_13__* %29, i32 %36, double* %5)
  %38 = load i64, i64* @C_ERR, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %28
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %42 = call i32 @addReplyNull(%struct.TYPE_14__* %41)
  br label %47

43:                                               ; preds = %28
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %45 = load double, double* %5, align 8
  %46 = call i32 @addReplyDouble(%struct.TYPE_14__* %44, double %45)
  br label %47

47:                                               ; preds = %27, %43, %40
  ret void
}

declare dso_local %struct.TYPE_13__* @lookupKeyReadOrReply(%struct.TYPE_14__*, %struct.TYPE_13__*, i32) #1

declare dso_local i64 @checkType(%struct.TYPE_14__*, %struct.TYPE_13__*, i32) #1

declare dso_local i64 @zsetScore(%struct.TYPE_13__*, i32, double*) #1

declare dso_local i32 @addReplyNull(%struct.TYPE_14__*) #1

declare dso_local i32 @addReplyDouble(%struct.TYPE_14__*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
