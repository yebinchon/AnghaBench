; ModuleID = '/home/carl/AnghaBench/redis/src/extr_notify.c_notifyKeyspaceEvent.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_notify.c_notifyKeyspaceEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@server = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@NOTIFY_KEYSPACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"__keyspace@\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"__:\00", align 1
@OBJ_STRING = common dso_local global i32 0, align 4
@NOTIFY_KEYEVENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"__keyevent@\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @notifyKeyspaceEvent(i32 %0, i8* %1, %struct.TYPE_10__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [24 x i8], align 16
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 -1, i32* %12, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @moduleNotifyKeyspaceEvent(i32 %14, i8* %15, %struct.TYPE_10__* %16, i32 %17)
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @server, i32 0, i32 0), align 4
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  br label %93

24:                                               ; preds = %4
  %25 = load i8*, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @strlen(i8* %26)
  %28 = call %struct.TYPE_10__* @createStringObject(i8* %25, i32 %27)
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %11, align 8
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @server, i32 0, i32 0), align 4
  %30 = load i32, i32* @NOTIFY_KEYSPACE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %57

33:                                               ; preds = %24
  %34 = call i32 @sdsnewlen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 11)
  store i32 %34, i32* %9, align 4
  %35 = getelementptr inbounds [24 x i8], [24 x i8]* %13, i64 0, i64 0
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @ll2string(i8* %35, i32 24, i32 %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %9, align 4
  %39 = getelementptr inbounds [24 x i8], [24 x i8]* %13, i64 0, i64 0
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @sdscatlen(i32 %38, i8* %39, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @sdscatlen(i32 %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @sdscatsds(i32 %44, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* @OBJ_STRING, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call %struct.TYPE_10__* @createObject(i32 %49, i32 %50)
  store %struct.TYPE_10__* %51, %struct.TYPE_10__** %10, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %54 = call i32 @pubsubPublishMessage(%struct.TYPE_10__* %52, %struct.TYPE_10__* %53)
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %56 = call i32 @decrRefCount(%struct.TYPE_10__* %55)
  br label %57

57:                                               ; preds = %33, %24
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @server, i32 0, i32 0), align 4
  %59 = load i32, i32* @NOTIFY_KEYEVENT, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %90

62:                                               ; preds = %57
  %63 = call i32 @sdsnewlen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 11)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = getelementptr inbounds [24 x i8], [24 x i8]* %13, i64 0, i64 0
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @ll2string(i8* %67, i32 24, i32 %68)
  store i32 %69, i32* %12, align 4
  br label %70

70:                                               ; preds = %66, %62
  %71 = load i32, i32* %9, align 4
  %72 = getelementptr inbounds [24 x i8], [24 x i8]* %13, i64 0, i64 0
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @sdscatlen(i32 %71, i8* %72, i32 %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @sdscatlen(i32 %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @sdscatsds(i32 %77, i32 %80)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* @OBJ_STRING, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call %struct.TYPE_10__* @createObject(i32 %82, i32 %83)
  store %struct.TYPE_10__* %84, %struct.TYPE_10__** %10, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %87 = call i32 @pubsubPublishMessage(%struct.TYPE_10__* %85, %struct.TYPE_10__* %86)
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %89 = call i32 @decrRefCount(%struct.TYPE_10__* %88)
  br label %90

90:                                               ; preds = %70, %57
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %92 = call i32 @decrRefCount(%struct.TYPE_10__* %91)
  br label %93

93:                                               ; preds = %90, %23
  ret void
}

declare dso_local i32 @moduleNotifyKeyspaceEvent(i32, i8*, %struct.TYPE_10__*, i32) #1

declare dso_local %struct.TYPE_10__* @createStringObject(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sdsnewlen(i8*, i32) #1

declare dso_local i32 @ll2string(i8*, i32, i32) #1

declare dso_local i32 @sdscatlen(i32, i8*, i32) #1

declare dso_local i32 @sdscatsds(i32, i32) #1

declare dso_local %struct.TYPE_10__* @createObject(i32, i32) #1

declare dso_local i32 @pubsubPublishMessage(%struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i32 @decrRefCount(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
