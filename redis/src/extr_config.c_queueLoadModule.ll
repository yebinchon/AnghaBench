; ModuleID = '/home/carl/AnghaBench/redis/src/extr_config.c_queueLoadModule.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_config.c_queueLoadModule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.moduleLoadQueueEntry = type { i32, i32*, i32 }

@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @queueLoadModule(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.moduleLoadQueueEntry*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = call i8* @zmalloc(i32 24)
  %10 = bitcast i8* %9 to %struct.moduleLoadQueueEntry*
  store %struct.moduleLoadQueueEntry* %10, %struct.moduleLoadQueueEntry** %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 8, %12
  %14 = trunc i64 %13 to i32
  %15 = call i8* @zmalloc(i32 %14)
  %16 = bitcast i8* %15 to i32*
  %17 = load %struct.moduleLoadQueueEntry*, %struct.moduleLoadQueueEntry** %8, align 8
  %18 = getelementptr inbounds %struct.moduleLoadQueueEntry, %struct.moduleLoadQueueEntry* %17, i32 0, i32 1
  store i32* %16, i32** %18, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @sdsnew(i32 %19)
  %21 = load %struct.moduleLoadQueueEntry*, %struct.moduleLoadQueueEntry** %8, align 8
  %22 = getelementptr inbounds %struct.moduleLoadQueueEntry, %struct.moduleLoadQueueEntry* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.moduleLoadQueueEntry*, %struct.moduleLoadQueueEntry** %8, align 8
  %25 = getelementptr inbounds %struct.moduleLoadQueueEntry, %struct.moduleLoadQueueEntry* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %49, %3
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %52

30:                                               ; preds = %26
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @sdslen(i32 %40)
  %42 = call i32 @createRawStringObject(i32 %35, i32 %41)
  %43 = load %struct.moduleLoadQueueEntry*, %struct.moduleLoadQueueEntry** %8, align 8
  %44 = getelementptr inbounds %struct.moduleLoadQueueEntry, %struct.moduleLoadQueueEntry* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 %42, i32* %48, align 4
  br label %49

49:                                               ; preds = %30
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %26

52:                                               ; preds = %26
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 4
  %54 = load %struct.moduleLoadQueueEntry*, %struct.moduleLoadQueueEntry** %8, align 8
  %55 = call i32 @listAddNodeTail(i32 %53, %struct.moduleLoadQueueEntry* %54)
  ret void
}

declare dso_local i8* @zmalloc(i32) #1

declare dso_local i32 @sdsnew(i32) #1

declare dso_local i32 @createRawStringObject(i32, i32) #1

declare dso_local i32 @sdslen(i32) #1

declare dso_local i32 @listAddNodeTail(i32, %struct.moduleLoadQueueEntry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
