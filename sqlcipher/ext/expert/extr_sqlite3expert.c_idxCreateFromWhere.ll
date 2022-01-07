; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/expert/extr_sqlite3expert.c_idxCreateFromWhere.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/expert/extr_sqlite3expert.c_idxCreateFromWhere.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_11__*, %struct.TYPE_11__* }

@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_10__*, %struct.TYPE_11__*)* @idxCreateFromWhere to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idxCreateFromWhere(i32* %0, %struct.TYPE_10__* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %7, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %8, align 8
  br label %13

13:                                               ; preds = %32, %3
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %15 = icmp ne %struct.TYPE_11__* %14, null
  br i1 %15, label %16, label %36

16:                                               ; preds = %13
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %19 = call i32 @idxFindConstraint(%struct.TYPE_11__* %17, %struct.TYPE_11__* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %16
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %24 = call i32 @idxFindConstraint(%struct.TYPE_11__* %22, %struct.TYPE_11__* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  store %struct.TYPE_11__* %27, %struct.TYPE_11__** %29, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %30, %struct.TYPE_11__** %7, align 8
  br label %31

31:                                               ; preds = %26, %21, %16
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  store %struct.TYPE_11__* %35, %struct.TYPE_11__** %8, align 8
  br label %13

36:                                               ; preds = %13
  %37 = load i32*, i32** %4, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %41 = call i32 @idxCreateFromCons(i32* %37, %struct.TYPE_10__* %38, %struct.TYPE_11__* %39, %struct.TYPE_11__* %40)
  store i32 %41, i32* %9, align 4
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %43 = icmp eq %struct.TYPE_11__* %42, null
  br i1 %43, label %44, label %85

44:                                               ; preds = %36
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  store %struct.TYPE_11__* %47, %struct.TYPE_11__** %8, align 8
  br label %48

48:                                               ; preds = %80, %44
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @SQLITE_OK, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %54 = icmp ne %struct.TYPE_11__* %53, null
  br label %55

55:                                               ; preds = %52, %48
  %56 = phi i1 [ false, %48 ], [ %54, %52 ]
  br i1 %56, label %57, label %84

57:                                               ; preds = %55
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = icmp eq %struct.TYPE_11__* %60, null
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %66 = call i32 @idxFindConstraint(%struct.TYPE_11__* %64, %struct.TYPE_11__* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %79, label %68

68:                                               ; preds = %57
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %71 = call i32 @idxFindConstraint(%struct.TYPE_11__* %69, %struct.TYPE_11__* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %68
  %74 = load i32*, i32** %4, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %78 = call i32 @idxCreateFromCons(i32* %74, %struct.TYPE_10__* %75, %struct.TYPE_11__* %76, %struct.TYPE_11__* %77)
  store i32 %78, i32* %9, align 4
  br label %79

79:                                               ; preds = %73, %68, %57
  br label %80

80:                                               ; preds = %79
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %82, align 8
  store %struct.TYPE_11__* %83, %struct.TYPE_11__** %8, align 8
  br label %48

84:                                               ; preds = %55
  br label %85

85:                                               ; preds = %84, %36
  %86 = load i32, i32* %9, align 4
  ret i32 %86
}

declare dso_local i32 @idxFindConstraint(%struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @idxCreateFromCons(i32*, %struct.TYPE_10__*, %struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
