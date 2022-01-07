; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/inflib/extr_infcore.c_eol_backslash_state.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/inflib/extr_infcore.c_eol_backslash_state.c"
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

8:                                                ; preds = %55, %2
  %9 = load %struct.parser*, %struct.parser** %4, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call i32 @is_eof(%struct.parser* %9, i32* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  br i1 %13, label %14, label %58

14:                                               ; preds = %8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %42 [
    i32 13, label %17
    i32 10, label %18
    i32 92, label %32
    i32 59, label %33
  ]

17:                                               ; preds = %14
  br label %55

18:                                               ; preds = %14
  %19 = load %struct.parser*, %struct.parser** %4, align 8
  %20 = getelementptr inbounds %struct.parser, %struct.parser* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load %struct.parser*, %struct.parser** %4, align 8
  %26 = getelementptr inbounds %struct.parser, %struct.parser* %25, i32 0, i32 0
  store i32* %24, i32** %26, align 8
  %27 = load %struct.parser*, %struct.parser** %4, align 8
  %28 = load i32, i32* @LEADING_SPACES, align 4
  %29 = call i32 @set_state(%struct.parser* %27, i32 %28)
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  store i32* %31, i32** %3, align 8
  br label %65

32:                                               ; preds = %14
  br label %55

33:                                               ; preds = %14
  %34 = load %struct.parser*, %struct.parser** %4, align 8
  %35 = load i32, i32* @EOL_BACKSLASH, align 4
  %36 = call i32 @push_state(%struct.parser* %34, i32 %35)
  %37 = load %struct.parser*, %struct.parser** %4, align 8
  %38 = load i32, i32* @COMMENT, align 4
  %39 = call i32 @set_state(%struct.parser* %37, i32 %38)
  %40 = load i32*, i32** %6, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  store i32* %41, i32** %3, align 8
  br label %65

42:                                               ; preds = %14
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @isspaceW(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %55

48:                                               ; preds = %42
  %49 = load %struct.parser*, %struct.parser** %4, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @push_token(%struct.parser* %49, i32* %50)
  %52 = load %struct.parser*, %struct.parser** %4, align 8
  %53 = call i32 @pop_state(%struct.parser* %52)
  %54 = load i32*, i32** %6, align 8
  store i32* %54, i32** %3, align 8
  br label %65

55:                                               ; preds = %47, %32, %17
  %56 = load i32*, i32** %6, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %6, align 8
  br label %8

58:                                               ; preds = %8
  %59 = load i32*, i32** %6, align 8
  %60 = load %struct.parser*, %struct.parser** %4, align 8
  %61 = getelementptr inbounds %struct.parser, %struct.parser* %60, i32 0, i32 0
  store i32* %59, i32** %61, align 8
  %62 = load %struct.parser*, %struct.parser** %4, align 8
  %63 = call i32 @pop_state(%struct.parser* %62)
  %64 = load i32*, i32** %6, align 8
  store i32* %64, i32** %3, align 8
  br label %65

65:                                               ; preds = %58, %48, %33, %18
  %66 = load i32*, i32** %3, align 8
  ret i32* %66
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
