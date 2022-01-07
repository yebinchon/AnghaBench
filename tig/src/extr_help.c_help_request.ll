; ModuleID = '/home/carl/AnghaBench/tig/src/extr_help.c_help_request.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_help.c_help_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32 }
%struct.line = type { i32, %struct.help* }
%struct.help = type { %struct.keymap* }
%struct.keymap = type { i32 }

@LINE_SECTION = common dso_local global i32 0, align 4
@REQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*, i32, %struct.line*)* @help_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @help_request(%struct.view* %0, i32 %1, %struct.line* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.view*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.line*, align 8
  %8 = alloca %struct.help*, align 8
  %9 = alloca %struct.keymap*, align 8
  store %struct.view* %0, %struct.view** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.line* %2, %struct.line** %7, align 8
  %10 = load %struct.line*, %struct.line** %7, align 8
  %11 = getelementptr inbounds %struct.line, %struct.line* %10, i32 0, i32 1
  %12 = load %struct.help*, %struct.help** %11, align 8
  store %struct.help* %12, %struct.help** %8, align 8
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %40 [
    i32 129, label %14
    i32 128, label %36
  ]

14:                                               ; preds = %3
  %15 = load %struct.line*, %struct.line** %7, align 8
  %16 = getelementptr inbounds %struct.line, %struct.line* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @LINE_SECTION, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %14
  %21 = load %struct.help*, %struct.help** %8, align 8
  %22 = getelementptr inbounds %struct.help, %struct.help* %21, i32 0, i32 0
  %23 = load %struct.keymap*, %struct.keymap** %22, align 8
  store %struct.keymap* %23, %struct.keymap** %9, align 8
  %24 = load %struct.keymap*, %struct.keymap** %9, align 8
  %25 = getelementptr inbounds %struct.keymap, %struct.keymap* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = load %struct.keymap*, %struct.keymap** %9, align 8
  %31 = getelementptr inbounds %struct.keymap, %struct.keymap* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.view*, %struct.view** %5, align 8
  %33 = call i32 @refresh_view(%struct.view* %32)
  br label %34

34:                                               ; preds = %20, %14
  %35 = load i32, i32* @REQ_NONE, align 4
  store i32 %35, i32* %4, align 4
  br label %42

36:                                               ; preds = %3
  %37 = load %struct.view*, %struct.view** %5, align 8
  %38 = call i32 @refresh_view(%struct.view* %37)
  %39 = load i32, i32* @REQ_NONE, align 4
  store i32 %39, i32* %4, align 4
  br label %42

40:                                               ; preds = %3
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %40, %36, %34
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @refresh_view(%struct.view*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
