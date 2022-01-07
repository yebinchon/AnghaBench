; ModuleID = '/home/carl/AnghaBench/tig/src/extr_view.c_open_argv.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_view.c_open_argv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i8*, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [27 x i8] c"Failed to open %s view: %s\00", align 1
@OPEN_PREPARED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @open_argv(%struct.view* %0, %struct.view* %1, i8** %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.view*, align 8
  %7 = alloca %struct.view*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.view* %0, %struct.view** %6, align 8
  store %struct.view* %1, %struct.view** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load %struct.view*, %struct.view** %7, align 8
  %12 = getelementptr inbounds %struct.view, %struct.view* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %5
  %16 = load %struct.view*, %struct.view** %7, align 8
  %17 = call i32 @end_update(%struct.view* %16, i32 1)
  br label %18

18:                                               ; preds = %15, %5
  %19 = load i8*, i8** %9, align 8
  %20 = load %struct.view*, %struct.view** %7, align 8
  %21 = getelementptr inbounds %struct.view, %struct.view* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = load %struct.view*, %struct.view** %7, align 8
  %23 = getelementptr inbounds %struct.view, %struct.view* %22, i32 0, i32 3
  %24 = load i8**, i8*** %8, align 8
  %25 = call i32 @argv_copy(i32* %23, i8** %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %18
  %28 = load %struct.view*, %struct.view** %7, align 8
  %29 = getelementptr inbounds %struct.view, %struct.view* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.view*, %struct.view** %7, align 8
  %32 = getelementptr inbounds %struct.view, %struct.view* %31, i32 0, i32 1
  %33 = call i32 @io_strerror(i32* %32)
  %34 = call i32 @report(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %33)
  br label %42

35:                                               ; preds = %18
  %36 = load %struct.view*, %struct.view** %6, align 8
  %37 = load %struct.view*, %struct.view** %7, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @OPEN_PREPARED, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @open_view(%struct.view* %36, %struct.view* %37, i32 %40)
  br label %42

42:                                               ; preds = %35, %27
  ret void
}

declare dso_local i32 @end_update(%struct.view*, i32) #1

declare dso_local i32 @argv_copy(i32*, i8**) #1

declare dso_local i32 @report(i8*, i32, i32) #1

declare dso_local i32 @io_strerror(i32*) #1

declare dso_local i32 @open_view(%struct.view*, %struct.view*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
