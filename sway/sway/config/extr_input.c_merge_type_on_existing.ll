; ModuleID = '/home/carl/AnghaBench/sway/sway/config/extr_input.c_merge_type_on_existing.c'
source_filename = "/home/carl/AnghaBench/sway/sway/config/extr_input.c_merge_type_on_existing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.input_config** }
%struct.input_config = type { i64, i32* }

@config = common dso_local global %struct.TYPE_4__* null, align 8
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Merging %s top of %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_config*)* @merge_type_on_existing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @merge_type_on_existing(%struct.input_config* %0) #0 {
  %2 = alloca %struct.input_config*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.input_config*, align 8
  store %struct.input_config* %0, %struct.input_config** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %51, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %6, %11
  br i1 %12, label %13, label %54

13:                                               ; preds = %5
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load %struct.input_config**, %struct.input_config*** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.input_config*, %struct.input_config** %18, i64 %20
  %22 = load %struct.input_config*, %struct.input_config** %21, align 8
  store %struct.input_config* %22, %struct.input_config** %4, align 8
  %23 = load %struct.input_config*, %struct.input_config** %4, align 8
  %24 = getelementptr inbounds %struct.input_config, %struct.input_config* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %13
  br label %51

28:                                               ; preds = %13
  %29 = load %struct.input_config*, %struct.input_config** %4, align 8
  %30 = getelementptr inbounds %struct.input_config, %struct.input_config* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.input_config*, %struct.input_config** %2, align 8
  %33 = getelementptr inbounds %struct.input_config, %struct.input_config* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 5
  %36 = call i64 @strcmp(i32* %31, i64 %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %28
  %39 = load i32, i32* @SWAY_DEBUG, align 4
  %40 = load %struct.input_config*, %struct.input_config** %2, align 8
  %41 = getelementptr inbounds %struct.input_config, %struct.input_config* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.input_config*, %struct.input_config** %4, align 8
  %44 = getelementptr inbounds %struct.input_config, %struct.input_config* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @sway_log(i32 %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %42, i64 %45)
  %47 = load %struct.input_config*, %struct.input_config** %4, align 8
  %48 = load %struct.input_config*, %struct.input_config** %2, align 8
  %49 = call i32 @merge_input_config(%struct.input_config* %47, %struct.input_config* %48)
  br label %50

50:                                               ; preds = %38, %28
  br label %51

51:                                               ; preds = %50, %27
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %5

54:                                               ; preds = %5
  ret void
}

declare dso_local i64 @strcmp(i32*, i64) #1

declare dso_local i32 @sway_log(i32, i8*, i64, i64) #1

declare dso_local i32 @merge_input_config(%struct.input_config*, %struct.input_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
