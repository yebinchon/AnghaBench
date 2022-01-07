; ModuleID = '/home/carl/AnghaBench/redis/src/extr_module.c_moduleParseCallReply.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_module.c_moduleParseCallReply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32* }

@REDISMODULE_REPLYFLAG_TOPARSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @moduleParseCallReply(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %3 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @REDISMODULE_REPLYFLAG_TOPARSE, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %34

10:                                               ; preds = %1
  %11 = load i32, i32* @REDISMODULE_REPLYFLAG_TOPARSE, align 4
  %12 = xor i32 %11, -1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %34 [
    i32 58, label %22
    i32 36, label %25
    i32 45, label %28
    i32 43, label %28
    i32 42, label %31
  ]

22:                                               ; preds = %10
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %24 = call i32 @moduleParseCallReply_Int(%struct.TYPE_7__* %23)
  br label %34

25:                                               ; preds = %10
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %27 = call i32 @moduleParseCallReply_BulkString(%struct.TYPE_7__* %26)
  br label %34

28:                                               ; preds = %10, %10
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %30 = call i32 @moduleParseCallReply_SimpleString(%struct.TYPE_7__* %29)
  br label %34

31:                                               ; preds = %10
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %33 = call i32 @moduleParseCallReply_Array(%struct.TYPE_7__* %32)
  br label %34

34:                                               ; preds = %9, %10, %31, %28, %25, %22
  ret void
}

declare dso_local i32 @moduleParseCallReply_Int(%struct.TYPE_7__*) #1

declare dso_local i32 @moduleParseCallReply_BulkString(%struct.TYPE_7__*) #1

declare dso_local i32 @moduleParseCallReply_SimpleString(%struct.TYPE_7__*) #1

declare dso_local i32 @moduleParseCallReply_Array(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
