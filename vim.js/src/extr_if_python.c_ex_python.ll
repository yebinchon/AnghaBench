; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_if_python.c_ex_python.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_if_python.c_ex_python.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@init_range_cmd = common dso_local global i64 0, align 8
@run_cmd = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ex_python(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = call i32* @script_get(%struct.TYPE_4__* %4, i64 %7)
  store i32* %8, i32** %3, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %33, label %13

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  br label %24

21:                                               ; preds = %13
  %22 = load i32*, i32** %3, align 8
  %23 = bitcast i32* %22 to i8*
  br label %24

24:                                               ; preds = %21, %16
  %25 = phi i8* [ %20, %16 ], [ %23, %21 ]
  %26 = load i64, i64* @init_range_cmd, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i64, i64* @run_cmd, align 8
  %29 = trunc i64 %28 to i32
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %31 = bitcast %struct.TYPE_4__* %30 to i8*
  %32 = call i32 @DoPyCommand(i8* %25, i32 %27, i32 %29, i8* %31)
  br label %33

33:                                               ; preds = %24, %1
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @vim_free(i32* %34)
  ret void
}

declare dso_local i32* @script_get(%struct.TYPE_4__*, i64) #1

declare dso_local i32 @DoPyCommand(i8*, i32, i32, i8*) #1

declare dso_local i32 @vim_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
