; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3WithDelete.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3WithDelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.Cte* }
%struct.Cte = type { %struct.TYPE_4__*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3WithDelete(i32* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.Cte*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %9, label %45

9:                                                ; preds = %2
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %38, %9
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %41

16:                                               ; preds = %10
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load %struct.Cte*, %struct.Cte** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.Cte, %struct.Cte* %19, i64 %21
  store %struct.Cte* %22, %struct.Cte** %6, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = load %struct.Cte*, %struct.Cte** %6, align 8
  %25 = getelementptr inbounds %struct.Cte, %struct.Cte* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @sqlite3ExprListDelete(i32* %23, i32 %26)
  %28 = load i32*, i32** %3, align 8
  %29 = load %struct.Cte*, %struct.Cte** %6, align 8
  %30 = getelementptr inbounds %struct.Cte, %struct.Cte* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @sqlite3SelectDelete(i32* %28, i32 %31)
  %33 = load i32*, i32** %3, align 8
  %34 = load %struct.Cte*, %struct.Cte** %6, align 8
  %35 = getelementptr inbounds %struct.Cte, %struct.Cte* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = call i32 @sqlite3DbFree(i32* %33, %struct.TYPE_4__* %36)
  br label %38

38:                                               ; preds = %16
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %10

41:                                               ; preds = %10
  %42 = load i32*, i32** %3, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %44 = call i32 @sqlite3DbFree(i32* %42, %struct.TYPE_4__* %43)
  br label %45

45:                                               ; preds = %41, %2
  ret void
}

declare dso_local i32 @sqlite3ExprListDelete(i32*, i32) #1

declare dso_local i32 @sqlite3SelectDelete(i32*, i32) #1

declare dso_local i32 @sqlite3DbFree(i32*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
