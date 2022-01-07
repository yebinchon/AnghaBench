; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lptree.c_newcharset.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lptree.c_newcharset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@CHARSETSIZE = common dso_local global i32 0, align 4
@TSet = common dso_local global i32 0, align 4
@i = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (i32*)* @newcharset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @newcharset(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = load i32, i32* @CHARSETSIZE, align 4
  %6 = call i64 @bytes2slots(i32 %5)
  %7 = add nsw i64 %6, 1
  %8 = call %struct.TYPE_5__* @newtree(i32* %4, i64 %7)
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %3, align 8
  %9 = load i32, i32* @TSet, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load i64, i64* @i, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = call i64* @treebuffer(%struct.TYPE_5__* %13)
  %15 = load i64, i64* @i, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  store i64 0, i64* %16, align 8
  %17 = call i32 @loopset(i64 %12, i64 0)
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %18
}

declare dso_local %struct.TYPE_5__* @newtree(i32*, i64) #1

declare dso_local i64 @bytes2slots(i32) #1

declare dso_local i32 @loopset(i64, i64) #1

declare dso_local i64* @treebuffer(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
