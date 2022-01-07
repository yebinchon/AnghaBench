; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_stream.c_streamPropagateGroupID.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_stream.c_streamPropagateGroupID.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"XGROUP\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"SETID\00", align 1
@server = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@PROPAGATE_AOF = common dso_local global i32 0, align 4
@PROPAGATE_REPL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @streamPropagateGroupID(%struct.TYPE_9__* %0, i32* %1, %struct.TYPE_8__* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [5 x i32*], align 16
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = call i32* @createStringObject(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %11 = getelementptr inbounds [5 x i32*], [5 x i32*]* %9, i64 0, i64 0
  store i32* %10, i32** %11, align 16
  %12 = call i32* @createStringObject(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %13 = getelementptr inbounds [5 x i32*], [5 x i32*]* %9, i64 0, i64 1
  store i32* %12, i32** %13, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = getelementptr inbounds [5 x i32*], [5 x i32*]* %9, i64 0, i64 2
  store i32* %14, i32** %15, align 16
  %16 = load i32*, i32** %8, align 8
  %17 = getelementptr inbounds [5 x i32*], [5 x i32*]* %9, i64 0, i64 3
  store i32* %16, i32** %17, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = call i32* @createObjectFromStreamID(i32* %19)
  %21 = getelementptr inbounds [5 x i32*], [5 x i32*]* %9, i64 0, i64 4
  store i32* %20, i32** %21, align 16
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @server, i32 0, i32 0), align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds [5 x i32*], [5 x i32*]* %9, i64 0, i64 0
  %29 = load i32, i32* @PROPAGATE_AOF, align 4
  %30 = load i32, i32* @PROPAGATE_REPL, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @propagate(i32 %22, i32 %27, i32** %28, i32 5, i32 %31)
  %33 = getelementptr inbounds [5 x i32*], [5 x i32*]* %9, i64 0, i64 0
  %34 = load i32*, i32** %33, align 16
  %35 = call i32 @decrRefCount(i32* %34)
  %36 = getelementptr inbounds [5 x i32*], [5 x i32*]* %9, i64 0, i64 1
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @decrRefCount(i32* %37)
  %39 = getelementptr inbounds [5 x i32*], [5 x i32*]* %9, i64 0, i64 4
  %40 = load i32*, i32** %39, align 16
  %41 = call i32 @decrRefCount(i32* %40)
  ret void
}

declare dso_local i32* @createStringObject(i8*, i32) #1

declare dso_local i32* @createObjectFromStreamID(i32*) #1

declare dso_local i32 @propagate(i32, i32, i32**, i32, i32) #1

declare dso_local i32 @decrRefCount(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
