; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_parser.c_eol_backslash_state.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_parser.c_eol_backslash_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser = type { i32*, i32 }

@LEADING_SPACES = common dso_local global i32 0, align 4
@EOL_BACKSLASH = common dso_local global i32 0, align 4
@COMMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.parser*, i32*)* @eol_backslash_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @eol_backslash_state(%struct.parser* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.parser*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.parser* %0, %struct.parser** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  store i32* %7, i32** %6, align 8
  br label %8

8:                                                ; preds = %54, %2
  %9 = load %struct.parser*, %struct.parser** %4, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call i32 @is_eof(%struct.parser* %9, i32* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  br i1 %13, label %14, label %57

14:                                               ; preds = %8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %41 [
    i32 10, label %17
    i32 92, label %31
    i32 59, label %32
  ]

17:                                               ; preds = %14
  %18 = load %struct.parser*, %struct.parser** %4, align 8
  %19 = getelementptr inbounds %struct.parser, %struct.parser* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load %struct.parser*, %struct.parser** %4, align 8
  %25 = getelementptr inbounds %struct.parser, %struct.parser* %24, i32 0, i32 0
  store i32* %23, i32** %25, align 8
  %26 = load %struct.parser*, %struct.parser** %4, align 8
  %27 = load i32, i32* @LEADING_SPACES, align 4
  %28 = call i32 @set_state(%struct.parser* %26, i32 %27)
  %29 = load i32*, i32** %6, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  store i32* %30, i32** %3, align 8
  br label %64

31:                                               ; preds = %14
  br label %54

32:                                               ; preds = %14
  %33 = load %struct.parser*, %struct.parser** %4, align 8
  %34 = load i32, i32* @EOL_BACKSLASH, align 4
  %35 = call i32 @push_state(%struct.parser* %33, i32 %34)
  %36 = load %struct.parser*, %struct.parser** %4, align 8
  %37 = load i32, i32* @COMMENT, align 4
  %38 = call i32 @set_state(%struct.parser* %36, i32 %37)
  %39 = load i32*, i32** %6, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  store i32* %40, i32** %3, align 8
  br label %64

41:                                               ; preds = %14
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @isspaceW(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %54

47:                                               ; preds = %41
  %48 = load %struct.parser*, %struct.parser** %4, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @push_token(%struct.parser* %48, i32* %49)
  %51 = load %struct.parser*, %struct.parser** %4, align 8
  %52 = call i32 @pop_state(%struct.parser* %51)
  %53 = load i32*, i32** %6, align 8
  store i32* %53, i32** %3, align 8
  br label %64

54:                                               ; preds = %46, %31
  %55 = load i32*, i32** %6, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %6, align 8
  br label %8

57:                                               ; preds = %8
  %58 = load i32*, i32** %6, align 8
  %59 = load %struct.parser*, %struct.parser** %4, align 8
  %60 = getelementptr inbounds %struct.parser, %struct.parser* %59, i32 0, i32 0
  store i32* %58, i32** %60, align 8
  %61 = load %struct.parser*, %struct.parser** %4, align 8
  %62 = call i32 @pop_state(%struct.parser* %61)
  %63 = load i32*, i32** %6, align 8
  store i32* %63, i32** %3, align 8
  br label %64

64:                                               ; preds = %57, %47, %32, %17
  %65 = load i32*, i32** %3, align 8
  ret i32* %65
}

declare dso_local i32 @is_eof(%struct.parser*, i32*) #1

declare dso_local i32 @set_state(%struct.parser*, i32) #1

declare dso_local i32 @push_state(%struct.parser*, i32) #1

declare dso_local i32 @isspaceW(i32) #1

declare dso_local i32 @push_token(%struct.parser*, i32*) #1

declare dso_local i32 @pop_state(%struct.parser*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
