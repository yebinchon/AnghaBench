; ModuleID = '/home/carl/AnghaBench/tig/src/extr_help.c_help_open.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_help.c_help_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32 }
%struct.help_request_iterator = type { %struct.view* }
%struct.help = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@LINE_HEADER = common dso_local global i32 0, align 4
@ERROR_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Quick reference for tig keybindings:\00", align 1
@LINE_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@help_keys_visitor = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to render key bindings\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*, i32)* @help_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @help_open(%struct.view* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.view*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.help_request_iterator, align 8
  %7 = alloca %struct.help*, align 8
  store %struct.view* %0, %struct.view** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = getelementptr inbounds %struct.help_request_iterator, %struct.help_request_iterator* %6, i32 0, i32 0
  %9 = load %struct.view*, %struct.view** %4, align 8
  store %struct.view* %9, %struct.view** %8, align 8
  %10 = load %struct.view*, %struct.view** %4, align 8
  %11 = call i32 @reset_view(%struct.view* %10)
  %12 = load %struct.view*, %struct.view** %4, align 8
  %13 = load i32, i32* @LINE_HEADER, align 4
  %14 = call i32 @add_help_line(%struct.view* %12, %struct.help** %7, i32* null, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ERROR_OUT_OF_MEMORY, align 4
  store i32 %17, i32* %3, align 4
  br label %41

18:                                               ; preds = %2
  %19 = load %struct.help*, %struct.help** %7, align 8
  %20 = getelementptr inbounds %struct.help, %struct.help* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8** %21, align 8
  %22 = load %struct.view*, %struct.view** %4, align 8
  %23 = load i32, i32* @LINE_DEFAULT, align 4
  %24 = call i32 @add_help_line(%struct.view* %22, %struct.help** %7, i32* null, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %18
  %27 = load i32, i32* @ERROR_OUT_OF_MEMORY, align 4
  store i32 %27, i32* %3, align 4
  br label %41

28:                                               ; preds = %18
  %29 = load %struct.help*, %struct.help** %7, align 8
  %30 = getelementptr inbounds %struct.help, %struct.help* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %31, align 8
  %32 = load i32, i32* @help_keys_visitor, align 4
  %33 = call i64 @foreach_key(i32 %32, %struct.help_request_iterator* %6, i32 1)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @SUCCESS, align 4
  br label %39

37:                                               ; preds = %28
  %38 = call i32 @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %26, %16
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @reset_view(%struct.view*) #1

declare dso_local i32 @add_help_line(%struct.view*, %struct.help**, i32*, i32) #1

declare dso_local i64 @foreach_key(i32, %struct.help_request_iterator*, i32) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
