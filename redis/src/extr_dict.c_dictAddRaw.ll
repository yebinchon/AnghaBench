; ModuleID = '/home/carl/AnghaBench/redis/src/extr_dict.c_dictAddRaw.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_dict.c_dictAddRaw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_16__* }
%struct.TYPE_17__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_16__** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_16__* @dictAddRaw(%struct.TYPE_17__* %0, i8* %1, %struct.TYPE_16__** %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_16__**, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_16__** %2, %struct.TYPE_16__*** %7, align 8
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %12 = call i64 @dictIsRehashing(%struct.TYPE_17__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %16 = call i32 @_dictRehashStep(%struct.TYPE_17__* %15)
  br label %17

17:                                               ; preds = %14, %3
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @dictHashKey(%struct.TYPE_17__* %20, i8* %21)
  %23 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %24 = call i64 @_dictKeyIndex(%struct.TYPE_17__* %18, i8* %19, i32 %22, %struct.TYPE_16__** %23)
  store i64 %24, i64* %8, align 8
  %25 = icmp eq i64 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %4, align 8
  br label %67

27:                                               ; preds = %17
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %29 = call i64 @dictIsRehashing(%struct.TYPE_17__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i64 1
  br label %41

36:                                               ; preds = %27
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i64 0
  br label %41

41:                                               ; preds = %36, %31
  %42 = phi %struct.TYPE_15__* [ %35, %31 ], [ %40, %36 ]
  store %struct.TYPE_15__* %42, %struct.TYPE_15__** %10, align 8
  %43 = call %struct.TYPE_16__* @zmalloc(i32 8)
  store %struct.TYPE_16__* %43, %struct.TYPE_16__** %9, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %45, align 8
  %47 = load i64, i64* %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %46, i64 %47
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %48, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  store %struct.TYPE_16__* %49, %struct.TYPE_16__** %51, align 8
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %54, align 8
  %56 = load i64, i64* %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %55, i64 %56
  store %struct.TYPE_16__* %52, %struct.TYPE_16__** %57, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 @dictSetKey(%struct.TYPE_17__* %62, %struct.TYPE_16__* %63, i8* %64)
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  store %struct.TYPE_16__* %66, %struct.TYPE_16__** %4, align 8
  br label %67

67:                                               ; preds = %41, %26
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  ret %struct.TYPE_16__* %68
}

declare dso_local i64 @dictIsRehashing(%struct.TYPE_17__*) #1

declare dso_local i32 @_dictRehashStep(%struct.TYPE_17__*) #1

declare dso_local i64 @_dictKeyIndex(%struct.TYPE_17__*, i8*, i32, %struct.TYPE_16__**) #1

declare dso_local i32 @dictHashKey(%struct.TYPE_17__*, i8*) #1

declare dso_local %struct.TYPE_16__* @zmalloc(i32) #1

declare dso_local i32 @dictSetKey(%struct.TYPE_17__*, %struct.TYPE_16__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
