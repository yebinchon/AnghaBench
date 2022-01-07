; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_list.c_listTypeInsert.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_list.c_listTypeInsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__, %struct.TYPE_11__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { i32 }

@OBJ_ENCODING_QUICKLIST = common dso_local global i64 0, align 8
@LIST_TAIL = common dso_local global i32 0, align 4
@LIST_HEAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unknown list encoding\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @listTypeInsert(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @OBJ_ENCODING_QUICKLIST, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %57

16:                                               ; preds = %3
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %18 = call %struct.TYPE_12__* @getDecodedObject(%struct.TYPE_12__* %17)
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %5, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @sdslen(i32 %22)
  store i64 %23, i64* %8, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @LIST_TAIL, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %16
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i32*
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i32, i32* %7, align 4
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @quicklistInsertAfter(i32* %32, %struct.TYPE_14__* %34, i32 %35, i64 %36)
  br label %54

38:                                               ; preds = %16
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @LIST_HEAD, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i32*
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i32, i32* %7, align 4
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @quicklistInsertBefore(i32* %47, %struct.TYPE_14__* %49, i32 %50, i64 %51)
  br label %53

53:                                               ; preds = %42, %38
  br label %54

54:                                               ; preds = %53, %27
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %56 = call i32 @decrRefCount(%struct.TYPE_12__* %55)
  br label %59

57:                                               ; preds = %3
  %58 = call i32 @serverPanic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %54
  ret void
}

declare dso_local %struct.TYPE_12__* @getDecodedObject(%struct.TYPE_12__*) #1

declare dso_local i64 @sdslen(i32) #1

declare dso_local i32 @quicklistInsertAfter(i32*, %struct.TYPE_14__*, i32, i64) #1

declare dso_local i32 @quicklistInsertBefore(i32*, %struct.TYPE_14__*, i32, i64) #1

declare dso_local i32 @decrRefCount(%struct.TYPE_12__*) #1

declare dso_local i32 @serverPanic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
