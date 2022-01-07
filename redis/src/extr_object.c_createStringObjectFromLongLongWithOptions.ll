; ModuleID = '/home/carl/AnghaBench/redis/src/extr_object.c_createStringObjectFromLongLongWithOptions.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_object.c_createStringObjectFromLongLongWithOptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i8*, i32 }

@server = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@MAXMEMORY_FLAG_NO_SHARED_INTEGERS = common dso_local global i32 0, align 4
@OBJ_SHARED_INTEGERS = common dso_local global i64 0, align 8
@shared = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@LONG_MIN = common dso_local global i64 0, align 8
@LONG_MAX = common dso_local global i64 0, align 8
@OBJ_STRING = common dso_local global i32 0, align 4
@OBJ_ENCODING_INT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @createStringObjectFromLongLongWithOptions(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 0), align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 1), align 8
  %10 = load i32, i32* @MAXMEMORY_FLAG_NO_SHARED_INTEGERS, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8, %2
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %13, %8
  %15 = load i64, i64* %3, align 8
  %16 = icmp sge i64 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %14
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* @OBJ_SHARED_INTEGERS, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = load %struct.TYPE_7__**, %struct.TYPE_7__*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @shared, i32 0, i32 0), align 8
  %26 = load i64, i64* %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %25, i64 %26
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = call i32 @incrRefCount(%struct.TYPE_7__* %28)
  %30 = load %struct.TYPE_7__**, %struct.TYPE_7__*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @shared, i32 0, i32 0), align 8
  %31 = load i64, i64* %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %30, i64 %31
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %5, align 8
  br label %58

34:                                               ; preds = %21, %17, %14
  %35 = load i64, i64* %3, align 8
  %36 = load i64, i64* @LONG_MIN, align 8
  %37 = icmp sge i64 %35, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  %39 = load i64, i64* %3, align 8
  %40 = load i64, i64* @LONG_MAX, align 8
  %41 = icmp sle i64 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %38
  %43 = load i32, i32* @OBJ_STRING, align 4
  %44 = call %struct.TYPE_7__* @createObject(i32 %43, i32* null)
  store %struct.TYPE_7__* %44, %struct.TYPE_7__** %5, align 8
  %45 = load i32, i32* @OBJ_ENCODING_INT, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load i64, i64* %3, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  br label %57

52:                                               ; preds = %38, %34
  %53 = load i32, i32* @OBJ_STRING, align 4
  %54 = load i64, i64* %3, align 8
  %55 = call i32* @sdsfromlonglong(i64 %54)
  %56 = call %struct.TYPE_7__* @createObject(i32 %53, i32* %55)
  store %struct.TYPE_7__* %56, %struct.TYPE_7__** %5, align 8
  br label %57

57:                                               ; preds = %52, %42
  br label %58

58:                                               ; preds = %57, %24
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  ret %struct.TYPE_7__* %59
}

declare dso_local i32 @incrRefCount(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @createObject(i32, i32*) #1

declare dso_local i32* @sdsfromlonglong(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
