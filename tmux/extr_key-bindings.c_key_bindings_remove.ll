; ModuleID = '/home/carl/AnghaBench/tmux/extr_key-bindings.c_key_bindings_remove.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_key-bindings.c_key_bindings_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_table = type { i32, i32, i32 }
%struct.key_binding = type { i32, i32, i32 }

@KEYC_XTERM = common dso_local global i32 0, align 4
@key_bindings = common dso_local global i32 0, align 4
@key_tables = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @key_bindings_remove(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.key_table*, align 8
  %6 = alloca %struct.key_binding, align 4
  %7 = alloca %struct.key_binding*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = call %struct.key_table* @key_bindings_get_table(i8* %8, i32 0)
  store %struct.key_table* %9, %struct.key_table** %5, align 8
  %10 = load %struct.key_table*, %struct.key_table** %5, align 8
  %11 = icmp eq %struct.key_table* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %52

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @KEYC_XTERM, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  %18 = getelementptr inbounds %struct.key_binding, %struct.key_binding* %6, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @key_bindings, align 4
  %20 = load %struct.key_table*, %struct.key_table** %5, align 8
  %21 = getelementptr inbounds %struct.key_table, %struct.key_table* %20, i32 0, i32 1
  %22 = bitcast %struct.key_binding* %6 to %struct.key_table*
  %23 = call %struct.key_table* @RB_FIND(i32 %19, i32* %21, %struct.key_table* %22)
  %24 = bitcast %struct.key_table* %23 to %struct.key_binding*
  store %struct.key_binding* %24, %struct.key_binding** %7, align 8
  %25 = load %struct.key_binding*, %struct.key_binding** %7, align 8
  %26 = icmp eq %struct.key_binding* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %13
  br label %52

28:                                               ; preds = %13
  %29 = load i32, i32* @key_bindings, align 4
  %30 = load %struct.key_table*, %struct.key_table** %5, align 8
  %31 = getelementptr inbounds %struct.key_table, %struct.key_table* %30, i32 0, i32 1
  %32 = load %struct.key_binding*, %struct.key_binding** %7, align 8
  %33 = bitcast %struct.key_binding* %32 to %struct.key_table*
  %34 = call i32 @RB_REMOVE(i32 %29, i32* %31, %struct.key_table* %33)
  %35 = load %struct.key_binding*, %struct.key_binding** %7, align 8
  %36 = getelementptr inbounds %struct.key_binding, %struct.key_binding* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @cmd_list_free(i32 %37)
  %39 = load %struct.key_binding*, %struct.key_binding** %7, align 8
  %40 = bitcast %struct.key_binding* %39 to %struct.key_table*
  %41 = call i32 @free(%struct.key_table* %40)
  %42 = load %struct.key_table*, %struct.key_table** %5, align 8
  %43 = getelementptr inbounds %struct.key_table, %struct.key_table* %42, i32 0, i32 1
  %44 = call i64 @RB_EMPTY(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %28
  %47 = load i32, i32* @key_tables, align 4
  %48 = load %struct.key_table*, %struct.key_table** %5, align 8
  %49 = call i32 @RB_REMOVE(i32 %47, i32* @key_tables, %struct.key_table* %48)
  %50 = load %struct.key_table*, %struct.key_table** %5, align 8
  %51 = call i32 @key_bindings_unref_table(%struct.key_table* %50)
  br label %52

52:                                               ; preds = %12, %27, %46, %28
  ret void
}

declare dso_local %struct.key_table* @key_bindings_get_table(i8*, i32) #1

declare dso_local %struct.key_table* @RB_FIND(i32, i32*, %struct.key_table*) #1

declare dso_local i32 @RB_REMOVE(i32, i32*, %struct.key_table*) #1

declare dso_local i32 @cmd_list_free(i32) #1

declare dso_local i32 @free(%struct.key_table*) #1

declare dso_local i64 @RB_EMPTY(i32*) #1

declare dso_local i32 @key_bindings_unref_table(%struct.key_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
