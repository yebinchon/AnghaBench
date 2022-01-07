; ModuleID = '/home/carl/AnghaBench/sway/sway/config/extr_input.c_merge_wildcard_on_all.c'
source_filename = "/home/carl/AnghaBench/sway/sway/config/extr_input.c_merge_wildcard_on_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32, %struct.input_config** }
%struct.input_config = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.input_config** }

@config = common dso_local global %struct.TYPE_6__* null, align 8
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Merging input * config on %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_config*)* @merge_wildcard_on_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @merge_wildcard_on_all(%struct.input_config* %0) #0 {
  %2 = alloca %struct.input_config*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.input_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.input_config*, align 8
  store %struct.input_config* %0, %struct.input_config** %2, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %43, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %8, %13
  br i1 %14, label %15, label %46

15:                                               ; preds = %7
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load %struct.input_config**, %struct.input_config*** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.input_config*, %struct.input_config** %20, i64 %22
  %24 = load %struct.input_config*, %struct.input_config** %23, align 8
  store %struct.input_config* %24, %struct.input_config** %4, align 8
  %25 = load %struct.input_config*, %struct.input_config** %2, align 8
  %26 = getelementptr inbounds %struct.input_config, %struct.input_config* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.input_config*, %struct.input_config** %4, align 8
  %29 = getelementptr inbounds %struct.input_config, %struct.input_config* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @strcmp(i32 %27, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %15
  %34 = load i32, i32* @SWAY_DEBUG, align 4
  %35 = load %struct.input_config*, %struct.input_config** %4, align 8
  %36 = getelementptr inbounds %struct.input_config, %struct.input_config* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @sway_log(i32 %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.input_config*, %struct.input_config** %4, align 8
  %40 = load %struct.input_config*, %struct.input_config** %2, align 8
  %41 = call i32 @merge_input_config(%struct.input_config* %39, %struct.input_config* %40)
  br label %42

42:                                               ; preds = %33, %15
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %7

46:                                               ; preds = %7
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %73, %46
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %48, %53
  br i1 %54, label %55, label %76

55:                                               ; preds = %47
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load %struct.input_config**, %struct.input_config*** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.input_config*, %struct.input_config** %60, i64 %62
  %64 = load %struct.input_config*, %struct.input_config** %63, align 8
  store %struct.input_config* %64, %struct.input_config** %6, align 8
  %65 = load i32, i32* @SWAY_DEBUG, align 4
  %66 = load %struct.input_config*, %struct.input_config** %6, align 8
  %67 = getelementptr inbounds %struct.input_config, %struct.input_config* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @sway_log(i32 %65, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load %struct.input_config*, %struct.input_config** %6, align 8
  %71 = load %struct.input_config*, %struct.input_config** %2, align 8
  %72 = call i32 @merge_input_config(%struct.input_config* %70, %struct.input_config* %71)
  br label %73

73:                                               ; preds = %55
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %47

76:                                               ; preds = %47
  ret void
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @sway_log(i32, i8*, i32) #1

declare dso_local i32 @merge_input_config(%struct.input_config*, %struct.input_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
