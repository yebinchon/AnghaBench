; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_manager.c_manager_transient_environment_add.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_manager.c_manager_transient_environment_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @manager_transient_environment_add(%struct.TYPE_4__* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8** %1, i8*** %5, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %8 = call i32 @assert(%struct.TYPE_4__* %7)
  %9 = load i8**, i8*** %5, align 8
  %10 = call i64 @strv_isempty(i8** %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %31

13:                                               ; preds = %2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = call i8** @strv_env_merge(i32 2, i32 %16, i8** %17)
  store i8** %18, i8*** %6, align 8
  %19 = load i8**, i8*** %6, align 8
  %20 = icmp ne i8** %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %13
  %22 = call i32 (...) @log_oom()
  store i32 %22, i32* %3, align 4
  br label %31

23:                                               ; preds = %13
  %24 = load i8**, i8*** %6, align 8
  %25 = call i32 @sanitize_environment(i8** %24)
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i8**, i8*** %6, align 8
  %30 = call i32 @strv_free_and_replace(i32 %28, i8** %29)
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %23, %21, %12
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @assert(%struct.TYPE_4__*) #1

declare dso_local i64 @strv_isempty(i8**) #1

declare dso_local i8** @strv_env_merge(i32, i32, i8**) #1

declare dso_local i32 @log_oom(...) #1

declare dso_local i32 @sanitize_environment(i8**) #1

declare dso_local i32 @strv_free_and_replace(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
