; ModuleID = '/home/carl/AnghaBench/tig/src/extr_stash.c_stash_open.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_stash.c_stash_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32, %struct.main_state* }
%struct.main_state = type { i32 }

@stash_open.stash_argv = internal global [7 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* inttoptr (i64 128 to i8*), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [4 x i8] c"git\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"stash\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"--no-color\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"--pretty=raw\00", align 1
@WATCH_STASH = common dso_local global i32 0, align 4
@OPEN_RELOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*, i32)* @stash_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stash_open(%struct.view* %0, i32 %1) #0 {
  %3 = alloca %struct.view*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.main_state*, align 8
  store %struct.view* %0, %struct.view** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.view*, %struct.view** %3, align 8
  %7 = getelementptr inbounds %struct.view, %struct.view* %6, i32 0, i32 1
  %8 = load %struct.main_state*, %struct.main_state** %7, align 8
  store %struct.main_state* %8, %struct.main_state** %5, align 8
  %9 = load %struct.main_state*, %struct.main_state** %5, align 8
  %10 = getelementptr inbounds %struct.main_state, %struct.main_state* %9, i32 0, i32 0
  store i32 0, i32* %10, align 4
  %11 = load %struct.view*, %struct.view** %3, align 8
  %12 = getelementptr inbounds %struct.view, %struct.view* %11, i32 0, i32 0
  %13 = load i32, i32* @WATCH_STASH, align 4
  %14 = call i32 @watch_register(i32* %12, i32 %13)
  %15 = load %struct.view*, %struct.view** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @OPEN_RELOAD, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @begin_update(%struct.view* %15, i32* null, i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @stash_open.stash_argv, i64 0, i64 0), i32 %18)
  ret i32 %19
}

declare dso_local i32 @watch_register(i32*, i32) #1

declare dso_local i32 @begin_update(%struct.view*, i32*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
