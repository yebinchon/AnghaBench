; ModuleID = '/home/carl/AnghaBench/systemd/src/login/extr_logind.c_manager_gc.c'
source_filename = "/home/carl/AnghaBench/systemd/src/login/extr_logind.c_manager_gc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }

@gc_queue = common dso_local global i32 0, align 4
@SESSION_CLOSING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*, i32)* @manager_gc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @manager_gc(%struct.TYPE_22__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %9 = call i32 @assert(%struct.TYPE_22__* %8)
  br label %10

10:                                               ; preds = %33, %2
  %11 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  store %struct.TYPE_21__* %13, %struct.TYPE_21__** %5, align 8
  %14 = icmp ne %struct.TYPE_21__* %13, null
  br i1 %14, label %15, label %34

15:                                               ; preds = %10
  %16 = load i32, i32* @gc_queue, align 4
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %21 = call i32 @LIST_REMOVE(i32 %16, %struct.TYPE_21__* %19, %struct.TYPE_21__* %20)
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 0
  store i32 0, i32* %23, align 4
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i64 @seat_may_gc(%struct.TYPE_21__* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %15
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %30 = call i32 @seat_stop(%struct.TYPE_21__* %29, i32 0)
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %32 = call i32 @seat_free(%struct.TYPE_21__* %31)
  br label %33

33:                                               ; preds = %28, %15
  br label %10

34:                                               ; preds = %10
  br label %35

35:                                               ; preds = %71, %34
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %37, align 8
  store %struct.TYPE_21__* %38, %struct.TYPE_21__** %6, align 8
  %39 = icmp ne %struct.TYPE_21__* %38, null
  br i1 %39, label %40, label %72

40:                                               ; preds = %35
  %41 = load i32, i32* @gc_queue, align 4
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %43, align 8
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %46 = call i32 @LIST_REMOVE(i32 %41, %struct.TYPE_21__* %44, %struct.TYPE_21__* %45)
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 0
  store i32 0, i32* %48, align 4
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i64 @session_may_gc(%struct.TYPE_21__* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %40
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %55 = call i64 @session_get_state(%struct.TYPE_21__* %54)
  %56 = load i64, i64* @SESSION_CLOSING, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %60 = call i32 @session_stop(%struct.TYPE_21__* %59, i32 0)
  br label %61

61:                                               ; preds = %58, %53, %40
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call i64 @session_may_gc(%struct.TYPE_21__* %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %68 = call i32 @session_finalize(%struct.TYPE_21__* %67)
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %70 = call i32 @session_free(%struct.TYPE_21__* %69)
  br label %71

71:                                               ; preds = %66, %61
  br label %35

72:                                               ; preds = %35
  br label %73

73:                                               ; preds = %104, %72
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %75, align 8
  store %struct.TYPE_21__* %76, %struct.TYPE_21__** %7, align 8
  %77 = icmp ne %struct.TYPE_21__* %76, null
  br i1 %77, label %78, label %105

78:                                               ; preds = %73
  %79 = load i32, i32* @gc_queue, align 4
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %81, align 8
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %84 = call i32 @LIST_REMOVE(i32 %79, %struct.TYPE_21__* %82, %struct.TYPE_21__* %83)
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 0
  store i32 0, i32* %86, align 4
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %88 = load i32, i32* %4, align 4
  %89 = call i64 @user_may_gc(%struct.TYPE_21__* %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %78
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %93 = call i32 @user_stop(%struct.TYPE_21__* %92, i32 0)
  br label %94

94:                                               ; preds = %91, %78
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %96 = load i32, i32* %4, align 4
  %97 = call i64 @user_may_gc(%struct.TYPE_21__* %95, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %101 = call i32 @user_finalize(%struct.TYPE_21__* %100)
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %103 = call i32 @user_free(%struct.TYPE_21__* %102)
  br label %104

104:                                              ; preds = %99, %94
  br label %73

105:                                              ; preds = %73
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_22__*) #1

declare dso_local i32 @LIST_REMOVE(i32, %struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i64 @seat_may_gc(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @seat_stop(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @seat_free(%struct.TYPE_21__*) #1

declare dso_local i64 @session_may_gc(%struct.TYPE_21__*, i32) #1

declare dso_local i64 @session_get_state(%struct.TYPE_21__*) #1

declare dso_local i32 @session_stop(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @session_finalize(%struct.TYPE_21__*) #1

declare dso_local i32 @session_free(%struct.TYPE_21__*) #1

declare dso_local i64 @user_may_gc(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @user_stop(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @user_finalize(%struct.TYPE_21__*) #1

declare dso_local i32 @user_free(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
