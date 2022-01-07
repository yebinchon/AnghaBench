; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_vdbemem.c_sqlite3VdbeMemMove.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_vdbemem.c_sqlite3VdbeMemMove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@MEM_Null = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3VdbeMemMove(%struct.TYPE_9__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %8 = icmp eq %struct.TYPE_8__* %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @sqlite3_mutex_held(i32 %14)
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %9, %2
  %18 = phi i1 [ true, %2 ], [ %16, %9 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = icmp eq %struct.TYPE_8__* %23, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %17
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @sqlite3_mutex_held(i32 %30)
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %25, %17
  %34 = phi i1 [ true, %17 ], [ %32, %25 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = icmp eq %struct.TYPE_8__* %39, null
  br i1 %40, label %54, label %41

41:                                               ; preds = %33
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = icmp eq %struct.TYPE_8__* %44, null
  br i1 %45, label %54, label %46

46:                                               ; preds = %41
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = icmp eq %struct.TYPE_8__* %49, %52
  br label %54

54:                                               ; preds = %46, %41, %33
  %55 = phi i1 [ true, %41 ], [ true, %33 ], [ %53, %46 ]
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %59 = call i32 @sqlite3VdbeMemRelease(%struct.TYPE_9__* %58)
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %62 = call i32 @memcpy(%struct.TYPE_9__* %60, %struct.TYPE_9__* %61, i32 24)
  %63 = load i32, i32* @MEM_Null, align 4
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  store i64 0, i64* %67, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3_mutex_held(i32) #1

declare dso_local i32 @sqlite3VdbeMemRelease(%struct.TYPE_9__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_9__*, %struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
