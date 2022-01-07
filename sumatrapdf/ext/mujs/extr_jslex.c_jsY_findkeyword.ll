; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jslex.c_jsY_findkeyword.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jslex.c_jsY_findkeyword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@keywords = common dso_local global i32* null, align 8
@TK_BREAK = common dso_local global i32 0, align 4
@TK_IDENTIFIER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*)* @jsY_findkeyword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jsY_findkeyword(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load i32*, i32** @keywords, align 8
  %9 = load i32*, i32** @keywords, align 8
  %10 = call i32 @nelem(i32* %9)
  %11 = call i32 @jsY_findword(i8* %7, i32* %8, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = load i32*, i32** @keywords, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @TK_BREAK, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %3, align 4
  br label %32

25:                                               ; preds = %2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @js_intern(%struct.TYPE_4__* %26, i8* %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @TK_IDENTIFIER, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %25, %14
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @jsY_findword(i8*, i32*, i32) #1

declare dso_local i32 @nelem(i32*) #1

declare dso_local i32 @js_intern(%struct.TYPE_4__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
