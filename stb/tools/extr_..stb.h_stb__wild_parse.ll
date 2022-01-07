; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb__wild_parse.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb__wild_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32, i8*, i32*)* @stb__wild_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @stb__wild_parse(i32* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @stb__add_node(i32* %11)
  store i32 %12, i32* %10, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %10, align 4
  %16 = call i32 @stb__add_epsilon(i32* %13, i32 %14, i32 %15)
  br label %17

17:                                               ; preds = %90, %4
  %18 = load i8*, i8** %7, align 8
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %21, label %91

21:                                               ; preds = %17
  %22 = load i8*, i8** %7, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  switch i32 %24, label %25 [
    i32 63, label %62
    i32 42, label %72
  ]

25:                                               ; preds = %21
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @stb__add_node(i32* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = load i8, i8* %28, align 1
  %30 = call i32 @toupper(i8 signext %29)
  %31 = load i8*, i8** %7, align 8
  %32 = load i8, i8* %31, align 1
  %33 = call i32 @tolower(i8 signext %32)
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %25
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i8*, i8** %7, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = call i32 @stb__add_edge(i32* %36, i32 %37, i32 %38, i32 %41)
  br label %58

43:                                               ; preds = %25
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = load i8, i8* %47, align 1
  %49 = call i32 @tolower(i8 signext %48)
  %50 = call i32 @stb__add_edge(i32* %44, i32 %45, i32 %46, i32 %49)
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i8*, i8** %7, align 8
  %55 = load i8, i8* %54, align 1
  %56 = call i32 @toupper(i8 signext %55)
  %57 = call i32 @stb__add_edge(i32* %51, i32 %52, i32 %53, i32 %56)
  br label %58

58:                                               ; preds = %43, %35
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %10, align 4
  %60 = load i8*, i8** %7, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %7, align 8
  br label %90

62:                                               ; preds = %21
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @stb__add_node(i32* %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @stb__add_edge(i32* %65, i32 %66, i32 %67, i32 -1)
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %10, align 4
  %70 = load i8*, i8** %7, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %7, align 8
  br label %90

72:                                               ; preds = %21
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 @stb__add_node(i32* %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32*, i32** %5, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @stb__add_edge(i32* %75, i32 %76, i32 %77, i32 -1)
  %79 = load i32*, i32** %5, align 8
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @stb__add_epsilon(i32* %79, i32 %80, i32 %81)
  %83 = load i32*, i32** %5, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @stb__add_epsilon(i32* %83, i32 %84, i32 %85)
  %87 = load i32, i32* %9, align 4
  store i32 %87, i32* %10, align 4
  %88 = load i8*, i8** %7, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %7, align 8
  br label %90

90:                                               ; preds = %72, %62, %58
  br label %17

91:                                               ; preds = %17
  %92 = load i32*, i32** %5, align 8
  %93 = call i32 @stb__add_node(i32* %92)
  store i32 %93, i32* %9, align 4
  %94 = load i32*, i32** %5, align 8
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @stb__add_edge(i32* %94, i32 %95, i32 %96, i32 0)
  %98 = load i32, i32* %9, align 4
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = load i32*, i32** %8, align 8
  store i32 %99, i32* %100, align 4
  %101 = load i8*, i8** %7, align 8
  ret i8* %101
}

declare dso_local i32 @stb__add_node(i32*) #1

declare dso_local i32 @stb__add_epsilon(i32*, i32, i32) #1

declare dso_local i32 @toupper(i8 signext) #1

declare dso_local i32 @tolower(i8 signext) #1

declare dso_local i32 @stb__add_edge(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
