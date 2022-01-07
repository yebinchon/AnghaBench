; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_switch.c_execute_binding.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_switch.c_execute_binding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.sway_switch_binding** }
%struct.sway_switch_binding = type { i64, i64, i32, i32 }
%struct.sway_switch = type { i64, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.sway_seat* }
%struct.sway_seat = type { i32* }
%struct.sway_binding = type { i32, i32, i32 }

@config = common dso_local global %struct.TYPE_8__* null, align 8
@WLR_SWITCH_STATE_TOGGLE = common dso_local global i64 0, align 8
@BINDING_RELOAD = common dso_local global i32 0, align 4
@BINDING_LOCKED = common dso_local global i32 0, align 4
@BINDING_SWITCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_switch*)* @execute_binding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @execute_binding(%struct.sway_switch* %0) #0 {
  %2 = alloca %struct.sway_switch*, align 8
  %3 = alloca %struct.sway_seat*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.sway_switch_binding*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sway_switch_binding*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sway_binding*, align 8
  store %struct.sway_switch* %0, %struct.sway_switch** %2, align 8
  %11 = load %struct.sway_switch*, %struct.sway_switch** %2, align 8
  %12 = getelementptr inbounds %struct.sway_switch, %struct.sway_switch* %11, i32 0, i32 2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.sway_seat*, %struct.sway_seat** %14, align 8
  store %struct.sway_seat* %15, %struct.sway_seat** %3, align 8
  %16 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %17 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %4, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** @config, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %5, align 8
  store %struct.sway_switch_binding* null, %struct.sway_switch_binding** %6, align 8
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %101, %1
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %104

32:                                               ; preds = %26
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load %struct.sway_switch_binding**, %struct.sway_switch_binding*** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.sway_switch_binding*, %struct.sway_switch_binding** %35, i64 %37
  %39 = load %struct.sway_switch_binding*, %struct.sway_switch_binding** %38, align 8
  store %struct.sway_switch_binding* %39, %struct.sway_switch_binding** %8, align 8
  %40 = load %struct.sway_switch_binding*, %struct.sway_switch_binding** %8, align 8
  %41 = getelementptr inbounds %struct.sway_switch_binding, %struct.sway_switch_binding* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.sway_switch*, %struct.sway_switch** %2, align 8
  %44 = getelementptr inbounds %struct.sway_switch, %struct.sway_switch* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %32
  br label %101

48:                                               ; preds = %32
  %49 = load %struct.sway_switch_binding*, %struct.sway_switch_binding** %8, align 8
  %50 = getelementptr inbounds %struct.sway_switch_binding, %struct.sway_switch_binding* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @WLR_SWITCH_STATE_TOGGLE, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %48
  %55 = load %struct.sway_switch_binding*, %struct.sway_switch_binding** %8, align 8
  %56 = getelementptr inbounds %struct.sway_switch_binding, %struct.sway_switch_binding* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.sway_switch*, %struct.sway_switch** %2, align 8
  %59 = getelementptr inbounds %struct.sway_switch, %struct.sway_switch* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %101

63:                                               ; preds = %54, %48
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** @config, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %63
  %69 = load %struct.sway_switch_binding*, %struct.sway_switch_binding** %8, align 8
  %70 = getelementptr inbounds %struct.sway_switch_binding, %struct.sway_switch_binding* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @WLR_SWITCH_STATE_TOGGLE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %81, label %74

74:                                               ; preds = %68
  %75 = load %struct.sway_switch_binding*, %struct.sway_switch_binding** %8, align 8
  %76 = getelementptr inbounds %struct.sway_switch_binding, %struct.sway_switch_binding* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @BINDING_RELOAD, align 4
  %79 = and i32 %77, %78
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %74, %68
  br label %101

82:                                               ; preds = %74, %63
  %83 = load %struct.sway_switch_binding*, %struct.sway_switch_binding** %8, align 8
  %84 = getelementptr inbounds %struct.sway_switch_binding, %struct.sway_switch_binding* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @BINDING_LOCKED, align 4
  %87 = and i32 %85, %86
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %82
  %91 = load i32, i32* %4, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  br label %101

94:                                               ; preds = %90, %82
  %95 = load %struct.sway_switch_binding*, %struct.sway_switch_binding** %8, align 8
  store %struct.sway_switch_binding* %95, %struct.sway_switch_binding** %6, align 8
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %4, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %104

100:                                              ; preds = %94
  br label %101

101:                                              ; preds = %100, %93, %81, %62, %47
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %26

104:                                              ; preds = %99, %26
  %105 = load %struct.sway_switch_binding*, %struct.sway_switch_binding** %6, align 8
  %106 = icmp ne %struct.sway_switch_binding* %105, null
  br i1 %106, label %107, label %127

107:                                              ; preds = %104
  %108 = call %struct.sway_binding* @calloc(i32 1, i32 12)
  store %struct.sway_binding* %108, %struct.sway_binding** %10, align 8
  %109 = load i32, i32* @BINDING_SWITCH, align 4
  %110 = load %struct.sway_binding*, %struct.sway_binding** %10, align 8
  %111 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 4
  %112 = load %struct.sway_switch_binding*, %struct.sway_switch_binding** %6, align 8
  %113 = getelementptr inbounds %struct.sway_switch_binding, %struct.sway_switch_binding* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.sway_binding*, %struct.sway_binding** %10, align 8
  %116 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 4
  %117 = load %struct.sway_switch_binding*, %struct.sway_switch_binding** %6, align 8
  %118 = getelementptr inbounds %struct.sway_switch_binding, %struct.sway_switch_binding* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.sway_binding*, %struct.sway_binding** %10, align 8
  %121 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  %122 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %123 = load %struct.sway_binding*, %struct.sway_binding** %10, align 8
  %124 = call i32 @seat_execute_command(%struct.sway_seat* %122, %struct.sway_binding* %123)
  %125 = load %struct.sway_binding*, %struct.sway_binding** %10, align 8
  %126 = call i32 @free(%struct.sway_binding* %125)
  br label %127

127:                                              ; preds = %107, %104
  %128 = call i32 (...) @transaction_commit_dirty()
  ret void
}

declare dso_local %struct.sway_binding* @calloc(i32, i32) #1

declare dso_local i32 @seat_execute_command(%struct.sway_seat*, %struct.sway_binding*) #1

declare dso_local i32 @free(%struct.sway_binding*) #1

declare dso_local i32 @transaction_commit_dirty(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
