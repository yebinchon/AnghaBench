; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.3/src/extr_lgc.c_remarkupvals.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.3/src/extr_lgc.c_remarkupvals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_14__*, %struct.TYPE_12__* }
%struct.TYPE_14__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, %struct.TYPE_14__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @remarkupvals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remarkupvals(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_12__**, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %6 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  store %struct.TYPE_12__** %7, %struct.TYPE_12__*** %4, align 8
  br label %8

8:                                                ; preds = %69, %1
  %9 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %4, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_12__* %10, %struct.TYPE_12__** %3, align 8
  %11 = icmp ne %struct.TYPE_12__* %10, null
  br i1 %11, label %12, label %70

12:                                               ; preds = %8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %14 = call i32 @isblack(%struct.TYPE_12__* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @lua_assert(i32 %17)
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %20 = call i64 @isgray(%struct.TYPE_12__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %12
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %26 = icmp ne %struct.TYPE_14__* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  store %struct.TYPE_12__** %29, %struct.TYPE_12__*** %4, align 8
  br label %69

30:                                               ; preds = %22, %12
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  %34 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %4, align 8
  store %struct.TYPE_12__* %33, %struct.TYPE_12__** %34, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  store %struct.TYPE_12__* %35, %struct.TYPE_12__** %37, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %39, align 8
  store %struct.TYPE_14__* %40, %struct.TYPE_14__** %5, align 8
  br label %41

41:                                               ; preds = %62, %30
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %43 = icmp ne %struct.TYPE_14__* %42, null
  br i1 %43, label %44, label %68

44:                                               ; preds = %41
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %44
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @markvalue(%struct.TYPE_13__* %52, i32 %55)
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  br label %61

61:                                               ; preds = %51, %44
  br label %62

62:                                               ; preds = %61
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %66, align 8
  store %struct.TYPE_14__* %67, %struct.TYPE_14__** %5, align 8
  br label %41

68:                                               ; preds = %41
  br label %69

69:                                               ; preds = %68, %27
  br label %8

70:                                               ; preds = %8
  ret void
}

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @isblack(%struct.TYPE_12__*) #1

declare dso_local i64 @isgray(%struct.TYPE_12__*) #1

declare dso_local i32 @markvalue(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
