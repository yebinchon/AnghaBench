; ModuleID = '/home/carl/AnghaBench/redis/src/extr_intset.c_intsetUpgradeAndAdd.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_intset.c_intsetUpgradeAndAdd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.TYPE_8__*, i64)* @intsetUpgradeAndAdd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @intsetUpgradeAndAdd(%struct.TYPE_8__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @intrev32ifbe(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @_intsetValueEncoding(i64 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @intrev32ifbe(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i64, i64* %4, align 8
  %20 = icmp slt i64 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 1, i32 0
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @intrev32ifbe(i32 %23)
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @intrev32ifbe(i32 %30)
  %32 = add nsw i32 %31, 1
  %33 = call %struct.TYPE_8__* @intsetResize(%struct.TYPE_8__* %27, i32 %32)
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %3, align 8
  br label %34

34:                                               ; preds = %38, %2
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %7, align 4
  %37 = icmp ne i32 %35, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %40, %41
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i64 @_intsetGetEncoded(%struct.TYPE_8__* %43, i32 %44, i32 %45)
  %47 = call i32 @_intsetSet(%struct.TYPE_8__* %39, i32 %42, i64 %46)
  br label %34

48:                                               ; preds = %34
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %53 = load i64, i64* %4, align 8
  %54 = call i32 @_intsetSet(%struct.TYPE_8__* %52, i32 0, i64 %53)
  br label %63

55:                                               ; preds = %48
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @intrev32ifbe(i32 %59)
  %61 = load i64, i64* %4, align 8
  %62 = call i32 @_intsetSet(%struct.TYPE_8__* %56, i32 %60, i64 %61)
  br label %63

63:                                               ; preds = %55, %51
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @intrev32ifbe(i32 %66)
  %68 = add nsw i32 %67, 1
  %69 = call i32 @intrev32ifbe(i32 %68)
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %72
}

declare dso_local i32 @intrev32ifbe(i32) #1

declare dso_local i32 @_intsetValueEncoding(i64) #1

declare dso_local %struct.TYPE_8__* @intsetResize(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @_intsetSet(%struct.TYPE_8__*, i32, i64) #1

declare dso_local i64 @_intsetGetEncoded(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
