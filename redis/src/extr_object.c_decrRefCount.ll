; ModuleID = '/home/carl/AnghaBench/redis/src/extr_object.c_decrRefCount.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_object.c_decrRefCount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"Unknown object type\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"decrRefCount against refcount <= 0\00", align 1
@OBJ_SHARED_REFCOUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decrRefCount(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %3 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %37

7:                                                ; preds = %1
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %32 [
    i32 129, label %11
    i32 133, label %14
    i32 131, label %17
    i32 128, label %20
    i32 134, label %23
    i32 132, label %26
    i32 130, label %29
  ]

11:                                               ; preds = %7
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %13 = call i32 @freeStringObject(%struct.TYPE_11__* %12)
  br label %34

14:                                               ; preds = %7
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %16 = call i32 @freeListObject(%struct.TYPE_11__* %15)
  br label %34

17:                                               ; preds = %7
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %19 = call i32 @freeSetObject(%struct.TYPE_11__* %18)
  br label %34

20:                                               ; preds = %7
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %22 = call i32 @freeZsetObject(%struct.TYPE_11__* %21)
  br label %34

23:                                               ; preds = %7
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %25 = call i32 @freeHashObject(%struct.TYPE_11__* %24)
  br label %34

26:                                               ; preds = %7
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %28 = call i32 @freeModuleObject(%struct.TYPE_11__* %27)
  br label %34

29:                                               ; preds = %7
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %31 = call i32 @freeStreamObject(%struct.TYPE_11__* %30)
  br label %34

32:                                               ; preds = %7
  %33 = call i32 @serverPanic(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %29, %26, %23, %20, %17, %14, %11
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %36 = call i32 @zfree(%struct.TYPE_11__* %35)
  br label %56

37:                                               ; preds = %1
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp sle i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = call i32 @serverPanic(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %37
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @OBJ_SHARED_REFCOUNT, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %50, %44
  br label %56

56:                                               ; preds = %55, %34
  ret void
}

declare dso_local i32 @freeStringObject(%struct.TYPE_11__*) #1

declare dso_local i32 @freeListObject(%struct.TYPE_11__*) #1

declare dso_local i32 @freeSetObject(%struct.TYPE_11__*) #1

declare dso_local i32 @freeZsetObject(%struct.TYPE_11__*) #1

declare dso_local i32 @freeHashObject(%struct.TYPE_11__*) #1

declare dso_local i32 @freeModuleObject(%struct.TYPE_11__*) #1

declare dso_local i32 @freeStreamObject(%struct.TYPE_11__*) #1

declare dso_local i32 @serverPanic(i8*) #1

declare dso_local i32 @zfree(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
