; ModuleID = '/home/carl/AnghaBench/tmux/extr_key-bindings.c_key_bindings_get_table.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_key-bindings.c_key_bindings_get_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_table = type { i8*, i32, i32 }

@key_tables = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.key_table* @key_bindings_get_table(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.key_table*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.key_table, align 8
  %7 = alloca %struct.key_table*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = getelementptr inbounds %struct.key_table, %struct.key_table* %6, i32 0, i32 0
  store i8* %8, i8** %9, align 8
  %10 = load i32, i32* @key_tables, align 4
  %11 = call %struct.key_table* @RB_FIND(i32 %10, i32* @key_tables, %struct.key_table* %6)
  store %struct.key_table* %11, %struct.key_table** %7, align 8
  %12 = load %struct.key_table*, %struct.key_table** %7, align 8
  %13 = icmp ne %struct.key_table* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14, %2
  %18 = load %struct.key_table*, %struct.key_table** %7, align 8
  store %struct.key_table* %18, %struct.key_table** %3, align 8
  br label %34

19:                                               ; preds = %14
  %20 = call %struct.key_table* @xmalloc(i32 16)
  store %struct.key_table* %20, %struct.key_table** %7, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i8* @xstrdup(i8* %21)
  %23 = load %struct.key_table*, %struct.key_table** %7, align 8
  %24 = getelementptr inbounds %struct.key_table, %struct.key_table* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = load %struct.key_table*, %struct.key_table** %7, align 8
  %26 = getelementptr inbounds %struct.key_table, %struct.key_table* %25, i32 0, i32 2
  %27 = call i32 @RB_INIT(i32* %26)
  %28 = load %struct.key_table*, %struct.key_table** %7, align 8
  %29 = getelementptr inbounds %struct.key_table, %struct.key_table* %28, i32 0, i32 1
  store i32 1, i32* %29, align 8
  %30 = load i32, i32* @key_tables, align 4
  %31 = load %struct.key_table*, %struct.key_table** %7, align 8
  %32 = call i32 @RB_INSERT(i32 %30, i32* @key_tables, %struct.key_table* %31)
  %33 = load %struct.key_table*, %struct.key_table** %7, align 8
  store %struct.key_table* %33, %struct.key_table** %3, align 8
  br label %34

34:                                               ; preds = %19, %17
  %35 = load %struct.key_table*, %struct.key_table** %3, align 8
  ret %struct.key_table* %35
}

declare dso_local %struct.key_table* @RB_FIND(i32, i32*, %struct.key_table*) #1

declare dso_local %struct.key_table* @xmalloc(i32) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @RB_INIT(i32*) #1

declare dso_local i32 @RB_INSERT(i32, i32*, %struct.key_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
