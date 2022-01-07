; ModuleID = '/home/carl/AnghaBench/tig/src/extr_keys.c_foreach_key_run_request.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_keys.c_foreach_key_run_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_visitor_state = type { %struct.keymap* }
%struct.keymap = type { i32 }
%struct.run_request = type { i32*, %struct.keymap*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"External commands:\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Option toggling:\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Internal commands:\00", align 1
@REQ_RUN_REQUESTS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"toggle\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.key_visitor_state*, i32, i32)* @foreach_key_run_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @foreach_key_run_request(%struct.key_visitor_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.key_visitor_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.keymap*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.run_request*, align 8
  %12 = alloca i8*, align 8
  store %struct.key_visitor_state* %0, %struct.key_visitor_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.key_visitor_state*, %struct.key_visitor_state** %5, align 8
  %14 = getelementptr inbounds %struct.key_visitor_state, %struct.key_visitor_state* %13, i32 0, i32 0
  %15 = load %struct.keymap*, %struct.keymap** %14, align 8
  store %struct.keymap* %15, %struct.keymap** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %24

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0)
  br label %24

24:                                               ; preds = %19, %18
  %25 = phi i8* [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %18 ], [ %23, %19 ]
  store i8* %25, i8** %9, align 8
  %26 = load i32, i32* @REQ_RUN_REQUESTS, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %10, align 4
  br label %28

28:                                               ; preds = %81, %24
  br i1 true, label %29, label %84

29:                                               ; preds = %28
  %30 = load i32, i32* %10, align 4
  %31 = call %struct.run_request* @get_run_request(i32 %30)
  store %struct.run_request* %31, %struct.run_request** %11, align 8
  %32 = load %struct.run_request*, %struct.run_request** %11, align 8
  %33 = icmp ne %struct.run_request* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %84

35:                                               ; preds = %29
  %36 = load %struct.run_request*, %struct.run_request** %11, align 8
  %37 = getelementptr inbounds %struct.run_request, %struct.run_request* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = icmp ne i32 %39, %44
  br i1 %45, label %58, label %46

46:                                               ; preds = %35
  %47 = load %struct.run_request*, %struct.run_request** %11, align 8
  %48 = getelementptr inbounds %struct.run_request, %struct.run_request* %47, i32 0, i32 1
  %49 = load %struct.keymap*, %struct.keymap** %48, align 8
  %50 = load %struct.keymap*, %struct.keymap** %8, align 8
  %51 = icmp ne %struct.keymap* %49, %50
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = load %struct.keymap*, %struct.keymap** %8, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i8* @get_keys(%struct.keymap* %53, i32 %54, i32 1)
  store i8* %55, i8** %12, align 8
  %56 = load i8, i8* %55, align 1
  %57 = icmp ne i8 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %52, %46, %35
  br label %81

59:                                               ; preds = %52
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.run_request*, %struct.run_request** %11, align 8
  %62 = getelementptr inbounds %struct.run_request, %struct.run_request* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @strcmp(i32 %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = icmp ne i32 %60, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %59
  br label %81

72:                                               ; preds = %59
  %73 = load %struct.key_visitor_state*, %struct.key_visitor_state** %5, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.run_request*, %struct.run_request** %11, align 8
  %77 = call i32 @foreach_key_visit(%struct.key_visitor_state* %73, i8* %74, i32 %75, i32* null, %struct.run_request* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %72
  store i32 0, i32* %4, align 4
  br label %85

80:                                               ; preds = %72
  br label %81

81:                                               ; preds = %80, %71, %58
  %82 = load i32, i32* %10, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %10, align 4
  br label %28

84:                                               ; preds = %34, %28
  store i32 1, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %79
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local %struct.run_request* @get_run_request(i32) #1

declare dso_local i8* @get_keys(%struct.keymap*, i32, i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @foreach_key_visit(%struct.key_visitor_state*, i8*, i32, i32*, %struct.run_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
