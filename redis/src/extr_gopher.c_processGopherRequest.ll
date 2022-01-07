; ModuleID = '/home/carl/AnghaBench/redis/src/extr_gopher.c_processGopherRequest.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_gopher.c_processGopherRequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, %struct.TYPE_11__** }
%struct.TYPE_11__ = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@OBJ_STRING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Error: no content at the specified key\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"Error: selected key type is invalid for Gopher output\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Redis Gopher server\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @processGopherRequest(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call %struct.TYPE_11__* @createStringObject(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %18

12:                                               ; preds = %1
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %15, i64 0
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  br label %18

18:                                               ; preds = %12, %10
  %19 = phi %struct.TYPE_11__* [ %11, %10 ], [ %17, %12 ]
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %3, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %24 = call %struct.TYPE_11__* @lookupKeyRead(i32 %22, %struct.TYPE_11__* %23)
  store %struct.TYPE_11__* %24, %struct.TYPE_11__** %4, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %26 = icmp eq %struct.TYPE_11__* %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %18
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @OBJ_STRING, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %27, %18
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %35 = icmp eq %struct.TYPE_11__* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %38

37:                                               ; preds = %33
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %38

38:                                               ; preds = %37, %36
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @addReplyGopherItem(%struct.TYPE_12__* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* %40, i32* null, i32* null, i32 0)
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %43 = call i32 @addReplyGopherItem(%struct.TYPE_12__* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32* null, i32* null, i32 0)
  br label %48

44:                                               ; preds = %27
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %47 = call i32 @addReply(%struct.TYPE_12__* %45, %struct.TYPE_11__* %46)
  br label %48

48:                                               ; preds = %44, %38
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %55 = call i32 @decrRefCount(%struct.TYPE_11__* %54)
  br label %56

56:                                               ; preds = %53, %48
  ret void
}

declare dso_local %struct.TYPE_11__* @createStringObject(i8*, i32) #1

declare dso_local %struct.TYPE_11__* @lookupKeyRead(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @addReplyGopherItem(%struct.TYPE_12__*, i8*, i8*, i32*, i32*, i32) #1

declare dso_local i32 @addReply(%struct.TYPE_12__*, %struct.TYPE_11__*) #1

declare dso_local i32 @decrRefCount(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
