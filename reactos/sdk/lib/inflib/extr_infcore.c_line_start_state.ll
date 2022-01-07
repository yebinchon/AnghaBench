; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/inflib/extr_infcore.c_line_start_state.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/inflib/extr_infcore.c_line_start_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser = type { i32*, i32 }

@LINE_START = common dso_local global i32 0, align 4
@COMMENT = common dso_local global i32 0, align 4
@SECTION_NAME = common dso_local global i32 0, align 4
@KEY_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.parser*, i32*)* @line_start_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @line_start_state(%struct.parser* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.parser*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.parser* %0, %struct.parser** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  store i32* %7, i32** %6, align 8
  br label %8

8:                                                ; preds = %59, %2
  %9 = load %struct.parser*, %struct.parser** %4, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call i32 @is_eof(%struct.parser* %9, i32* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  br i1 %13, label %14, label %62

14:                                               ; preds = %8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %44 [
    i32 13, label %17
    i32 10, label %18
    i32 59, label %25
    i32 91, label %34
  ]

17:                                               ; preds = %14
  br label %59

18:                                               ; preds = %14
  %19 = load %struct.parser*, %struct.parser** %4, align 8
  %20 = getelementptr inbounds %struct.parser, %struct.parser* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 8
  %23 = load %struct.parser*, %struct.parser** %4, align 8
  %24 = call i32 @close_current_line(%struct.parser* %23)
  br label %58

25:                                               ; preds = %14
  %26 = load %struct.parser*, %struct.parser** %4, align 8
  %27 = load i32, i32* @LINE_START, align 4
  %28 = call i32 @push_state(%struct.parser* %26, i32 %27)
  %29 = load %struct.parser*, %struct.parser** %4, align 8
  %30 = load i32, i32* @COMMENT, align 4
  %31 = call i32 @set_state(%struct.parser* %29, i32 %30)
  %32 = load i32*, i32** %6, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  store i32* %33, i32** %3, align 8
  br label %65

34:                                               ; preds = %14
  %35 = load i32*, i32** %6, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load %struct.parser*, %struct.parser** %4, align 8
  %38 = getelementptr inbounds %struct.parser, %struct.parser* %37, i32 0, i32 0
  store i32* %36, i32** %38, align 8
  %39 = load %struct.parser*, %struct.parser** %4, align 8
  %40 = load i32, i32* @SECTION_NAME, align 4
  %41 = call i32 @set_state(%struct.parser* %39, i32 %40)
  %42 = load i32*, i32** %6, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  store i32* %43, i32** %3, align 8
  br label %65

44:                                               ; preds = %14
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @isspaceW(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %44
  %50 = load i32*, i32** %6, align 8
  %51 = load %struct.parser*, %struct.parser** %4, align 8
  %52 = getelementptr inbounds %struct.parser, %struct.parser* %51, i32 0, i32 0
  store i32* %50, i32** %52, align 8
  %53 = load %struct.parser*, %struct.parser** %4, align 8
  %54 = load i32, i32* @KEY_NAME, align 4
  %55 = call i32 @set_state(%struct.parser* %53, i32 %54)
  %56 = load i32*, i32** %6, align 8
  store i32* %56, i32** %3, align 8
  br label %65

57:                                               ; preds = %44
  br label %58

58:                                               ; preds = %57, %18
  br label %59

59:                                               ; preds = %58, %17
  %60 = load i32*, i32** %6, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %6, align 8
  br label %8

62:                                               ; preds = %8
  %63 = load %struct.parser*, %struct.parser** %4, align 8
  %64 = call i32 @close_current_line(%struct.parser* %63)
  store i32* null, i32** %3, align 8
  br label %65

65:                                               ; preds = %62, %49, %34, %25
  %66 = load i32*, i32** %3, align 8
  ret i32* %66
}

declare dso_local i32 @is_eof(%struct.parser*, i32*) #1

declare dso_local i32 @close_current_line(%struct.parser*) #1

declare dso_local i32 @push_state(%struct.parser*, i32) #1

declare dso_local i32 @set_state(%struct.parser*, i32) #1

declare dso_local i32 @isspaceW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
