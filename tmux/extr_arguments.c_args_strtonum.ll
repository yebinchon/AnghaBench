; ModuleID = '/home/carl/AnghaBench/tmux/extr_arguments.c_args_strtonum.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_arguments.c_args_strtonum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.args = type { i32 }
%struct.args_entry = type { i32 }
%struct.args_value = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"missing\00", align 1
@args_values = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @args_strtonum(%struct.args* %0, i32 %1, i64 %2, i64 %3, i8** %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.args*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.args_entry*, align 8
  %15 = alloca %struct.args_value*, align 8
  store %struct.args* %0, %struct.args** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i8** %4, i8*** %11, align 8
  %16 = load %struct.args*, %struct.args** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call %struct.args_entry* @args_find(%struct.args* %16, i32 %17)
  store %struct.args_entry* %18, %struct.args_entry** %14, align 8
  %19 = icmp eq %struct.args_entry* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = call i8* @xstrdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %22 = load i8**, i8*** %11, align 8
  store i8* %21, i8** %22, align 8
  store i64 0, i64* %6, align 8
  br label %43

23:                                               ; preds = %5
  %24 = load %struct.args_entry*, %struct.args_entry** %14, align 8
  %25 = getelementptr inbounds %struct.args_entry, %struct.args_entry* %24, i32 0, i32 0
  %26 = load i32, i32* @args_values, align 4
  %27 = call %struct.args_value* @TAILQ_LAST(i32* %25, i32 %26)
  store %struct.args_value* %27, %struct.args_value** %15, align 8
  %28 = load %struct.args_value*, %struct.args_value** %15, align 8
  %29 = getelementptr inbounds %struct.args_value, %struct.args_value* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = call i64 @strtonum(i32 %30, i64 %31, i64 %32, i8** %12)
  store i64 %33, i64* %13, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %23
  %37 = load i8*, i8** %12, align 8
  %38 = call i8* @xstrdup(i8* %37)
  %39 = load i8**, i8*** %11, align 8
  store i8* %38, i8** %39, align 8
  store i64 0, i64* %6, align 8
  br label %43

40:                                               ; preds = %23
  %41 = load i8**, i8*** %11, align 8
  store i8* null, i8** %41, align 8
  %42 = load i64, i64* %13, align 8
  store i64 %42, i64* %6, align 8
  br label %43

43:                                               ; preds = %40, %36, %20
  %44 = load i64, i64* %6, align 8
  ret i64 %44
}

declare dso_local %struct.args_entry* @args_find(%struct.args*, i32) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local %struct.args_value* @TAILQ_LAST(i32*, i32) #1

declare dso_local i64 @strtonum(i32, i64, i64, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
