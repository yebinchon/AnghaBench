; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_trigger.c_sqlite3TriggerColmask.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_trigger.c_sqlite3TriggerColmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32* }

@TK_UPDATE = common dso_local global i32 0, align 4
@TK_DELETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3TriggerColmask(i32* %0, %struct.TYPE_7__* %1, i32* %2, i32 %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_7__*, align 8
  %18 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %19 = load i32*, i32** %10, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %7
  %22 = load i32, i32* @TK_UPDATE, align 4
  br label %25

23:                                               ; preds = %7
  %24 = load i32, i32* @TK_DELETE, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  store i32 %26, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %11, align 4
  %31 = icmp eq i32 %30, 0
  br label %32

32:                                               ; preds = %29, %25
  %33 = phi i1 [ true, %25 ], [ %31, %29 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* %36, %struct.TYPE_7__** %17, align 8
  br label %37

37:                                               ; preds = %80, %32
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %39 = icmp ne %struct.TYPE_7__* %38, null
  br i1 %39, label %40, label %84

40:                                               ; preds = %37
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %15, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %79

46:                                               ; preds = %40
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %47, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %79

53:                                               ; preds = %46
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32*, i32** %10, align 8
  %58 = call i64 @checkColumnOverlap(i32 %56, i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %79

60:                                               ; preds = %53
  %61 = load i32*, i32** %8, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %63 = load i32*, i32** %13, align 8
  %64 = load i32, i32* %14, align 4
  %65 = call %struct.TYPE_6__* @getRowTrigger(i32* %61, %struct.TYPE_7__* %62, i32* %63, i32 %64)
  store %struct.TYPE_6__* %65, %struct.TYPE_6__** %18, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %67 = icmp ne %struct.TYPE_6__* %66, null
  br i1 %67, label %68, label %78

68:                                               ; preds = %60
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %16, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %16, align 4
  br label %78

78:                                               ; preds = %68, %60
  br label %79

79:                                               ; preds = %78, %53, %46, %40
  br label %80

80:                                               ; preds = %79
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 3
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  store %struct.TYPE_7__* %83, %struct.TYPE_7__** %17, align 8
  br label %37

84:                                               ; preds = %37
  %85 = load i32, i32* %16, align 4
  ret i32 %85
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @checkColumnOverlap(i32, i32*) #1

declare dso_local %struct.TYPE_6__* @getRowTrigger(i32*, %struct.TYPE_7__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
