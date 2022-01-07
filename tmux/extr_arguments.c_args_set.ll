; ModuleID = '/home/carl/AnghaBench/tmux/extr_arguments.c_args_set.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_arguments.c_args_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.args = type { i32 }
%struct.args_entry = type { i32, i32, i32 }
%struct.args_value = type { i32 }

@args_tree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @args_set(%struct.args* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.args*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.args_entry*, align 8
  %8 = alloca %struct.args_value*, align 8
  store %struct.args* %0, %struct.args** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load %struct.args*, %struct.args** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.args_entry* @args_find(%struct.args* %9, i32 %10)
  store %struct.args_entry* %11, %struct.args_entry** %7, align 8
  %12 = load %struct.args_entry*, %struct.args_entry** %7, align 8
  %13 = icmp eq %struct.args_entry* %12, null
  br i1 %13, label %14, label %30

14:                                               ; preds = %3
  %15 = call i8* @xcalloc(i32 1, i32 12)
  %16 = bitcast i8* %15 to %struct.args_entry*
  store %struct.args_entry* %16, %struct.args_entry** %7, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.args_entry*, %struct.args_entry** %7, align 8
  %19 = getelementptr inbounds %struct.args_entry, %struct.args_entry* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load %struct.args_entry*, %struct.args_entry** %7, align 8
  %21 = getelementptr inbounds %struct.args_entry, %struct.args_entry* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  %22 = load %struct.args_entry*, %struct.args_entry** %7, align 8
  %23 = getelementptr inbounds %struct.args_entry, %struct.args_entry* %22, i32 0, i32 1
  %24 = call i32 @TAILQ_INIT(i32* %23)
  %25 = load i32, i32* @args_tree, align 4
  %26 = load %struct.args*, %struct.args** %4, align 8
  %27 = getelementptr inbounds %struct.args, %struct.args* %26, i32 0, i32 0
  %28 = load %struct.args_entry*, %struct.args_entry** %7, align 8
  %29 = call i32 @RB_INSERT(i32 %25, i32* %27, %struct.args_entry* %28)
  br label %35

30:                                               ; preds = %3
  %31 = load %struct.args_entry*, %struct.args_entry** %7, align 8
  %32 = getelementptr inbounds %struct.args_entry, %struct.args_entry* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %30, %14
  %36 = load i8*, i8** %6, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %50

38:                                               ; preds = %35
  %39 = call i8* @xcalloc(i32 1, i32 4)
  %40 = bitcast i8* %39 to %struct.args_value*
  store %struct.args_value* %40, %struct.args_value** %8, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @xstrdup(i8* %41)
  %43 = load %struct.args_value*, %struct.args_value** %8, align 8
  %44 = getelementptr inbounds %struct.args_value, %struct.args_value* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.args_entry*, %struct.args_entry** %7, align 8
  %46 = getelementptr inbounds %struct.args_entry, %struct.args_entry* %45, i32 0, i32 1
  %47 = load %struct.args_value*, %struct.args_value** %8, align 8
  %48 = load %struct.args_entry*, %struct.args_entry** %7, align 8
  %49 = call i32 @TAILQ_INSERT_TAIL(i32* %46, %struct.args_value* %47, %struct.args_entry* %48)
  br label %50

50:                                               ; preds = %38, %35
  ret void
}

declare dso_local %struct.args_entry* @args_find(%struct.args*, i32) #1

declare dso_local i8* @xcalloc(i32, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @RB_INSERT(i32, i32*, %struct.args_entry*) #1

declare dso_local i32 @xstrdup(i8*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.args_value*, %struct.args_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
