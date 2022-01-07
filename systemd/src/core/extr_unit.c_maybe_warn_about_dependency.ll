; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_unit.c_maybe_warn_about_dependency.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_unit.c_maybe_warn_about_dependency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@UNIT_CONFLICTS = common dso_local global i32 0, align 4
@UNIT_CONFLICTED_BY = common dso_local global i32 0, align 4
@UNIT_BEFORE = common dso_local global i32 0, align 4
@UNIT_AFTER = common dso_local global i32 0, align 4
@UNIT_ON_FAILURE = common dso_local global i32 0, align 4
@UNIT_TRIGGERS = common dso_local global i32 0, align 4
@UNIT_TRIGGERED_BY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Dependency %s=%s dropped\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Dependency %s=%s dropped, merged into %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i8*, i32)* @maybe_warn_about_dependency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @maybe_warn_about_dependency(%struct.TYPE_5__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = call i32 @assert(%struct.TYPE_5__* %7)
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @UNIT_CONFLICTS, align 4
  %11 = load i32, i32* @UNIT_CONFLICTED_BY, align 4
  %12 = load i32, i32* @UNIT_BEFORE, align 4
  %13 = load i32, i32* @UNIT_AFTER, align 4
  %14 = load i32, i32* @UNIT_ON_FAILURE, align 4
  %15 = load i32, i32* @UNIT_TRIGGERS, align 4
  %16 = load i32, i32* @UNIT_TRIGGERED_BY, align 4
  %17 = call i32 @IN_SET(i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %45

20:                                               ; preds = %3
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = call i64 @streq_ptr(i32 %23, i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @unit_dependency_to_string(i32 %29)
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (%struct.TYPE_5__*, i8*, i32, i32, ...) @log_unit_warning(%struct.TYPE_5__* %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %33)
  br label %45

35:                                               ; preds = %20
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @unit_dependency_to_string(i32 %37)
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @strna(i8* %39)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (%struct.TYPE_5__*, i8*, i32, i32, ...) @log_unit_warning(%struct.TYPE_5__* %36, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %40, i32 %43)
  br label %45

45:                                               ; preds = %19, %35, %27
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_5__*) #1

declare dso_local i32 @IN_SET(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @streq_ptr(i32, i8*) #1

declare dso_local i32 @log_unit_warning(%struct.TYPE_5__*, i8*, i32, i32, ...) #1

declare dso_local i32 @unit_dependency_to_string(i32) #1

declare dso_local i32 @strna(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
