; ModuleID = '/home/carl/AnghaBench/redis/src/extr_db.c_getKeysFromCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_db.c_getKeysFromCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.redisCommand = type { i32, {}* }

@CMD_MODULE_GETKEYS = common dso_local global i32 0, align 4
@CMD_MODULE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @getKeysFromCommand(%struct.redisCommand* %0, i32** %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.redisCommand*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.redisCommand* %0, %struct.redisCommand** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %10 = load %struct.redisCommand*, %struct.redisCommand** %6, align 8
  %11 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @CMD_MODULE_GETKEYS, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load %struct.redisCommand*, %struct.redisCommand** %6, align 8
  %18 = load i32**, i32*** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32*, i32** %9, align 8
  %21 = call i32* @moduleGetCommandKeysViaAPI(%struct.redisCommand* %17, i32** %18, i32 %19, i32* %20)
  store i32* %21, i32** %5, align 8
  br label %51

22:                                               ; preds = %4
  %23 = load %struct.redisCommand*, %struct.redisCommand** %6, align 8
  %24 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @CMD_MODULE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %45, label %29

29:                                               ; preds = %22
  %30 = load %struct.redisCommand*, %struct.redisCommand** %6, align 8
  %31 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %30, i32 0, i32 1
  %32 = bitcast {}** %31 to i32* (%struct.redisCommand*, i32**, i32, i32*)**
  %33 = load i32* (%struct.redisCommand*, i32**, i32, i32*)*, i32* (%struct.redisCommand*, i32**, i32, i32*)** %32, align 8
  %34 = icmp ne i32* (%struct.redisCommand*, i32**, i32, i32*)* %33, null
  br i1 %34, label %35, label %45

35:                                               ; preds = %29
  %36 = load %struct.redisCommand*, %struct.redisCommand** %6, align 8
  %37 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %36, i32 0, i32 1
  %38 = bitcast {}** %37 to i32* (%struct.redisCommand*, i32**, i32, i32*)**
  %39 = load i32* (%struct.redisCommand*, i32**, i32, i32*)*, i32* (%struct.redisCommand*, i32**, i32, i32*)** %38, align 8
  %40 = load %struct.redisCommand*, %struct.redisCommand** %6, align 8
  %41 = load i32**, i32*** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32*, i32** %9, align 8
  %44 = call i32* %39(%struct.redisCommand* %40, i32** %41, i32 %42, i32* %43)
  store i32* %44, i32** %5, align 8
  br label %51

45:                                               ; preds = %29, %22
  %46 = load %struct.redisCommand*, %struct.redisCommand** %6, align 8
  %47 = load i32**, i32*** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i32*, i32** %9, align 8
  %50 = call i32* @getKeysUsingCommandTable(%struct.redisCommand* %46, i32** %47, i32 %48, i32* %49)
  store i32* %50, i32** %5, align 8
  br label %51

51:                                               ; preds = %45, %35, %16
  %52 = load i32*, i32** %5, align 8
  ret i32* %52
}

declare dso_local i32* @moduleGetCommandKeysViaAPI(%struct.redisCommand*, i32**, i32, i32*) #1

declare dso_local i32* @getKeysUsingCommandTable(%struct.redisCommand*, i32**, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
