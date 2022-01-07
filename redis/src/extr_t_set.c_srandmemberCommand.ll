; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_set.c_srandmemberCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_set.c_srandmemberCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32*, i32 }
%struct.TYPE_10__ = type { i32, i64, i32* }

@shared = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@OBJ_SET = common dso_local global i32 0, align 4
@OBJ_ENCODING_INTSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @srandmemberCommand(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 3
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %13 = call i32 @srandmemberWithCountCommand(%struct.TYPE_10__* %12)
  br label %62

14:                                               ; preds = %1
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sgt i32 %17, 3
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @shared, i32 0, i32 1), align 8
  %22 = call i32 @addReply(%struct.TYPE_10__* %20, i32 %21)
  br label %62

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @shared, i32 0, i32 0), align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32* @lookupKeyReadOrReply(%struct.TYPE_10__* %25, i32 %30, i32 %36)
  store i32* %37, i32** %3, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %24
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %41 = load i32*, i32** %3, align 8
  %42 = load i32, i32* @OBJ_SET, align 4
  %43 = call i64 @checkType(%struct.TYPE_10__* %40, i32* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39, %24
  br label %62

46:                                               ; preds = %39
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @setTypeRandomElement(i32* %47, i32* %4, i32* %5)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @OBJ_ENCODING_INTSET, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @addReplyBulkLongLong(%struct.TYPE_10__* %53, i32 %54)
  br label %62

56:                                               ; preds = %46
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @sdslen(i32 %59)
  %61 = call i32 @addReplyBulkCBuffer(%struct.TYPE_10__* %57, i32 %58, i32 %60)
  br label %62

62:                                               ; preds = %11, %19, %45, %56, %52
  ret void
}

declare dso_local i32 @srandmemberWithCountCommand(%struct.TYPE_10__*) #1

declare dso_local i32 @addReply(%struct.TYPE_10__*, i32) #1

declare dso_local i32* @lookupKeyReadOrReply(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i64 @checkType(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @setTypeRandomElement(i32*, i32*, i32*) #1

declare dso_local i32 @addReplyBulkLongLong(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @addReplyBulkCBuffer(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @sdslen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
