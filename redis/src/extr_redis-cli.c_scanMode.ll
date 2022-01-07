; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_scanMode.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_scanMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64, i8*, %struct.TYPE_8__** }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__**, i32 }
%struct.TYPE_7__ = type { i8* }

@config = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"SCAN %llu MATCH %s\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"SCAN %llu\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"I/O error\0A\00", align 1
@REDIS_REPLY_ERROR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"ERROR: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @scanMode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scanMode() #0 {
  %1 = alloca %struct.TYPE_9__*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 0, i64* %2, align 8
  br label %4

4:                                                ; preds = %76, %0
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 0), align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %4
  %8 = load i32, i32* @context, align 4
  %9 = load i64, i64* %2, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 0), align 8
  %11 = call %struct.TYPE_9__* (i32, i8*, i64, ...) @redisCommand(i32 %8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %9, i64 %10)
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %1, align 8
  br label %16

12:                                               ; preds = %4
  %13 = load i32, i32* @context, align 4
  %14 = load i64, i64* %2, align 8
  %15 = call %struct.TYPE_9__* (i32, i8*, i64, ...) @redisCommand(i32 %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %14)
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %1, align 8
  br label %16

16:                                               ; preds = %12, %7
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %18 = icmp eq %struct.TYPE_9__* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %21 = call i32 @exit(i32 1) #3
  unreachable

22:                                               ; preds = %16
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @REDIS_REPLY_ERROR, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %31)
  %33 = call i32 @exit(i32 1) #3
  unreachable

34:                                               ; preds = %22
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %37, i64 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @strtoull(i32 %41, i32* null, i32 10)
  store i64 %42, i64* %2, align 8
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %68, %34
  %44 = load i32, i32* %3, align 4
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %47, i64 1
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ult i32 %44, %51
  br i1 %52, label %53, label %71

53:                                               ; preds = %43
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %56, i64 1
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %60, i64 %62
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %53
  %69 = load i32, i32* %3, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %3, align 4
  br label %43

71:                                               ; preds = %43
  br label %72

72:                                               ; preds = %71
  br label %73

73:                                               ; preds = %72
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %75 = call i32 @freeReplyObject(%struct.TYPE_9__* %74)
  br label %76

76:                                               ; preds = %73
  %77 = load i64, i64* %2, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %4, label %79

79:                                               ; preds = %76
  %80 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local %struct.TYPE_9__* @redisCommand(i32, i8*, i64, ...) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @strtoull(i32, i32*, i32) #1

declare dso_local i32 @freeReplyObject(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
