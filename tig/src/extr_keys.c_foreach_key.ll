; ModuleID = '/home/carl/AnghaBench/tig/src/extr_keys.c_foreach_key.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_keys.c_foreach_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_visitor_state = type { i8*, i32, i32*, i32 }

@keymaps = common dso_local global i32* null, align 8
@foreach_key_request = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @foreach_key(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.key_visitor_state, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %44, %3
  %11 = load i32, i32* %8, align 4
  %12 = load i32*, i32** @keymaps, align 8
  %13 = call i32 @ARRAY_SIZE(i32* %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %47

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.key_visitor_state, %struct.key_visitor_state* %9, i32 0, i32 0
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** %16, align 8
  %20 = getelementptr inbounds %struct.key_visitor_state, %struct.key_visitor_state* %9, i32 0, i32 1
  %21 = load i8*, i8** %6, align 8
  %22 = ptrtoint i8* %21 to i32
  store i32 %22, i32* %20, align 8
  %23 = getelementptr inbounds %struct.key_visitor_state, %struct.key_visitor_state* %9, i32 0, i32 2
  %24 = load i32*, i32** @keymaps, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  store i32* %27, i32** %23, align 8
  %28 = getelementptr inbounds %struct.key_visitor_state, %struct.key_visitor_state* %9, i32 0, i32 3
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %28, align 8
  %30 = load i32, i32* @foreach_key_request, align 4
  %31 = call i32 @foreach_request(i32 %30, %struct.key_visitor_state* %9)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %15
  %34 = call i32 @foreach_key_run_request(%struct.key_visitor_state* %9, i32 1, i32 1)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = call i32 @foreach_key_run_request(%struct.key_visitor_state* %9, i32 1, i32 0)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = call i32 @foreach_key_run_request(%struct.key_visitor_state* %9, i32 0, i32 0)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39, %36, %33, %15
  store i32 0, i32* %4, align 4
  br label %48

43:                                               ; preds = %39
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %10

47:                                               ; preds = %10
  store i32 1, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %42
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @foreach_request(i32, %struct.key_visitor_state*) #1

declare dso_local i32 @foreach_key_run_request(%struct.key_visitor_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
