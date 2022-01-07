; ModuleID = '/home/carl/AnghaBench/redis/src/extr_networking.c_rewriteClientCommandArgument.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_networking.c_rewriteClientCommandArgument.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32*, %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rewriteClientCommandArgument(%struct.TYPE_11__* %0, i32 %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp sge i32 %8, %11
  br i1 %12, label %13, label %35

13:                                               ; preds = %3
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = mul i64 8, %19
  %21 = trunc i64 %20 to i32
  %22 = call %struct.TYPE_10__** @zrealloc(%struct.TYPE_10__** %16, i32 %21)
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 2
  store %struct.TYPE_10__** %22, %struct.TYPE_10__*** %24, align 8
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %31, i64 %33
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %34, align 8
  br label %35

35:                                               ; preds = %13, %3
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %38, i64 %40
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  store %struct.TYPE_10__* %42, %struct.TYPE_10__** %7, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %46, i64 %48
  store %struct.TYPE_10__* %43, %struct.TYPE_10__** %49, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %51 = call i32 @incrRefCount(%struct.TYPE_10__* %50)
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %53 = icmp ne %struct.TYPE_10__* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %35
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %56 = call i32 @decrRefCount(%struct.TYPE_10__* %55)
  br label %57

57:                                               ; preds = %54, %35
  %58 = load i32, i32* %5, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %57
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %63, i64 0
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32* @lookupCommandOrOriginal(i32 %67)
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  store i32* %68, i32** %70, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = icmp ne i32* %74, null
  %76 = zext i1 %75 to i32
  %77 = call i32 @serverAssertWithInfo(%struct.TYPE_11__* %71, i32* null, i32 %76)
  br label %78

78:                                               ; preds = %60, %57
  ret void
}

declare dso_local %struct.TYPE_10__** @zrealloc(%struct.TYPE_10__**, i32) #1

declare dso_local i32 @incrRefCount(%struct.TYPE_10__*) #1

declare dso_local i32 @decrRefCount(%struct.TYPE_10__*) #1

declare dso_local i32* @lookupCommandOrOriginal(i32) #1

declare dso_local i32 @serverAssertWithInfo(%struct.TYPE_11__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
