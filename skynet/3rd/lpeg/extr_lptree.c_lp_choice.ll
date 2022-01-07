; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lptree.c_lp_choice.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lptree.c_lp_choice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i64 }

@i = common dso_local global i64 0, align 8
@TFalse = common dso_local global i64 0, align 8
@TChoice = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lp_choice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp_choice(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_10__, align 8
  %4 = alloca %struct.TYPE_10__, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call %struct.TYPE_9__* @getpatt(i32* %8, i32 1, i32* null)
  store %struct.TYPE_9__* %9, %struct.TYPE_9__** %5, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = call %struct.TYPE_9__* @getpatt(i32* %10, i32 2, i32* null)
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %6, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = call i64 @tocharset(%struct.TYPE_9__* %12, %struct.TYPE_10__* %3)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %1
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %17 = call i64 @tocharset(%struct.TYPE_9__* %16, %struct.TYPE_10__* %4)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %15
  %20 = load i32*, i32** %2, align 8
  %21 = call %struct.TYPE_9__* @newcharset(i32* %20)
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %7, align 8
  %22 = load i64, i64* @i, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @i, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @i, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %27, %32
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %35 = call i32* @treebuffer(%struct.TYPE_9__* %34)
  %36 = load i64, i64* @i, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  store i32 %33, i32* %37, align 4
  %38 = call i32 @loopset(i64 %22, i32 %33)
  br label %67

39:                                               ; preds = %15, %1
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = call i64 @nofail(%struct.TYPE_9__* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %39
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @TFalse, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43, %39
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @lua_pushvalue(i32* %50, i32 1)
  br label %66

52:                                               ; preds = %43
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @TFalse, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32*, i32** %2, align 8
  %60 = call i32 @lua_pushvalue(i32* %59, i32 2)
  br label %65

61:                                               ; preds = %52
  %62 = load i32*, i32** %2, align 8
  %63 = load i32, i32* @TChoice, align 4
  %64 = call i32 @newroot2sib(i32* %62, i32 %63)
  br label %65

65:                                               ; preds = %61, %58
  br label %66

66:                                               ; preds = %65, %49
  br label %67

67:                                               ; preds = %66, %19
  ret i32 1
}

declare dso_local %struct.TYPE_9__* @getpatt(i32*, i32, i32*) #1

declare dso_local i64 @tocharset(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_9__* @newcharset(i32*) #1

declare dso_local i32 @loopset(i64, i32) #1

declare dso_local i32* @treebuffer(%struct.TYPE_9__*) #1

declare dso_local i64 @nofail(%struct.TYPE_9__*) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @newroot2sib(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
