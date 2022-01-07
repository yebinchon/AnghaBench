; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_string.c_getGenericCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_string.c_getGenericCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32* }
%struct.TYPE_11__ = type { i64, i32* }
%struct.TYPE_10__ = type { i64 }

@shared = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@C_OK = common dso_local global i32 0, align 4
@OBJ_STRING = common dso_local global i64 0, align 8
@C_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getGenericCommand(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @shared, i32 0, i32 1), align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i32, i32* %11, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.TYPE_10__* @lookupKeyReadOrReply(%struct.TYPE_11__* %5, i32 %10, i32 %16)
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %4, align 8
  %18 = icmp eq %struct.TYPE_10__* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @C_OK, align 4
  store i32 %20, i32* %2, align 4
  br label %37

21:                                               ; preds = %1
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @OBJ_STRING, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @shared, i32 0, i32 0), align 8
  %30 = call i32 @addReply(%struct.TYPE_11__* %28, i32 %29)
  %31 = load i32, i32* @C_ERR, align 4
  store i32 %31, i32* %2, align 4
  br label %37

32:                                               ; preds = %21
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %35 = call i32 @addReplyBulk(%struct.TYPE_11__* %33, %struct.TYPE_10__* %34)
  %36 = load i32, i32* @C_OK, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %32, %27, %19
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.TYPE_10__* @lookupKeyReadOrReply(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @addReply(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @addReplyBulk(%struct.TYPE_11__*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
