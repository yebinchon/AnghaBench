; ModuleID = '/home/carl/AnghaBench/redis/src/extr_object.c_dupStringObject.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_object.c_dupStringObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32 }

@OBJ_STRING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"Wrong encoding.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @dupStringObject(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @OBJ_STRING, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @serverAssert(i32 %10)
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %44 [
    i32 128, label %15
    i32 130, label %24
    i32 129, label %33
  ]

15:                                               ; preds = %1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @sdslen(i32 %21)
  %23 = call %struct.TYPE_7__* @createRawStringObject(i32 %18, i32 %22)
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %2, align 8
  br label %46

24:                                               ; preds = %1
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @sdslen(i32 %30)
  %32 = call %struct.TYPE_7__* @createEmbeddedStringObject(i32 %27, i32 %31)
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %2, align 8
  br label %46

33:                                               ; preds = %1
  %34 = load i64, i64* @OBJ_STRING, align 8
  %35 = call %struct.TYPE_7__* @createObject(i64 %34, i32* null)
  store %struct.TYPE_7__* %35, %struct.TYPE_7__** %4, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  store i32 129, i32* %37, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %43, %struct.TYPE_7__** %2, align 8
  br label %46

44:                                               ; preds = %1
  %45 = call i32 @serverPanic(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %15, %24, %33, %44
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  ret %struct.TYPE_7__* %47
}

declare dso_local i32 @serverAssert(i32) #1

declare dso_local %struct.TYPE_7__* @createRawStringObject(i32, i32) #1

declare dso_local i32 @sdslen(i32) #1

declare dso_local %struct.TYPE_7__* @createEmbeddedStringObject(i32, i32) #1

declare dso_local %struct.TYPE_7__* @createObject(i64, i32*) #1

declare dso_local i32 @serverPanic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
