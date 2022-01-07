; ModuleID = '/home/carl/AnghaBench/redis/src/extr_config.c_rewriteConfigUserOption.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_config.c_rewriteConfigUserOption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8* }
%struct.rewriteConfigState = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@server = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str = private unnamed_addr constant [5 x i8] c"user\00", align 1
@Users = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"user \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rewriteConfigUserOption(%struct.rewriteConfigState* %0) #0 {
  %2 = alloca %struct.rewriteConfigState*, align 8
  %3 = alloca %struct.TYPE_10__, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rewriteConfigState* %0, %struct.rewriteConfigState** %2, align 8
  %7 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @server, i32 0, i32 0), align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %2, align 8
  %14 = call i32 @rewriteConfigMarkAsProcessed(%struct.rewriteConfigState* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %47

15:                                               ; preds = %1
  %16 = load i32, i32* @Users, align 4
  %17 = call i32 @raxStart(%struct.TYPE_10__* %3, i32 %16)
  %18 = call i32 @raxSeek(%struct.TYPE_10__* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 0)
  br label %19

19:                                               ; preds = %22, %15
  %20 = call i64 @raxNext(%struct.TYPE_10__* %3)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %4, align 8
  %25 = call i32 @sdsnew(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @sdscatsds(i32 %26, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @sdscatlen(i32 %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1)
  store i32 %32, i32* %5, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %34 = call i32 @ACLDescribeUser(%struct.TYPE_9__* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @sdscatsds(i32 %35, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @sdsfree(i32 %38)
  %40 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %2, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @rewriteConfigRewriteLine(%struct.rewriteConfigState* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %41, i32 1)
  br label %19

43:                                               ; preds = %19
  %44 = call i32 @raxStop(%struct.TYPE_10__* %3)
  %45 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %2, align 8
  %46 = call i32 @rewriteConfigMarkAsProcessed(%struct.rewriteConfigState* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %43, %12
  ret void
}

declare dso_local i32 @rewriteConfigMarkAsProcessed(%struct.rewriteConfigState*, i8*) #1

declare dso_local i32 @raxStart(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @raxSeek(%struct.TYPE_10__*, i8*, i32*, i32) #1

declare dso_local i64 @raxNext(%struct.TYPE_10__*) #1

declare dso_local i32 @sdsnew(i8*) #1

declare dso_local i32 @sdscatsds(i32, i32) #1

declare dso_local i32 @sdscatlen(i32, i8*, i32) #1

declare dso_local i32 @ACLDescribeUser(%struct.TYPE_9__*) #1

declare dso_local i32 @sdsfree(i32) #1

declare dso_local i32 @rewriteConfigRewriteLine(%struct.rewriteConfigState*, i8*, i32, i32) #1

declare dso_local i32 @raxStop(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
