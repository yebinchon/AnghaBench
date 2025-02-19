; ModuleID = '/home/carl/AnghaBench/tig/src/extr_pager.c_pager_open.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_pager.c_pager_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32, i32 }

@OPEN_PREPARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"No pager content, press %s to run command from prompt\00", align 1
@REQ_PROMPT = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*, i32)* @pager_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pager_open(%struct.view* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.view*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.view* %0, %struct.view** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @open_from_stdin(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %2
  %11 = load %struct.view*, %struct.view** %4, align 8
  %12 = getelementptr inbounds %struct.view, %struct.view* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %10
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @OPEN_PREPARED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load %struct.view*, %struct.view** %4, align 8
  %22 = load i32, i32* @REQ_PROMPT, align 4
  %23 = call i32 @get_view_key(%struct.view* %21, i32 %22)
  %24 = call i32 @error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i32 %24, i32* %3, align 4
  br label %40

25:                                               ; preds = %15, %10, %2
  %26 = load %struct.view*, %struct.view** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @begin_update(%struct.view* %26, i32* null, i32* null, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @SUCCESS, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %40

34:                                               ; preds = %25
  %35 = load %struct.view*, %struct.view** %4, align 8
  %36 = load %struct.view*, %struct.view** %4, align 8
  %37 = getelementptr inbounds %struct.view, %struct.view* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @diff_init_highlight(%struct.view* %35, i32 %38)
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %34, %32, %20
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @open_from_stdin(i32) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @get_view_key(%struct.view*, i32) #1

declare dso_local i32 @begin_update(%struct.view*, i32*, i32*, i32) #1

declare dso_local i32 @diff_init_highlight(%struct.view*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
