; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_vdbemem.c_sqlite3VdbeMemNulTerminate.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_vdbemem.c_sqlite3VdbeMemNulTerminate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@MEM_Term = common dso_local global i32 0, align 4
@MEM_Str = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3VdbeMemNulTerminate(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %7 = icmp eq %struct.TYPE_5__* %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @sqlite3_mutex_held(i32 %13)
  %15 = icmp ne i64 %14, 0
  br label %16

16:                                               ; preds = %8, %1
  %17 = phi i1 [ true, %1 ], [ %15, %8 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @MEM_Term, align 4
  %24 = load i32, i32* @MEM_Str, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = load i32, i32* @MEM_Term, align 4
  %28 = load i32, i32* @MEM_Str, align 4
  %29 = or i32 %27, %28
  %30 = icmp eq i32 %26, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @testcase(i32 %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @MEM_Term, align 4
  %37 = load i32, i32* @MEM_Str, align 4
  %38 = or i32 %36, %37
  %39 = and i32 %35, %38
  %40 = icmp eq i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @testcase(i32 %41)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @MEM_Term, align 4
  %47 = load i32, i32* @MEM_Str, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %45, %48
  %50 = load i32, i32* @MEM_Str, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %16
  %53 = load i32, i32* @SQLITE_OK, align 4
  store i32 %53, i32* %2, align 4
  br label %57

54:                                               ; preds = %16
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %56 = call i32 @vdbeMemAddTerminator(%struct.TYPE_6__* %55)
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %54, %52
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3_mutex_held(i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @vdbeMemAddTerminator(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
