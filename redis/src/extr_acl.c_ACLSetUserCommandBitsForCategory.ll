; ModuleID = '/home/carl/AnghaBench/redis/src/extr_acl.c_ACLSetUserCommandBitsForCategory.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_acl.c_ACLSetUserCommandBitsForCategory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.redisCommand = type { i32, i32 }

@C_ERR = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@CMD_MODULE = common dso_local global i32 0, align 4
@C_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ACLSetUserCommandBitsForCategory(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.redisCommand*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @ACLGetCommandCategoryFlagByName(i8* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @C_ERR, align 4
  store i32 %17, i32* %4, align 4
  br label %59

18:                                               ; preds = %3
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 4
  %20 = call i32* @dictGetIterator(i32 %19)
  store i32* %20, i32** %9, align 8
  br label %21

21:                                               ; preds = %54, %34, %18
  %22 = load i32*, i32** %9, align 8
  %23 = call i32* @dictNext(i32* %22)
  store i32* %23, i32** %10, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %55

25:                                               ; preds = %21
  %26 = load i32*, i32** %10, align 8
  %27 = call %struct.redisCommand* @dictGetVal(i32* %26)
  store %struct.redisCommand* %27, %struct.redisCommand** %11, align 8
  %28 = load %struct.redisCommand*, %struct.redisCommand** %11, align 8
  %29 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @CMD_MODULE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %21

35:                                               ; preds = %25
  %36 = load %struct.redisCommand*, %struct.redisCommand** %11, align 8
  %37 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %8, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %35
  %43 = load i32*, i32** %5, align 8
  %44 = load %struct.redisCommand*, %struct.redisCommand** %11, align 8
  %45 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @ACLSetUserCommandBit(i32* %43, i32 %46, i32 %47)
  %49 = load i32*, i32** %5, align 8
  %50 = load %struct.redisCommand*, %struct.redisCommand** %11, align 8
  %51 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ACLResetSubcommandsForCommand(i32* %49, i32 %52)
  br label %54

54:                                               ; preds = %42, %35
  br label %21

55:                                               ; preds = %21
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 @dictReleaseIterator(i32* %56)
  %58 = load i32, i32* @C_OK, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %55, %16
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @ACLGetCommandCategoryFlagByName(i8*) #1

declare dso_local i32* @dictGetIterator(i32) #1

declare dso_local i32* @dictNext(i32*) #1

declare dso_local %struct.redisCommand* @dictGetVal(i32*) #1

declare dso_local i32 @ACLSetUserCommandBit(i32*, i32, i32) #1

declare dso_local i32 @ACLResetSubcommandsForCommand(i32*, i32) #1

declare dso_local i32 @dictReleaseIterator(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
