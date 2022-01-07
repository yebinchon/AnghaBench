; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsparse.c_bitxor.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsparse.c_bitxor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@BITXOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__** (%struct.TYPE_9__*, i32)* @bitxor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__** @bitxor(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__**, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 (%struct.TYPE_9__*, i32, ...) bitcast (i32 (...)* @bitand to i32 (%struct.TYPE_9__*, i32, ...)*)(%struct.TYPE_9__* %7, i32 %8)
  %10 = sext i32 %9 to i64
  %11 = inttoptr i64 %10 to %struct.TYPE_9__**
  store %struct.TYPE_9__** %11, %struct.TYPE_9__*** %5, align 8
  %12 = call i32 (...) @SAVEREC()
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %20, %2
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = call i64 @jsP_accept(%struct.TYPE_9__* %17, i8 signext 94)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %16
  %21 = call i32 (...) @INCREC()
  %22 = load i32, i32* @BITXOR, align 4
  %23 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 (%struct.TYPE_9__*, i32, ...) bitcast (i32 (...)* @bitand to i32 (%struct.TYPE_9__*, i32, ...)*)(%struct.TYPE_9__* %24, i32 %25)
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to %struct.TYPE_9__**
  %29 = call %struct.TYPE_9__** @EXP2(i32 %22, %struct.TYPE_9__** %23, %struct.TYPE_9__** %28)
  store %struct.TYPE_9__** %29, %struct.TYPE_9__*** %5, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %6, align 4
  br label %16

33:                                               ; preds = %16
  %34 = call i32 (...) @POPREC()
  %35 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  ret %struct.TYPE_9__** %35
}

declare dso_local i32 @bitand(...) #1

declare dso_local i32 @SAVEREC(...) #1

declare dso_local i64 @jsP_accept(%struct.TYPE_9__*, i8 signext) #1

declare dso_local i32 @INCREC(...) #1

declare dso_local %struct.TYPE_9__** @EXP2(i32, %struct.TYPE_9__**, %struct.TYPE_9__**) #1

declare dso_local i32 @POPREC(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
