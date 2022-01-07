; ModuleID = '/home/carl/AnghaBench/tmux/extr_environ.c_environ_update.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_environ.c_environ_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options = type { i32 }
%struct.environ = type { i32 }
%struct.environ_entry = type { i32, i32 }
%struct.options_entry = type { i32 }
%struct.options_array_item = type { i32 }
%union.options_value = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"update-environment\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @environ_update(%struct.options* %0, %struct.environ* %1, %struct.environ* %2) #0 {
  %4 = alloca %struct.options*, align 8
  %5 = alloca %struct.environ*, align 8
  %6 = alloca %struct.environ*, align 8
  %7 = alloca %struct.environ_entry*, align 8
  %8 = alloca %struct.options_entry*, align 8
  %9 = alloca %struct.options_array_item*, align 8
  %10 = alloca %union.options_value*, align 8
  store %struct.options* %0, %struct.options** %4, align 8
  store %struct.environ* %1, %struct.environ** %5, align 8
  store %struct.environ* %2, %struct.environ** %6, align 8
  %11 = load %struct.options*, %struct.options** %4, align 8
  %12 = call %struct.options_entry* @options_get(%struct.options* %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store %struct.options_entry* %12, %struct.options_entry** %8, align 8
  %13 = load %struct.options_entry*, %struct.options_entry** %8, align 8
  %14 = icmp eq %struct.options_entry* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %49

16:                                               ; preds = %3
  %17 = load %struct.options_entry*, %struct.options_entry** %8, align 8
  %18 = call %struct.options_array_item* @options_array_first(%struct.options_entry* %17)
  store %struct.options_array_item* %18, %struct.options_array_item** %9, align 8
  br label %19

19:                                               ; preds = %46, %16
  %20 = load %struct.options_array_item*, %struct.options_array_item** %9, align 8
  %21 = icmp ne %struct.options_array_item* %20, null
  br i1 %21, label %22, label %49

22:                                               ; preds = %19
  %23 = load %struct.options_array_item*, %struct.options_array_item** %9, align 8
  %24 = call %union.options_value* @options_array_item_value(%struct.options_array_item* %23)
  store %union.options_value* %24, %union.options_value** %10, align 8
  %25 = load %struct.environ*, %struct.environ** %5, align 8
  %26 = load %union.options_value*, %union.options_value** %10, align 8
  %27 = bitcast %union.options_value* %26 to i32*
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.environ_entry* @environ_find(%struct.environ* %25, i32 %28)
  store %struct.environ_entry* %29, %struct.environ_entry** %7, align 8
  %30 = icmp eq %struct.environ_entry* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %22
  %32 = load %struct.environ*, %struct.environ** %6, align 8
  %33 = load %union.options_value*, %union.options_value** %10, align 8
  %34 = bitcast %union.options_value* %33 to i32*
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @environ_clear(%struct.environ* %32, i32 %35)
  br label %46

37:                                               ; preds = %22
  %38 = load %struct.environ*, %struct.environ** %6, align 8
  %39 = load %struct.environ_entry*, %struct.environ_entry** %7, align 8
  %40 = getelementptr inbounds %struct.environ_entry, %struct.environ_entry* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.environ_entry*, %struct.environ_entry** %7, align 8
  %43 = getelementptr inbounds %struct.environ_entry, %struct.environ_entry* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @environ_set(%struct.environ* %38, i32 %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %37, %31
  %47 = load %struct.options_array_item*, %struct.options_array_item** %9, align 8
  %48 = call %struct.options_array_item* @options_array_next(%struct.options_array_item* %47)
  store %struct.options_array_item* %48, %struct.options_array_item** %9, align 8
  br label %19

49:                                               ; preds = %15, %19
  ret void
}

declare dso_local %struct.options_entry* @options_get(%struct.options*, i8*) #1

declare dso_local %struct.options_array_item* @options_array_first(%struct.options_entry*) #1

declare dso_local %union.options_value* @options_array_item_value(%struct.options_array_item*) #1

declare dso_local %struct.environ_entry* @environ_find(%struct.environ*, i32) #1

declare dso_local i32 @environ_clear(%struct.environ*, i32) #1

declare dso_local i32 @environ_set(%struct.environ*, i32, i8*, i32) #1

declare dso_local %struct.options_array_item* @options_array_next(%struct.options_array_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
